drop table student;
drop table grade_report;
drop table section;
drop table department_to_major;
drop table plants;
drop table prereq;
drop table course;
drop table cap;
drop table room;
drop table dependent;

create table student
(STNO SMALLINT PRIMARY KEY NOT NULL,
 SNAME NVARCHAR2(20) NULL,
 MAJOR NVARCHAR2(4) NULL,
 CLASS SMALLINT NULL,
 BDATE DATE NULL)
;

create table grade_report
(STUDENT_NUMBER SMALLINT NOT NULL,
 SECTION_ID SMALLINT NOT NULL,
 GRADE CHAR(1),
 CONSTRAINT stno_secid PRIMARY KEY (STUDENT_NUMBER, SECTION_ID));

create table section
(SECTION_ID SMALLINT PRIMARY KEY NOT NULL,
 COURSE_NUM NVARCHAR2(8),
 SEMESTER NVARCHAR2(6),
 YEAR CHAR(2),
 INSTRUCTOR NVARCHAR2(10),
 BLDG SMALLINT,
 ROOM SMALLINT)
;

create table department_to_major
(Dcode NVARCHAR2(4) PRIMARY KEY NOT NULL,
 DNAME NVARCHAR2(20))
;

create table plants
(COMPANY NVARCHAR2(20),
 PLANTLO NVARCHAR2(15))
;
create table prereq
(COURSE_NUMBER NVARCHAR2(8),
 PREREQ NVARCHAR2(8),
 CONSTRAINT couno_pre PRIMARY KEY(COURSE_NUMBER, PREREQ));

create table course
(COURSE_NAME NVARCHAR2(20),
 COURSE_NUMBER NVARCHAR2(8) PRIMARY KEY NOT NULL,
 CREDIT_HOURS SMALLINT,
 OFFERING_DEPT NVARCHAR2(4))
;

create table cap
(NAME NVARCHAR2(9),
 LANGU NVARCHAR2(7))
;

create table room
 (BLDG SMALLINT NOT NULL,
 ROOM SMALLINT NOT NULL,
 CAPACITY SMALLINT,
 OHEAD NVARCHAR2(1),
 CONSTRAINT bldg_room PRIMARY KEY(BLDG, ROOM))
;

create table dependent
(PNO SMALLINT NOT NULL,
 DNAME NVARCHAR2(20) NULL,
 RELATIONSHIP NVARCHAR2(8) NULL,
 SEX CHAR(1) NULL,
 AGE SMALLINT NULL)
;

insert into cap values('BRENDA','FRENCH'); 
insert into cap values('BRENDA','CHINESE');
insert into cap values('RICHARD','CHINESE'); 
insert into cap values('RICHARD','GERMAN');
insert into cap values('MARY JO','FRENCH');
insert into cap values('RICHARD','FRENCH');
insert into cap values('LUJACK','GERMAN'); 
insert into cap values('LUJACK','CHINESE');
insert into cap values('MARY JO','GERMAN');
insert into cap values('MARY JO','CHINESE'); 
insert into cap values('MELANIE','FRENCH');
insert into cap values('LUJACK','FRENCH'); 
insert into cap values('MELANIE','CHINESE'); 
insert into cap values('BRENDA','SPANISH');
insert into cap values('RICHARD','SPANISH'); 
insert into cap values('JOE','CHINESE'); 
insert into cap values('LUJACK','SPANISH');
insert into cap values('KENT','CHINESE');
insert into course values('ACCOUNTING I','ACCT2020',3,'ACCT');
insert into course values('ACCOUNTING II ','ACCT2220',3,'ACCT');
insert into course values('MANAGERIAL FINANCE','ACCT3333',3,'ACCT');
insert into course values('ACCOUNTING INFO SYST','ACCT3464',3,'ACCT');
insert into course values('INTRO TO COMPUTER SC','COSC1310',4,'COSC');
insert into course values('TURBO PASCAL','COSC2025',3,'COSC');
insert into course values('ADVANCED COBOL','COSC2303',3,'COSC');
insert into course values('DATA STRUCTURES ','COSC3320',4,'COSC');
insert into course values('DATABASE','COSC3380',3,'COSC');
insert into course values('OPERATIONS RESEARCH ','COSC3701',3,'COSC');
insert into course values('ADVANCED ASSEMBLER','COSC4301',3,'COSC');
insert into course values('SYSTEM PROJECT','COSC4309',3,'COSC');
insert into course values('ADA - INTRODUCTION','COSC5234',4,'COSC');
insert into course values('NETWORKS','COSC5920',3,'COSC');
insert into course values('ENGLISH COMP I','ENGL1010',3,'ENGL');
insert into course values('ENGLISH COMP II ','ENGL1011',3,'ENGL');
insert into course values('WRITING FOR NON MAJO','ENGL3520',2,'ENGL');
insert into course values('ALGEBRA ','MATH2333',3,'MATH');
insert into course values('DISCRETE MATHEMATICS','MATH2410',3,'MATH');
insert into course values('CALCULUS 1','MATH1501',4,'MATH');
insert into course values('AMERICAN CONSTITUTIO','POLY1201',1,'POLY');
insert into course values('INTRO TO POLITICAL S','POLY2001',3,'POLY');
insert into course values('AMERICAN GOVERNMENT ','POLY2103',2,'POLY');
insert into course values('SOCIALISM AND COMMUN','POLY4103',4,'POLY');
insert into course values('POLITICS OF CUBA','POLY5501',4,'POLY');
insert into course values('TECHNICAL WRITING ','ENGL3402',2,'ENGL');
insert into course values('FUND. TECH. WRITING ','ENGL3401',3,'ENGL');
insert into course values('INTRO TO CHEMISTRY','CHEM2001',3,'CHEM');
insert into course values('ORGANIC CHEMISTRY ','CHEM3001',3,'CHEM');
insert into course values('CALCULUS 2','MATH1502',3,'MATH');
insert into course values('CALCULUS 3','MATH1503',3,'MATH');
insert into course values('MATH ANALYSIS','MATH5501',3,'MATH');
insert into department_to_major values('ACCT','Accounting'); 
insert into department_to_major values('ART','Art'); 
insert into department_to_major values('COSC','Computer Science'); 
insert into department_to_major values('ENGL','English'); 
insert into department_to_major values('MATH','Mathematics'); 
insert into department_to_major values('POLY','Political Science'); 
insert into department_to_major values('UNKN',null); 
insert into department_to_major values('CHEM','Chemistry');
insert into grade_report values(2,85,'D');
insert into grade_report values(2,102,'B'); 
insert into grade_report values(2,126,'B'); 
insert into grade_report values(2,127,'A'); 
insert into grade_report values(2,145,'B'); 
insert into grade_report values(3,85,'A');
insert into grade_report values(3,87,'B');
insert into grade_report values(3,90,'B');
insert into grade_report values(3,91,'B');
insert into grade_report values(3,92,'B');
insert into grade_report values(3,96,'B');
insert into grade_report values(3,101,null);
insert into grade_report values(3,133,null);
insert into grade_report values(3,134,null);
insert into grade_report values(3,135,null);
insert into grade_report values(8,85,'A');
insert into grade_report values(8,92,'A');
insert into grade_report values(8,96,'C');
insert into grade_report values(8,102,'B'); 
insert into grade_report values(8,133,null);
insert into grade_report values(8,134,null);
insert into grade_report values(8,135,null);
insert into grade_report values(10,101,null); 
insert into grade_report values(10,112,null); 
insert into grade_report values(10,119,null); 
insert into grade_report values(10,126,'C');
insert into grade_report values(10,127,'A');
insert into grade_report values(10,145,'C');
insert into grade_report values(13,85,'B'); 
insert into grade_report values(13,95,'B'); 
insert into grade_report values(13,99,null);
insert into grade_report values(13,109,null); 
insert into grade_report values(13,119,null); 
insert into grade_report values(13,133,null); 
insert into grade_report values(13,134,null); 
insert into grade_report values(13,135,null); 
insert into grade_report values(14,102,'B');
insert into grade_report values(14,112,null); 
insert into grade_report values(14,91,'A'); 
insert into grade_report values(14,135,null); 
insert into grade_report values(14,145,'B');
insert into grade_report values(14,158,'B');
insert into grade_report values(15,85,'F'); 
insert into grade_report values(15,92,'B'); 
insert into grade_report values(15,99,null);
insert into grade_report values(15,102,'B');
insert into grade_report values(15,135,null); 
insert into grade_report values(15,145,'B');
insert into grade_report values(15,158,'C');
insert into grade_report values(17,112,null); 
insert into grade_report values(17,119,null); 
insert into grade_report values(17,135,null); 
insert into grade_report values(19,102,'B');
insert into grade_report values(19,119,null); 
insert into grade_report values(19,133,null); 
insert into grade_report values(19,158,'D');
insert into grade_report values(20,87,'A'); 
insert into grade_report values(20,94,'C'); 
insert into grade_report values(6,201,null);
insert into grade_report values(8,201,null);
insert into grade_report values(24,90,'B'); 
insert into grade_report values(34,90,'B'); 
insert into grade_report values(49,90,'C'); 
insert into grade_report values(62,90,'C'); 
insert into grade_report values(70,90,'C'); 
insert into grade_report values(121,90,'B');
insert into grade_report values(122,90,'B');
insert into grade_report values(123,90,'B');
insert into grade_report values(125,90,'C');
insert into grade_report values(126,90,'C');
insert into grade_report values(127,90,'C');
insert into grade_report values(128,90,'F');
insert into grade_report values(129,90,'A');
insert into grade_report values(130,90,'C');
insert into grade_report values(131,90,'C');
insert into grade_report values(132,90,'B');
insert into grade_report values(142,90,'A');
insert into grade_report values(143,90,'B');
insert into grade_report values(144,90,'B');
insert into grade_report values(145,90,'F');
insert into grade_report values(146,90,'B');
insert into grade_report values(147,90,'C');
insert into grade_report values(148,90,'C');
insert into grade_report values(31,90,'C'); 
insert into grade_report values(151,90,'C');
insert into grade_report values(153,90,'C');
insert into grade_report values(155,90,'B');
insert into grade_report values(157,90,'B');
insert into grade_report values(158,90,'C');
insert into grade_report values(163,90,'C');
insert into grade_report values(161,90,'C');
insert into grade_report values(160,90,'C');
insert into grade_report values(5,90,'C');
insert into grade_report values(7,90,'C');
insert into grade_report values(9,90,'F');
insert into grade_report values(62,94,'C'); 
insert into grade_report values(70,94,'C'); 
insert into grade_report values(49,94,'C'); 
insert into grade_report values(5,94,'C');
insert into grade_report values(6,94,'C');
insert into grade_report values(7,94,'C');
insert into grade_report values(8,94,'C');
insert into grade_report values(9,94,'F');
insert into grade_report values(5,95,'B');
insert into grade_report values(6,95,'B');
insert into grade_report values(7,95,'B');
insert into grade_report values(8,95,'B');
insert into grade_report values(9,95,'F');
insert into grade_report values(121,95,'B');
insert into grade_report values(122,95,'B');
insert into grade_report values(123,95,'B');
insert into grade_report values(125,95,'B');
insert into grade_report values(126,95,'B');
insert into grade_report values(127,95,'B');
insert into grade_report values(128,95,'F');
insert into grade_report values(129,95,'B');
insert into grade_report values(130,95,'C');
insert into grade_report values(121,94,'B');
insert into grade_report values(122,94,'B');
insert into grade_report values(123,94,'B');
insert into grade_report values(125,94,'C');
insert into grade_report values(126,94,'C');
insert into grade_report values(127,94,'C');
insert into grade_report values(128,94,'F');
insert into grade_report values(129,94,'A');
insert into grade_report values(130,94,'C');
insert into grade_report values(24,95,'B'); 
insert into grade_report values(24,96,'B'); 
insert into grade_report values(24,97,null);
insert into grade_report values(24,98,null);
insert into grade_report values(24,99,null);
insert into grade_report values(24,100,null); 
insert into grade_report values(34,98,null);
insert into grade_report values(34,97,null);
insert into grade_report values(34,93,'A'); 
insert into grade_report values(49,98,null);
insert into grade_report values(49,97,null);
insert into grade_report values(49,93,'A'); 
insert into grade_report values(123,98,null); 
insert into grade_report values(123,97,null); 
insert into grade_report values(123,93,'A');
insert into grade_report values(125,98,null); 
insert into grade_report values(125,97,null); 
insert into grade_report values(125,93,'A');
insert into grade_report values(126,98,null); 
insert into grade_report values(126,97,null); 
insert into grade_report values(126,93,'A');
insert into grade_report values(127,98,null); 
insert into grade_report values(127,97,null); 
insert into grade_report values(127,93,'A');
insert into grade_report values(142,100,null);
insert into grade_report values(143,100,null);
insert into grade_report values(144,100,null);
insert into grade_report values(145,100,null);
insert into grade_report values(146,100,null);
insert into grade_report values(147,100,null);
insert into grade_report values(148,100,null);
insert into grade_report values(142,107,null);
insert into grade_report values(143,107,null);
insert into grade_report values(144,107,null);
insert into grade_report values(145,107,null);
insert into grade_report values(146,107,null);
insert into grade_report values(147,107,null);
insert into grade_report values(148,107,null);
insert into grade_report values(142,202,null);
insert into grade_report values(143,202,null);
insert into grade_report values(144,202,null);
insert into grade_report values(145,202,null);
insert into grade_report values(146,202,null);
insert into grade_report values(147,202,null);
insert into grade_report values(148,202,null);
insert into grade_report values(142,88,null); 
insert into grade_report values(143,88,null); 
insert into grade_report values(144,88,null); 
insert into grade_report values(145,88,null); 
insert into grade_report values(146,88,null); 
insert into grade_report values(147,88,null); 
insert into grade_report values(148,88,null); 
insert into grade_report values(142,89,'A');
insert into grade_report values(143,89,'B');
insert into grade_report values(144,89,'B');
insert into grade_report values(145,89,'F');
insert into grade_report values(146,89,'B');
insert into grade_report values(147,89,'B');
insert into grade_report values(148,89,'B');
insert into grade_report values(151,97,null); 
insert into grade_report values(153,97,null); 
insert into grade_report values(155,97,null); 
insert into grade_report values(157,97,null); 
insert into grade_report values(158,97,null); 
insert into grade_report values(160,97,null); 
insert into grade_report values(161,97,null); 
insert into grade_report values(163,97,null); 
insert into grade_report values(151,109,null);
insert into grade_report values(153,109,null);
insert into grade_report values(155,109,null);
insert into grade_report values(157,109,null);
insert into grade_report values(158,109,null);
insert into grade_report values(160,109,null);
insert into grade_report values(161,109,null);
insert into grade_report values(163,109,null);
insert into grade_report values(151,201,null);
insert into grade_report values(153,201,null);
insert into grade_report values(155,201,null);
insert into grade_report values(157,201,null);
insert into grade_report values(158,201,null);
insert into grade_report values(160,201,null);
insert into grade_report values(161,201,null);
insert into grade_report values(163,201,null);
insert into plants values('GULP OIL','PITTSBURGH'); 
insert into plants values('GULP OIL','GULF BREEZE');
insert into plants values('GULP OIL','MOBILE'); 
insert into plants values('GULP OIL','SAN FRANCISCO');
insert into plants values('GULP OIL','HONOLULU'); 
insert into plants values('GULP OIL','BINGHAMTON'); 
insert into plants values('IBN COMPUTERS','PITTSBURGH');
insert into plants values('IBN COMPUTERS','GULF BREEZE'); 
insert into plants values('IBN COMPUTERS','MOBILE');
insert into plants values('IBN COMPUTERS','SAN FRANCISCO'); 
insert into plants values('IBN COMPUTERS','HONOLULU');
insert into plants values('IBN COMPUTERS','BINGHAMTON');
insert into plants values('BO$S TIRES','PITTSBURGH'); 
insert into plants values('BO$S TIRES','GULF BREEZE');
insert into plants values('BO$S TIRES','MOBILE'); 
insert into plants values('BO$S TIRES','SAN FRANCISCO');
insert into plants values('BO$S TIRES','HONOLULU'); 
insert into plants values('BO$S TIRES','BINGHAMTON'); 
insert into plants values('BANK D$AMERICER','PITTSBURGH');
insert into plants values('BANK D$AMERICER','GULF BREEZE'); 
insert into plants values('BANK D$AMERICER','MOBILE');
insert into plants values('BANK D$AMERICER','SAN FRANCISCO'); 
insert into plants values('BANK D$AMERICER','HONOLULU');
insert into plants values('BANK D$AMERICER','BINGHAMTON');
insert into plants values('COLONEL MOTORS','PITTSBURGH'); 
insert into plants values('COLONEL MOTORS','GULF BREEZE');
insert into plants values('COLONEL MOTORS','SAN FRANCISCO');
insert into plants values('COLONEL MOTORS','HONOLULU'); 
insert into plants values('COLONEL MOTORS','BINGHAMTON'); 
insert into plants values('COLONEL MOTORS','TUSCALOOSA'); 
insert into plants values('COKE COLA','PITTSBURGH'); 
insert into plants values('COKE COLA','GULF BREEZE'); 
insert into plants values('COKE COLA','MOBILE');
insert into plants values('COKE COLA','SAN FRANCISCO'); 
insert into plants values('COKE COLA','HONOLULU');
insert into plants values('COKE COLA','BINGHAMTON');
insert into plants values('COKE COLA','TUSCALOOSA');
insert into plants values('WENDIES','PITTSBURGH');
insert into plants values('WENDIES','GULF BREEZE'); 
insert into plants values('WENDIES','MOBILE');
insert into plants values('WENDIES','SAN FRANCISCO'); 
insert into plants values('WENDIES','HONOLULU'); 
insert into plants values('WENDIES','BINGHAMTON');
insert into plants values('WENDIES','TUSCALOOSA');
insert into plants values('CAPTAIN E$S','PITTSBURGH');
insert into plants values('CAPTAIN E$S','GULF BREEZE'); 
insert into plants values('CAPTAIN E$S','MOBILE');
insert into plants values('CAPTAIN E$S','SAN FRANCISCO'); 
insert into plants values('CAPTAIN E$S','HONOLULU');
insert into plants values('CAPTAIN E$S','BINGHAMTON');
insert into plants values('CAPTAIN E$S','TUSCALOOSA');
insert into plants values('RADAR SHACK','PITTSBURGH');
insert into plants values('RADAR SHACK','GULF BREEZE'); 
insert into plants values('RADAR SHACK','SAN FRANCISCO'); 
insert into plants values('RADAR SHACK','HONOLULU');
insert into plants values('RADAR SHACK','BINGHAMTON');
insert into plants values('RADAR SHACK','TUSCALOOSA');
insert into plants values('PHIL$S BAKE SHOP','PITTSBURGH'); 
insert into plants values('PHIL$S BAKE SHOP','GULF BREEZE');
insert into plants values('PHIL$S BAKE SHOP','SAN FRANCISCO');
insert into plants values('PHIL$S BAKE SHOP','HONOLULU'); 
insert into plants values('PHIL$S BAKE SHOP','BINGHAMTON'); 
insert into plants values('PHIL$S BAKE SHOP','TUSCALOOSA');
insert into plants values('WYATT$S TOMBSTONE','PITTSBURGH');
insert into plants values('WYATT$S TOMBSTONE','GULF BREEZE'); 
insert into plants values('WYATT$S TOMBSTONE','SAN FRANCISCO'); 
insert into plants values('WYATT$S TOMBSTONE','HONOLULU');
insert into plants values('WYATT$S TOMBSTONE','BINGHAMTON');
insert into plants values('WYATT$S TOMBSTONE','TUSCALOOSA');
insert into plants values('EAST PUBLISHING','PITTSBURGH');
insert into plants values('EAST PUBLISHING','GULF BREEZE'); 
insert into plants values('EAST PUBLISHING','SAN FRANCISCO'); 
insert into plants values('EAST PUBLISHING','HONOLULU');
insert into plants values('EAST PUBLISHING','BINGHAMTON');
insert into plants values('EAST PUBLISHING','TUSCALOOSA');
insert into plants values('UTAH BOB$S','PITTSBURGH'); 
insert into plants values('UTAH BOB$S','GULF BREEZE');
insert into plants values('UTAH BOB$S','SAN FRANCISCO');
insert into plants values('UTAH BOB$S','HONOLULU'); 
insert into plants values('UTAH BOB$S','BINGHAMTON');
update plants set company = replace(company,'$','''');
insert into prereq values('ACCT3333','ACCT2220'); 
insert into prereq values('COSC3320','COSC1310'); 
insert into prereq values('COSC3380','COSC3320'); 
insert into prereq values('COSC3380','MATH2410'); 
insert into prereq values('COSC5234','COSC3320'); 
insert into prereq values('ENGL1011','ENGL1010'); 
insert into prereq values('ENGL3401','ENGL1011'); 
insert into prereq values('ENGL3520','ENGL1011'); 
insert into prereq values('MATH5501','MATH2333'); 
insert into prereq values('POLY2103','POLY1201'); 
insert into prereq values('POLY5501','POLY4103'); 
insert into prereq values('CHEM3001','CHEM2001');
insert into room values(13,101,85,'Y'); 
insert into room values(36,123,35,'N'); 
insert into room values(58,114,60,null);
insert into room values(79,179,35,'Y'); 
insert into room values(79,174,22,'Y'); 
insert into room values(58,112,40,null);
insert into room values(36,122,25,'N');
insert into room values(36,121,25,'N');
insert into room values(36,120,25,'N');
insert into room values(58,110,null,'Y');
insert into section values(85,'MATH2410','FALL','98','KING',36,123);
insert into section values(86,'MATH5501','FALL','98','EMERSON',36,123);
insert into section values(87,'ENGL3401','FALL','98','HILLARY',13,101);
insert into section values(88,'ENGL3520','FALL','99','HILLARY',13,101);
insert into section values(89,'ENGL3520','SPRING','99','HILLARY',13,101);
insert into section values(90,'COSC3380','SPRING','99','HARDESTY',79,179);
insert into section values(91,'COSC3701','FALL','98',null,79,179);
insert into section values(92,'COSC1310','FALL','98','ANDERSON',79,179);
insert into section values(93,'COSC1310','SPRING','99','RAFAELT',79,179);
insert into section values(94,'ACCT3464','FALL','98','RODRIGUEZ',74,null); 
insert into section values(95,'ACCT2220','SPRING','99','RODRIQUEZ',74,null); 
insert into section values(96,'COSC2025','FALL','98','RAFAELT',79,179);
insert into section values(97,'ACCT3333','FALL','99','RODRIQUEZ',74,null); 
insert into section values(98,'COSC3380','FALL','99','HARDESTY',79,179);
insert into section values(99,'ENGL3401','FALL','99','HILLARY',13,101);
insert into section values(102,'COSC3320','SPRING','99','KNUTH',79,179); 
insert into section values(107,'MATH2333','SPRING','00','CHANG',36,123); 
insert into section values(109,'MATH5501','FALL','99','CHANG',36,123); 
insert into section values(112,'MATH2410','FALL','99','CHANG',36,123); 
insert into section values(119,'COSC1310','FALL','99','ANDERSON',79,179); 
insert into section values(126,'ENGL1010','FALL','98','HERMANO',13,101);
insert into section values(127,'ENGL1011','SPRING','99','HERMANO',13,101); 
insert into section values(133,'ENGL1010','FALL','99','HERMANO',13,101); 
insert into section values(134,'ENGL1011','SPRING','00','HERMANO',13,101); 
insert into section values(135,'COSC3380','FALL','99','STONE',79,179); 
insert into section values(145,'COSC1310','SPRING','99','JONES',79,179); 
insert into section values(158,'MATH2410','SPRING','98',null,36,123); 
insert into section values(201,'CHEM2001','FALL','99',null,58,114); 
insert into section values(202,'CHEM3001','SPRING','00','CARNEAU',58,null);
insert into section values(100,'POLY1201','FALL','99','SCHMIDT',null,null);
insert into section values(101,'POLY2103','SPRING','00','SCHMIDT',null,null);
insert into section values(104,'POLY4103','SPRING','00','SCHMIDT',null,null);
insert into student values(2,'Lineas','ENGL','1','15-APR-80');
insert into student values(3,'Mary','COSC','4','16-JUL-78');
insert into student values(8,'Brenda','COSC','2','13-AUG-77');
insert into student values(10,'Richard','ENGL','1','13-MAY-80');
insert into student values(13,'Kelly','MATH','4','12-AUG-80');
insert into student values(14,'Lujack','COSC','1','12-FEB-77'); 
insert into student values(15,'Reva','MATH','2','10-JUN-80'); 
insert into student values(17,'Elainie','COSC','1','12-AUG-76');
insert into student values(19,'Harley','POLY','2','16-APR-81'); 
insert into student values(20,'Donald','ACCT','4','15-OCT-77'); 
insert into student values(24,'Chris','ACCT','4','12-FEB-78');
insert into student values(34,'Lynette','POLY','1','16-JUL-81');
insert into student values(49,'Susan','ENGL','3','11-MAR-80');
insert into student values(62,'Monica','MATH','3','14-OCT-80'); 
insert into student values(70,'Bill','POLY',null,'14-OCT-80');
insert into student values(121,'Hillary','COSC','1','16-JUL-77'); 
insert into student values(122,'Phoebe','ENGL','3','15-APR-80');
insert into student values(123,'Holly','POLY','4','15-JAN-81'); 
insert into student values(125,'Sadie','MATH','2','12-AUG-80'); 
insert into student values(126,'Jessica','POLY','2','16-JUL-81'); 
insert into student values(127,'Steve','ENGL','1','11-MAR-80'); 
insert into student values(128,'Brad','COSC','1','10-SEP-77');
insert into student values(129,'Cedric','ENGL','2','15-APR-80');
insert into student values(130,'Alan','COSC','2','16-JUL-77');
insert into student values(131,'Rachel','ENGL','3','15-APR-80');
insert into student values(132,'George','POLY','1','16-APR-81');
insert into student values(142,'Jerry','COSC','4','12-MAR-78'); 
insert into student values(143,'Cramer','ENGL','3','15-APR-80');
insert into student values(144,'Fraiser','POLY','1','16-JUL-81'); 
insert into student values(145,'Harrison','ACCT','4','12-FEB-77');
insert into student values(146,'Francis','ACCT','4','11-JUN-77'); 
insert into student values(147,'Smithly','ENGL','2','13-MAY-80'); 
insert into student values(148,'Sebastian','ACCT','2','14-OCT-76'); 
insert into student values(31,'Jake','COSC','4','12-FEB-78'); 
insert into student values(151,'Losmith','CHEM','3','15-JAN-81'); 
insert into student values(153,'Genevieve','UNKN',null,'15-OCT-79');
insert into student values(155,'Lindsay','UNKN','1','15-OCT-79'); 
insert into student values(157,'Stephanie','MATH',null,'16-APR-81');
insert into student values(158,'Thornton',null,null,'15-OCT-79'); 
insert into student values(163,'Lionel',null,null,'15-OCT-79'); 
insert into student values(161,'Benny','CHEM','4','10-JUN-80'); 
insert into student values(160,'Gus','ART ','3','15-OCT-78'); 
insert into student values(5,'Zelda','COSC',null,'12-FEB-78');
insert into student values(7,'Mario','MATH',null,'12-AUG-80');
insert into student values(9,'Romona','ENGL',null,'15-APR-80'); 
insert into student values(6,'Ken','POLY',null,'15-JUL-80');
insert into student values(88,'Smith',null,null,'15-OCT-79'); 
insert into student values(191,'Jake','MATH','2','10-JUN-80'); 
insert into dependent values(2,'Matt','Son','M',8);
insert into dependent values(2,'Mary','Daughter','F',9);
insert into dependent values(2,'Beena','Spouse','F',31);
insert into dependent values(10,'Amit','Son','M',3);
insert into dependent values(10,'Shantu','Daughter','F',5);
insert into dependent values(14,'Raju','Son','M',1); 
insert into dependent values(14,'Rani',' ','F',3); 
insert into dependent values(17,'Susan','Daughter','F',4);
insert into dependent values(17,'Sam','Son','M',1); 
insert into dependent values(20,'Donald II','Son','M',Null); 
insert into dependent values(20,'Chris','Son','M',6);
insert into dependent values(34,'Susan','Daughter','F',5);
insert into dependent values(34,'Monica','Daughter','F',1);
insert into dependent values(62,'Tom','Husband','M',45); 
insert into dependent values(62,'James','Son','M',14);
insert into dependent values(62,'Hillary','Daughter','F',16); 
insert into dependent values(62,'Phoebe','Daughter','F',12);
insert into dependent values(123,'James','Son','M',5); 
insert into dependent values(123,'Jon','Son','M',2); 
insert into dependent values(126,'Om','Son','M',6); 
insert into dependent values(126,'Prakash','Son','M',1); 
insert into dependent values(128,'Mithu','Son','M',1);
insert into dependent values(128,'Mita','Daughter','F',Null);
insert into dependent values(128,'Nita','Daughter','F',2);
insert into dependent values(128,'Barbara','Wife','F',26);
insert into dependent values(132,'Rekha','Daughter','F',6);
insert into dependent values(142,'Rakhi','Daughter','F',2); 
insert into dependent values(143,'Mona','Daughter','F',7);
insert into dependent values(144,'Susan','Wife','F',22); 
insert into dependent values(145,'Susie','Wife','F',22);
insert into dependent values(146,'Xi du','Wife','F',22); 
insert into dependent values(147,'Barbara','Wife','F',23); 
insert into dependent values(147,'Sebastian','Son','M',4); 
insert into dependent values(147,'Jake','Son','M',2); 
insert into dependent values(147,'Losmith','Son','M',Null); 
insert into dependent values(153,'Madhu','Daughter','F',5);
insert into dependent values(153,'Mamta','Daughter','F',4); 
insert into dependent values(153,'Mahesh','Son','M',2);
insert into dependent values(158,'Sally','wife', 'F',22); 


