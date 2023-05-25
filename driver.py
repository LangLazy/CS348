import mysql.connector

mydb = mysql.connector.connect(
  host="localhost",
  user="rgudise",
  password="ligma",
  database='CS348'
)

mycursor = mydb.cursor()
mycursor.execute("SELECT * FROM USERS;")
myresult = mycursor.fetchall()
for x in myresult:
    print(x)