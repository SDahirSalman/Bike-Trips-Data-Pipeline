CREATE TABLE IF NOT EXISTS {{params.schema}}.{{params.table} (
Rental_Id varchar (32) NOT NULL,
Duration varchar (32),
Bike_Id varchar (256),
End_Date varchar (32),
EndStation_Id varchar (256),
EndStation_Name varchar (256),
Start_Date varchar (256),
StartStation_Id varchar (256),
StartStation_Name varchar (64),
)sortkey(Rental_Id);