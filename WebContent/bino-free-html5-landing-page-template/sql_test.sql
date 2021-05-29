CREATE TABLE influencer_insta(
   infllu_id varchar2(30),
   num_media number,
   num_follower number,
   num_following number,
   biography varchar2(300)
   );

SELECT * FROM influencer_insta

INSERT INTO influencer_insta VALUES('dinner', 10, 10, 10, '고기고기고기고기고기고기고기고기고기고기고기고기고기고기고기고기');
INSERT INTO influencer_insta VALUES('honey', 10, 10, 10, '뮤뮤뮤뮤뮤뮤뮤뮤뮤뮤뮤뮤뮤뮤뮤뮤뮤뮤뮤뮤뮤뮤뮤뮤뮤뮤뮤뮤뮤뮤뮤뮤');
INSERT INTO influencer_insta VALUES('libra', 10, 10, 10, '사사사사사사사사사사사사사사사사사사사사사사사사사사사사사사사사');
INSERT INTO influencer_insta VALUES('catdog', 10, 10, 10, '차차차차차차차차차차차차차차차차차차차차차차차차차차차차차차차차차');

INSERT INTO influencer_insta VALUES('___euniya', 10, 10, 10, '가가가가가가가가가가가가가가가가가가가가가가가가가가가가가가가가가가');
INSERT INTO influencer_insta VALUES('__monolife', 10, 10, 10, '나나나나나나나나나나나나나나나나나나나나나나나나나나나나나나나나');
INSERT INTO influencer_insta VALUES('01_isena', 10, 10, 10, '다다다다다다다다다다다다다다다다다다다다다다다다다다다다다다다다');
INSERT INTO influencer_insta VALUES('0o_____zo0', 10, 10, 10, '라라라라라라라라라라라라라라라라라라라라라라라라라라라라라라');
INSERT INTO influencer_insta VALUES('3.48kg', 10, 10, 10, '마마마마마마마마마마마마마마마마마마마마마마마마마마마마마마마마마마마');
INSERT INTO influencer_insta VALUES('da__heart', 10, 10, 10, '바바바바바바바바바바바바바바바바바바바바바바바바바바바바바바바바');

DELETE FROM influencer_insta;

CREATE TABLE influencer_mbr
(
    influ_id     VARCHAR(200)    NOT NULL, 
    pw           VARCHAR(200)    NOT NULL, 
    name         VARCHAR(200)    NOT NULL, 
    age          NUMBER          NOT NULL, 
    sex          VARCHAR(200)    NOT NULL, 
    insta_add    VARCHAR(200)    NOT NULL, 
    phone        VARCHAR(200)   NOT NULL, 
    point        NUMBER          NOT NULL, 
    targetAge        NUMBER    NOT NULL, 
    targetGender       VARCHAR(200)          NOT NULL, 
    influ_category   VARCHAR(200)          NOT NULL, 
    matching_campaign       NUMBER          NOT NULL, 
    CONSTRAINT INFLUENCER_MBR_PK PRIMARY KEY (influ_id)
);

