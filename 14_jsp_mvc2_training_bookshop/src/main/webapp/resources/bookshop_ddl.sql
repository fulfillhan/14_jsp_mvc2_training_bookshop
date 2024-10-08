CREATE DATABASE BOOKSHOP;
USE BOOKSHOP;

CREATE TABLE `ADMIN`(
    ADMIN_ID 	VARCHAR(20) PRIMARY KEY,
	PASSWD 		VARCHAR(100),
	JOIN_DT 	TIMESTAMP
);

INSERT INTO `ADMIN` VALUES ('alexa' , 'P@ssw0rd' , NOW());
INSERT INTO `ADMIN` VALUES ('jarvis' , 'HeyJarvis!!' , NOW());


CREATE TABLE MEMBER(
    MEMBER_ID 		VARCHAR(30) PRIMARY KEY,
	MEMBER_NM 		VARCHAR(50),
    PASSWD 			VARCHAR(50),
	SEX 			CHAR(1),
	BIRTH_DT 		VARCHAR(15),
	HP 				VARCHAR(15),
	SMSSTS_YN 		CHAR(1),
	EMAIL 			VARCHAR(70),
	EMAILSTS_YN 	CHAR(1),
	ZIPCODE 		VARCHAR(10),
	ROAD_ADDRESS 	VARCHAR(500),
	JIBUN_ADDRESS 	VARCHAR(500),
	NAMUJI_ADDRESS 	VARCHAR(500),
	POINT			INT,
	JOIN_DT 		TIMESTAMP
);


CREATE TABLE BOOK(
    BOOK_CD 		  INT AUTO_INCREMENT PRIMARY KEY,
    BOOK_NM 		  VARCHAR(500),
    WRITER 			  VARCHAR(200),
	PRICE 			  INT,
	DISCOUNT_RT 	  INT,
	STOCK			  INT,
	PUBLISHER 		  VARCHAR(50),
	SORT 			  VARCHAR(10),
	POINT 			  INT,
	PUBLISHED_DT 	  TIMESTAMP,
	TOTAL_PAGE 		  INT,
	ISBN 			  VARCHAR(50),
	DELIVERY_PRICE 	  INT,
	PART 			  VARCHAR(20),
	WRITER_INTRO 	  VARCHAR(2000),
	CONTENTS_ORDER 	  VARCHAR(2000),
	INTRO 			  VARCHAR(2000),
	PUBLISHER_COMMENT VARCHAR(2000),
	RECOMMENDATION 	  VARCHAR(2000),
	IMG_NM	  		  VARCHAR(300),
	ENROLL_DT 		  TIMESTAMP
);


CREATE TABLE `ORDER`(
	ORDER_CD 			BIGINT AUTO_INCREMENT PRIMARY KEY,
    MEMBER_ID 			VARCHAR(20),
    BOOK_CD 			INT,
	ORDER_BOOK_QTY 		INT,
	PAYMENT_AMT			INT,
    ORDERER_NM 			VARCHAR(50),
    ORDERER_HP 			VARCHAR(50),
	RECEIVER_NM 		VARCHAR(50),
	RECEIVER_HP 		VARCHAR(20),
	ZIPCODE 			VARCHAR(20),
	ROAD_ADDRESS 		VARCHAR(500),
	JIBUN_ADDRESS 		VARCHAR(500),
	NAMUJI_ADDRESS 		VARCHAR(500),
    DELIVERY_METHOD 	VARCHAR(40),
    DELIVERY_MESSAGE 	VARCHAR(300),
    DELIVERY_STATUS 	VARCHAR(100),
	GIFT_WRAPPING 		CHAR(1),
	PAY_METHOD 			VARCHAR(200),
	PAY_ORDERER_HP 		VARCHAR(50), 
	CARD_COMPANY_NM 	VARCHAR(50),
	CARD_PAY_MONTH 		VARCHAR(20),
    PAY_ORDER_TIME 		TIMESTAMP
);


ALTER TABLE BOOK AUTO_INCREMENT = 100000;
ALTER TABLE `ORDER` AUTO_INCREMENT = 100000;

/* 
  
   # 실습 데이타 Import
 
   MYSQL WORKBENCH 실행 > 
   Administraion 클릭   >
   Data Import 클릭     > 
   Import from Self-Containted File에서 book_data_export.sql 선택 >
   Default Target Schema bookshop 선택 > 
   Start Import 버튼 클릭
   
 */