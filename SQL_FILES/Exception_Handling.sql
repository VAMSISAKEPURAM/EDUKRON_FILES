-- -- -- Exception Handellinf

-- -- DECLARE
-- --     a number := 10;
-- --     b number := 0;
-- --     c number;
-- -- BEGIN
-- --     c := a/b;
-- --     DBMS_OUTPUT.PUT_LINE(c);

-- -- EXCEPTION
-- --     when zero_divide then
-- --         DBMS_OUTPUT.PUT_LINE(' canot divide by zero');

-- -- end;
-- -- /

-- -- -- Exception Handellinf

-- -- DECLARE
-- --     a number := 10;
-- --     b number := 2;
-- --     c number;
-- -- BEGIN
-- --     c := a/b;
-- --     DBMS_OUTPUT.PUT_LINE(c);

-- -- EXCEPTION
-- --     when zero_divide then
-- --         DBMS_OUTPUT.PUT_LINE(' canot divide by zero');

-- -- end;
-- -- /


-- -- -- Exception Handellinf

-- -- DECLARE
-- --     a number := 10;
-- --     b number := 0;
-- --     c number;
-- --     d number(2);
-- -- BEGIN
-- --     c := a/b;
-- --     d :=9999;
-- --     DBMS_OUTPUT.PUT_LINE(c);
-- -- EXCEPTION
-- --     when zero_divide then
-- --         DBMS_OUTPUT.PUT_LINE(' canot divide by zero');
-- --     when value_error then
-- --         DBMS_OUTPUt.PUT_LINE('value sixe exceeded');
-- -- end;
-- -- /


-- DECLARE
--     a number := 10;
--     b number := 0;
--     c number;
--     d number(2);
--     invalid_condition EXCEPTION;
-- BEGIN
--     -- c := a/b;
--     -- d :=9999;
--     -- DBMS_OUTPUT.PUT_LINE(c);
--     if a > b THEN
--         raise invalid_condition;
--     end if;
-- EXCEPTION
--     when zero_divide then
--         DBMS_OUTPUT.PUT_LINE(' canot divide by zero');
--     when value_error then
--         DBMS_OUTPUt.PUT_LINE('value sixe exceeded');
--     when invalid_condition then
--         DBMS_OUTPUT.PUT_LINE('choose a value less then b value');
-- end;
-- /