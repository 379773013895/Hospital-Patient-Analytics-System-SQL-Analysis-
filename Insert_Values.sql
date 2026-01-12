USE Hospital_Management_Database;

INSERT INTO patients VALUES
(1,'Amit Sharma','Male',45,'Delhi','2024-01-05','2024-01-10','Diabetes'),
(2,'Neha Verma','Female',32,'Mumbai','2024-01-08','2024-01-12','Migraine'),
(3,'Rohit Singh','Male',60,'Lucknow','2024-01-10','2024-01-18','Heart Disease'),
(4,'Pooja Mehta','Female',28,'Pune','2024-01-12','2024-01-14','Fever'),
(5,'Rahul Jain','Male',50,'Jaipur','2024-01-15','2024-01-22','Kidney Stone'),
(6,'Anita Rao','Female',40,'Bangalore','2024-02-01','2024-02-07','Diabetes'),
(7,'Vikas Yadav','Male',35,'Noida','2024-02-03','2024-02-06','Asthma'),
(8,'Sunita Patel','Female',55,'Ahmedabad','2024-02-05','2024-02-15','Arthritis'),
(9,'Manish Gupta','Male',47,'Delhi','2024-02-10','2024-02-18','Heart Disease'),
(10,'Kiran Joshi','Female',30,'Indore','2024-02-12','2024-02-14','Fever');

INSERT INTO doctors VALUES
(101,'Dr. Anil Kumar','Cardiologist',15),
(102,'Dr. Ritu Malhotra','Neurologist',10),
(103,'Dr. Suresh Iyer','General Physician',20),
(104,'Dr. Meena Shah','Orthopedic',12),
(105,'Dr. Rajiv Khanna','Nephrologist',18);

INSERT INTO appointments VALUES
(1001,1,103,'2024-01-05'),
(1002,2,102,'2024-01-08'),
(1003,3,101,'2024-01-10'),
(1004,4,103,'2024-01-12'),
(1005,5,105,'2024-01-15'),
(1006,6,103,'2024-02-01'),
(1007,7,103,'2024-02-03'),
(1008,8,104,'2024-02-05'),
(1009,9,101,'2024-02-10'),
(1010,10,103,'2024-02-12');

INSERT INTO treatments VALUES
(201,1,'Insulin Therapy',12000),
(202,2,'Migraine Medication',8000),
(203,3,'Angioplasty',150000),
(204,4,'General Medication',3000),
(205,5,'Kidney Stone Surgery',90000),
(206,6,'Diabetes Management',10000),
(207,7,'Asthma Inhalation Therapy',6000),
(208,8,'Joint Replacement',120000),
(209,9,'Heart Bypass Surgery',250000),
(210,10,'Fever Medication',2500);

INSERT INTO billing VALUES
(301,1,15000,'Paid'),
(302,2,10000,'Paid'),
(303,3,180000,'Pending'),
(304,4,5000,'Paid'),
(305,5,95000,'Paid'),
(306,6,13000,'Paid'),
(307,7,7000,'Paid'),
(308,8,125000,'Pending'),
(309,9,270000,'Paid'),
(310,10,4000,'Paid');
