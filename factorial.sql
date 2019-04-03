create or replace function fac(n in number)
return number is
fact number;
begin
	fact:=1;
	for i in 1..n
	loop
		fact:=fact*i;
	end loop;
	return(fact);
end;
.
/	
	
declare
    n number:=&n;
    c number;
 
begin
    c:=fac(n);
    dbms_output.put_line(c);
    
end;
.
/