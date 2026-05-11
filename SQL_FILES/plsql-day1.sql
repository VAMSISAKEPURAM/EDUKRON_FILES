<<<<<<< HEAD
-- pl/sql
-- if , if else , if elsif and for loop

-- if 

-- DECLARE 
-- v_salary hr.employees.salary%TYPE;
-- BEGIN
--     select salary 
--     into v_salary
--     from hr.EMPLOYEES
--     where EMPLOYEE_ID = 100;

--     if v_salary > 10000 then
--         DBMS_OUTPUT.PUT_LINE(' high salary employee');
--     end If;
-- end;
-- /


-- DECLARE
--     v_salary hr.employees.salary%type;
--     v_last_name hr.employees.last_name%type;

-- BEGIN
--     select salary,last_name
--     into v_salary,v_last_name
--     from hr.EMPLOYEES
--     where EMPLOYEE_ID = 100

--     DBMS_OUTPUT.PUT_LINE('employee details are:salary is' 
--                         || v_salary || 'last name id ' || v_last_name);

-- END;
-- /



--if else

-- DECLARE
-- id number := 100;
-- v_salary hr.employees.salary%type;

-- BEGIN
--     select salary
--     into v_salary from hr.EMPLOYEES
--     where employee_id = id;

--     if v_salary > 10000 then 
--         DBMS_OUTPUT.PUT_LINE('higest salary');
--     else 
--         DBMS_OUTPUT.PUT_LINE('lowest salary');
--     end if;

-- END;

-- -- elsif
-- DECLARE
--     v_salary hr.employees.salary%TYPE;

-- BEGIN
--     select salary
--     into v_salary
--     from hr.EMPLOYEES
--     where EMPLOYEE_ID = 100;

--     if v_salary > 50000 then
--         DBMS_OUTPUT.PUT_LINE('high level salary');
--     elsif v_salary > 30000 THEN
--         DBMS_OUTPUT.PUT_LINE('mid level salary');
--     else
--         DBMS_OUTPUT.PUT_LINE('low level salary');

--     end if;
-- END;
-- /


-- --  for loop

DECLARE
BEGIN
    for id in (select employee_id,salary from hr.employees where employee_id < 200) loop
         DBMS_OUTPUT.PUT_LINE(id.salary);
    end loop;
END;

DECLARE
BEGIN
   FOR rec IN (SELECT employee_id, salary FROM hr.employees) LOOP
      DBMS_OUTPUT.PUT_LINE('Employee ID: ' || rec.employee_id ||
                           ' | Salary: ' || rec.salary);
   END LOOP;
=======
-- pl/sql
-- if , if else , if elsif and for loop

-- if 

-- DECLARE 
-- v_salary hr.employees.salary%TYPE;
-- BEGIN
--     select salary 
--     into v_salary
--     from hr.EMPLOYEES
--     where EMPLOYEE_ID = 100;

--     if v_salary > 10000 then
--         DBMS_OUTPUT.PUT_LINE(' high salary employee');
--     end If;
-- end;
-- /


-- DECLARE
--     v_salary hr.employees.salary%type;
--     v_last_name hr.employees.last_name%type;

-- BEGIN
--     select salary,last_name
--     into v_salary,v_last_name
--     from hr.EMPLOYEES
--     where EMPLOYEE_ID = 100

--     DBMS_OUTPUT.PUT_LINE('employee details are:salary is' 
--                         || v_salary || 'last name id ' || v_last_name);

-- END;
-- /



--if else

-- DECLARE
-- id number := 100;
-- v_salary hr.employees.salary%type;

-- BEGIN
--     select salary
--     into v_salary from hr.EMPLOYEES
--     where employee_id = id;

--     if v_salary > 10000 then 
--         DBMS_OUTPUT.PUT_LINE('higest salary');
--     else 
--         DBMS_OUTPUT.PUT_LINE('lowest salary');
--     end if;

-- END;

-- -- elsif
-- DECLARE
--     v_salary hr.employees.salary%TYPE;

-- BEGIN
--     select salary
--     into v_salary
--     from hr.EMPLOYEES
--     where EMPLOYEE_ID = 100;

--     if v_salary > 50000 then
--         DBMS_OUTPUT.PUT_LINE('high level salary');
--     elsif v_salary > 30000 THEN
--         DBMS_OUTPUT.PUT_LINE('mid level salary');
--     else
--         DBMS_OUTPUT.PUT_LINE('low level salary');

--     end if;
-- END;
-- /


-- --  for loop

DECLARE
BEGIN
    for id in (select employee_id,salary from hr.employees where employee_id < 200) loop
         DBMS_OUTPUT.PUT_LINE(id.salary);
    end loop;
END;

DECLARE
BEGIN
   FOR rec IN (SELECT employee_id, salary FROM hr.employees) LOOP
      DBMS_OUTPUT.PUT_LINE('Employee ID: ' || rec.employee_id ||
                           ' | Salary: ' || rec.salary);
   END LOOP;
>>>>>>> 7b36daa4b693f5147e3cbc8def6028e1b9e9f355
END;