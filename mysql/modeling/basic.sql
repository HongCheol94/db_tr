-- momstouch를 사용한다
use momstouch;

-- **** 테이블 수정 전에 항상 꼭 반드시 지짜로 ER부터 수정***

-- 전체 컴럼 조회
SELECT * FROM member2 ;

-- 컴럼 추가
ALTER TABLE member2 ADD COLUMN nickname varchar(45);
		-- 테이블이름				컬럼명
        
ALTER TABLE member2 ADD COLUMN nameEng varchar(45) AFTER name;
												-- 이 파일 뒤로
 -- 컴럼 변경
--  ALTER TABLE member2 MODIFY COLUMN nickname varchar(100);

-- 컴럼 타입변경
-- ALTER TABLE member2 MODIFY COLUMN nickname int;

-- 컴럼 이름 변경
ALTER TABLE member2 CHANGE COLUMN nickname nick varchar(45);

-- 컬럼 삭제
ALTER TABLE member2 drop COLUMN nick;

-- row 삭제 딜리트 프로 웨어를 쓰고 파일명을 적는다
DELETE FROM member2 WHERE seq=1;

-- commit / rollback

-- 데이터 변경
UPDATE member SET
name= "Tony"
, nameEng="Great"
where seq=1
;

-- WHERE

 SELECT * FROM infrMember
 WHERE 1=1
   -- AND ifmmName like 'kim%'  -- to 뒤에 아무거나 와도 상관없는걸 검색 
   -- AND ifmmname like '%hong' -- 앞에 아무거나 와도 상관없지만 끝두글자가 ny로 끝나는걸 검색
   AND ifmmname like '%ho%'  -- 양옆에 뭐가 와도 상관없고 모든문자에 ny로 오는걸 검색
;

 SELECT * FROM infrMember
 WHERE 1=1
-- AND ifmmPassword = 0
-- AND ifmmPassword > 1
-- AND ifmmPassword >= 1
 AND ifmmPassword between 0 and 1
;

 SELECT * FROM infrMember
 WHERE 1=1
 AND ifmmname is null
 AND ifmmname = null
;

SELECT * FROM infrMember
WHERE 1=1
AND ifmmname = '' -- 비어있는 공백 검색
; 