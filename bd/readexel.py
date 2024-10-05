import pandas as pd
import re
table = pd.read_excel('timetable.xlsx',skiprows=10,header=None,keep_default_na=False)
#чтение таблички в dataframe(объект из библиотеки pandas) (пропускаем шапку таблички, заголовков для столбцов нет, пропускаем невычисляемы/безтиповые значения)
grouprow=[[4, 5],[7,8],[10,11],[16,17],[19,20],[22,23],[28,29],[31,32],[34,35]]
#для каждой группы прописывам в каких столбцах лежит расписание
for group in range(9):
    print(group+1)
    x,y=grouprow[group]
    #присваиваем значения столбцов для нужной группы
    for index, row in table.iterrows():
        if row[1] not in ['','Дни']:
            day = row[1]
        if  row[x]!='' and row[y]!='' and row[1]!='Дни':
            #проверка на пустые строчки
            time = row[2]
            s=row[x]
            kb=row[y].replace('\n','').split('------')
            s= re.sub(r'(?<=[0-9])(\.) |(?<=[0-9])(\.),','.2024 ',s)
            s=re.sub(r'\n(?!\n)',' ',s)
            s=re.sub('  ',' ',s)
            s=re.split("\n|---------------------",s)
            lesson=[]
            for i in range(len(s)):
                lesson+= [re.split(r' - | (?=[А-Я][^(/.)])',s[i])]
            # с помощью регулярных выражений разбиваем строчки с расписанием на нужные категории
            print(day,time,lesson,kb)
    print('\n\n\n')

        
        
