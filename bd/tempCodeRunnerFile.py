cur_lesson = SplittingLessons(lesson)
            cur_lesson.get_name_of_lesson()
            cur_lesson.get_type_of_lesson()
            cur_lesson.get_teacher()
            cur_lesson.day = day
            cur_lesson.time = time
            if lesson[0] != None:
                if lesson[0][0] == '10.09.2024 17.09.Технология программирования':
                    cur_lesson.date = ['10.09.2024', '17.09.2024']
                    cur_lesson.name_of_lesson = ['Технологии программирования']
                else:
                    if lesson[0][0] not in list_of_all_lessons:
                        cur_lesson.date = lesson[0][0].split()
            else:
                if lesson[1][0] not in list_of_all_lessons:
                    cur_lesson.date = lesson[1][0].split()
            if len(list(filter(lambda x: x != None, kabinet))) != 0: # если массив состоит только из None, значение аудитории останется пустым
                cur_lesson.classroom = list(filter(lambda x: x != None, kabinet))[0] # избавляюсь от элементов None и вывожу первый (и единственный) элемент массива
            if len(list(filter(lambda x: x != None, building))) != 0: # если массив состоит только из None, значение корпуса останется пустым
                 cur_lesson.campus = list(filter(lambda x: x != None, building))[0] # избавляюсь от элементов None и вывожу первый (и единственный) элемент массива
            if cur_number_id == 18 or cur_number_id == 56 or cur_number_id == 73 or cur_number_id == 91 or cur_number_id == 111 or cur_number_id == 129 or cur_number_id == 147:
                cur_lesson.name_of_lesson = ['Основы российской государственности']
            # print(cur_lesson, cur_number_id)вывод предмета после разбиения

            if len(cur_lesson.name_of_lesson) > 1 and cur_lesson.name_of_lesson != ['История', 'России']:
                if cur_lesson.type_of_lesson == []:
                    cur_lesson.type_of_lesson = ['', '']

                if flag == 1:
                    flag = 0
                    cur_lesson.refresh()
                    continue
                flag = 1 # эти уроки добавляли
                cur.execute(
                    '''
                        INSERT INTO timetable VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s)
                    ''',
                    (cur_number_id, group + 1, cur_lesson.time, cur_lesson.date, cur_lesson.day, cur_lesson.name_of_lesson[0], cur_lesson.teacher[0], cur_lesson.classroom, cur_lesson.campus, 0, cur_lesson.type_of_lesson[0])
                )
                if len(cur_lesson.teacher) == 1:
                    cur_lesson.teacher.append('')
                cur.execute(
                    '''
                        INSERT INTO timetable VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s)
                    ''',
                    (cur_number_id + 1, group + 1, cur_lesson.time, cur_lesson.date, cur_lesson.day,
                     cur_lesson.name_of_lesson[1], cur_lesson.teacher[1], cur_lesson.classroom, cur_lesson.campus, 1,
                     cur_lesson.type_of_lesson[1])
                )
                cur_number_id += 1
                conn.commit()
            else:
                cur.execute(
                    '''
                        INSERT INTO timetable VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s)
                    ''',
                    (cur_number_id, group + 1, cur_lesson.time, cur_lesson.date, cur_lesson.day, cur_lesson.name_of_lesson, cur_lesson.teacher, cur_lesson.classroom, cur_lesson.campus, 0, cur_lesson.type_of_lesson)
                )
            conn.commit()
            cur_number_id += 1
            cur_lesson.refresh()