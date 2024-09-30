import psycopg2
from psycopg2 import Error

try:
    connection = psycopg2.connect(user="postgres",
                                  password="knt9",
                                  host="127.0.0.1",
                                  port="5432",
                                  database="timetable")
    cursor = connection.cursor()
    cursor.execute("SELECT * FROM students LIMIT 3")
    record = cursor.fetchall()
    for i in record:
        print(i)

except (Exception, Error) as error:
    print("Ошибка при работе с PostgreSQL", error)
finally:
    if connection:
        cursor.close()
        connection.close()
        print("Соединение с PostgreSQL закрыто")
        print ('Пока')