import pandas as pd
import re
table = pd.read_excel('timetable.xlsx',skiprows=10,header=None,keep_default_na=False)
grouprow=[[4, 5]]
for group in range(0,1):
    print(group+1)
    x,y=grouprow[group]
    print(x,y)
    for index, row in table.iterrows():
        if row[1] not in ['','Дни']:
            day = row[1]
        if  row[x]!='' and row[y]!='' and row[1]!='Дни':
            time = row[2]
            str=row[x]
            kb=row[y].replace('\n','').split('------')
            str = re.sub('(?<=[0-9])(\.) |(?<=[0-9])(\.),','.2024 ',str)
            str=re.sub('\n(?!\n)',' ',str)
            str=re.sub('  ',' ',str)
            str=re.split("\n|--------------------- ",str)
            lesson=[]
            for i in range(len(str)):
                lesson+= [re.split(' - | (?=[А-Я][^(/.)])',str[i])]
            print(lesson)
    print('\n\n\n')

        
        
