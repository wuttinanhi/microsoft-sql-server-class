CREATE DATABASE dbpersonnel
ON PRIMARY
(
    NAME=dbpersonnel_DAT,
    FILENAME='/var/opt/mssql/data/dbpersonnel.mdf',
    SIZE=5,
    MAXSIZE=20,
    FILEGROWTH=1
) LOG ON (
    NAME= dbpersonnel_LOG,  
    FILENAME='/var/opt/mssql/data/dbpersonnel.ldf',
    SIZE=2,
    MAXSIZE=5,
    FILEGROWTH=1
)
