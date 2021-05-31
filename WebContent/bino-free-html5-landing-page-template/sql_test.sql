SELECT * FROM matching_camp;

DROP TABLE matching_camp CASCADE CONSTRAINTS;
DROP SEQUENCE matching_camp_SEQ;

DROP TABLE advertiser_mbr CASCADE CONSTRAINTS;


CREATE TABLE influencer_insta(
   infllu_id varchar2(30),
   num_media number,
   num_follower number,
   num_following number,
   biography varchar2(300)
   );

SELECT * FROM influencer_insta
SELECT * FROM influencer_mbr

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

CREATE TABLE advertiser_mbr
(
    adver_mbr    VARCHAR2(200)    NOT NULL, 
    adver_pw     VARCHAR2(200)    NOT NULL, 
    name         VARCHAR2(100)    NOT NULL, 
    mail         VARCHAR2(100)    NOT NULL, 
    phone        VARCHAR2(100)    NOT NULL, 
    login_ck      NUMBER        NOT NULL,
    CONSTRAINT ADBERTISER_MBR_PK PRIMARY KEY (adver_mbr)
);

INSERT INTO advertiser_mbr VALUES('ad1', '222', 'kkk', 'Fire', '5678',1);
INSERT INTO advertiser_mbr VALUES('ad2', '333', 'ppp', 'Fre', '678',1);
INSERT INTO advertiser_mbr VALUES('ad3', '444', 'ooo', 'Fe', '568',1);
INSERT INTO advertiser_mbr VALUES('ad4', '555', 'iii', 'Ft', '567',1);
INSERT INTO advertiser_mbr VALUES('ad5', '222', 'kkk', 'Fire', '5678',1);
INSERT INTO advertiser_mbr VALUES('ad6', '333', 'ppp', 'Fre', '678',1);
INSERT INTO advertiser_mbr VALUES('ad7', '444', 'ooo', 'Fe', '568',1);
INSERT INTO advertiser_mbr VALUES('ad8', '555', 'iii', 'Ft', '567',1);
INSERT INTO advertiser_mbr VALUES('ad9', '222', 'kkk', 'Fire', '5678',1);
INSERT INTO advertiser_mbr VALUES('ad10', '333', 'ppp', 'Fre', '678',1);
INSERT INTO advertiser_mbr VALUES('ad11', '444', 'ooo', 'Fe', '568',1);
INSERT INTO advertiser_mbr VALUES('ad12', '555', 'iii', 'Ft', '567',1);
INSERT INTO advertiser_mbr VALUES('ad13', '555', 'iii', 'Ft', '567',1);

CREATE TABLE matching_camp
(
    campaign_index     NUMBER    NOT NULL, 
    campaign_Sid       NUMBER    NOT NULL, 
    campaign_title     VARCHAR2(200)    NOT NULL, 
    influ_id           VARCHAR2(200)    NOT NULL, 
    adver_mbr         VARCHAR2(200)    NOT NULL, 
    match_ck           NUMBER   NOT NULL, 
    influ_affect       NUMBER           NOT NULL, 

    CONSTRAINT matching_camp_PK PRIMARY KEY (campaign_index)
  
);


Insert into matching_camp values(1,1,'king1','aaa','ad1',0,50);
Insert into matching_camp values(2,2,'king2','bbb','ad2',0,60);
Insert into matching_camp values(3,3,'king3','ccc','ad3',1,70);
Insert into matching_camp values(4,4,'king4','ddd','ad4',1,80);
Insert into matching_camp values(5,5,'king5','eee','ad5',1,90);
Insert into matching_camp values(6,6,'king6','fff','ad6',1,100);
Insert into matching_camp values(7,7,'king7','ggg','ad7',1,100);
Insert into matching_camp values(8,8,'king8','hhh','ad8',1,100);
Insert into matching_camp values(9,9,'king9','iii','ad9',1,100);
Insert into matching_camp values(10,10,'king10','jjj','ad10',1,100);
Insert into matching_camp values(11,11,'king11','kkk','ad11',1,100);
Insert into matching_camp values(12,12,'king12','lll','ad12',1,100);
Insert into matching_camp values(13,13,'king13','mmm','ad13',1,100);

CREATE SEQUENCE matching_camp_SEQ
START WITH 1
INCREMENT BY 1;
