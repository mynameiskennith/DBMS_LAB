create table Employee(Emp_id int primary key, 
                    Emp_name varchar(20), 
                    Dept varchar(30), 
                    Salary int);



insert into Employee values(1,'Opera','HR',9000);
insert into Employee values(2,'David Smith','Marketing',8000);
insert into Employee values(3,'Charles Brown','Production',7000);
insert into Employee values(4,'Aron','Sales',6000);


select * from Employee where salary>7000;


update Employee
      set Salary = 8200.00
      where Emp_Name = 'David Smith';







insert into Employee values(6,'Daniel Harris','Production',6700.00);
   
     
delete from employee where Emp_id = 3


select * from employee where not (emp_name like 'D%' or emp_name like 'O%');


select dept,sum(salary) from employee group by dept;


update Employee
      set salary = (5/100)*salary + salary
      where dept = 'Production';

      


delete from employee where salary<7000;


select emp_name,salary from employee where salary = (select min(salary) from employee);

update employee
      set salary = 8200.00
      where dept = 'Marketing';


insert into Employee values(7,'Aswin','Riskers',9000);
insert into Employee values(8,'Kennith','Management',8000);


select emp_name from employee
        where (emp_name like 'A%');


select emp_name from employee where(emp_name like '%it%')

select upper(dept) from employee;


select * from employee where (dept like 'M%' and dept like '__r%' and dept like '%ket%');


select distinct upper(reverse(dept)) from employee;
