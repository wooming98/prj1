CREATE DATABASE prj1;

USE prj1;

DROP TABLE board;
CREATE TABLE board
(
    id       INT PRIMARY KEY AUTO_INCREMENT,
    title    VARCHAR(200)  NOT NULL,
    content  VARCHAR(3000) NOT NULL,
    writer   VARCHAR(100)  NOT NULL,
    inserted DATETIME      NOT NULL DEFAULT NOW()
);

SELECT *
FROM board;

# 회원 테이블
CREATE TABLE member
(
    id        INT PRIMARY KEY AUTO_INCREMENT,
    email     VARCHAR(200) NOT NULL UNIQUE,
    password  VARCHAR(200) NOT NULL,
    nick_name VARCHAR(100) NOT NULL UNIQUE,
    inserted  DATETIME     NOT NULL DEFAULT NOW()
);

ALTER TABLE member
    ADD COLUMN inserted DATETIME NOT NULL DEFAULT NOW();

SELECT *
FROM member;

# 페이징용.. (게시물 복사해서 갯수 늘리기)
INSERT INTO board
    (title, content, writer)
SELECT title, content, writer
FROM board;

SELECT *
FROM board;

# board 테이블 수정
# writer 컬럼 지우기
# member_id INT REFERENCES member(id) 컬럼 추가

ALTER TABLE board
    DROP COLUMN writer;
ALTER TABLE board
    ADD COLUMN member_id INT REFERENCES member (id);
UPDATE board
SET member_id = 5
WHERE id > 0;


SELECT *
FROM board
LIMIT 3;
SELECT *
FROM member;