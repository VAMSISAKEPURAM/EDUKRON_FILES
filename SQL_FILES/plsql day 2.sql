-- -- day 2 plsql 
-- -- while loop,exit,continue, between keywords,nested for loop

-- -- while loop

-- DECLARE
--     num integer := 0;
--     total INTEGER := 0;

-- BEGIN
--     while num <= 10 loop 
--         total := total+num;
--         num := num + 1;
--     end loop;
--     dbms_output.put_line('total is :' || total);
-- end;
-- /

-- -- while with exit key word

-- DECLARE
--     num INTEGER := 0;
--     total INTEGER := 0;

-- BEGIN 
--     while true LOOP
--         num := num+1;
--         total := total + num;
--         exit when num > 10;
--         DBMS_OUTPUT.PUT_LINE('num' || num || ',total' || total);
--     end loop;
-- end;
-- /

-- -- while with continue key word

-- DECLARE
--   num integer := 0;
--   total integer := 0;
-- BEGIN
--     while num < 10 LOOP
--         num := num+1;
--         total := total + num;
--         continue when num = 3;
--         dbms_output.PUT_LINE('num' || num || 'total' || total);
--     end loop;
-- end;

-- -- while loop with BETWEEN key word

-- DECLARE
--   num integer := 0;
--   total integer := 0;
-- BEGIN
--     while num < 10 LOOP
--         num := num+1;
--         total := total + num;
--         continue when num BETWEEN 3 and 6;
--         dbms_output.PUT_LINE('num' || num || 'total' || total);
--     end loop;
-- end;


-- -- nested for loop
-- BEGIN
--     for i in 1..5 loop
--         for j in 1..5 LOOP
--             DBMS_OUTPUT.PUT_LINE('i' || i || ',j'|| j);
--         end loop;
--     end loop;
-- end;


-- -- nested for loop with continue and exit keywords
-- BEGIN
--     for i in 1..5 loop
--         for j in 1..5 LOOP
--             CONTINUE when i = 2 or j = 1;
--             DBMS_OUTPUT.PUT_LINE('i' || i || ',j'|| j);
--         end loop;
--     end loop;
-- end;