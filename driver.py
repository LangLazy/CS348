import mysql.connector

mydb = mysql.connector.connect(
  host="localhost",
  user="rgudise",
  password="ligma",
  database='users'
)

mycursor = mydb.cursor()
mycursor.execute("SELECT * FROM users;")
myresult = mycursor.fetchall()
for x in myresult:
    print(x)