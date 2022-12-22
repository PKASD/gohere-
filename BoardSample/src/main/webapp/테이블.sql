create table board(
num NUMBER primary key , -- 게시판 글 번호
writer varchar(10) not null, -- 작성자
email varchar(30), -- 이메일
subject varchar(50) not null,-- 글제목
passwd varchar(12) not null,--비밀번호
reg_date timestamp(6) not null,--작성일,소수점 이하 6자리
readcount NUMBER default 0,-- 조회수, default = 값이 없으면 0
ref NUMBER not null,-- 글 그룹번호
re_step NUMBER not null, -- 같은 그룹에서 글 출력 순서
re_level NUMBER not null, -- 답글 레벨
content varchar2(4000) not null, -- 글 내용
ip varchar(20) not null -- 작성자 아이피
);

ALTER TABLE board DROP COLUMN ip;

create table reviewBoard(
num NUMBER primary key , -- 게시판 글 번호
writer varchar(10) not null, -- 작성자
subject varchar(50) not null,-- 글제목
reg_date timestamp(6) not null,--작성일,소수점 이하 6자리
readcount NUMBER default 0,-- 조회수, default = 값이 없으면 0
recommend NUMBER not null,-- 추천 수
content varchar2(4000) not null, -- 글 내용
reviewImage varchar2(4000) not null -- 이미지
);

ALTER TABLE reviewBoard DROP COLUMN lat;

create table tripBoard(
num NUMBER primary key , -- 게시판 글 번호
subject varchar(50) not null,-- 글제목
subTitle varchar(50) not null,-- 부제목
area varchar(50) not null,-- 지역
address varchar(500) not null,-- 주소
reg_date timestamp(6) not null,--작성일,소수점 이하 6자리
readcount NUMBER default 0,-- 조회수, default = 값이 없으면 0
content varchar2(4000) not null, -- 글 내용
reviewImage varchar2(4000) not null -- 이미지
);

CREATE SEQUENCE reviewBoard_seq;

DROP SEQUENCE reviewBoard_seq;

INSERT INTO reviewBoard VALUES(reviewBoard_seq.nextval, '홍길동', '글의 제목 첫 번째', sysdate, 0,0,'첫번째 리뷰의 내용이다.','rev1,rev2,rev3');
INSERT INTO reviewBoard VALUES(reviewBoard_seq.nextval, '홍길동', '글의 제목 두 번째 글의 제목 두 번째', sysdate, 0,0,'두번째 리뷰의 내용이다.두번째 리뷰의 내용이다.두번째 리뷰의 내용이다.두번째 리뷰의 내용이다.두번째 리뷰의 내용이다.두번째 리뷰의 내용이다.','rev2');
INSERT INTO reviewBoard VALUES(reviewBoard_seq.nextval, '홍길동', '글의 제목 셋 번째 글의 제목 셋 번째', sysdate, 0,0,'첫번째 리뷰의 내용이다.','rev3,rev2');
INSERT INTO reviewBoard VALUES(reviewBoard_seq.nextval, '홍길동', '글의 제목 넷 번째 글의 제목 넷 번째', sysdate, 0,0,'첫번째 리뷰의 내용이다.','rev4,rev2,rev3');
INSERT INTO reviewBoard VALUES(reviewBoard_seq.nextval, '홍길동', '글의 제목 첫 번째 ', sysdate, 0,0,'첫번째 리뷰의 내용이다.','rev5,rev2,rev3');
INSERT INTO reviewBoard VALUES(reviewBoard_seq.nextval, '홍길동', '글의 제목 첫 번째', sysdate, 0,0,'첫번째 리뷰의 내용이다.','rev6,rev2,rev3');
INSERT INTO reviewBoard VALUES(reviewBoard_seq.nextval, '홍길동', '글의 제목 첫 번째', sysdate, 0,0,'첫번째 리뷰의 내용이다.','rev7,rev2,rev3');

TRUNCATE TABLE reviewBoard;

CREATE SEQUENCE board_seq;

DROP TABLE RREVIEWBOARD;