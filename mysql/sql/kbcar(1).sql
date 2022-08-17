use momstouch;



-- 공통코드
SELECT
 a.seq
 ,a.codeName
 ,b.seq
 ,b.codeGroup
FROM cc a
INNER JOIN ccg b
on a.ccg_seq = b.seq
;
select * from cc limit 0, 100;

-- car테이블
select*
from car
;

-- member테이블
select*
from member
;

-- dealer 테이블
select*
from dealer
;

-- interest 테이블
select*
from interest
;




-- 로그인 --
select 
	id
	,name
	,gender
	,dob
	,addressnumber
	,address
	,detailedAddress
	,number
	,email 
    ,memberDefaultNy
from member 
where id="apple" and password="apple123" 
;

-- 메인 --

select
	seq
    , carName
    , price
    , madeby
from car
where 1=1
	and madeby -- 제조사
    and model -- 대표모델
	and carName -- 검색어
-- 세부모델
-- 검색어
; 


-- 살때

select 
	seq
    ,carName
    ,price
    ,carEngine
    ,area
    ,carNumber
    ,carAge
    ,carMleage
    ,carGearBox
    ,carFuelEfficiency
    ,carKind
    ,carCc
    ,color
    ,taxe
    ,seize
    ,collateral
    ,presentNumber
    ,stoppeout
    ,model
    ,madeby
    ,master
    ,member_seq
    ,dealer_seq
    ,carDefaultNy
from car
where carName="쏘렌토"
;

select  -- 높은 가격순
seq
,carName
,price
,carEngine
,area
,carNumber
,carAGe
,carMleage
,carGearBox
,carFuelEfficiency
,carKind
,carCc
,color
,taxe
,seize
,collateral
,presentNumber
,stoppeout
,model
,madeby
,master
,member_seq
,dealer_seq
,carDefaultNy
from car
order by price desc
;

select  -- 낮은 가격순
seq
,carName
,price
,carEngine
,area
,carNumber
,carAGe
,carMleage
,carGearBox
,carFuelEfficiency
,carKind
,carCc
,color
,taxe
,seize
,collateral
,presentNumber
,stoppeout
,model
,madeby
,master
,member_seq
,dealer_seq
,carDefaultNy
from car
order by price
;

select  -- 연식 낮은순
seq
,carName
,price
,carEngine
,area
,carNumber
,carAGe
,carMleage
,carGearBox
,carFuelEfficiency
,carKind
,carCc
,color
,taxe
,seize
,collateral
,presentNumber
,stoppeout
,model
,madeby
,master
,member_seq
,dealer_seq
,carDefaultNy
from car
order by carAge desc
;

select  --  연식이 높은순
seq
,carName
,price
,carEngine
,area
,carNumber
,carAGe
,carMleage
,carGearBox
,carFuelEfficiency
,carKind
,carCc
,color
,taxe
,seize
,collateral
,presentNumber
,stoppeout
,model
,madeby
,master
,member_seq
,dealer_seq
,carDefaultNy
from car
order by carAge
;

select  --  주행거리 낮은순
seq
,carName
,price
,carEngine
,area
,carNumber
,carAGe
,carMleage
,carGearBox
,carFuelEfficiency
,carKind
,carCc
,color
,taxe
,seize
,collateral
,presentNumber
,stoppeout
,model
,madeby
,master
,member_seq
,dealer_seq
,carDefaultNy
from car
order by carMleage
;

select  --  주행거리 높은순
seq
,carName
,price
,carEngine
,area
,carNumber
,carAGe
,carMleage
,carGearBox
,carFuelEfficiency
,carKind
,carCc
,color
,taxe
,seize
,collateral
,presentNumber
,stoppeout
,model
,madeby
,master
,member_seq
,dealer_seq
,carDefaultNy
from car
order by carMleage desc
;

-- 상세구매

select 
	b.seq
    ,a.carName
    ,a.price
    ,a.carEngine
    ,a.area
    ,a.carNumber
    ,a.carAge
    ,a.carMleage
    ,a.carGearBox
    ,a.carFuelEfficiency
    ,a.carKind
    ,a.carCc
    ,a.color
    ,a.taxe
    ,a.seize
    ,a.collateral
    ,a.presentNumber
    ,a.stoppeout
    ,a.model
    ,a.madeby
    ,a.master
    ,a.member_seq
    ,a.dealer_seq
    ,b.dealerName
    ,b.gender
    ,b.grade
    ,b.dealerNumber
    ,b.company
    ,(select a.master from car where aa.master = a )
from car a
left join dealer b on 1 = 1
and a.seq = b.seq
and a.master = 69
;


-- 연습장

select 
seq
,dealerName
,gender
,grade
,dealerNumber
,company
from dealer
where dealerName=''
;

select 
	a.seq 
    ,a.id
    ,a.password
    ,a.name
    ,b.codeName
    ,a.dob
    ,a.addressNumber
    ,a.address
    ,a.detailedAddress
    ,a.number
    ,a.email
    
from member a
inner join cc b on b.seq = a.gender
;


-- 회원가입 목록
SELECT*
FROM member;	



-- 로그인

  select * from member where id="" and password="" ;

   
  --  회원가입
 select
	a.id
    ,a.password
    ,b.master
    from member a
    left join car b on b.seq = a.seq
    ;

-- 차량검색
select *
from car
where carEngine="21"
;

select (
	seq
    ,carName
    ,price
    ,carEagine
    ,area
    ,carNumber
    ,carAge
    ,carMleage
    ,carGearBox
    ,carFuelEfficieny
    ,carKind
    ,carCc
    ,color
    ,taxe
    ,seize
    ,collateral
    ,presentNumber
    ,stoppeout
    ,model
    ,madeby
    ,master
    ,member_seq
    ,dealer_seq
    )
from car
where area='7'
;

select*
from car
where carName=''
;

select*
from car
where carMleage=''
;

select*
from car
where carGearBox=''
;

select*
from car
where carFuelEfficiency='10.4'
;

select*
from car
where carKind='27'
;

select*
from car
where carCc=''
;

select*
from car
where color='32'
;

select*
from car
where taxe=''
;

select*
from car
where seize='40'
;

select*
from car
where collateral=''
;

select*
from car
where presentNumber=''
;

select*
from car
where stoppeout
;

select
from 
where model
;










 
  
