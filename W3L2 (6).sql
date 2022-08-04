use sales2

create table if not exists loop_table1(val1 int,val2 int)

select * from loop_table1

DELIMITER $$ 
CREATE PROCEDURE ADD1()
 BEGIN
  DECLARE a INT Default 1 ;
   DECLARE b INT Default 1 ;
  simple_loop: LOOP     
    insert into loop_table1 values(a,b);
    SET a=a+1;
    set b=a*a;
    IF a=11 THEN
      LEAVE simple_loop;
    END IF;
 END LOOP simple_loop;
END $$

call ADD1()

select * from loop_table1;