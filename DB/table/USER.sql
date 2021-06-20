
CREATE TABLE USERS (
	USER_ID	VARCHAR(30)	NOT NULL,
	USER_PW	VARCHAR(100)	NOT NULL,
	user_name varchar(20) COMMENT '사용자 이름',
  	user_phone_num varchar(20) COMMENT '연락처',
	
	CREATE_DATE	DATETIME	NULL,
	UPDATE_DATE	DATETIME	NULL,
	DELETE_YN	VARCHAR(2)	NULL,
	CREATE_BY	VARCHAR(30)	NULL,
	UPDATE_BY	VARCHAR(30)	NULL,
	USER_STATE  VARCHAR(5)	NULL,
);

-- 사용자 테이블 기본키 생성
ALTER TABLE USERS ADD CONSTRAINT USER_PK PRIMARY KEY (USER_ID);
-- INDEX
CREATE INDEX USERS_INDEX1 ON USERS (USER_ID);
-- 초기 데이터
INSERT INTO USERS(
	user_id, user_pw, create_date, create_by, delete_yn
)
VALUES(
 	'admin', 'admin', now() , 'init', 'N'
);