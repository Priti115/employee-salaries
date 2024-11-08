--use data_new 
-- 1 Show all columns and row in the table 
select*from salaries

--  2.show only EmployeeNameand job title columns 
select EmployeeName ,JobTitle from salaries 

-- 3. show the number of Employess in the table 
select count(*) from salaries ;

-- 4. show the uniqe job title in the table 
-- select distinct JobTitle  from salaries 

-- 5. Show the job title and overtime pay for all employee with overtime pay greater than 5000?
 select JobTitle , OvertimePay from salaries 
 where TotalPay > 5000;

-- 6. show the avg base of for all employee
-- select avg(BasePay) from salaries 

-- 7. show the top 10 highest paid Employee 

select  EmployeeName , TotalPay from salaries 
order by TotalPay desc
limit 10;

-- 8. Show the average of BasePay , OvertimePay , and OtherPay for wach employee?
 select EmployeeName ,(BasePay +OvertimePay + OtherPay)/3 from salaries ;
 
 -- 9. show all employee who have the word 'Maneger' in their job title. 
 select EmployeeName, JobTitle from salaries 
 where JobTitle Like  '%Manager%';
 
 -- 10. Show all employee with a job title not equal to 'Manager'
   select EmployeeName, JobTitle from salaries 
   where JobTitle  <> 'Manager';
   
   -- 11. show all employee with a total pay between 50,000  and 75,000.
    select EmployeeName , TotalPay from salaries 
    where TotalPay between 5000  and 7000 ;
    
    -- 12 . Show all Employee with a basepay less than 50,000 or a total pay greater than 100,000
    select EmployeeName , BasePay,TotalPay from salaries 
    where BasePay < 500000 and TotalPay >100000;


    -- 13 show all Employee with total pay benefits value between 125,000 and 150,000 and a jobtitle contaning the word "Director"
    
    select EmployeeName , TotalPayBenefits , JobTitle from salaries 
    where TotalPayBenefits between 125000 and 150000 and JobTitle like '%Direcrtor%';
   
    
    -- 14. show all employee ordered by their total pay benefits in desencig order ?
    
    select EmployeeName , TotalPayBenefits from salaries 
    order by TotalPayBenefits desc;
    
   -- 15 . show all job title with an average base pay of at least 100,000 and order them by the average base [ay in desecending order ?
   select JobTitle , avg(BasePay) from salaries 
   group by JobTitle 
   having avg(BasePay)>= 100000
   order by avg(BasePay) desc;
   
   
   -- 16 delete the coloumn 
    select * from salaries ;
    
    alter table salaries 
    drop column notes ;
    
    --  17. Update the BasePay of all the Employee with the job title contaning "Maneger" by inceresingly it by 10%?
    update salaries 
    set BasePay = BasePay*1.1
    where JobTitle Like "%Manager%";
    select * from salaries ;
    
    -- 18. delete all employee who have no Overtimes 
    
select count(*) from salaries 
where OvertimePay = 0;

delete from salaries 
where OvertimePay = 0;

select count(*) from salaries 
where OvertimePay = 0;
  
  
   
   



