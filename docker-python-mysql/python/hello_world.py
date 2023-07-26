import mysql.connector

connection=mysql.connector.connect(host="localhost",user="root",password="Root",
                                   port = "3306", database= "new_schema")
print("DB connected")

cursor = connection.cursor()
cursor.execute("select * from students")
students = cursor.fetchall()
connection.close()

print(students)