create database healthcare;
use healthcare;
create table patient(pt_id int primary key,last_name varchar(100),first_name varchar(100),brith_date datetime,gender char(1),address varchar(100),phone_no varchar(100));
create table doctor(dr_id int primary key,last_name varchar(100),first_name varchar(100),specialty varchar(100));
create table dr_schedule(schedule_id int primary key,dr_id int,day_of_week int,start_time time,end_time time,foreign key (dr_id) references doctor (dr_id));
create table appointment_status(status_id int primary key,descrip varchar(100));
create table appointment(apmt_id int primary key,pt_id int,dr_id int,schedule_id int,reason varchar(100),
apmt_date date,status_id int,
foreign key (pt_id) references patient (pt_id),foreign key (dr_id) references doctor (dr_id),
foreign key (schedule_id) references dr_schedule (schedule_id),
foreign key (status_id) references appointment_status (status_id));
INSERT INTO patient VALUES
(1,'Sharma','Amit','1985-03-12','M','Delhi','9876543210'),
(2,'Nair','Meera','1990-07-25','F','Kochi','9876543211'),
(3,'Khan','Arif','1978-11-02','M','Mumbai','9876543212'),
(4,'Patel','Rina','1988-05-14','F','Ahmedabad','9876543213'),
(5,'Das','Sourav','1995-09-09','M','Kolkata','9876543214'),
(6,'Menon','Anjali','1982-01-20','F','Thrissur','9876543215'),
(7,'Reddy','Vikram','1975-12-30','M','Hyderabad','9876543216'),
(8,'Singh','Priya','1993-04-18','F','Lucknow','9876543217'),
(9,'Joseph','Mathew','1987-08-22','M','Chennai','9876543218'),
(10,'Gupta','Sneha','1991-02-05','F','Delhi','9876543219'),
(11,'Shah','Raj','1980-06-11','M','Surat','9876543220'),
(12,'Roy','Pooja','1989-10-01','F','Kolkata','9876543221'),
(13,'Verma','Kunal','1994-03-17','M','Jaipur','9876543222'),
(14,'Iyer','Lakshmi','1983-07-29','F','Chennai','9876543223'),
(15,'Chopra','Neha','1996-12-12','F','Delhi','9876543224'),
(16,'Bose','Arjun','1979-09-15','M','Kolkata','9876543225'),
(17,'Rao','Divya','1992-11-19','F','Hyderabad','9876543226'),
(18,'Mishra','Sanjay','1984-04-04','M','Lucknow','9876543227'),
(19,'Fernandes','Maria','1986-08-08','F','Goa','9876543228'),
(20,'Ali','Imran','1990-01-01','M','Mumbai','9876543229');
INSERT INTO doctor VALUES
(101,'Sharma','Dr. Rakesh','Cardiology'),
(102,'Nair','Dr. Kavitha','Dermatology'),
(103,'Khan','Dr. Sameer','Orthopedics'),
(104,'Patel','Dr. Snehal','Pediatrics'),
(105,'Das','Dr. Arindam','Neurology'),
(106,'Menon','Dr. Suresh','General Medicine'),
(107,'Reddy','Dr. Anitha','Gynecology'),
(108,'Singh','Dr. Harpreet','ENT'),
(109,'Joseph','Dr. Thomas','Oncology'),
(110,'Gupta','Dr. Neeraj','Psychiatry'),
(111,'Shah','Dr. Mehul','Cardiology'),
(112,'Roy','Dr. Aparna','Dermatology'),
(113,'Verma','Dr. Rohit','Orthopedics'),
(114,'Iyer','Dr. Shalini','Pediatrics'),
(115,'Chopra','Dr. Vivek','Neurology'),
(116,'Bose','Dr. Ananya','General Medicine'),
(117,'Rao','Dr. Prakash','Gynecology'),
(118,'Mishra','Dr. Deepa','ENT'),
(119,'Fernandes','Dr. Joseph','Oncology'),
(120,'Ali','Dr. Farah','Psychiatry');
INSERT INTO dr_schedule VALUES
(201,101,1,'09:00:00','12:00:00'),
(202,102,2,'10:00:00','13:00:00'),
(203,103,3,'14:00:00','17:00:00'),
(204,104,4,'09:00:00','11:00:00'),
(205,105,5,'15:00:00','18:00:00'),
(206,106,6,'08:00:00','10:00:00'),
(207,107,7,'11:00:00','14:00:00'),
(208,108,1,'09:00:00','12:00:00'),
(209,109,2,'10:00:00','13:00:00'),
(210,110,3,'14:00:00','17:00:00'),
(211,111,4,'09:00:00','11:00:00'),
(212,112,5,'15:00:00','18:00:00'),
(213,113,6,'08:00:00','10:00:00'),
(214,114,7,'11:00:00','14:00:00'),
(215,115,1,'09:00:00','12:00:00'),
(216,116,2,'10:00:00','13:00:00'),
(217,117,3,'14:00:00','17:00:00'),
(218,118,4,'09:00:00','11:00:00'),
(219,119,5,'15:00:00','18:00:00'),
(220,120,6,'08:00:00','10:00:00');
INSERT INTO appointment_status VALUES
(301,'Scheduled'),
(302,'Completed'),
(303,'Cancelled'),
(304,'Rescheduled'),
(305,'No Show'),
(306,'Pending'),
(307,'Confirmed'),
(308,'In Progress'),
(309,'Follow-up'),
(310,'Awaiting Approval'),
(311,'Scheduled'),
(312,'Completed'),
(313,'Cancelled'),
(314,'Rescheduled'),
(315,'No Show'),
(316,'Pending'),
(317,'Confirmed'),
(318,'In Progress'),
(319,'Follow-up'),
(320,'Awaiting Approval');
INSERT INTO appointment VALUES
(401,1,101,201,'Chest Pain','2026-09-01',301),
(402,2,102,202,'Skin Rash','2026-09-02',302),
(403,3,103,203,'Back Pain','2026-09-03',303),
(404,4,104,204,'Fever','2026-09-04',304),
(405,5,105,205,'Headache','2026-09-05',305),
(406,6,106,206,'General Checkup','2026-09-06',306),
(407,7,107,207,'Pregnancy','2026-09-07',307),
(408,8,108,208,'Ear Infection','2026-09-08',308),
(409,9,109,209,'Cancer Screening','2026-09-09',309),
(410,10,110,210,'Depression','2026-09-10',310),
(411,11,111,211,'Heart Checkup','2026-09-11',301),
(412,12,112,212,'Acne','2026-09-12',302),
(413,13,113,213,'Fracture','2026-09-13',303),
(414,14,114,214,'Child Vaccination','2026-09-14',304),
(415,15,115,215,'Migraine','2026-09-15',305),
(416,16,116,216,'Routine Exam','2026-09-16',306),
(417,17,117,217,'Gynecology Check','2026-09-17',307),
(418,18,118,218,'Sinus','2026-09-18',308),
(419,19,119,219,'Chemotherapy','2026-09-19',309),
(420,20,120,220,'Counseling','2026-09-20',310);
select* from patient;
select pt_id,last_name,first_name,brith_date
from patient where timestampdiff(year,brith_date,curdate())>=50;
select count(*) as total_patients from patient;
select d.dr_id,d.first_name,d.last_name,count(a.apmt_id)as apmt_count from doctor d
join appointment a on d.dr_id=a.dr_id
group by d.dr_id,d.first_name,d.last_name;
select p.first_name as pt_name,d.first_name as dr_name,a.apmt_date from patient p
join appointment a on p.pt_id=a.pt_id
join doctor d on a.dr_id=d.dr_id;
select d.dr_id,d.first_name,count(a.apmt_id) as ampt_count from doctor d
join appointment a on d.dr_id=a.dr_id
group by d.dr_id,d.first_name having count(a.apmt_id)>=10;
SELECT p.pt_id, p.first_name, p.last_name
FROM patient p
LEFT JOIN appointment a ON p.pt_id = a.pt_id
WHERE a.apmt_id IS NULL;
select pt_id,apmt_id,apmt_date,reason from(select a.*,row_number()over(partition by pt_id order by
apmt_date desc) as latest_apmt
from appointment a) sub where latest_apmt=1;
select d.dr_id,d.first_name,count(a.apmt_id)as appointment_count,
rank()over(order by count(a.apmt_id)desc) as rank_position
from doctor d
join appointment a on d.dr_id=a.dr_id
group by d.dr_id,d.first_name;
SELECT p.pt_id, p.first_name, COUNT(DISTINCT a.dr_id) AS doctor_count
FROM patient p
JOIN appointment a ON p.pt_id = a.pt_id
GROUP BY p.pt_id, p.first_name
HAVING COUNT(DISTINCT a.dr_id) >=1;
