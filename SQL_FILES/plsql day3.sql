-- -- -- day 3  session 1 of plsql 

-- -- -- functions

-- -- create or REPLACE FUNCTION sumof(a integer,b integer)
-- -- RETURN NUMBER
-- -- is 
-- -- BEGIN
-- --     return a+b;
-- -- end;

-- -- select sumof(2,3)from dual;

-- -- select sumof('a','b') from dual;

-- -- create or replace FUNCTION salary_cal(salary integer,commission INTEGER)
-- -- return NUMBER
-- -- IS
-- -- BEGIN
-- --     RETURN (salary * 12) + NVL((salary * (commission / 100) * 12), 0);
-- -- end;


-- -- CREATE OR REPLACE FUNCTION salary_cal (
-- --     salary     IN INTEGER,
-- --     commission IN NUMBER
-- -- ) RETURN NUMBER IS 
-- -- BEGIN
-- --     RETURN (salary * 12) + NVL((salary * (commission / 100) * 12), 0);
-- -- END;
-- -- /


-- -- SELECT SALARY_CAL(1000,null) from dual;

-- -- CREATE OR REPLACE FUNCTION calculate_sales_summary (
-- --     unit_price IN NUMBER,
-- --     quantity   IN INTEGER,
-- --     tax_rate   IN NUMBER DEFAULT 0 -- Tax rate percentage (e.g., 5 for 5%)
-- -- ) RETURN NUMBER IS
-- --     subtotal    NUMBER;
-- --     tax_amount  NUMBER;
-- --     total_sales NUMBER;
-- -- BEGIN
-- --     -- 1. Calculate the base subtotal
-- --     subtotal := unit_price * quantity;
    
-- --     -- 2. Calculate the tax amount (safely handling NULL tax rates)
-- --     tax_amount := subtotal * (NVL(tax_rate, 0) / 100);
    
-- --     -- 3. Calculate total sales
-- --     total_sales := subtotal + tax_amount;
    
-- --     RETURN ROUND(total_sales, 2); -- Rounds to 2 decimal places for currency
-- -- END;
-- -- /

-- -- Test 1: 10 units of an item costing $15.50 with an 8% tax rate
-- SELECT calculate_sales_summary(15.50, 10, 8) AS total_revenue FROM dual;
-- -- Expected Output: 167.40  (Subtotal 155.00 + 12.40 Tax)

-- -- Test 2: 5 units of an item costing $20.00 with NO tax (NULL)
-- SELECT calculate_sales_summary(20.00, 5, NULL) AS total_revenue FROM dual;
-- -- Expected Output: 100.00


-- CREATE OR REPLACE FUNCTION check_student_grade (
--     score IN NUMBER
-- ) RETURN VARCHAR2 IS
--     letter_grade VARCHAR2(2);
-- BEGIN
--     -- 1. Validate that the score is within a logical range
--     IF score < 0 OR score > 100 OR score IS NULL THEN
--         RETURN 'Invalid Score';
--     END IF;

--     -- 2. Determine letter grade using a CASE statement
--     CASE 
--         WHEN score >= 90 THEN letter_grade := 'A';
--         WHEN score >= 80 THEN letter_grade := 'B';
--         WHEN score >= 70 THEN letter_grade := 'C';
--         WHEN score >= 60 THEN letter_grade := 'D';
--         ELSE letter_grade := 'F';
--     END CASE;
    
--     RETURN letter_grade;
-- END;
-- /



-- -- Test 1: High score
-- SELECT check_student_grade(95) AS grade FROM dual;
-- -- Expected Output: A

-- -- Test 2: Passing score
-- SELECT check_student_grade(72.5) AS grade FROM dual;
-- -- Expected Output: C

-- -- Test 3: Out of bounds validation
-- SELECT check_student_grade(105) AS grade FROM dual;
-- -- Expected Output: Invalid Score