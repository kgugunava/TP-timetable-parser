import pandas as pd
import re
from CONFIG import *
import psycopg2

class SplittingLessons():  # класс, для разбиения предмета на необходимые нам переменные

    name_of_lesson = []
    type_of_lesson = []  # семинар / лекция / практическое занятие
    teacher = []
    classroom = ''
    campus = None
    day = None
    time = ''
    date = []


    def __init__(self, lesson):
        self.lesson = lesson

    def __str__(self):
        return f'{self.date} {self.day} {self.time} {self.name_of_lesson} {self.type_of_lesson} {self.teacher} {self.campus} {self.classroom}'

    def get_name_of_lesson(self):
        for cur in self.lesson:  # заходим в текущий массив с массивами (lesson)
            if cur == None: # обрабатываем None, чтобы не было ошибки
                self.name_of_lesson.append(None)
                continue
            for cur_lesson in cur:  # перебираем его элементы
                if cur_lesson in list_of_all_lessons:
                    self.name_of_lesson.append(cur_lesson)
        return self.name_of_lesson

    def get_type_of_lesson(self):
        for cur in self.lesson:
            if cur == None: # обрабатываем None, чтобы не было ошибки
                self.type_of_lesson.append(None)
                continue
            for cur_lesson in cur:
                if cur_lesson in list_of_all_types_of_lessons:
                    self.type_of_lesson.append(cur_lesson)
        return self.type_of_lesson

    def get_teacher(self):
        for cur in self.lesson:
            if cur == None:
                self.teacher.append(None)
                continue
            self.teacher.append(cur[-1])
        return self.teacher

    def refresh(self):
        self.name_of_lesson.clear()
        self.type_of_lesson.clear()
        self.teacher.clear()
        self.date.clear()

def updateexcel():
    conn = psycopg2.connect(database=DATABASE,
            user=USER,
            password=PASSWORD,
            host=HOST,
            port=PORT)
    cur = conn.cursor()
    cur_number_id = 1 # для нумерования столбцов в БД
    flag = 0  # 0 - если не добавляли
    table = pd.read_excel('timetable.xlsx', skiprows=10, header=None, keep_default_na=False)
    # чтение таблички в dataframe(объект из библиотеки pandas) (пропускаем шапку таблички, заголовков для столбцов нет, пропускаем невычисляемы/безтиповые значения)
    grouprow = [[4, 5], [7, 8], [10, 11], [16, 17], [19, 20], [22, 23], [28, 29], [31, 32], [34, 35]]
    # для каждой группы прописывам в каких столбцах лежит расписание
    for group in range(9):
        # print(group + 1)
        x, y = grouprow[group]
        # присваиваем значения столбцов для нужной группы
        for index, row in table.iterrows():
            if row[1] not in ['', 'Дни']:
                day = row[1]
            if row[x] != '' and row[y] != '' and row[1] != 'Дни':
                # проверка на пустые строчки
                time = row[2]
                s = row[x]
                kb = row[y].replace('\n', '---------------------').split('------')
                # print(s) 
                # s = re.sub(r'(?<=[0-9])(\.) |(?<=[0-9])(\.)(?=-)|(?<=[0-9])(\.),', '.2024 ', s)
                s = re.sub(r'(?<=[0-9])[.], |(?<=[.][0-9][0-9]). |(?<=[.][0-9][0-9]).', '.2024 ', s)
                # print(s) 
                s=re.sub('\n\n(?![0-9])','',s)  
                # print(s)  
                s=re.split("\n---------------------\n|\n---------------------|---------------------\n|---------------------|\n\n",s)
                lesson = []
                # print(s)
                for i in range(len(s)):
                    if len(s[i])<=3:
                        lesson += [None]
                    else:
                        mas=str(re.sub('(?:(?<=- )|(?<= -)|(?<=-)|(?<=[.]))\n',' ',s[i]))
                        lesson +=[re.split(r'\n| -  | - |(?<=[0-9]) (?= [А-Я]|[А-Я])|(?:(?<=лекция)|(?<=семинар)) ', mas)]
                # print(lesson)
                # с помощью регулярных выражений разбиваем строчки с расписанием на нужные категории
                kabinet = []
                building = []
                for i in range(len(kb)):
                    if 'online' not in kb[i]:
                        if len(kb[i]) > 1:
                            kabinet += [kb[i].split(' - ')[0]]
                            building += [kb[i].split(' - ')[1]]
                        else:
                            kabinet += [None]
                            building += [None]
                    else:
                        kabinet += ['online']
                        building += [None]  

                # вывод предмета до разбиения
                cur_lesson = SplittingLessons(lesson)
                cur_lesson.get_name_of_lesson()
                cur_lesson.get_type_of_lesson()
                cur_lesson.get_teacher()
                cur_lesson.day = day
                cur_lesson.time = time
                for i in range (len(lesson)):
                    if lesson[i] != None:
                            if lesson[i][0] not in list_of_all_lessons:
                                cur_lesson.date .append(lesson[i][0].split())
                            else:
                                cur_lesson.date .append('{}')
                    else:
                        cur_lesson.date .append("null")
                if len(list(filter(lambda x: x != None, kabinet))) != 0: # если массив состоит только из None, значение аудитории останется пустым
                    cur_lesson.classroom = list(filter(lambda x: x != None, kabinet))[0] # избавляюсь от элементов None и вывожу первый (и единственный) элемент массива
                if len(list(filter(lambda x: x != None, building))) != 0: # если массив состоит только из None, значение корпуса останется пустым
                    cur_lesson.campus = list(filter(lambda x: x != None, building))[0] # избавляюсь от элементов None и вывожу первый (и единственный) элемент массива
                if cur_lesson.teacher == ['Константинова Т.Н.'] and cur_lesson.name_of_lesson == []:
                    cur_lesson.name_of_lesson = ['История России']
                #print(cur_lesson, cur_number_id) # вывод предмета после разбиения

                if (len(cur_lesson.name_of_lesson) > 1) or (len(cur_lesson.type_of_lesson) > 1):

                    if cur_lesson.type_of_lesson == []:
                        cur_lesson.type_of_lesson = ['', '']

                    if len(cur_lesson.type_of_lesson) == 1:
                        cur_lesson.type_of_lesson.append('')

                    if len(cur_lesson.name_of_lesson) == 1:
                        cur_lesson.name_of_lesson.append(cur_lesson.name_of_lesson[0])

                    if len(cur_lesson.teacher) == 1:
                        cur_lesson.teacher.append('')

                    if flag == 1:
                        flag = 0
                        # continue
                    flag = 1 # эти уроки добавляли
                    cur.execute(
                        '''
                            UPDATE timetable
                            SET groupname = %s, time = %s, date = %s, day = %s, lesson = %s, teacher = %s, classroom = %s, building = %s, week = %s, type_of_lesson = %s
                            WHERE id = %s
                        ''',
                        ( group + 1, cur_lesson.time, cur_lesson.date[0], cur_lesson.day, cur_lesson.name_of_lesson[0], cur_lesson.teacher[0], cur_lesson.classroom, cur_lesson.campus, 0, cur_lesson.type_of_lesson[0],cur_number_id)
                    )
                    cur_number_id += 1
                    cur.execute(
                        '''
                            UPDATE timetable
                            SET groupname = %s, time = %s, date = %s, day = %s, lesson = %s, teacher = %s, classroom = %s, building = %s, week = %s, type_of_lesson = %s
                            WHERE id = %s
                        ''',
                        (group + 1, cur_lesson.time, cur_lesson.date[1], cur_lesson.day,
                        cur_lesson.name_of_lesson[1], cur_lesson.teacher[1], cur_lesson.classroom, cur_lesson.campus, 1,
                        cur_lesson.type_of_lesson[1],cur_number_id )
                    )
                    # cur_number_id += 1
                    # conn.commit()
                else:
                    cur.execute(
                        '''
                            UPDATE timetable
                            SET groupname = %s, time = %s, date = %s, day = %s, lesson = %s, teacher = %s, classroom = %s, building = %s, week = %s, type_of_lesson = %s
                            WHERE id = %s
                        ''',
                        ( group + 1, cur_lesson.time, cur_lesson.date[0], cur_lesson.day, cur_lesson.name_of_lesson, cur_lesson.teacher, cur_lesson.classroom, cur_lesson.campus, 2, cur_lesson.type_of_lesson,cur_number_id)
                    )
                conn.commit()
                cur_number_id += 1
                cur_lesson.refresh()

    conn.close()