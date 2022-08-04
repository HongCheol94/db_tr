use momstouch;
	
select 
	a.seq
    ,a.id
    ,a.password
    ,a.name
    ,a.gender
    ,a.dob
    ,a.addressNumber
    ,a.address
    ,a.detailedAddress
    ,a.number
    ,a.email
    ,b.dearler_seq
    ,b.carCc
    ,b.carKind
  from member a
  -- left join car b on b.seq = a.seq
  inner join car b on b.seq = a.seq
  ;
  
  where 1=1
  order by
  
  groupu by
  union
  
  
  
  -- 로그인
  select * from member where id="" and pw="" ;
  