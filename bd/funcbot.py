import psycopg2
import datetime
conn = psycopg2.connect(database="postgres",
                        user="postgres",
                        password="knt9",
                        host="127.0.0.1",
                        port="5432")

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
        cursor.execute(f"SELECT date, time, lesson, teacher, building, classroom, type_of_lesson FROM timetable WHERE groupname={self.groupname} and day = '{day}' and week ='{week}'")
        record = cursor.fetchall()
        daylessons= ''
        for i in range(len(record)):
            data = record[i][0]
            if data!='null' or self.checkdata(data) :
                for x in range(1,len(record[i])):
                    if record[i][x] !='null':
                        daylessons+=str(record[i][x])+' '
            if i !=len(record)-1:
                daylessons+='\n'
        return daylessons
                
    def weektimetable(self,week):
        cursor = conn.cursor()
        cursor.execute(f"SELECT day, date, time, lesson, teacher, building, classroom, type_of_lesson FROM timetable WHERE groupname={self.groupname} and week ='{week}'")
        record = cursor.fetchall()
        weeklessons=''
        for i in range(len(record)):
            print(record[i][0])
            data = record[i][1]
            if data!='null' or self.checkdata(data) :
                for x in range(1,len(record[i])):
                    if record[i][x] !='null':
                        weeklessons+=str(record[i][x])+' '
            if i !=len(record)-1:
                weeklessons+='\n' 
                if record[i][0]!=record[i+1][0]:
                    weeklessons+='\v' 
                    weeklessons+=record[i+1][0]
                    weeklessons+='\n' 
                
        return weeklessons
                
    def checkdata(self,data):
        data = data[0][1:-1].split(',')
        today=datetime.datetime.today()
        for i in range(len(data)):
            if data[i] == 'с':
                if datetime.datetime.strptime(data[i+1], '%d.%m.%Y') < today:
                    return True
                else:
                    return False
            elif datetime.datetime.strptime(data[i], '%d.%m.%Y').date() == today:
                return True
        return False


# user1=Funcbot(name = 'Владислав',surname='Сергеевич',lastname='Буровин',groupname=9)
# print(user1.weektimetable(0))