SELECT * FROM momstouch.member;

-- n개의 행만 불러오는 방법 !(대량의 데이터를 생각없이 불러왔다가 서버가 과부화 되어버리므로.. 중요합니다.)
 -- select * from EMPwhere rownum <= n  -- n개의 행만 불러오기 (=은 사용 불가)


-- 테이블 조회 정렬 변경

-- 정렬하지 않은 경우
-- SELECT * FROM 테이블;

-- 오름차순 정렬
-- SELECT * FROM 테이블 ORDER BY 컬럼1 ASC;
-- 오름차순 정렬 (ASC 생략)SELECT * FROM 테이블 ORDER BY 컬럼1;

-- 내림차순 정렬SELECT * FROM 테이블 ORDER BY 컬럼1 DESC;

-- 여러 컬럼으로 정렬SELECT * FROM 테이블 ORDER BY 컬럼1 [, 컬럼2, 컬럼3 ...];

-- 조건식이 있는 경우 정렬SELECT * FROM 테이블 WHERE 조건식 ORDER BY 컬럼1 [, 컬럼2, 컬럼3 ...];

-- 컬럼 번호로 정렬SELECT * FROM 테이블 WHERE 조건식 ORDER BY 컬럼 번호1 [, 컬럼 번호2, 컬럼 번호3 ...];


-- SELECT * FROM 테이블 WHERE 조건식 ORDER BY 컬럼1 [, 컬럼2, 컬럼3 ...];

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
where 1=1
and number like '%1274%'
union 						-- union은 중복 데이터를 알아서 처리한다
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
where 1=1
and number like'%8615%'
;




