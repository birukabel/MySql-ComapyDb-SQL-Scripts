create table `company`.`employee`(
`fname` varchar(15) not null,
`mname` char null,
`lname` varchar(15) not null,
`ssn` char(9) not null,
`Bdate` date,
`Address` varchar(35) not null,
`Sex` char null,
`Salary` decimal(10,2) null,
`Super_ssn` char(9) null,
`Dno` int not null,
PRIMARY KEY(`ssn`)
);
create table `company`.`department`(
`Dname` varchar(15) not null,
`Dnumber` int not null,
`Mgr_ssn` char(9) not null,
`Mgr_start_date` date null,
Primary key(`Dnumber`)
);

create table `company`.`department_locations`(
`Dnumber` int not null,
`Dlocation` varchar(15) not null,
primary key (`Dnumber`,`Dlocation`) 
);

create table `company`.`project`(
`Pname` varchar(15) not null,
`Pnumber` int not null,
`Plocation` varchar(15),
`Dnum` int not null,
Primary key(`Pnumber`),
unique(`Pname`)
);

create table `company`.`works_on`(
`Essn` char(9) not null,
`Pno` int not null,
`Hours` decimal(3,1) not null,
Primary key(`Essn`,`Pno`)
);
create table `company`.`dependent`(
`Essn` char(9) not null,
`Depenedent_name` varchar(15) not null,
`Sex` char,
`Bdate` date,
`Relationship` varchar(10),
Primary key(`Essn`,`Depenedent_name`)
);

insert into `company`.`employee`(fname,mname,lname,ssn,Bdate,Address,Sex,Salary,Super_ssn,Dno) 
values('Franklin','T','Wong','33322255','1955-12-08','638 Voss Housten, TX','M','40000','88866555','5')