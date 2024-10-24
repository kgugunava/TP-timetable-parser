import psycopg2
import datetime
import CONFIG
conn = psycopg2.connect(database=CONFIG.DATABASE,
                        user=CONFIG.USER,
                        password=CONFIG.PASSWORD,
                        host=CONFIG.HOST,
                        port=CONFIG.PORT)

class Funcbot():

    def __init__(self,name,surname,lastname,groupname):
        self.name =name
        self.surname = surname
        self.lastname = lastname
        self.groupname = groupname
    def checkuser(self):
        cursor = conn.cursor()
        cursor.execute(f"SELECT * FROM students WHERE groupname={self.groupname} and lastname = '{self.lastname}' and surname ='{self.surname}' and name = '{self.name}'")
        record = cursor.fetchall()
        if record:
            return True
        return False
    def daytimetable(self,day,week):
        cursor = conn.cursor()
        cursor.execute(f"SELECT date, time, lesson, teacher, building, classroom, type_of_lesson FROM timetable WHERE groupname={self.groupname} and day = '{day}' and (week ='{week}' or week =2)")
        record = cursor.fetchall()
        daylessons= ''
        for i in range(len(record)):
            data = record[i][0]
            if  self.checkdata(data) :
                for x in range(1,len(record[i])):
                    if record[i][x] not in ['null','{',None]:
                        if '{' in str(record[i][x]):
                            if '"' in str(record[i][x]):
                                daylessons+=str(record[i][x])[2:-2]+' '
                            else:
                                daylessons+=str(record[i][x])[1:-1]+' '
                        else:
                            daylessons+=str(record[i][x])+' '
                if i !=len(record)-1:
                    daylessons+='\n'
        return daylessons
                
    def weektimetable(self,week):
        cursor = conn.cursor()
        cursor.execute(f"SELECT day, date, time, lesson, teacher, building, classroom, type_of_lesson FROM timetable WHERE groupname={self.groupname} and (week ='{week}' or week = 2)")
        record = cursor.fetchall()
        weeklessons = ''
        weeklessons += 'Пн\n'  
        for i in range(len(record)):
            data = record[i][1]
            if self.checkdata(data) :
                for x in range(2,len(record[i])):
                    if record[i][x] not in ['null','{',None]:
                        if '{' in str(record[i][x]):
                            if '"' in str(record[i][x]):
                                weeklessons+=str(record[i][x])[2:-2]+' '
                            else:
                                weeklessons+=str(record[i][x])[1:-1]+' '
                        else:
                            weeklessons+=str(record[i][x])+' '
                if i !=len(record)-1:
                    weeklessons+='\n' 
            if i !=len(record)-1 and record[i][0]!=record[i+1][0]:
                weeklessons+=f'\n\n{record[i+1][0]}\n' 
        return weeklessons
                
    def checkdata(self,data):
        if data=='null':
            return False
        data = data[1:-1].split(',')
        if data[0]=='':
            return True
        today=datetime.datetime.today()
        for i in range(len(data)):
            if data[i] == 'с':
                if datetime.datetime.strptime(data[i+1], '%d.%m.%Y') < today:
                    return True
                else:
                    return False
            elif data[i][0]=='-':
                data_= data[i][1:]
                print(data_)
                if datetime.datetime.strptime(data[i-1], '%d.%m.%Y') <= today and datetime.datetime.strptime(data_, '%d.%m.%Y') >= today:
                    return True
            elif abs((today - datetime.datetime.strptime(data[i], '%d.%m.%Y')).days) <= datetime.datetime.today().weekday() or abs((today - datetime.datetime.strptime(data[i], '%d.%m.%Y')).days) <= datetime.datetime.today().weekday()-7:
                return True
        return False
