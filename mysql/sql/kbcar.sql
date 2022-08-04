use momstouch;

select 
	a.seq 
    ,a.codeGroup
    ,b.seq  
    ,b.codeName
    ,b.ccg_seq
from ccg a
inner join cc b on b.seq = a.seq
;
	


-- 로그인

  select * from member where id="apple" and password="apple123" ;

   
  --  회원가입
  select * from member where name="" and number="";
  select * from member where addressNumber="" and address="";
 
  
  -- 