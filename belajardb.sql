
Setting environment for using XAMPP for Windows.
Firdaus Wiguna@LAPTOP-BQNBLHFU c:\xampp
# mysql -u root -p
Enter password:
Welcome to the MariaDB monitor.  Commands end with ; or \g.
Your MariaDB connection id is 11
Server version: 10.4.24-MariaDB mariadb.org binary distribution

Copyright (c) 2000, 2018, Oracle, MariaDB Corporation Ab and others.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

MariaDB [(none)]> show databases;
+--------------------+
| Database           |
+--------------------+
| firdaus            |
| information_schema |
| mysql              |
| performance_schema |
| phpmyadmin         |
| sekolah            |
| test               |
+--------------------+
7 rows in set (0.000 sec)

MariaDB [(none)]> use firdaus;
Database changed
MariaDB [firdaus]> show tables;
Empty set (0.000 sec)

MariaDB [firdaus]> create tables tbl_siswa (id_siswa varchar(5), nama_siswa varchar(50), alamat varchar(100), primary key (id_siswa));
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'tables tbl_siswa (id_siswa varchar(5), nama_siswa varchar(50), alamat varchar...' at line 1
MariaDB [firdaus]> create table tbl_siswa (id_siswa varchar(5), nama_siswa varchar(50), alamat varchar(100), primary key (id_siswa));
Query OK, 0 rows affected (0.010 sec)

MariaDB [firdaus]> show tables;
+-------------------+
| Tables_in_firdaus |
+-------------------+
| tbl_siswa         |
+-------------------+
1 row in set (0.000 sec)

MariaDB [firdaus]> desc tbl_siswa;
+------------+--------------+------+-----+---------+-------+
| Field      | Type         | Null | Key | Default | Extra |
+------------+--------------+------+-----+---------+-------+
| id_siswa   | varchar(5)   | NO   | PRI | NULL    |       |
| nama_siswa | varchar(50)  | YES  |     | NULL    |       |
| alamat     | varchar(100) | YES  |     | NULL    |       |
+------------+--------------+------+-----+---------+-------+
3 rows in set (0.008 sec)

MariaDB [firdaus]> INSERT into tbl_siswa (id_siswa, nama_siswa, alamat) values ("1","Gavin","Cijambe");
Query OK, 1 row affected (0.022 sec)

MariaDB [firdaus]> select * from tbl_siswa;
+----------+------------+---------+
| id_siswa | nama_siswa | alamat  |
+----------+------------+---------+
| 1        | Gavin      | Cijambe |
+----------+------------+---------+
1 row in set (0.000 sec)

MariaDB [firdaus]> INSERT into tbl_siswa (id_siswa, nama_siswa, alamat) values ("2","Shabyan","Kalijati");
Query OK, 1 row affected (0.001 sec)

MariaDB [firdaus]> INSERT into tbl_siswa (id_siswa, nama_siswa, alamat) values ("3","Rizqi","Cipaku");
Query OK, 1 row affected (0.001 sec)

MariaDB [firdaus]> desc tbl_siswa;
+------------+--------------+------+-----+---------+-------+
| Field      | Type         | Null | Key | Default | Extra |
+------------+--------------+------+-----+---------+-------+
| id_siswa   | varchar(5)   | NO   | PRI | NULL    |       |
| nama_siswa | varchar(50)  | YES  |     | NULL    |       |
| alamat     | varchar(100) | YES  |     | NULL    |       |
+------------+--------------+------+-----+---------+-------+
3 rows in set (0.006 sec)

MariaDB [firdaus]> select * from tbl_siswa;
+----------+------------+----------+
| id_siswa | nama_siswa | alamat   |
+----------+------------+----------+
| 1        | Gavin      | Cijambe  |
| 2        | Shabyan    | Kalijati |
| 3        | Rizqi      | Cipaku   |
+----------+------------+----------+
3 rows in set (0.000 sec)

MariaDB [firdaus]> INSERT into tbl_siswa (id_siswa, nama_siswa, alamt) values ("4","Firdaus","Perumnas");
ERROR 1054 (42S22): Unknown column 'alamt' in 'field list'
MariaDB [firdaus]> INSERT into tbl_siswa (id_siswa, nama_siswa, alamat) values ("4","Firdaus","Perumnas");
Query OK, 1 row affected (0.003 sec)

MariaDB [firdaus]> select * from tbl_siswa;
+----------+------------+----------+
| id_siswa | nama_siswa | alamat   |
+----------+------------+----------+
| 1        | Gavin      | Cijambe  |
| 2        | Shabyan    | Kalijati |
| 3        | Rizqi      | Cipaku   |
| 4        | Firdaus    | Perumnas |
+----------+------------+----------+
4 rows in set (0.001 sec)

MariaDB [firdaus]>