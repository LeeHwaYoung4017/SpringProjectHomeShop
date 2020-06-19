--------------------------------------------------------
--  파일이 생성됨 - 수요일-6월-03-2020   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table SPRING_ACC
--------------------------------------------------------

  CREATE TABLE "KOREAIT"."SPRING_ACC" 
   (	"IDX" NUMBER(*,0), 
	"NAME" VARCHAR2(50 BYTE), 
	"PRICE" VARCHAR2(20 BYTE) DEFAULT 0, 
	"ID_NUMBER" VARCHAR2(20 BYTE), 
	"CATEGORY" VARCHAR2(20 BYTE), 
	"VOLUME" NUMBER(*,0) DEFAULT 0, 
	"GOODSDIR" VARCHAR2(100 BYTE), 
	"PHOTO" NUMBER(*,0), 
	"ITEM_COMMENT" VARCHAR2(1000 BYTE), 
	"GOODSCOLOR" VARCHAR2(50 BYTE), 
	"WRITEDATE" DATE DEFAULT sysdate, 
	"SUB_CATEGORY" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;

   COMMENT ON COLUMN "KOREAIT"."SPRING_ACC"."ID_NUMBER" IS '품번';
   COMMENT ON COLUMN "KOREAIT"."SPRING_ACC"."CATEGORY" IS '카테고리';
   COMMENT ON COLUMN "KOREAIT"."SPRING_ACC"."VOLUME" IS '주문량';
   COMMENT ON COLUMN "KOREAIT"."SPRING_ACC"."GOODSDIR" IS '원본경로';
--------------------------------------------------------
--  DDL for Table SPRING_BOTTOM
--------------------------------------------------------

  CREATE TABLE "KOREAIT"."SPRING_BOTTOM" 
   (	"IDX" NUMBER(*,0), 
	"NAME" VARCHAR2(50 BYTE), 
	"PRICE" VARCHAR2(20 BYTE) DEFAULT 0, 
	"ID_NUMBER" VARCHAR2(20 BYTE), 
	"CATEGORY" VARCHAR2(20 BYTE), 
	"VOLUME" NUMBER(*,0) DEFAULT 0, 
	"GOODSDIR" VARCHAR2(100 BYTE), 
	"PHOTO" NUMBER(*,0), 
	"ITEM_COMMENT" VARCHAR2(1000 BYTE), 
	"GOODSCOLOR" VARCHAR2(50 BYTE), 
	"WRITEDATE" DATE DEFAULT sysdate, 
	"SUB_CATEGORY" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;

   COMMENT ON COLUMN "KOREAIT"."SPRING_BOTTOM"."ID_NUMBER" IS '품번';
   COMMENT ON COLUMN "KOREAIT"."SPRING_BOTTOM"."CATEGORY" IS '카테고리';
   COMMENT ON COLUMN "KOREAIT"."SPRING_BOTTOM"."VOLUME" IS '주문량';
--------------------------------------------------------
--  DDL for Table SPRING_MEMBER
--------------------------------------------------------

  CREATE TABLE "KOREAIT"."SPRING_MEMBER" 
   (	"IDX" NUMBER(*,0), 
	"NAME" VARCHAR2(20 BYTE), 
	"ID" VARCHAR2(20 BYTE), 
	"PW" VARCHAR2(20 BYTE), 
	"BIRTH" VARCHAR2(200 BYTE), 
	"PHONE" VARCHAR2(20 BYTE), 
	"GENDER" CHAR(1 BYTE), 
	"EMAIL" VARCHAR2(50 BYTE), 
	"ADDR" VARCHAR2(100 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table SPRING_NOTICE
--------------------------------------------------------

  CREATE TABLE "KOREAIT"."SPRING_NOTICE" 
   (	"IDX" NUMBER(*,0), 
	"TITLE" VARCHAR2(200 BYTE), 
	"CONTENT" VARCHAR2(2000 BYTE), 
	"WRITEDATE" TIMESTAMP (6) DEFAULT sysdate, 
	"ATTACHED" VARCHAR2(200 BYTE) DEFAULT ' '
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table SPRING_QA
--------------------------------------------------------

  CREATE TABLE "KOREAIT"."SPRING_QA" 
   (	"IDX" NUMBER(*,0), 
	"TITLE" VARCHAR2(200 BYTE), 
	"CONTENT" VARCHAR2(2000 BYTE), 
	"WRITEDATE" TIMESTAMP (6) DEFAULT sysdate, 
	"NAME" VARCHAR2(20 BYTE), 
	"ATTACHED" VARCHAR2(200 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table SPRING_REVIEW
--------------------------------------------------------

  CREATE TABLE "KOREAIT"."SPRING_REVIEW" 
   (	"IDX" NUMBER(*,0), 
	"CONTENT" VARCHAR2(2000 BYTE), 
	"GOODSIDX" VARCHAR2(20 BYTE), 
	"REF" NUMBER(*,0), 
	"SEQ" NUMBER(*,0), 
	"LEV" NUMBER(*,0), 
	"NAME" VARCHAR2(20 BYTE), 
	"WRITEDATE" TIMESTAMP (6) DEFAULT sysdate, 
	"ATTACHED" VARCHAR2(200 BYTE) DEFAULT ' ', 
	"STAR" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;

   COMMENT ON COLUMN "KOREAIT"."SPRING_REVIEW"."GOODSIDX" IS '품번';
--------------------------------------------------------
--  DDL for Table SPRING_STATUS
--------------------------------------------------------

  CREATE TABLE "KOREAIT"."SPRING_STATUS" 
   (	"IDX" NUMBER(*,0), 
	"USER_ID" VARCHAR2(200 BYTE), 
	"ADDR" VARCHAR2(200 BYTE), 
	"ITEM_NAME" VARCHAR2(200 BYTE), 
	"ID_NUMBER" VARCHAR2(200 BYTE), 
	"PRICE" NUMBER(*,0) DEFAULT 0, 
	"EA" NUMBER(*,0) DEFAULT 0, 
	"STATUS" NUMBER(*,0) DEFAULT 0, 
	"WRITEDATE" TIMESTAMP (6) DEFAULT sysdate, 
	"COLOR" VARCHAR2(200 BYTE), 
	"CATEGORY" VARCHAR2(200 BYTE), 
	"ITEM_SIZE" VARCHAR2(200 BYTE), 
	"NAME" VARCHAR2(200 BYTE), 
	"PHONE" VARCHAR2(200 BYTE), 
	"EMAIL" VARCHAR2(200 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;

   COMMENT ON COLUMN "KOREAIT"."SPRING_STATUS"."ADDR" IS '배송 주소';
   COMMENT ON COLUMN "KOREAIT"."SPRING_STATUS"."ITEM_NAME" IS '상품이름';
   COMMENT ON COLUMN "KOREAIT"."SPRING_STATUS"."ID_NUMBER" IS '상품 파일 이름';
   COMMENT ON COLUMN "KOREAIT"."SPRING_STATUS"."STATUS" IS '결제 상태';
   COMMENT ON COLUMN "KOREAIT"."SPRING_STATUS"."NAME" IS '배송 이름';
   COMMENT ON COLUMN "KOREAIT"."SPRING_STATUS"."PHONE" IS '배송 폰번호';
   COMMENT ON COLUMN "KOREAIT"."SPRING_STATUS"."EMAIL" IS '배송 이메일';
--------------------------------------------------------
--  DDL for Table SPRING_STOKE
--------------------------------------------------------

  CREATE TABLE "KOREAIT"."SPRING_STOKE" 
   (	"IDX" NUMBER(*,0), 
	"COLOR" VARCHAR2(20 BYTE), 
	"SIZE1" VARCHAR2(20 BYTE), 
	"EA" NUMBER(*,0), 
	"CATEGORY" VARCHAR2(20 BYTE), 
	"ITEM_NAME" VARCHAR2(200 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table SPRING_TOP
--------------------------------------------------------

  CREATE TABLE "KOREAIT"."SPRING_TOP" 
   (	"IDX" NUMBER(*,0), 
	"NAME" VARCHAR2(50 BYTE), 
	"PRICE" VARCHAR2(20 BYTE) DEFAULT 0, 
	"ID_NUMBER" VARCHAR2(20 BYTE), 
	"CATEGORY" VARCHAR2(20 BYTE), 
	"VOLUME" NUMBER(*,0) DEFAULT 0, 
	"GOODSDIR" VARCHAR2(100 BYTE), 
	"PHOTO" NUMBER(*,0), 
	"ITEM_COMMENT" VARCHAR2(1000 BYTE), 
	"GOODSCOLOR" VARCHAR2(50 BYTE), 
	"WRITEDATE" DATE DEFAULT sysdate, 
	"SUB_CATEGORY" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;

   COMMENT ON COLUMN "KOREAIT"."SPRING_TOP"."ID_NUMBER" IS '품번';
   COMMENT ON COLUMN "KOREAIT"."SPRING_TOP"."CATEGORY" IS '카테고리';
   COMMENT ON COLUMN "KOREAIT"."SPRING_TOP"."VOLUME" IS '주문량';
   COMMENT ON COLUMN "KOREAIT"."SPRING_TOP"."PHOTO" IS '사진갯수';
REM INSERTING into KOREAIT.SPRING_ACC
SET DEFINE OFF;
Insert into KOREAIT.SPRING_ACC (IDX,NAME,PRICE,ID_NUMBER,CATEGORY,VOLUME,GOODSDIR,PHOTO,ITEM_COMMENT,GOODSCOLOR,WRITEDATE,SUB_CATEGORY) values (109,'하이 퀄리티 숏 비니','5000','109.jpg','acc',0,'C:\leejinwon\SPRING\workspace\homeProject\src\main\webapp\resources\goodsupload',6,null,'black,red,white',to_date('20/05/29','RR/MM/DD'),1);
Insert into KOREAIT.SPRING_ACC (IDX,NAME,PRICE,ID_NUMBER,CATEGORY,VOLUME,GOODSDIR,PHOTO,ITEM_COMMENT,GOODSCOLOR,WRITEDATE,SUB_CATEGORY) values (14,'캔버스 벨크로 샌들','71000','14.jpg','acc',0,'C:\leejinwon\SPRING\workspace\homeProject\src\main\webapp\resources\goodsupload',1,'세련된 라인감과 투박한 솔이 매력적인 샌들입니다.

탄탄하고 질긴 캔버스 소재를 사용하여 제작된
슈즈로 뛰어난 내구성을 자랑하며 물에 젖더라도
변형없이 오랜기간 착용할 수 있는 제품입니다.','black',to_date('20/05/28','RR/MM/DD'),5);
Insert into KOREAIT.SPRING_ACC (IDX,NAME,PRICE,ID_NUMBER,CATEGORY,VOLUME,GOODSDIR,PHOTO,ITEM_COMMENT,GOODSCOLOR,WRITEDATE,SUB_CATEGORY) values (108,'크러쉬 스티치 볼캡','17000','108.jpg','acc',0,'C:\leejinwon\SPRING\workspace\homeProject\src\main\webapp\resources\goodsupload',6,null,'black,white,blue,gray,red,sky',to_date('20/05/29','RR/MM/DD'),1);
Insert into KOREAIT.SPRING_ACC (IDX,NAME,PRICE,ID_NUMBER,CATEGORY,VOLUME,GOODSDIR,PHOTO,ITEM_COMMENT,GOODSCOLOR,WRITEDATE,SUB_CATEGORY) values (110,'비비드 아크릴 볼캡','7000','110.jpg','acc',0,'C:\leejinwon\SPRING\workspace\homeProject\src\main\webapp\resources\goodsupload',5,null,'black,blue,sky,red',to_date('20/05/29','RR/MM/DD'),1);
Insert into KOREAIT.SPRING_ACC (IDX,NAME,PRICE,ID_NUMBER,CATEGORY,VOLUME,GOODSDIR,PHOTO,ITEM_COMMENT,GOODSCOLOR,WRITEDATE,SUB_CATEGORY) values (111,'Leather OMG Ball Cap','16000','111.jpg','acc',0,'C:\leejinwon\SPRING\workspace\homeProject\src\main\webapp\resources\goodsupload',6,null,'black,white',to_date('20/05/29','RR/MM/DD'),1);
Insert into KOREAIT.SPRING_ACC (IDX,NAME,PRICE,ID_NUMBER,CATEGORY,VOLUME,GOODSDIR,PHOTO,ITEM_COMMENT,GOODSCOLOR,WRITEDATE,SUB_CATEGORY) values (112,'클래식 체크 볼캡','21000','112.jpg','acc',0,'C:\leejinwon\SPRING\workspace\homeProject\src\main\webapp\resources\goodsupload',8,null,'red,blue',to_date('20/05/29','RR/MM/DD'),1);
Insert into KOREAIT.SPRING_ACC (IDX,NAME,PRICE,ID_NUMBER,CATEGORY,VOLUME,GOODSDIR,PHOTO,ITEM_COMMENT,GOODSCOLOR,WRITEDATE,SUB_CATEGORY) values (113,'어반 사이드 볼캡','16000','113.jpg','acc',0,'C:\leejinwon\SPRING\workspace\homeProject\src\main\webapp\resources\goodsupload',7,null,'black,white',to_date('20/05/29','RR/MM/DD'),1);
Insert into KOREAIT.SPRING_ACC (IDX,NAME,PRICE,ID_NUMBER,CATEGORY,VOLUME,GOODSDIR,PHOTO,ITEM_COMMENT,GOODSCOLOR,WRITEDATE,SUB_CATEGORY) values (114,'써지컬스틸 사각 스틱 펜던트','34000','114.jpg','acc',0,'C:\leejinwon\SPRING\workspace\homeProject\src\main\webapp\resources\goodsupload',3,null,'black',to_date('20/05/29','RR/MM/DD'),4);
Insert into KOREAIT.SPRING_ACC (IDX,NAME,PRICE,ID_NUMBER,CATEGORY,VOLUME,GOODSDIR,PHOTO,ITEM_COMMENT,GOODSCOLOR,WRITEDATE,SUB_CATEGORY) values (116,'써지컬스틸 크로스 체인목걸이','12000','116.jpg','acc',0,'C:\leejinwon\SPRING\workspace\homeProject\src\main\webapp\resources\goodsupload',3,null,'black',to_date('20/05/29','RR/MM/DD'),4);
Insert into KOREAIT.SPRING_ACC (IDX,NAME,PRICE,ID_NUMBER,CATEGORY,VOLUME,GOODSDIR,PHOTO,ITEM_COMMENT,GOODSCOLOR,WRITEDATE,SUB_CATEGORY) values (117,'919 더블코인 펜던트 목걸이','32000','117.jpg','acc',0,'C:\leejinwon\SPRING\workspace\homeProject\src\main\webapp\resources\goodsupload',3,null,'black',to_date('20/05/29','RR/MM/DD'),4);
Insert into KOREAIT.SPRING_ACC (IDX,NAME,PRICE,ID_NUMBER,CATEGORY,VOLUME,GOODSDIR,PHOTO,ITEM_COMMENT,GOODSCOLOR,WRITEDATE,SUB_CATEGORY) values (118,'15호 신규입고 PLAIN SILVER-17','30000','118.jpg','acc',0,'C:\leejinwon\SPRING\workspace\homeProject\src\main\webapp\resources\goodsupload',3,null,'black',to_date('20/05/29','RR/MM/DD'),3);
Insert into KOREAIT.SPRING_ACC (IDX,NAME,PRICE,ID_NUMBER,CATEGORY,VOLUME,GOODSDIR,PHOTO,ITEM_COMMENT,GOODSCOLOR,WRITEDATE,SUB_CATEGORY) values (119,'EPOXY 2 RING','23000','119.jpg','acc',0,'C:\leejinwon\SPRING\workspace\homeProject\src\main\webapp\resources\goodsupload',2,null,'black',to_date('20/05/29','RR/MM/DD'),3);
Insert into KOREAIT.SPRING_ACC (IDX,NAME,PRICE,ID_NUMBER,CATEGORY,VOLUME,GOODSDIR,PHOTO,ITEM_COMMENT,GOODSCOLOR,WRITEDATE,SUB_CATEGORY) values (120,'캐쥬얼 패션링','14000','120.jpg','acc',0,'C:\leejinwon\SPRING\workspace\homeProject\src\main\webapp\resources\goodsupload',3,null,'black',to_date('20/05/29','RR/MM/DD'),3);
Insert into KOREAIT.SPRING_ACC (IDX,NAME,PRICE,ID_NUMBER,CATEGORY,VOLUME,GOODSDIR,PHOTO,ITEM_COMMENT,GOODSCOLOR,WRITEDATE,SUB_CATEGORY) values (121,'Twist Ring','7000','121.jpg','acc',0,'C:\leejinwon\SPRING\workspace\homeProject\src\main\webapp\resources\goodsupload',2,null,'black',to_date('20/05/29','RR/MM/DD'),3);
Insert into KOREAIT.SPRING_ACC (IDX,NAME,PRICE,ID_NUMBER,CATEGORY,VOLUME,GOODSDIR,PHOTO,ITEM_COMMENT,GOODSCOLOR,WRITEDATE,SUB_CATEGORY) values (122,'캔버스 벨크로 샌들','71000','122.jpg','acc',0,'C:\leejinwon\SPRING\workspace\homeProject\src\main\webapp\resources\goodsupload',3,'세련된 라인감과 투박한 솔이 매력적인 샌들입니다.

탄탄하고 질긴 캔버스 소재를 사용하여 제작된
슈즈로 뛰어난 내구성을 자랑하며 물에 젖더라도
변형없이 오랜기간 착용할 수 있는 제품입니다.','black',to_date('20/05/29','RR/MM/DD'),5);
Insert into KOREAIT.SPRING_ACC (IDX,NAME,PRICE,ID_NUMBER,CATEGORY,VOLUME,GOODSDIR,PHOTO,ITEM_COMMENT,GOODSCOLOR,WRITEDATE,SUB_CATEGORY) values (123,'와이드 라인 쪼리','45000','123.jpg','acc',0,'C:\leejinwon\SPRING\workspace\homeProject\src\main\webapp\resources\goodsupload',3,'와이드한 라인으로 편안한 착용감이 일품이 쪼리입니다 :)

가장 기본적인 쪼리 디자인으로 제작되었지만 기존의 쪼리
제품들과 차이가 한눈에 보여질 정도로 퀄리티가
느껴지는 상품으로 티아그에서 추천드리는 제품입니다.','black,white',to_date('20/05/29','RR/MM/DD'),5);
Insert into KOREAIT.SPRING_ACC (IDX,NAME,PRICE,ID_NUMBER,CATEGORY,VOLUME,GOODSDIR,PHOTO,ITEM_COMMENT,GOODSCOLOR,WRITEDATE,SUB_CATEGORY) values (124,'캔버스 크로스 슬리퍼','49000','124.jpg','acc',0,'C:\leejinwon\SPRING\workspace\homeProject\src\main\webapp\resources\goodsupload',3,'깔끔하면서도 캐쥬얼한 무드가 느껴지는 슬러피입니다 :)

품질 높은 캔버스 원단으로 제작되어 탄탄하며
늘어짐이 적으며 높은 퀄리티와 탄탄한 마감처리로
뛰어난 내구성을 느낄 수 있는 제품입니다.','black',to_date('20/05/29','RR/MM/DD'),5);
Insert into KOREAIT.SPRING_ACC (IDX,NAME,PRICE,ID_NUMBER,CATEGORY,VOLUME,GOODSDIR,PHOTO,ITEM_COMMENT,GOODSCOLOR,WRITEDATE,SUB_CATEGORY) values (125,'모던 원 라인 슬러퍼','35000','125.jpg','acc',0,'C:\leejinwon\SPRING\workspace\homeProject\src\main\webapp\resources\goodsupload',4,'모던한 디자인이 매력적인 슬리퍼 입니다 :)

품질 높은 합성피혁 원단으로 제작되어 리얼 레더에
비교하여도 뒤지지 않은 가죽 퀄리티와 탄탄한 마감
처리로 뛰어난 내구성을 느낄 수 있는 상품입니다.','black',to_date('20/05/29','RR/MM/DD'),5);
Insert into KOREAIT.SPRING_ACC (IDX,NAME,PRICE,ID_NUMBER,CATEGORY,VOLUME,GOODSDIR,PHOTO,ITEM_COMMENT,GOODSCOLOR,WRITEDATE,SUB_CATEGORY) values (126,'핸드메이드 더비 샌들 ','116000','126.jpg','acc',0,'C:\leejinwon\SPRING\workspace\homeProject\src\main\webapp\resources\goodsupload',3,'더비 슈즈 디자인에 세련된 멋이 느껴지는 샌들입니다 :)

퀄리티 높은 리얼 카우레더 소재로 제작되어 가죽 특유의
소재감과 고급스러운 질감이 느껴지며 탄탄한 마감처리로
내구성이 뛰어나 오랜기간 착용 가능한 제품입니다.

수제화 특성상 교환 및 반품이 불가능하오니
신중한 선택 부탁드리겠습니다.','black',to_date('20/05/29','RR/MM/DD'),5);
Insert into KOREAIT.SPRING_ACC (IDX,NAME,PRICE,ID_NUMBER,CATEGORY,VOLUME,GOODSDIR,PHOTO,ITEM_COMMENT,GOODSCOLOR,WRITEDATE,SUB_CATEGORY) values (127,'미니멀 스웨이드 슬리퍼','34500','127.jpg','acc',0,'C:\leejinwon\SPRING\workspace\homeProject\src\main\webapp\resources\goodsupload',4,'퀄리티 높은 리얼 카우레더 소재로 제작되어 가죽 특유의
소재감과 고급스러운 질감이 느껴지며 탄탄한 마감처리로
내구성이 뛰어나 오랜기간 착용 가능한 제품입니다.

카우 레더 소재의 리얼 스웨이드 원단으로 제작되어 특유의
고급스러운 분위기가 나타나며 내구성이 우수하고 가벼운
무게감으로 부드럽고 편안한 착화감을 느낄 수 있습니다.','black',to_date('20/05/29','RR/MM/DD'),5);
Insert into KOREAIT.SPRING_ACC (IDX,NAME,PRICE,ID_NUMBER,CATEGORY,VOLUME,GOODSDIR,PHOTO,ITEM_COMMENT,GOODSCOLOR,WRITEDATE,SUB_CATEGORY) values (128,'가죽 샌들','46000','128.jpg','acc',0,'C:\leejinwon\SPRING\workspace\homeProject\src\main\webapp\resources\goodsupload',3,'심플한 디자인의 미니멀한 감성이 느껴지는 샌들입니다:)

카우 레더 소재의 리얼 스웨이드 원단으로 제작되어 특유의
고급스러운 분위기가 나타나며 내구성이 우수하고 가벼운
무게감으로 부드럽고 편안한 착화감을 느낄 수 있습니다.','black',to_date('20/05/29','RR/MM/DD'),5);
Insert into KOREAIT.SPRING_ACC (IDX,NAME,PRICE,ID_NUMBER,CATEGORY,VOLUME,GOODSDIR,PHOTO,ITEM_COMMENT,GOODSCOLOR,WRITEDATE,SUB_CATEGORY) values (129,'무지 스탠다드 양말','5000','129.jpg','acc',0,'C:\leejinwon\SPRING\workspace\homeProject\src\main\webapp\resources\goodsupload',3,null,'black,white,blue,gray,red',to_date('20/05/29','RR/MM/DD'),2);
REM INSERTING into KOREAIT.SPRING_BOTTOM
SET DEFINE OFF;
Insert into KOREAIT.SPRING_BOTTOM (IDX,NAME,PRICE,ID_NUMBER,CATEGORY,VOLUME,GOODSDIR,PHOTO,ITEM_COMMENT,GOODSCOLOR,WRITEDATE,SUB_CATEGORY) values (29,'로이드 슬랙스','49000','29.jpg','bottom',0,'C:\leejinwon\SPRING\workspace\homeProject\src\main\webapp\resources\goodsupload',7,'고급스러운 핏과 착용감이 일품인 스트레이트 슬랙스 입니다 :)

폴리80% 레이온16% 우레탄4%소재의 혼방원단으로 제작되어
부드럽고 가벼운 소재감으로 차분하게 떨어지는 핏이 잘 나타나며
봄 시즌 입기 좋은 두깨감으로 쾌적한 착용감을 느끼실 수 있습니다.

미니멀한 디자인에 모노톤 컬러구성으로 어떤 컬러에나 잘
어울려 코디 매치가 쉽고 스탠다드한 실루엣과 시즌에 맞는
소재감과 쾌적한 착용감으로 손이 자주 갈 만한 제품입니다.


- METERIAL : 폴리80% 레이온16% 우레탄4%%
- CARE TIP : 드라이 크리닝 / 손세탁','black,gray',to_date('20/05/28','RR/MM/DD'),1);
Insert into KOREAIT.SPRING_BOTTOM (IDX,NAME,PRICE,ID_NUMBER,CATEGORY,VOLUME,GOODSDIR,PHOTO,ITEM_COMMENT,GOODSCOLOR,WRITEDATE,SUB_CATEGORY) values (30,'퍼드 와이드 슬랙스','32000','30.jpg','bottom',0,'C:\leejinwon\SPRING\workspace\homeProject\src\main\webapp\resources\goodsupload',7,'와이드 슬랙스의 기본에 충실하여 퀄리티 높게 제작된 팬츠입니다 :)

와이드핏으로 제작되어 하체가 두꺼운신 분들도 착용 가능하며
기장이 길게 제작되어 키가 크신 분들도 입기 좋고 더욱
루즈하게 내려오는 내츄럴한 실루엣이 멋스러운 슬랙스입니다.

베이직한 컬러 구성으로 어떤 컬러에나 매치하기 쉬우며 볼수록
빠져드는 핏감이 매력적인 팬츠로 와이드 슬랙스의 기본에
충실하며 퀄리티가 좋아 S/S시즌 추천해 드리는 제품입니다.


- METERIAL : 폴리98% 스판2%
- CARE TIP : 드라이 크리닝 / 손세탁','black',to_date('20/05/28','RR/MM/DD'),1);
Insert into KOREAIT.SPRING_BOTTOM (IDX,NAME,PRICE,ID_NUMBER,CATEGORY,VOLUME,GOODSDIR,PHOTO,ITEM_COMMENT,GOODSCOLOR,WRITEDATE,SUB_CATEGORY) values (31,'뒷 밴딩 세미 와이드 슬랙스','38000','31.jpg','bottom',0,'C:\leejinwon\SPRING\workspace\homeProject\src\main\webapp\resources\goodsupload',7,'슬림하게 떨어지는 세미 와이드핏이 너무나 매력적인 슬랙스입니다 :)

폴리에스테르 혼방 소재의 탄탄한 조직감의 고급 TR원단으로
제작되어 가볍고 부드러운 착용감이 느껴지며 링클프리 가공으로
구김에 강하고 늘어짐이 적어 변형없이 착용가능한 제품입니다.

벙벙한 와이드핏이 아닌 허벅지부터 슬림하게 일자로 떨어지는
세미 와이드핏의 슬랙스도 트렌디한 무드를 주며 롱한
길이감으로 더욱 깔끔한 실루엣이 나타나는 제품입니다


- METERIAL : 폴리혼방
- CARE TIP : 드라이 크리닝 / 손세탁','black,white',to_date('20/05/28','RR/MM/DD'),1);
Insert into KOREAIT.SPRING_BOTTOM (IDX,NAME,PRICE,ID_NUMBER,CATEGORY,VOLUME,GOODSDIR,PHOTO,ITEM_COMMENT,GOODSCOLOR,WRITEDATE,SUB_CATEGORY) values (32,'썸머 린넨 슬림 슬랙스','28000','32.jpg','bottom',0,'C:\leejinwon\SPRING\workspace\homeProject\src\main\webapp\resources\goodsupload',7,'여름에 어울리는 시원한 소재감이 매력적은 슬림 슬랙스립니다 :)

폴리80% 린넨20% 혼방 소재의 원단으로 제작되어 부드럽고 가벼운
소재감으로 차분하게 떨어지는 슬랙스의 핏이 잘 나타나며
여름시즌 입기 좋은 두깨감으로 쾌적한 착용감을 느끼실 수 있습니다.

허리부터 발목까지 적당히 슬림한 라인으로 떨어지는 세련된
핏감의 슬랙스로 다리가 날씬하고 길어보이게 해주며 활용도 또한
좋으며 가격 대비 높은 퀄리티가 느껴지는 제품입니다.


- METERIAL : 폴리80% 린넨20%
- CARE TIP : 드라이 크리닝 / 손세탁','black,red',to_date('20/05/28','RR/MM/DD'),1);
Insert into KOREAIT.SPRING_BOTTOM (IDX,NAME,PRICE,ID_NUMBER,CATEGORY,VOLUME,GOODSDIR,PHOTO,ITEM_COMMENT,GOODSCOLOR,WRITEDATE,SUB_CATEGORY) values (33,'드랍 세미 와이드 슬랙스','34000','33.jpg','bottom',0,'C:\leejinwon\SPRING\workspace\homeProject\src\main\webapp\resources\goodsupload',7,'슬림하게 떨어지는 세미 와이드핏이 너무나 매력적인 슬랙스입니다 :)

폴리85% 레이온15% 혼방 소재의 조직감 있는 TR원단으로
제작되어 가볍고 부드러운 착용감이 느껴지며 링클프리 가공으로
구김에 강하고 늘어짐이 적어 변형없이 착용가능한 제품입니다.

벙벙한 와이드핏이 아닌 허벅지부터 슬림하게 일자로 떨어지는
세미 와이드핏의 슬랙스도 트렌디한 무드를 주며 롱한
길이감으로 더욱 깔끔한 실루엣이 나타나는 제품입니다


- METERIAL : 폴리85% 레이온15%
- CARE TIP : 드라이 크리닝 / 손세탁','black',to_date('20/05/28','RR/MM/DD'),1);
Insert into KOREAIT.SPRING_BOTTOM (IDX,NAME,PRICE,ID_NUMBER,CATEGORY,VOLUME,GOODSDIR,PHOTO,ITEM_COMMENT,GOODSCOLOR,WRITEDATE,SUB_CATEGORY) values (34,'모던 세미 와이드 슬랙스','29000','34.jpg','bottom',0,'C:\leejinwon\SPRING\workspace\homeProject\src\main\webapp\resources\goodsupload',8,'슬림하게 떨어지는 세미 와이드핏이 너무나 매력적인 슬랙스입니다 :)

폴리에스테르 혼방 소재의 탄탄한 조직감의 고급 TR원단으로
제작되어 가볍고 부드러운 착용감이 느껴지며 링클프리 가공으로
구김에 강하고 늘어짐이 적어 변형없이 착용가능한 제품입니다.

벙벙한 와이드핏이 아닌 허벅지부터 슬림하게 일자로 떨어지는
세미 와이드핏의 슬랙스도 트렌디한 무드를 주며 롱한
길이감으로 더욱 깔끔한 실루엣이 나타나는 제품입니다


- METERIAL : 폴리에스테르혼방
- CARE TIP : 드라이 크리닝 / 손세탁','black,white',to_date('20/05/28','RR/MM/DD'),1);
Insert into KOREAIT.SPRING_BOTTOM (IDX,NAME,PRICE,ID_NUMBER,CATEGORY,VOLUME,GOODSDIR,PHOTO,ITEM_COMMENT,GOODSCOLOR,WRITEDATE,SUB_CATEGORY) values (35,'10부 뒷 밴딩 슬랙스','36000','35.jpg','bottom',0,'C:\leejinwon\SPRING\workspace\homeProject\src\main\webapp\resources\goodsupload',8,'고급스러운 핏과 뒷밴딩으로 착용감이 일품인 슬랙스 입니다 :)

폴리 스판 혼방 소재의 원단으로 제작되어 부드럽고 가벼운
소재감으로 차분하게 떨어지는 슬랙스의 핏이 잘 나타나며
시즌 입기 좋은 두깨감으로 편안한 착용감을 느끼실 수 있습니다.

미니멀한 디자인에 무채색 컬러 구성으로 어떤 컬러에나 잘
어울려 코디 매치가 쉽고 스탠다드한 실루엣과 시즌에 맞는
소재감과 편안한 뒷밴딩으로 손이 자주 갈 만한 제품입니다.


- METERIAL : 폴리 스판 혼방
- CARE TIP : 드라이 크리닝 / 손세탁','black',to_date('20/05/28','RR/MM/DD'),1);
Insert into KOREAIT.SPRING_BOTTOM (IDX,NAME,PRICE,ID_NUMBER,CATEGORY,VOLUME,GOODSDIR,PHOTO,ITEM_COMMENT,GOODSCOLOR,WRITEDATE,SUB_CATEGORY) values (36,'데일리 세미 와이드 슬랙스','34000','36.jpg','bottom',0,'C:\leejinwon\SPRING\workspace\homeProject\src\main\webapp\resources\goodsupload',5,'슬림하게 떨어지는 세미 와이드핏이 너무나 매력적인 슬랙스입니다 :)

폴리70% 나일론26% 폴리우레탄4% 혼방 소재의 TR원단으로
제작되어 가볍고 부드러운 착용감이 느껴지며 링클프리 가공으로
구김에 강하고 늘어짐이 적어 변형없이 착용가능한 제품입니다.

벙벙한 와이드핏이 아닌 허벅지부터 슬림하게 일자로 떨어지는
세미 와이드핏의 슬랙스도 트렌디한 무드를 주며 롱한
길이감으로 더욱 깔끔한 실루엣이 나타나는 제품입니다


- METERIAL : 폴리70% 나일론26% 폴리우레탄4%
- CARE TIP : 드라이 크리닝 / 손세탁','black',to_date('20/05/28','RR/MM/DD'),1);
Insert into KOREAIT.SPRING_BOTTOM (IDX,NAME,PRICE,ID_NUMBER,CATEGORY,VOLUME,GOODSDIR,PHOTO,ITEM_COMMENT,GOODSCOLOR,WRITEDATE,SUB_CATEGORY) values (37,'퍼펙트 세미 와이드 셋업 슬랙스','47000','37.jpg','bottom',0,'C:\leejinwon\SPRING\workspace\homeProject\src\main\webapp\resources\goodsupload',7,'포멀하면서도 유니크한 스타일링 가능한 세미와이드 슬랙스 입니다 :)

폴리80% 레이온16% 스판4% 혼방 소재를 사용하여 고급 TR원단
으로 제작되어 원단 자체에 흐르는 은은한 광택이 고급스러우며
적당한 신축성으로 활동감과 착용감이 모두 우수한 슬랙스입니다.

벙벙한 와이드핏이 아닌 허벅지부터 슬림하게 일자로 떨어지는
세미 와이드핏의 슬랙스도 트렌디한 무드를 주며 롱한
길이감으로 더욱 깔끔한 실루엣이 나타나는 제품입니다.


- METERIAL : 폴리80% 레이온16% 스판4%
- CARE TIP : 드라이 크리닝 / 손세탁','black',to_date('20/05/28','RR/MM/DD'),1);
Insert into KOREAIT.SPRING_BOTTOM (IDX,NAME,PRICE,ID_NUMBER,CATEGORY,VOLUME,GOODSDIR,PHOTO,ITEM_COMMENT,GOODSCOLOR,WRITEDATE,SUB_CATEGORY) values (38,'컨트롤 와이드 슬랙스','42000','38.jpg','bottom',0,'C:\leejinwon\SPRING\workspace\homeProject\src\main\webapp\resources\goodsupload',7,'사이드 버튼으로 사이즈 컨트롤이 가능한 와이드 슬랙스 입니다 :)

폴리 나일론 스판 혼방 소재를 사용하여 밀도 높은 원단으로
제작되어 원단 자체의 텍스쳐가 고급스럽고 촉감이 매우
부드럽고 적당히 신축성이 있어 착용감이 편안한 제품입니다.

와이드하게 떨어지는 스트레이트핏에 심플한 컬러감으로
어디에나 잘 어울리며 편안함과 트렌디함을 모두 갖추고 있어
봄 시즌 데일리 아이템으로 추천드리는 제품입니다.


- METERIAL : 폴리 나일론 스판 혼방
- CARE TIP : 드라이 크리닝 / 손세탁','black,gray',to_date('20/05/28','RR/MM/DD'),1);
Insert into KOREAIT.SPRING_BOTTOM (IDX,NAME,PRICE,ID_NUMBER,CATEGORY,VOLUME,GOODSDIR,PHOTO,ITEM_COMMENT,GOODSCOLOR,WRITEDATE,SUB_CATEGORY) values (44,'업 데일리 슬랙스','58000','44.jpg','bottom',0,'C:\leejinwon\SPRING\workspace\homeProject\src\main\webapp\resources\goodsupload',8,'깔끔한 핏의 슬랙스와 레귤러핏의 데님팬츠를 착한 가격으로 구성했습니다 :)

데님팬츠는코튼 100% 소재의 데님 원단으로 제작되어 밀도높은 원단의
탄탄한 조직감으로 늘어짐이나 변형이 거의 없어 오랜 기간동안 같은
모습을 유지하며 무게감있는 원단의 묵직한 실루엣이 매력적입니다.

슬랙스+슬랙스 / 데님팬츠+데님팬츠 / 슬랙스+데님팬츠
다양한 구성으로 원하시는 스타일에 따라 원하시는 스타일로
구매가 가능하며 슬랙스와 데님팬츠 모두 어떤 코디에나
무던히 잘 어울려 데일리 코디에 활용도 높은 제품입니다.

- METERIAL : TR원단 / 코튼
- CARE TIP : 드라이 크리닝 / 손세탁
','sky',to_date('20/05/28','RR/MM/DD'),1);
Insert into KOREAIT.SPRING_BOTTOM (IDX,NAME,PRICE,ID_NUMBER,CATEGORY,VOLUME,GOODSDIR,PHOTO,ITEM_COMMENT,GOODSCOLOR,WRITEDATE,SUB_CATEGORY) values (45,'이지 밴딩 슬랙스','39000','45.jpg','bottom',0,'C:\leejinwon\SPRING\workspace\homeProject\src\main\webapp\resources\goodsupload',6,'누구나 이상적인 핏으로 착용 가능한 강력추천 슬랙스입니다:)

폴리에스테르와 레이온 혼방 소재의 부드러운 TR 원단으로 제작되어
착용감이 가볍고 편안해 사계절 데일리 팬츠로 좋으며 흐르는 듯이
내려오는 실키한 원단이 고급스러운 세련미를 더해주는 팬츠입니다.

미니멀한 디자인에 무채색 컬러 구성으로 어떤 컬러에나 잘
어울려 코디 매치가 쉽고 스탠다드한 실루엣과 시즌에 맞는 소재감과
전체밴딩 디테일의 편안함으로 손이 자주 갈 만한 제품입니다.


- METERIAL : 폴리 레이온 스판혼방
- CARE TIP : 드라이 크리닝 / 손세탁','black',to_date('20/05/28','RR/MM/DD'),1);
Insert into KOREAIT.SPRING_BOTTOM (IDX,NAME,PRICE,ID_NUMBER,CATEGORY,VOLUME,GOODSDIR,PHOTO,ITEM_COMMENT,GOODSCOLOR,WRITEDATE,SUB_CATEGORY) values (46,'플랜 스탠다드 슬랙스','26000','46.jpg','bottom',0,'C:\leejinwon\SPRING\workspace\homeProject\src\main\webapp\resources\goodsupload',6,'티아그에서 자신있게 추천드리는 만족도 최상의 슬랙스입니다 :)

폴리에스테르와 레이온 혼방 소재의 TR 원단으로 제작되었으며 광택없이
깔끔한 텍스쳐로 고급스러움이 느껴지며 스판 함유로 착용감이 우수하고
링클 프리 원단으로 구김에 강해 세탁 후에도 간편하게 착용 가능합니다.

베이직한 디자인의 기본 아이템인 만큼 쉽게 코디하실 수 있는 컬러들로
구성되어 다양한 코디에 활용도 높으며 부담없는 가격과 우수한 퀄리티,
최고의 핏까지 소장하시더라도 후회없으실 만한 최강 슬랙스입니다.


- METERIAL : 폴리혼방
- CARE TIP : 드라이 크리닝 / 손세탁','black,gray,blue',to_date('20/05/28','RR/MM/DD'),1);
Insert into KOREAIT.SPRING_BOTTOM (IDX,NAME,PRICE,ID_NUMBER,CATEGORY,VOLUME,GOODSDIR,PHOTO,ITEM_COMMENT,GOODSCOLOR,WRITEDATE,SUB_CATEGORY) values (47,'칸 데미지 컷팅 진','54000','47.jpg','bottom',0,'C:\leejinwon\SPRING\workspace\homeProject\src\main\webapp\resources\goodsupload',5,'과감한 데미지 디테일로 포인트 주기 좋은 컷팅 진입니다 :)

스판이 함유되어 신축성이 우수한 데님 원단으로 제작되어 부드럽고 쫀쫀한
원단감으로 매우 편안한 착용감과 뛰어난 활동성이 느껴지는 팬츠이며 탄탄한
내구성으로 늘어짐이 적어 오랜 기간 같은 핏으로 착용 가능한 상품입니다.

가장 베이직한 데님 컬러로 제작되어 여름 시즌 시원한 느낌을
나타내기 좋으며 데미지 디테일이 들어가있는 컷팅진으로 밋밋함없이
멋스러운 데일리 팬츠 아이템으로 활용하시기에 좋은 제품입니다.


- METERIAL : 코튼98% 스판2%
- CARE TIP : 드라이 크리닝 / 손세탁','blue',to_date('20/05/28','RR/MM/DD'),3);
Insert into KOREAIT.SPRING_BOTTOM (IDX,NAME,PRICE,ID_NUMBER,CATEGORY,VOLUME,GOODSDIR,PHOTO,ITEM_COMMENT,GOODSCOLOR,WRITEDATE,SUB_CATEGORY) values (48,'데일리 워싱 데님팬츠','49000','48.jpg','bottom',0,'C:\leejinwon\SPRING\workspace\homeProject\src\main\webapp\resources\goodsupload',5,'은은한 블루 톤 컬러위에 브러쉬 워싱이 돋보이는 데님팬츠입니다 :)

코튼 98% 스판2% 소재의 신축성 있는 데님 원단으로 제작되어
착용감이 부드럽고 편안하며 적당한 탄성으로 늘어짐이 적고
복원력이 뛰어나 오랜기간 같은 핏을 유지하는 제품입니다.

은은한 데님 컬러에 브러쉬 워싱이 가미된 베이직한 무드의 팬츠로
어떤 코디에나 쉽게 활용할 수 있어 활용도가 높으며 깔끔한 밑단처리로
트렌디함과 캐쥬얼한 무드를 살려 데일리하게 즐기기 좋은 제품입니다.


- METERIAL : 코튼 98% 스판2%
- CARE TIP : 드라이 크리닝 / 손세탁','blue',to_date('20/05/28','RR/MM/DD'),3);
Insert into KOREAIT.SPRING_BOTTOM (IDX,NAME,PRICE,ID_NUMBER,CATEGORY,VOLUME,GOODSDIR,PHOTO,ITEM_COMMENT,GOODSCOLOR,WRITEDATE,SUB_CATEGORY) values (49,'와일드 컷팅 블랙 진','29000','49.jpg','bottom',0,'C:\leejinwon\SPRING\workspace\homeProject\src\main\webapp\resources\goodsupload',6,'러프한 데미지 디테일에서 와일드함이 느껴지는 블랙진입니다 :)

코튼97% 스판3% 혼방으로 신축성 좋은 데님 원단으로 제작되어
쫀쫀한 질감이 뛰어난 활동성을 느끼게 해주며 일반 데님보다
부드러운 촉감으로 편안한 착용감이 느껴지는 데님 팬츠입니다.

어떤 상의에나 매치하기 좋은 블랙 컬러의 데님 팬츠로 다양한
코디에 폭 넓게 활용 가능하며 무릎 부분 과감한 데미지
디테일로 코디에 확실한 포인트를 더해주는 제품입니다.


- METERIAL : 폴리80% 린넨20%
- CARE TIP : 드라이 크리닝 / 손세탁','black',to_date('20/05/28','RR/MM/DD'),3);
Insert into KOREAIT.SPRING_BOTTOM (IDX,NAME,PRICE,ID_NUMBER,CATEGORY,VOLUME,GOODSDIR,PHOTO,ITEM_COMMENT,GOODSCOLOR,WRITEDATE,SUB_CATEGORY) values (50,'데일리 무드 컷팅 진','55000','50.jpg','bottom',0,'C:\leejinwon\SPRING\workspace\homeProject\src\main\webapp\resources\goodsupload',5,'은은한 블루 톤 컬러위에 브러쉬 워싱이 돋보이는 데님팬츠입니다 :)

코튼 98% 스판2% 소재의 신축성 있는 데님 원단으로 제작되어
착용감이 부드럽고 편안하며 적당한 탄성으로 늘어짐이 적고
복원력이 뛰어나 오랜기간 같은 핏을 유지하는 제품입니다.

은은한 데님 컬러에 브러쉬 워싱이 가미된 베이직한 무드의 팬츠로
어떤 코디에나 쉽게 활용할 수 있어 활용도가 높으며 밑단에 컷팅 디테일로
트렌디함과 캐쥬얼한 무드를 살려 데일리하게 즐기기 좋은 제품입니다.


- METERIAL : 코튼 98% 스판2%
- CARE TIP : 드라이 크리닝 / 손세탁','blue',to_date('20/05/28','RR/MM/DD'),3);
Insert into KOREAIT.SPRING_BOTTOM (IDX,NAME,PRICE,ID_NUMBER,CATEGORY,VOLUME,GOODSDIR,PHOTO,ITEM_COMMENT,GOODSCOLOR,WRITEDATE,SUB_CATEGORY) values (51,'5CM 업 디스 컷팅진','52000','51.jpg','bottom',0,'C:\leejinwon\SPRING\workspace\homeProject\src\main\webapp\resources\goodsupload',5,'시원한 컬러감과 곳곳의 컷팅 데미지가 매력적인 데님팬츠입니다 :)

코튼 98% 스판 2% 소재의 신축성있는 데님 원단으로 제작되어 편안한
착용감과 활동성이 느껴지며 활동에 의한 신축성은 좋지만 늘어짐은
적어 입을수록 몸에 맞춰지는 슬림한 실루엣이 매력적인 팬츠입니다.

따뜻한 계절에 입기 좋은 시원한 연청 컬러의 데님 팬츠로 흰 티셔츠
하나만 입어주어도 멋스럽게 코디되며 핏 하나는 정말 자신있게
추천드리는 티아그 5CM 데님 팬츠로 소장하셔도 좋을만한 제품입니다.


- METERIAL : 코튼98% 스판2%
- CARE TIP : 드라이 크리닝 / 손세탁','blue',to_date('20/05/28','RR/MM/DD'),3);
Insert into KOREAIT.SPRING_BOTTOM (IDX,NAME,PRICE,ID_NUMBER,CATEGORY,VOLUME,GOODSDIR,PHOTO,ITEM_COMMENT,GOODSCOLOR,WRITEDATE,SUB_CATEGORY) values (52,'데일리 루즈핏 데님팬츠','46000','52.jpg','bottom',0,'C:\leejinwon\SPRING\workspace\homeProject\src\main\webapp\resources\goodsupload',5,'루즈한 핏으로 데일리하게 즐기기 좋은 데님 팬츠 입니다 :)

코튼 100% 소재의 논 스판 데님 원단으로 제작되어 밀도높은 원단의
탄탄한 조직감으로 늘어짐이나 변형이 거의 없어 오랜 기간동안 같은
모습을 유지하며 무게감있는 원단의 묵직한 실루엣이 매력적입니다

데님이 가지고 있는 특유의 빈티지한 매력을 잘 살려낸 유니크한 컬러
워싱으로 나타나는 은은한 컬러감과 과하지 않은 무늬결이 인상적이며
어떤 코디에나 무던히 잘 어울려 데일리 코디에 활용도 높은 제품입니다.


- METERIAL : 코튼100%
- CARE TIP : 드라이 크리닝 / 손세탁','blue',to_date('20/05/28','RR/MM/DD'),3);
Insert into KOREAIT.SPRING_BOTTOM (IDX,NAME,PRICE,ID_NUMBER,CATEGORY,VOLUME,GOODSDIR,PHOTO,ITEM_COMMENT,GOODSCOLOR,WRITEDATE,SUB_CATEGORY) values (53,'5CM 업 커스텀 컷팅 데님팬츠','49000','53.jpg','bottom',0,'C:\leejinwon\SPRING\workspace\homeProject\src\main\webapp\resources\goodsupload',5,'밑단을 기장에 맞춰 가위로 컷팅하셔서 착용할 수 있는 데님팬츠입니다 :)

코튼 98% 스판 2% 소재의 신축성있는 데님 원단으로 제작되어 편안한
착용감과 활동성이 느껴지며 활동에 의한 신축성은 좋지만 늘어짐은
적어 입을수록 몸에 맞춰지는 슬림한 실루엣이 매력적인 팬츠입니다.

따뜻한 계절에 입기 좋은 시원한 연청 컬러의 데님 팬츠로 흰 티셔츠
하나만 입어주어도 멋스럽게 코디되며 핏 하나는 정말 자신있게
추천드리는 티아그 5CM 데님 팬츠로 소장하셔도 좋을만한 제품입니다.


- METERIAL : 코튼98% 스판2%
- CARE TIP : 드라이 크리닝 / 손세탁','blue',to_date('20/05/28','RR/MM/DD'),3);
Insert into KOREAIT.SPRING_BOTTOM (IDX,NAME,PRICE,ID_NUMBER,CATEGORY,VOLUME,GOODSDIR,PHOTO,ITEM_COMMENT,GOODSCOLOR,WRITEDATE,SUB_CATEGORY) values (54,'히든 밴딩 생지 데님 팬츠','34000','54.jpg','bottom',0,'C:\leejinwon\SPRING\workspace\homeProject\src\main\webapp\resources\goodsupload',5,'매 시즌 남친룩 코디에 제격인 생지 데님 팬츠입니다 :)

슬림하게 제작되어 다리 라인을 깔끔하고 이쁘게 잡아주며 너무
딱 달라 붙지 않는 레귤러 핏으로 다리가 더욱 길어보이는 효과를
볼 수 있어 데일리로 자주 즐기시기 좋은 데님 팬츠 제품입니다.

생지 데님으로 촘촘하고 튼튼히 제작되 내구성이 우수하여 핏의
변형 걱정 없이 오랜기간 즐겨 입으실 수 있으며 발목에 딱 떨어
지는 크롭 기장이 시원한 느낌을 주어 인상적인 제품입니다.


- METERIAL : 코튼99% 스판1%
- CARE TIP : 드라이 크리닝 / 손세탁','blue,black',to_date('20/05/28','RR/MM/DD'),3);
Insert into KOREAIT.SPRING_BOTTOM (IDX,NAME,PRICE,ID_NUMBER,CATEGORY,VOLUME,GOODSDIR,PHOTO,ITEM_COMMENT,GOODSCOLOR,WRITEDATE,SUB_CATEGORY) values (55,'5CM 업 데님 슬랙스','56000','55.jpg','bottom',0,'C:\leejinwon\SPRING\workspace\homeProject\src\main\webapp\resources\goodsupload',5,'데님 소제로 제작되어 독특한 감성을 보여주는 벨트 슬랙스 입니다 :)

코튼 100% 소재를 사용해 밀도 높은 논스판 데님 원단으로
제작되어 탄탄한 내구성으로 늘어짐과 변형이 적어 별다른
관리 없이도 오랜 기간 착용하실 수 있는 제품입니다.

허리 부분 벨티드 버튼 디테일이 활동성 뿐만 아니라 클래식한
감성을 살려주며 벨트 디테일을 활용해 상의를 넣어 입었을때
더울 깔끔하고 멋스러운 스타일링이 가능한 제품입니다.


- METERIAL : 코튼100%
- CARE TIP : 드라이 크리닝 / 손세탁','blue',to_date('20/05/28','RR/MM/DD'),3);
Insert into KOREAIT.SPRING_BOTTOM (IDX,NAME,PRICE,ID_NUMBER,CATEGORY,VOLUME,GOODSDIR,PHOTO,ITEM_COMMENT,GOODSCOLOR,WRITEDATE,SUB_CATEGORY) values (56,'데니스 스탠다스 데님팬츠','44000','56.jpg','bottom',0,'C:\leejinwon\SPRING\workspace\homeProject\src\main\webapp\resources\goodsupload',5,'라이트한 컬러의 워싱이 매력적인 데님 팬츠입니다 :)

코튼 100% 소재의 논 스판 데님 원단으로 제작되어 밀도높은 원단의
탄탄한 조직감으로 늘어짐이나 변형이 거의 없어 오랜 기간동안 같은
모습을 유지하며 무게감있는 원단의 묵직한 실루엣이 매력적입니다.

데님이 가지고 있는 특유의 빈티지한 매력을 잘 살려낸 유니크한 컬러
워싱으로 나타나는 은은한 컬러감과 과하지 않은 무늬결이 인상적이며
어떤 코디에나 무던히 잘 어울려 데일리 코디에 활용도 높은 제품입니다.


- METERIAL : 코튼100%
- CARE TIP : 드라이 크리닝 / 손세탁','blue',to_date('20/05/28','RR/MM/DD'),3);
Insert into KOREAIT.SPRING_BOTTOM (IDX,NAME,PRICE,ID_NUMBER,CATEGORY,VOLUME,GOODSDIR,PHOTO,ITEM_COMMENT,GOODSCOLOR,WRITEDATE,SUB_CATEGORY) values (57,'페인팅 스탠다드 데님팬츠','48000','57.jpg','bottom',0,'C:\leejinwon\SPRING\workspace\homeProject\src\main\webapp\resources\goodsupload',6,'감각적인 페인팅 디테일과 스탠다드한 핏이 매력적인 데님팬츠입니다 :)

코튼 100% 소재의 논 스판 데님 원단으로 제작되어 탄탄한
조직감의 뛰어난 내구성으로 늘어짐이나 변형이 적어 오랜 기간
착용가능하며 적당한 무게감으로 깔끔한 핏을 보여주는 제품입니다.

가장 베이직한 데님 컬러로 구성되어 두가지 컬러 모두 다양한
컬러와 손쉽게 매치 가능하며 페인팅 디테일로 간편하게 유니크함을
더해줄 수 있어 셋업으로 또는 단품으로도 즐기기 좋은 제품입니다.


- METERIAL : 코튼100%
- CARE TIP : 드라이 크리닝 / 손세탁','blue,black',to_date('20/05/28','RR/MM/DD'),3);
Insert into KOREAIT.SPRING_BOTTOM (IDX,NAME,PRICE,ID_NUMBER,CATEGORY,VOLUME,GOODSDIR,PHOTO,ITEM_COMMENT,GOODSCOLOR,WRITEDATE,SUB_CATEGORY) values (58,'미디엄 블루 컷팅 진','56000','58.jpg','bottom',0,'C:\leejinwon\SPRING\workspace\homeProject\src\main\webapp\resources\goodsupload',4,'유니크한 워싱감이 돋보이는 크롭 데님 팬츠입니다 :)

스판 함유로 신축성이 있는 데님으로 제작되어 텐션감이 좋아 착용감이
부드럽고 편안하며 탄탄한 원단은 복원력이 우수해 늘어짐과 변형이 적어
별 다른 관리 없이 오랜 기간 편안하게 착용 하실 수 있는 팬츠입니다.

어떤 컬러에나 매치하기 좋은 기본적인 중청 컬러의 데님으로 제작되어
다양한 코디에 활용도 높으며 자연스러운 레직기 워싱을 통해 슬림 라인을
살려 깔끔하고 세련된 핏을 부각해 매력적 실루엣을 보여주는 제품입니다.


- METERIAL : 코튼98% 스판2%
- CARE TIP : 드라이 크리닝 / 손세탁','blue',to_date('20/05/28','RR/MM/DD'),3);
Insert into KOREAIT.SPRING_BOTTOM (IDX,NAME,PRICE,ID_NUMBER,CATEGORY,VOLUME,GOODSDIR,PHOTO,ITEM_COMMENT,GOODSCOLOR,WRITEDATE,SUB_CATEGORY) values (59,'그리드 레귤러 컷팅 진','52000','59.jpg','bottom',0,'C:\leejinwon\SPRING\workspace\homeProject\src\main\webapp\resources\goodsupload',4,'레귤러 컷팅진의 정석을 보여주는 듯한 데님팬츠입니다 :)

코튼98% 스판2% 혼방 소재의 밀도 높은 데님원단으로 제작되어
쫀쫀한 질감으로 내구성이 뛰어나 적은 늘어짐으로 착용 가능하며
신축성이 있어 편안한 착용감과 활동성이 느껴지는 제품입니다.

가장 베이직한 컬러의 연청으로 구성되어 다양한 컬러와
손쉽게 매치하시기 좋으며 내츄럴한 워싱 디테일로 활용도
높아 한 벌쯤 소장하시더라도 후회없으실 만한 제품입니다.


- METERIAL : 코튼98% 스판2%
- CARE TIP : 드라이 크리닝 / 손세탁','blue',to_date('20/05/28','RR/MM/DD'),3);
Insert into KOREAIT.SPRING_BOTTOM (IDX,NAME,PRICE,ID_NUMBER,CATEGORY,VOLUME,GOODSDIR,PHOTO,ITEM_COMMENT,GOODSCOLOR,WRITEDATE,SUB_CATEGORY) values (60,'로반 린넨 반 밴딩 팬츠','48000','60.jpg','bottom',0,'C:\leejinwon\SPRING\workspace\homeProject\src\main\webapp\resources\goodsupload',7,'고급스러운 핏과 착용감이 일품인 린넨 반밴딩 슬랙스 입니다 :)

린넨 코튼 혼방 소재의 원단으로 제작되어 부드럽고 가벼운
소재감으로 차분하게 떨어지는 슬랙스의 핏이 잘 나타나며
여름기즌 입기 좋은 두깨감으로 쾌적한 착용감을 느끼실 수 있습니다.

미니멀한 디자인에 무채색 컬러 구성으로 어떤 컬러에나 잘
어울려 코디 매치가 쉽고 스탠다드한 실루엣과 시즌에 맞는
소재감과 쾌적한 착용감으로 손이 자주 갈 만한 제품입니다.


- METERIAL : 린넨 코튼 혼방
- CARE TIP : 드라이 크리닝 / 손세탁','black,gray',to_date('20/05/28','RR/MM/DD'),4);
Insert into KOREAIT.SPRING_BOTTOM (IDX,NAME,PRICE,ID_NUMBER,CATEGORY,VOLUME,GOODSDIR,PHOTO,ITEM_COMMENT,GOODSCOLOR,WRITEDATE,SUB_CATEGORY) values (61,'노멀 워싱 옆 밴딩 코튼 팬츠','38000','61.jpg','bottom',0,'C:\leejinwon\SPRING\workspace\homeProject\src\main\webapp\resources\goodsupload',5,'퍼펙트한 핏감으로 데일리아이템으로 추천드리는 코튼팬츠입니다 :)

코튼94% 스판6% 소재의 트윌 16수 면원단에 노멀 워싱처리로
내구성이 우수해 늘어짐과 변형이 적으며 스판이 함유되어 신축성이
좋아 편안한 착용감과 높은 텐션감으로 복원력 또한 우수한 팬츠입니다.

모던한 톤의 4가지 컬러들로 구성되어 다양한 코디에 쉽게 매치
하실 수 있으며 베이직한 디자인과 편안한 착용감, 우수한 퀄리티로
컬러 별로 소장하여 데일리 팬츠로 활용하시기 좋아 추천드리는 제품입니다.


- METERIAL : 코튼94% 스판6%
- CARE TIP : 드라이 크리닝 / 손세탁','white,gray',to_date('20/05/28','RR/MM/DD'),4);
Insert into KOREAIT.SPRING_BOTTOM (IDX,NAME,PRICE,ID_NUMBER,CATEGORY,VOLUME,GOODSDIR,PHOTO,ITEM_COMMENT,GOODSCOLOR,WRITEDATE,SUB_CATEGORY) values (62,'스톰 밴딩 조거 팬츠','31000','62.jpg','bottom',0,'C:\leejinwon\SPRING\workspace\homeProject\src\main\webapp\resources\goodsupload',6,'워싱 원단으로 퀄리티 높게 제작된 이지한 감성의 조거 팬츠 입니다 :)

탄탄한 헤비 코튼 원단을 사용하여 제작되어 내구성이 뛰어나
오랜 기간 착용하기 좋으며 워싱을 거쳐 늘어짐과 변형이
적고 촘감이 부드러워 편안한 착용감이 느껴지는 제품입니다.

부담없이 착용하기 좋은 컬러 구성으로 다양한 코디에 활용하기
좋으며 맨투맨 혹은 다양한 후드 티셔츠와 함께 착용하시거나
단품으로도 다양한 스타일링을 하시기 좋은 제품입니다.


- METERIAL : 코튼100%
- CARE TIP : 드라이 크리닝 / 손세탁','gray',to_date('20/05/28','RR/MM/DD'),4);
Insert into KOREAIT.SPRING_BOTTOM (IDX,NAME,PRICE,ID_NUMBER,CATEGORY,VOLUME,GOODSDIR,PHOTO,ITEM_COMMENT,GOODSCOLOR,WRITEDATE,SUB_CATEGORY) values (63,'레이블 카고 밴딩 팬츠','42000','63.jpg','bottom',0,'C:\leejinwon\SPRING\workspace\homeProject\src\main\webapp\resources\goodsupload',6,'편안한듯 멋스럽게 착용하기 좋은 밴딩 팬츠입니다 :)

코튼폴리 혼방 소재로 제작되어 내구성이 튼튼하고
변형이 적으며 적당한 신축성으로 활동성 또한 좋아
가을시즌 데일리하게 착용하시기 좋은 제품입니다.

미니멀한 디자인에 무채색 컬러 구성으로 어떤 컬러에나 잘
어울려 코디 매치가 쉽고 스탠다드한 실루엣과 시즌에 맞는
소재감과 부드러운 착용감으로 손이 자주 갈 만한 제품입니다.


- METERIAL : 코튼폴리혼방
- CARE TIP : 드라이 크리닝 / 손세탁','gray',to_date('20/05/28','RR/MM/DD'),4);
Insert into KOREAIT.SPRING_BOTTOM (IDX,NAME,PRICE,ID_NUMBER,CATEGORY,VOLUME,GOODSDIR,PHOTO,ITEM_COMMENT,GOODSCOLOR,WRITEDATE,SUB_CATEGORY) values (64,'롤업 반 밴딩 데님 팬츠','39000','64.jpg','bottom',0,'C:\leejinwon\SPRING\workspace\homeProject\src\main\webapp\resources\goodsupload',5,'깔끔하고 댄디한 스타일로 제작된 논 워싱 데님팬츠입니다 :)

코튼 100% 소재의 논 스판 데님 원단으로 제작되어 논워싱
데님의 탄탄한 조직감으로 내구성이 좋아 늘어짐과 변형이
적고 적절한 두께감으로 겨울철에도 입을 수 있는 제품입니다.

베이직한 생지 컬러 구성되어 매시즌 다양한 컬러와
매치하기 좋으며 롤업 디테일과 사이드 밴딩으로
편안하면서도 위트있는 포인트를 더해주기 좋은 제품입니다.


- METERIAL : 코튼100%
- CARE TIP : 드라이 크리닝 / 손세탁','black',to_date('20/05/28','RR/MM/DD'),4);
Insert into KOREAIT.SPRING_BOTTOM (IDX,NAME,PRICE,ID_NUMBER,CATEGORY,VOLUME,GOODSDIR,PHOTO,ITEM_COMMENT,GOODSCOLOR,WRITEDATE,SUB_CATEGORY) values (65,'래너 린넨 밴딩 와이드 팬츠','29000','65.jpg','bottom',0,'C:\leejinwon\SPRING\workspace\homeProject\src\main\webapp\resources\goodsupload',4,'와이드한 실루엣과 편안 착용감이 일품인 린넨팬츠입니다 :)

린넨 100% 소재의 퀄리티 높은 원단으로 제작되어 린넨 특유의
시원한 터치감과 뛰어난 흡수성이 느껴지며 바람이 잘 통해
더운 여름철에도 쾌적한 착용감을 느끼실 수 있습니다.

밴딩 타입의 팬츠로 체형에 구애받지 않고 편안한 활동감을
느낄 수 있으며 베이직한 컬러구성으로 부담없이 다양한 상의와
매치할 수 있어 여름시즌 데일리 아이템으로 추천해드립니다.


- METERIAL : 린넨100%
- CARE TIP : 드라이 크리닝 / 손세탁','black,white',to_date('20/05/28','RR/MM/DD'),4);
Insert into KOREAIT.SPRING_BOTTOM (IDX,NAME,PRICE,ID_NUMBER,CATEGORY,VOLUME,GOODSDIR,PHOTO,ITEM_COMMENT,GOODSCOLOR,WRITEDATE,SUB_CATEGORY) values (66,'히든밴딩 스트레이트 팬츠','41000','66.jpg','bottom',0,'C:\leejinwon\SPRING\workspace\homeProject\src\main\webapp\resources\goodsupload',6,'워싱 코튼의 부드러운 착용감과 핏이 일품인 팬츠입니다 :)

스판 함유로 신축성이 매우 뛰어난 코튼 원단에 워싱으로 부드러움을
더해 매우 우수한 착용감과 편안한 활동성을 느끼실 수 있는 팬츠이며
워싱으로 늘어짐과 뒤틀림을 잡아내어 오랫동안 즐기실 수 있습니다.

쉽게 코디할 수 있는 모던한 톤의 컬러들로만 구성되어 다양한 코디에
폭 넓게 스타일링 가능하며 허리 부분의 히든 밴딩과 우수한 신축성으로
착용감이 편안해 데일리 팬츠로 매일 입기 좋은 제품입니다.


- METERIAL : 코튼98% 스판2%
- CARE TIP : 드라이 크리닝 / 손세탁','black,white',to_date('20/05/28','RR/MM/DD'),4);
Insert into KOREAIT.SPRING_BOTTOM (IDX,NAME,PRICE,ID_NUMBER,CATEGORY,VOLUME,GOODSDIR,PHOTO,ITEM_COMMENT,GOODSCOLOR,WRITEDATE,SUB_CATEGORY) values (67,'사이드 라인 트랙팬츠','44000','67.jpg','bottom',0,'C:\leejinwon\SPRING\workspace\homeProject\src\main\webapp\resources\goodsupload',5,'루즈한 핏과 트랜디한 디자인이 스트릿한 무드의 트랙팬츠입니다 :)

폴리95% 스판5% 혼방 소재를 사용해 탄탄한 내구성의 원단으로
제작되어 변형없이 오래 착용가능하며 적당한 텐션감과
부드러운 착용감으로 사계절 내내 즐기기 좋은 제품입니다.

기본적인 블랙컬러와 깔끔한 크림 컬러로 구성되어 있어
스트릿 룩에 활용도 높으며 사이드 라인과 포켓 디테일로
실용성 또한 뛰어나 데일리하게 즐기시기 좋은 제품입니다.


- METERIAL : 코튼100%
- CARE TIP : 드라이 크리닝 / 손세탁','black',to_date('20/05/28','RR/MM/DD'),4);
Insert into KOREAIT.SPRING_BOTTOM (IDX,NAME,PRICE,ID_NUMBER,CATEGORY,VOLUME,GOODSDIR,PHOTO,ITEM_COMMENT,GOODSCOLOR,WRITEDATE,SUB_CATEGORY) values (68,'퍼펙트 기모 조거 팬츠','29000','68.jpg','bottom',0,'C:\leejinwon\SPRING\workspace\homeProject\src\main\webapp\resources\goodsupload',5,'다채로운 컬러감과 트렌디한 핏이 매력적인 조거팬츠입니다 :)

코튼 100% 소재의 조직감있는 면 원단으로 제작되어
늘어짐이 적고 탄탄해 오래 착용 가능하며 안감 기모처리로
보온성이 우수해 따뜻한 착용감이 느껴지는 상품입니다.

조거팬츠답게 허리밴딩 디테일로 부담없이 착용하기 좋으며
후드,맨투맨과 셋업으로 제작된 상품으로 함께 착용하시거나
단품으로도 다양한 스타일링을 하시기 좋은 제품입니다.


- METERIAL : 코튼100%
- CARE TIP : 드라이 크리닝 / 손세탁','black',to_date('20/05/28','RR/MM/DD'),4);
Insert into KOREAIT.SPRING_BOTTOM (IDX,NAME,PRICE,ID_NUMBER,CATEGORY,VOLUME,GOODSDIR,PHOTO,ITEM_COMMENT,GOODSCOLOR,WRITEDATE,SUB_CATEGORY) values (69,'밴딩 카고 조거 팬츠','49000','69.jpg','bottom',0,'C:\leejinwon\SPRING\workspace\homeProject\src\main\webapp\resources\goodsupload',5,'트렌디하면서도 스트릿한 무드가 느껴지는 카고 조거팬츠입니다 :)

코튼98% 스판2% 혼방 소재의 탄탄한 내구성의 원단으로
제작되어 늘어짐이나 변형없이 오래 착용 가능하며 적당한
신축성으로 편안한 착용감으로 사계절 즐기기 좋은 제품입니다.

부담없이 착용하기 좋은 부드러운 컬러구성으로 다양한 코디에
활용하기 좋으며 루즈하게 떨어지다가 발목 부분에서
탄탄하게 잡아주는 핏이 멋스러운 제품으로 추천드립니다.


- METERIAL : 코튼98% 스판2%
- CARE TIP : 드라이 크리닝 / 손세탁','black',to_date('20/05/28','RR/MM/DD'),4);
Insert into KOREAIT.SPRING_BOTTOM (IDX,NAME,PRICE,ID_NUMBER,CATEGORY,VOLUME,GOODSDIR,PHOTO,ITEM_COMMENT,GOODSCOLOR,WRITEDATE,SUB_CATEGORY) values (70,'스트링 카고 기모 팬츠','49000','70.jpg','bottom',0,'C:\leejinwon\SPRING\workspace\homeProject\src\main\webapp\resources\goodsupload',4,'스트링 디테일로 유니크한 감성을 느낄 수 있는 카고팬츠입니다:)

코튼 100% 소재의 탄탄한 조직감 있는 기모 면 원단으로 제작되어
탄탄한 내구성으로 오랜 기간 변형없이 즐길 수 있으며 밑단 부분의
스트링을 활용해 와이드, 조거 두가지 연출이 가능한 제품입니다.

모던한 컬러 구성으로 컬러매치가 쉽고 허리의 밴딩처리로
체형에 관계 없이 착용 가능한 유니크한 디자인의 카고 팬츠로
개성있는 코디가 가능해 소장 가치가 있는 제품입니다.


- METERIAL : 코튼100%
- CARE TIP : 드라이 크리닝 / 손세탁','black,white,gray',to_date('20/05/28','RR/MM/DD'),4);
Insert into KOREAIT.SPRING_BOTTOM (IDX,NAME,PRICE,ID_NUMBER,CATEGORY,VOLUME,GOODSDIR,PHOTO,ITEM_COMMENT,GOODSCOLOR,WRITEDATE,SUB_CATEGORY) values (71,'후리스 스트링 조거팬츠','41000','71.jpg','bottom',0,'C:\leejinwon\SPRING\workspace\homeProject\src\main\webapp\resources\goodsupload',6,'스트링으로 다양하게 연출하기 좋은 조거 팬츠입니다 :)

폴리 100% 소재의 후리스 원단으로 제작되어 늘어짐과
변형이 적고 내구성이 우수하며 알맞은 두께감과 우수한
보온성으로 겨울시즌 데일리하게 착용하시기 좋은 제품입니다.

조거 팬츠답게 허리밴딩 디테일로 부담없이 착용하기
좋으며 후드와 셋업으로 제작된 상품으로 함께 착용하시거나
단품으로도 다양한 스타일링을 하시기 좋은 제품입니다.


- METERIAL : 폴리100%
- CARE TIP : 드라이 크리닝 / 손세탁','black',to_date('20/05/28','RR/MM/DD'),4);
Insert into KOREAIT.SPRING_BOTTOM (IDX,NAME,PRICE,ID_NUMBER,CATEGORY,VOLUME,GOODSDIR,PHOTO,ITEM_COMMENT,GOODSCOLOR,WRITEDATE,SUB_CATEGORY) values (72,'헤비 스트링 카고 팬츠','58000','72.jpg','bottom',0,'C:\leejinwon\SPRING\workspace\homeProject\src\main\webapp\resources\goodsupload',5,'스트링 디테일로 유니크한 감성을 느낄 수 있는 카고팬츠입니다:)

코튼 100% 소재의 탄탄한 조직감 있는 면 원단으로 제작되어
탄탄한 내구성으로 오랜 기간 변형없이 즐길 수 있으며 밑단 부분의
스트링을 활용해 와이드, 조거 두가지 연출이 가능한 제품입니다.

모던한 컬러 구성으로 컬러매치가 쉽고 사이드 밴딩처리로
체형에 관계 없이 착용 가능한 유니크한 디자인의 카고 팬츠로
개성있는 코디가 가능해 소장 가치가 있는 제품입니다.


- METERIAL : 코튼100%
- CARE TIP : 드라이 크리닝 / 손세탁','black,gray',to_date('20/05/28','RR/MM/DD'),4);
Insert into KOREAIT.SPRING_BOTTOM (IDX,NAME,PRICE,ID_NUMBER,CATEGORY,VOLUME,GOODSDIR,PHOTO,ITEM_COMMENT,GOODSCOLOR,WRITEDATE,SUB_CATEGORY) values (73,'데일리 스판 반바지','38000','73.jpg','bottom',0,'C:\leejinwon\SPRING\workspace\homeProject\src\main\webapp\resources\goodsupload',7,'베이직한 디자인으로 데일리하게 입기 좋은 스판반바지 입니다 :)

코튼 스판 혼방 소재를 사용해 밀도높게 짜여진 탄탄한 조직감과
소프트한 터치감의 원단으로 제작되어 편안한 활동감이
느껴지며 더운 날씨에도 쾌적하게 착용 가능한 팬츠입니다.

베이직한 디자인과 착한가격으로 다양한 코디에 손 쉽게
매치 가능한 팬츠로 착용감 또한 편안해 썸머 시즌 데일리
코디에 폭 넓게 활용하시기 좋아 추천드리는 제품입니다.


- METERIAL : 코튼 스판 혼방
- CARE TIP : 드라이 크리닝 / 손세탁','black',to_date('20/05/28','RR/MM/DD'),5);
Insert into KOREAIT.SPRING_BOTTOM (IDX,NAME,PRICE,ID_NUMBER,CATEGORY,VOLUME,GOODSDIR,PHOTO,ITEM_COMMENT,GOODSCOLOR,WRITEDATE,SUB_CATEGORY) values (74,'비비드 린넨 밴딩 팬츠','39000','74.jpg','bottom',0,'C:\leejinwon\SPRING\workspace\homeProject\src\main\webapp\resources\goodsupload',5,'비비드한 컬러와 린넨 소재로 여름철 시원하게 입기 좋은 반바지입니다:)

여름철 입기 좋은 마 소재 원단을 사용해 제작되어 원단 자체의
촉감이 매우 가볍고 바람이 잘 통하며 땀 흡수력이 좋아
여름철에도 편안하고 쾌적한 착용감을 느기실 수 있습니다.

린넨 소재를 사용한 만큼 소재와 어울리는 비비드한 느낌의
컬러들로 구성되어 어떤 컬러와도 무난히 어울리며 여름시즌
더운 날씨에도 시원하게 즐기실 수 있는 제품입니다.


- METERIAL : 린넨
- CARE TIP : 드라이 크리닝 / 손세탁','red',to_date('20/05/28','RR/MM/DD'),5);
Insert into KOREAIT.SPRING_BOTTOM (IDX,NAME,PRICE,ID_NUMBER,CATEGORY,VOLUME,GOODSDIR,PHOTO,ITEM_COMMENT,GOODSCOLOR,WRITEDATE,SUB_CATEGORY) values (75,'아웃 포켓 밴딩 반바지','46000','75.jpg','bottom',0,'C:\leejinwon\SPRING\workspace\homeProject\src\main\webapp\resources\goodsupload',5,'탄탄한 내구성으로 제작된 베이직한 핏의 밴딩 반바지 입니다 :)

코튼 100% 소재의 원단으로 제작되어 코튼의 탄탄한
짜임으로 내구성이 뛰어나 오랜기간 착용할수 있으며
워싱을 거친 원단으로 시원한 착용감을 느낄 수 있습니다

다양한 컬러 구성과 심플한 디자인으로 다양한 코디에
매치하기 좋으며 부담없는 가격과 탄탄한 내구성을 자랑하는
팬츠로 여름 시즌 데일리 아이템으로 추천드리는 제품입니다.


- METERIAL : 코튼100%
- CARE TIP : 드라이 크리닝 / 손세탁','white',to_date('20/05/28','RR/MM/DD'),5);
Insert into KOREAIT.SPRING_BOTTOM (IDX,NAME,PRICE,ID_NUMBER,CATEGORY,VOLUME,GOODSDIR,PHOTO,ITEM_COMMENT,GOODSCOLOR,WRITEDATE,SUB_CATEGORY) values (76,'스티치 하프 데님팬츠','45000','76.jpg','bottom',14,'C:\leejinwon\SPRING\workspace\homeProject\src\main\webapp\resources\goodsupload',4,'은은한 스티치 라인으로 과하지 않게 포인트 주기 좋은 반바지입니다 :)

코튼 100% 소재의 탄탄한 코튼 원단으로 제작되어 여름 시즌 내내
편안하게 착용하시기 좋으며 내구성이 매우 우수해 늘어짐이나
변형없이 오랜 기간 같은 모습으로 착용하실 수 있는 팬츠입니다.

심플하게 어디에나 매치하기 좋은 블랙 컬러와 트렌디하면서도
시원한 느낌의 아이보리 컬러 모두 매력적이며 다양한 코디에
쉽게 활용하실 수 있어 한 벌 쯤 소장하셔도 좋을 제품입니다.


- METERIAL : 코튼100%
- CARE TIP : 드라이 크리닝 / 손세탁','black',to_date('20/05/28','RR/MM/DD'),5);
Insert into KOREAIT.SPRING_BOTTOM (IDX,NAME,PRICE,ID_NUMBER,CATEGORY,VOLUME,GOODSDIR,PHOTO,ITEM_COMMENT,GOODSCOLOR,WRITEDATE,SUB_CATEGORY) values (77,'베이직 컷팅 청 반바지','52000','77.jpg','bottom',0,'C:\leejinwon\SPRING\workspace\homeProject\src\main\webapp\resources\goodsupload',5,'깔끔한 컬러감과 핏으로 데일리하게 즐기기 좋은 반바지입니다 :)

코튼 100% 소재의 국내 제작 논스판 데님원단으로 제작되어
탄탄한 조직감으로 내구성이 우수해 늘어짐과 변형이 적으며
적당한 두께감과 핏으로 여름시즌 즐기기 좋은 제품입니다.

블랙,화이트 컬러로 제작되어 어떤 코디에나 잘 어울려 다양한 스타일에
활용도 높으며 과하지 밑단 컷팅 디테일로 살짝 포인트를 더해
주기 좋아 쉽게 코디하여 멋스럽게 연출하실 수 있는 제품입니다.


- METERIAL : 코튼100%
- CARE TIP : 드라이 크리닝 / 손세탁','black',to_date('20/05/28','RR/MM/DD'),5);
Insert into KOREAIT.SPRING_BOTTOM (IDX,NAME,PRICE,ID_NUMBER,CATEGORY,VOLUME,GOODSDIR,PHOTO,ITEM_COMMENT,GOODSCOLOR,WRITEDATE,SUB_CATEGORY) values (78,'데일리 하프 슬랙스','45000','78.jpg','bottom',0,'C:\leejinwon\SPRING\workspace\homeProject\src\main\webapp\resources\goodsupload',4,'부드러럽고 편안한 착용감이 일품인 하프 슬랙스 입니다 :)

폴리 100%의 소재를 사용해 밀도높게 짜여진 탄탄한 조직감의
소프트한 터치감까지 겸비한 원단으로 제작되어 편안한 활동감이
느껴지며 더운 날씨에도 쾌적하게 착용 가능한 팬츠입니다.

베이직한 디자인과 컬러 구성으로 다양한 코디에 손 쉽게 매치
가능하며 부드러운 원단감으로 착용감 또한 편안해 썸머 시즌 데일리
코디에 폭 넓게 활용하시기 좋아 추천드리는 제품입니다.


- METERIAL : 폴리100%
- CARE TIP : 드라이 크리닝 / 손세탁','white',to_date('20/05/28','RR/MM/DD'),5);
Insert into KOREAIT.SPRING_BOTTOM (IDX,NAME,PRICE,ID_NUMBER,CATEGORY,VOLUME,GOODSDIR,PHOTO,ITEM_COMMENT,GOODSCOLOR,WRITEDATE,SUB_CATEGORY) values (79,'소프트 슬릿 하프 슬랙스','45000','79.jpg','bottom',0,'C:\leejinwon\SPRING\workspace\homeProject\src\main\webapp\resources\goodsupload',4,'부드러운 착용감이 일품인 슬릿 하프 슬랙스입니다 :)

폴리 스판 혼방의 고급 TR원단소재를 사용하여 가볍고
소프트한 터치감의 원단으로 제작되어 편안한 활동감이
느껴지며 더운 날씨에도 쾌적하게 착용 가능한 제품입니다.

베이직한 디자인과 컬러 구성으로 다양한 코디에 손 쉽게
매치 가능한 팬츠로 착용감 또한 편안해 썸머 시즌 데일리
코디에 폭 넓게 활용하기 좋아 추천드리는 제품입니다.


- METERIAL : 고급TR원단
- CARE TIP : 드라이 크리닝 / 손세탁','white',to_date('20/05/28','RR/MM/DD'),5);
Insert into KOREAIT.SPRING_BOTTOM (IDX,NAME,PRICE,ID_NUMBER,CATEGORY,VOLUME,GOODSDIR,PHOTO,ITEM_COMMENT,GOODSCOLOR,WRITEDATE,SUB_CATEGORY) values (80,'루즈핏 컷팅 숏 팬츠','44000','80.jpg','bottom',0,'C:\leejinwon\SPRING\workspace\homeProject\src\main\webapp\resources\goodsupload',4,'빈티한 감성의 워싱이 매력적인 숏 팬츠입니다 :)

코튼 100% 소재의 논 스판 데님 원단으로 제작되어 탄탄한
내구성과 뛰어난 조직감으로 오랜기간 착용하여도 늘어짐
이나 변형없이 본래 형태를 유지하는 데님팬츠입니다.

어떤 상의에나 매치하기 좋은 무채색 컬러 구성으로 다양한
코디에 폭 넓게 활용 가능하며 썸머시즌 데일리 코디, 비캉스
룩 여러 스타일에 활용도 높아 추천드리는 제품입니다.


- METERIAL : 코튼100%
- CARE TIP : 드라이 크리닝 / 손세탁','black',to_date('20/05/28','RR/MM/DD'),5);
Insert into KOREAIT.SPRING_BOTTOM (IDX,NAME,PRICE,ID_NUMBER,CATEGORY,VOLUME,GOODSDIR,PHOTO,ITEM_COMMENT,GOODSCOLOR,WRITEDATE,SUB_CATEGORY) values (81,'핀턱 하프 슬랙스','37000','81.jpg','bottom',0,'C:\leejinwon\SPRING\workspace\homeProject\src\main\webapp\resources\goodsupload',2,'편안한 활동감과 데일리하게 즐기기 좋은 밴딩 슬랙스입니다 :)

폴리 혼방 소재를 사용하여 썸머 시즌에 착장하기 좋은
가볍고 소프트한 터치감의 원단으로 제작되어 편안한 활동감이
느껴지며 더운 날씨에도 쾌적하게 착용 가능한 팬츠입니다.

베이직한 디자인과 블랙컬러로 제작되어 다양한 코디에
손쉽게 매치 가능한 팬츠로 착용감 또한 편해 썸머 시즌
데일리코디에 폭 넓게 활용하시기 좋은 제품입니다.


- METERIAL : 폴리혼방
- CARE TIP : 드라이 크리닝 / 손세탁','black',to_date('20/05/28','RR/MM/DD'),5);
Insert into KOREAIT.SPRING_BOTTOM (IDX,NAME,PRICE,ID_NUMBER,CATEGORY,VOLUME,GOODSDIR,PHOTO,ITEM_COMMENT,GOODSCOLOR,WRITEDATE,SUB_CATEGORY) values (82,'데일리 슬림 숏츠 슬랙스','28000','82.jpg','bottom',0,'C:\leejinwon\SPRING\workspace\homeProject\src\main\webapp\resources\goodsupload',3,'시원하고 부드러운 착용감이 일품인 하프 슬랙스 입니다 :)

폴리100% 소재의 사용해 밀도높게 짜여진 탄탄한 조직감과
소프트한 터치감의 원단으로 제작되어 편안한 활동감이
느껴지며 더운 날씨에도 쾌적하게 착용 가능한 팬츠입니다.

베이직한 디자인과 롤업 디테일로 다양한 코디에 손 쉽게
매치 가능한 팬츠로 착용감 또한 편안해 썸머 시즌 데일리
코디에 폭 넓게 활용하시기 좋아 추천드리는 제품입니다.','black,white',to_date('20/05/28','RR/MM/DD'),5);
Insert into KOREAIT.SPRING_BOTTOM (IDX,NAME,PRICE,ID_NUMBER,CATEGORY,VOLUME,GOODSDIR,PHOTO,ITEM_COMMENT,GOODSCOLOR,WRITEDATE,SUB_CATEGORY) values (83,'오즈 스윔 숏 팬츠 ','24000','83.jpg','bottom',0,'C:\leejinwon\SPRING\workspace\homeProject\src\main\webapp\resources\goodsupload',5,'썸머 시즌 다양하게 활용가능한 디자인의 스윔팬츠입니다 :)

폴리 100% 소재의 원단으로 제작되어 뛰어난 내구성
으로 늘어짐이나 변형없이 오랜 기간 착용 가능하며
얇고 가벼운 소재감으로 편안한 착용감을 주는 팬츠입니다.

부담없이 착용하기 좋은 컬러들로 구성되어 다양한 컬러와
매치하기 좋으며 늘어지지 않고 물에 젖어도 무겁지 않은
소재감으로 바캉스 코디에도 활용하시기 좋은 제품입니다.


- METERIAL : 나일론100%
- CARE TIP : 드라이 크리닝 / 손세탁','black,blue,blue,gray',to_date('20/05/28','RR/MM/DD'),5);
Insert into KOREAIT.SPRING_BOTTOM (IDX,NAME,PRICE,ID_NUMBER,CATEGORY,VOLUME,GOODSDIR,PHOTO,ITEM_COMMENT,GOODSCOLOR,WRITEDATE,SUB_CATEGORY) values (84,'큐브 체크 반바지','35000','84.jpg','bottom',0,'C:\leejinwon\SPRING\workspace\homeProject\src\main\webapp\resources\goodsupload',3,'감각적인 체크 패턴이 매력적인 밴딩 반바지 입니다 :)

코튼 레이온 혼방 소재의 원단으로 제작되어 원단 자체의
촉감이 매우 부드럽고 가벼워 착용감이 편안하고 루즈한
느낌의 핏이 잘 나타나며 구김이 적어 관리하기 간편합니다.

흔히 볼 수 없는 체크 패턴이 들어가 있는 팬츠로 코디에
간편하게 유니크함을 더 해줄 수 있으며 밴딩으로 제작되어
체형에 상관없이 데일리하게 즐기기 좋은 제품입니다.


- METERIAL : 코튼레이온혼방
- CARE TIP : 드라이 크리닝 / 손세탁','gray',to_date('20/05/28','RR/MM/DD'),5);
Insert into KOREAIT.SPRING_BOTTOM (IDX,NAME,PRICE,ID_NUMBER,CATEGORY,VOLUME,GOODSDIR,PHOTO,ITEM_COMMENT,GOODSCOLOR,WRITEDATE,SUB_CATEGORY) values (85,'스티치 반 바지','31000','85.jpg','bottom',0,'C:\leejinwon\SPRING\workspace\homeProject\src\main\webapp\resources\goodsupload',3,'위트 있는 스트치 라인이 돋보이는 반바지 입니다 :)

나일론혼방 소재의 원단으로 제작되어 뛰어난 내구성
으로 늘어짐이나 변형없이 오랜 기간 착용 가능하며
얇고 가벼운 소재감으로 편안한 착용감을 주는 팬츠입니다.

기본적인 디자인에 스티치 디테일로 포인트를
준 팬츠로 다양한 스타일의 상의와 매치해 손쉽게
포인트 있는 바캉스 코디를 완성할 수 있는 제품입니다.


- METERIAL : 나일론혼방
- CARE TIP : 드라이 크리닝 / 손세탁','black,gray',to_date('20/05/28','RR/MM/DD'),5);
REM INSERTING into KOREAIT.SPRING_MEMBER
SET DEFINE OFF;
Insert into KOREAIT.SPRING_MEMBER (IDX,NAME,ID,PW,BIRTH,PHONE,GENDER,EMAIL,ADDR) values (1,'프로젝트','root','root','1995-10-19','010-1234-5678','m','ghkdud7913@gmail.com','서울특별시 강남구 봉은사로 108, 125 (역삼동)');
Insert into KOREAIT.SPRING_MEMBER (IDX,NAME,ID,PW,BIRTH,PHONE,GENDER,EMAIL,ADDR) values (22,'이화영','odminid','abcd1234!','1995-10-19','010443204017','m','ghkdud7913@naver.com','경기도 성남시 분당구 장미로108번길 1, 102 (야탑동)');
REM INSERTING into KOREAIT.SPRING_NOTICE
SET DEFINE OFF;
Insert into KOREAIT.SPRING_NOTICE (IDX,TITLE,CONTENT,WRITEDATE,ATTACHED) values (7,'20년06월01일 공지','<p>할인 없음</p>',to_timestamp('20/06/01 20:13:35.000000000','RR/MM/DD HH24:MI:SSXFF'),'7W20200601.png');
Insert into KOREAIT.SPRING_NOTICE (IDX,TITLE,CONTENT,WRITEDATE,ATTACHED) values (1,'title','content',to_timestamp('20/05/21 17:33:10.000000000','RR/MM/DD HH24:MI:SSXFF'),'attached');
Insert into KOREAIT.SPRING_NOTICE (IDX,TITLE,CONTENT,WRITEDATE,ATTACHED) values (2,'ㅎㅇㅎㅇ','<p>321312</p>',to_timestamp('20/05/21 17:33:59.000000000','RR/MM/DD HH24:MI:SSXFF'),' ');
REM INSERTING into KOREAIT.SPRING_QA
SET DEFINE OFF;
Insert into KOREAIT.SPRING_QA (IDX,TITLE,CONTENT,WRITEDATE,NAME,ATTACHED) values (1,'상품문의','<p>ㅇㄴㅁㅇㄴㅁㅇㅁ</p>',to_timestamp('20/05/29 15:08:13.000000000','RR/MM/DD HH24:MI:SSXFF'),'이화영',null);
Insert into KOREAIT.SPRING_QA (IDX,TITLE,CONTENT,WRITEDATE,NAME,ATTACHED) values (2,'상품문의','<p>ㄴㅁㄻㄴㄹㄴㅁ</p>',to_timestamp('20/05/29 15:08:41.000000000','RR/MM/DD HH24:MI:SSXFF'),'이화영',null);
Insert into KOREAIT.SPRING_QA (IDX,TITLE,CONTENT,WRITEDATE,NAME,ATTACHED) values (6,'상품문의','<p>asdasdsa</p>',to_timestamp('20/06/02 17:13:32.000000000','RR/MM/DD HH24:MI:SSXFF'),'이화영','4W20200602.jpg');
Insert into KOREAIT.SPRING_QA (IDX,TITLE,CONTENT,WRITEDATE,NAME,ATTACHED) values (4,'상품문의','<p>sadsadas</p>',to_timestamp('20/05/29 15:58:52.000000000','RR/MM/DD HH24:MI:SSXFF'),null,'3W20200529.jpg');
Insert into KOREAIT.SPRING_QA (IDX,TITLE,CONTENT,WRITEDATE,NAME,ATTACHED) values (5,'교환/반품문의','<p>옷이 너무 작아요</p><p>교체해주세요.</p>',to_timestamp('20/06/01 11:13:48.000000000','RR/MM/DD HH24:MI:SSXFF'),'이화영','3W20200601.jpg');
REM INSERTING into KOREAIT.SPRING_REVIEW
SET DEFINE OFF;
Insert into KOREAIT.SPRING_REVIEW (IDX,CONTENT,GOODSIDX,REF,SEQ,LEV,NAME,WRITEDATE,ATTACHED,STAR) values (1,'옷이 참 이쁘네요^^','91',1,0,0,'이화영',to_timestamp('20/06/01 20:18:49.000000000','RR/MM/DD HH24:MI:SSXFF'),null,'5');
Insert into KOREAIT.SPRING_REVIEW (IDX,CONTENT,GOODSIDX,REF,SEQ,LEV,NAME,WRITEDATE,ATTACHED,STAR) values (2,'good','97',2,0,0,'이화영',to_timestamp('20/06/01 20:19:57.000000000','RR/MM/DD HH24:MI:SSXFF'),' ','4');
REM INSERTING into KOREAIT.SPRING_STATUS
SET DEFINE OFF;
Insert into KOREAIT.SPRING_STATUS (IDX,USER_ID,ADDR,ITEM_NAME,ID_NUMBER,PRICE,EA,STATUS,WRITEDATE,COLOR,CATEGORY,ITEM_SIZE,NAME,PHONE,EMAIL) values (3,'Project12','서울특별시 강남구 봉은사로 108, 125 (역삼동)','시가렛 프린팅 티셔츠','98.jpg',17000,1,1,to_timestamp('20/06/01 11:29:09.000000000','RR/MM/DD HH24:MI:SSXFF'),'WHITE','top','L','프로젝트','010-1234-5678','ghkdud7913@gmail.com');
Insert into KOREAIT.SPRING_STATUS (IDX,USER_ID,ADDR,ITEM_NAME,ID_NUMBER,PRICE,EA,STATUS,WRITEDATE,COLOR,CATEGORY,ITEM_SIZE,NAME,PHONE,EMAIL) values (1,'Project12','서울특별시 강남구 봉은사로 108, 125 (역삼동)','시가렛 프린팅 티셔츠','98.jpg',17000,1,1,to_timestamp('20/06/01 11:29:09.000000000','RR/MM/DD HH24:MI:SSXFF'),'WHITE','top','L','프로젝트','010-1234-5678','ghkdud7913@gmail.com');
Insert into KOREAIT.SPRING_STATUS (IDX,USER_ID,ADDR,ITEM_NAME,ID_NUMBER,PRICE,EA,STATUS,WRITEDATE,COLOR,CATEGORY,ITEM_SIZE,NAME,PHONE,EMAIL) values (2,'Project12','서울특별시 강남구 봉은사로 108, 125 (역삼동)','시가렛 프린팅 티셔츠','98.jpg',17000,1,1,to_timestamp('20/06/01 11:29:09.000000000','RR/MM/DD HH24:MI:SSXFF'),'WHITE','top','L','프로젝트','010-1234-5678','ghkdud7913@gmail.com');
Insert into KOREAIT.SPRING_STATUS (IDX,USER_ID,ADDR,ITEM_NAME,ID_NUMBER,PRICE,EA,STATUS,WRITEDATE,COLOR,CATEGORY,ITEM_SIZE,NAME,PHONE,EMAIL) values (4,'Project12','서울특별시 강남구 봉은사로 108, 125 (역삼동)','시가렛 프린팅 티셔츠','98.jpg',17000,1,1,to_timestamp('20/06/01 11:29:37.000000000','RR/MM/DD HH24:MI:SSXFF'),'WHITE','top','L','프로젝트','010-1234-5678','ghkdud7913@gmail.com');
REM INSERTING into KOREAIT.SPRING_STOKE
SET DEFINE OFF;
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (21,'black','L',12,null,null);
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (21,'black','L',12,null,null);
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (21,'black','XL',10,null,null);
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (21,'black','M',10,null,null);
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (1,'black','S',10,null,null);
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (21,'black','M',10,null,null);
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (21,'black','M',20,null,null);
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (21,'black','M',10,null,null);
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (1,'black','S',10,null,null);
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (1,'black','S',10,null,null);
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (21,'black','M',10,null,null);
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (21,'black','S',10,null,null);
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (21,'black','L',10,null,null);
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (21,'black','S',10,null,null);
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (21,'black','S',10,null,null);
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (21,'white','M',10,null,null);
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (8,'black','S',10,null,null);
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (1,'black','S',10,null,null);
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (2,'black','S',20,null,null);
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (3,'blue','S',10,null,null);
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (4,'black','S',10,null,null);
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (4,'black','S',10,null,null);
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (4,'black','S',10,null,null);
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (4,'black','S',10,null,null);
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (4,'black','S',10,null,null);
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (4,'black','S',10,null,null);
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (4,'black','S',10,null,null);
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (4,'black','M',10,null,null);
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (4,'black','L',20,null,null);
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (4,'black','XL',30,null,null);
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (5,'black','S',20,null,null);
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (5,'black','M',10,null,null);
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (21,'black','L',12,null,null);
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (21,'black','L',12,null,null);
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (21,'black','XL',10,null,null);
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (21,'black','M',10,null,null);
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (1,'black','S',10,null,null);
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (21,'black','M',10,null,null);
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (21,'black','M',20,null,null);
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (21,'black','M',10,null,null);
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (1,'black','S',10,null,null);
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (1,'black','S',10,null,null);
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (21,'black','M',10,null,null);
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (21,'black','S',10,null,null);
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (21,'black','L',10,null,null);
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (21,'black','S',10,null,null);
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (21,'black','S',10,null,null);
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (21,'white','M',10,null,null);
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (8,'black','S',10,null,null);
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (1,'black','S',10,null,null);
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (2,'black','S',20,null,null);
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (3,'blue','S',10,null,null);
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (1,'black','M',10,null,null);
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (21,'black','S',10,null,null);
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (6,'black','S',10,null,null);
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (6,'black','S',10,null,null);
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (6,'black','M',10,null,null);
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (6,'black','L',10,null,null);
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (7,'black','M',10,null,null);
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (8,'white','M',10,null,null);
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (9,'black','S',10,null,null);
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (1,'black','S',10,null,null);
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (2,'black','M',10,null,null);
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (3,'black','S',10,null,null);
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (4,'black','L',10,null,null);
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (5,'black','M',10,null,null);
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (6,'black','M',12,null,null);
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (7,'black','S',10,null,null);
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (1,'black','S',10,'top','워싱 린넨 셔츠 자켓 (4col)');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (2,'black','S',10,'top','스냅 스트링 셔츠 자켓 (4col)');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (2,'black','M',10,'top','스냅 스트링 셔츠 자켓 (4col)');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (2,'black','L',10,'top','스냅 스트링 셔츠 자켓 (4col)');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (2,'gray','S',10,'top','스냅 스트링 셔츠 자켓 (4col)');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (1,'black','M',10,null,null);
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (21,'black','S',10,null,null);
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (2,'gray','M',10,'top','스냅 스트링 셔츠 자켓 (4col)');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (2,'gray','L',10,'top','스냅 스트링 셔츠 자켓 (4col)');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (3,'black','S',10,'top','투웨이 지퍼 후드 집업');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (3,'blue','S',10,'top','투웨이 지퍼 후드 집업');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (3,'blue','M',10,'top','투웨이 지퍼 후드 집업');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (4,'white','S',10,'top','베이시스 수트 블레이져');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (4,'white','M',10,'top','베이시스 수트 블레이져');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (4,'white','L',10,'top','베이시스 수트 블레이져');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (4,'white','XL',10,'top','베이시스 수트 블레이져');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (4,'black','S',10,'top','베이시스 수트 블레이져');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (4,'black','M',10,'top','베이시스 수트 블레이져');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (4,'black','L',10,'top','베이시스 수트 블레이져');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (4,'black','XL',10,'top','베이시스 수트 블레이져');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (5,'blue','S',10,'top','럭스 포켓 데님 자켓');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (5,'blue','M',10,'top','럭스 포켓 데님 자켓');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (5,'blue','L',10,'top','럭스 포켓 데님 자켓');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (5,'blue','XL',10,'top','럭스 포켓 데님 자켓');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (5,'sky','S',10,'top','럭스 포켓 데님 자켓');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (5,'sky','M',10,'top','럭스 포켓 데님 자켓');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (5,'sky','L',10,'top','럭스 포켓 데님 자켓');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (6,'black','M',10,'top','에블리 오버 항공 점퍼');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (6,'black','L',10,'top','에블리 오버 항공 점퍼');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (6,'gray','M',10,'top','에블리 오버 항공 점퍼');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (6,'gray','L',10,'top','에블리 오버 항공 점퍼');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (7,'black','S',10,'top','아스 미니멀 블루종');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (7,'black','M',10,'top','아스 미니멀 블루종');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (7,'black','L',10,'top','아스 미니멀 블루종');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (8,'black','S',10,'top','핀턱 벨티드 크롭 자켓');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (8,'black','M',10,'top','핀턱 벨티드 크롭 자켓');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (8,'black','L',10,'top','핀턱 벨티드 크롭 자켓');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (8,'black','XL',10,'top','핀턱 벨티드 크롭 자켓');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (8,'red','S',10,'top','핀턱 벨티드 크롭 자켓');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (8,'red','M',10,'top','핀턱 벨티드 크롭 자켓');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (8,'red','L',10,'top','핀턱 벨티드 크롭 자켓');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (9,'black','S',10,'top','세컨드 분또 가디건');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (9,'black','M',10,'top','세컨드 분또 가디건');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (9,'black','L',10,'top','세컨드 분또 가디건');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (9,'blue','S',10,'top','세컨드 분또 가디건');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (9,'blue','M',10,'top','세컨드 분또 가디건');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (9,'blue','L',10,'top','세컨드 분또 가디건');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (9,'white','S',10,'top','세컨드 분또 가디건');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (9,'white','M',10,'top','세컨드 분또 가디건');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (9,'white','L',10,'top','세컨드 분또 가디건');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (10,'black','M',10,'top','락 트임 오버 체크 셔츠');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (10,'black','L',10,'top','락 트임 오버 체크 셔츠');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (10,'white','M',10,'top','락 트임 오버 체크 셔츠');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (10,'white','L',10,'top','락 트임 오버 체크 셔츠');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (11,'white','S',10,'top','스퀘어 믹스 셔츠');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (11,'white','M',10,'top','스퀘어 믹스 셔츠');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (11,'white','L',10,'top','스퀘어 믹스 셔츠');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (12,'white','S',10,'top','코듀로이 콤비 더플 코트');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (12,'white','M',10,'top','코듀로이 콤비 더플 코트');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (12,'white','L',10,'top','코듀로이 콤비 더플 코트');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (13,'black','S',10,'top','헤비 레더 시어링 자켓');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (13,'black','M',10,'top','헤비 레더 시어링 자켓');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (13,'black','L',10,'top','헤비 레더 시어링 자켓');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (13,'black','XL',10,'top','헤비 레더 시어링 자켓');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (14,'black','S',10,'acc','캔버스 벨크로 샌들');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (14,'black','M',10,'acc','캔버스 벨크로 샌들');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (14,'black','L',10,'acc','캔버스 벨크로 샌들');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (15,'black','S',10,'top','와이드 박스 맨투맨');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (15,'black','M',10,'top','와이드 박스 맨투맨');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (15,'white','S',10,'top','와이드 박스 맨투맨');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (15,'gray','L',10,'top','와이드 박스 맨투맨');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (16,'black','S',10,'top','와이드 박스 맨투맨');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (16,'black','M',10,'top','와이드 박스 맨투맨');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (16,'white','S',10,'top','와이드 박스 맨투맨');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (16,'gray','L',10,'top','와이드 박스 맨투맨');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (17,'blue','M',10,'top','파라다이스 맨투맨');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (17,'blue','L',10,'top','파라다이스 맨투맨');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (17,'black','S',10,'top','파라다이스 맨투맨');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (18,'white','M',10,'top','고래 자수 맨투맨');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (18,'white','L',10,'top','고래 자수 맨투맨');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (18,'black','M',10,'top','고래 자수 맨투맨');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (18,'black','L',10,'top','고래 자수 맨투맨');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (19,'gray','S',101,'top','스티치 언발란스 맨투맨');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (19,'gray','M',10,'top','스티치 언발란스 맨투맨');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (19,'black','S',10,'top','스티치 언발란스 맨투맨');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (20,'white','M',10,'top','메르시 오버 맨투맨');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (20,'gray','S',10,'top','메르시 오버 맨투맨');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (21,'black','S',10,'top','파티 알파카 라운드 니트');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (21,'black','M',10,'top','파티 알파카 라운드 니트');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (21,'red','S',10,'top','파티 알파카 라운드 니트');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (21,'red','M',10,'top','파티 알파카 라운드 니트');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (21,'white','S',10,'top','파티 알파카 라운드 니트');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (22,'black','M',10,'top','드랍 브이넥 니트');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (23,'black','S',10,'top','더블 넥 소프트 니트');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (23,'black','M',10,'top','더블 넥 소프트 니트');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (24,'black','M',10,'top','더즈 폴라 울 니트');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (24,'white','M',10,'top','더즈 폴라 울 니트');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (25,'black','M',10,'top','하프 폴라 니트 맨투맨');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (25,'white','M',10,'top','하프 폴라 니트 맨투맨');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (25,'gray','M',10,'top','하프 폴라 니트 맨투맨');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (26,'black','M',10,'top','스웨터 자수 맨투맨');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (26,'gray','L',10,'top','스웨터 자수 맨투맨');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (27,'black','L',10,'top','네오 요꼬 브이넥 맨투맨');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (28,'black','M',10,'top','플리스 레터링 아노락');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (28,'sky','M',10,'top','플리스 레터링 아노락');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (29,'black','M',10,'bottom','로이드 슬랙스');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (29,'gray','M',10,'bottom','로이드 슬랙스');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (30,'black','M',10,'bottom','퍼드 와이드 슬랙스');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (31,'black','M',10,'bottom','뒷 밴딩 세미 와이드 슬랙스');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (31,'white','M',10,'bottom','뒷 밴딩 세미 와이드 슬랙스');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (32,'black','M',10,'bottom','썸머 린넨 슬림 슬랙스');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (32,'red','M',10,'bottom','썸머 린넨 슬림 슬랙스');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (33,'black','M',10,'bottom','드랍 세미 와이드 슬랙스');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (34,'black','M',10,'bottom','모던 세미 와이드 슬랙스');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (34,'white','M',10,'bottom','모던 세미 와이드 슬랙스');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (35,'black','M',10,'bottom','10부 뒷 밴딩 슬랙스');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (36,'black','M',10,'bottom','데일리 세미 와이드 슬랙스');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (36,'black','L',10,'bottom','데일리 세미 와이드 슬랙스');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (37,'black','M',10,'bottom','퍼펙트 세미 와이드 셋업 슬랙스');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (38,'black','L',10,'bottom','컨트롤 와이드 슬랙스');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (38,'gray','S',10,'bottom','컨트롤 와이드 슬랙스');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (39,'black','L',10,'bottom','5CM 업 데일리 슬랙스 + 데님 팬츠');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (39,'sky','M',10,'bottom','5CM 업 데일리 슬랙스 + 데님 팬츠');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (39,'sky','L',10,'bottom','5CM 업 데일리 슬랙스 + 데님 팬츠');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (40,'sky','L',10,'bottom','5CM 업 데일리 슬랙스 + 데님 팬츠');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (41,'sky','S',10,'bottom','5CM 업 데일리 슬랙스  데님 팬츠');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (41,'sky','M',10,'bottom','5CM 업 데일리 슬랙스  데님 팬츠');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (42,'sky','M',10,'bottom','업 데일리 슬랙스 5CM  데님 팬츠');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (42,'sky','L',10,'bottom','업 데일리 슬랙스 5CM  데님 팬츠');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (43,'sky','M',10,'bottom','업 데일리 슬랙스 5CM');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (44,'sky','M',10,'bottom','업 데일리 슬랙스');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (45,'black','M',10,'bottom','이지 밴딩 슬랙스');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (46,'black','M',10,'bottom','플랜 스탠다드 슬랙스');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (46,'black','L',10,'bottom','플랜 스탠다드 슬랙스');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (46,'gray','M',10,'bottom','플랜 스탠다드 슬랙스');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (46,'gray','L',10,'bottom','플랜 스탠다드 슬랙스');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (46,'blue','M',10,'bottom','플랜 스탠다드 슬랙스');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (46,'blue','L',10,'bottom','플랜 스탠다드 슬랙스');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (47,'blue','M',10,'bottom','칸 데미지 컷팅 진');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (48,'blue','M',10,'bottom','데일리 워싱 데님팬츠');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (48,'blue','L',10,'bottom','데일리 워싱 데님팬츠');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (49,'black','S',10,'bottom','와일드 컷팅 블랙 진');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (49,'black','M',10,'bottom','와일드 컷팅 블랙 진');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (49,'black','L',10,'bottom','와일드 컷팅 블랙 진');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (50,'blue','M',10,'bottom','데일리 무드 컷팅 진');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (51,'blue','S',10,'bottom','5CM 업 디스 컷팅진');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (51,'blue','M',10,'bottom','5CM 업 디스 컷팅진');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (52,'blue','M',10,'bottom','데일리 루즈핏 데님팬츠');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (52,'blue','L',10,'bottom','데일리 루즈핏 데님팬츠');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (53,'blue','M',10,'bottom','5CM 업 커스텀 컷팅 데님팬츠');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (53,'blue','L',10,'bottom','5CM 업 커스텀 컷팅 데님팬츠');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (54,'blue','M',10,'bottom','히든 밴딩 생지 데님 팬츠');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (54,'blue','L',10,'bottom','히든 밴딩 생지 데님 팬츠');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (54,'blue','XL',10,'bottom','히든 밴딩 생지 데님 팬츠');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (54,'black','M',10,'bottom','히든 밴딩 생지 데님 팬츠');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (54,'black','L',10,'bottom','히든 밴딩 생지 데님 팬츠');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (55,'blue','M',10,'bottom','5CM 업 데님 슬랙스');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (56,'blue','M',10,'bottom','데니스 스탠다스 데님팬츠');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (56,'blue','L',10,'bottom','데니스 스탠다스 데님팬츠');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (57,'blue','M',10,'bottom','페인팅 스탠다드 데님팬츠');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (57,'blue','L',10,'bottom','페인팅 스탠다드 데님팬츠');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (57,'black','S',10,'bottom','페인팅 스탠다드 데님팬츠');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (57,'black','M',10,'bottom','페인팅 스탠다드 데님팬츠');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (58,'blue','M',10,'bottom','미디엄 블루 컷팅 진');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (58,'blue','L',10,'bottom','미디엄 블루 컷팅 진');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (59,'blue','M',20,'bottom','그리드 레귤러 컷팅 진');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (59,'blue','L',20,'bottom','그리드 레귤러 컷팅 진');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (60,'black','M',10,'bottom','로반 린넨 반 밴딩 팬츠');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (60,'black','L',10,'bottom','로반 린넨 반 밴딩 팬츠');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (60,'gray','M',10,'bottom','로반 린넨 반 밴딩 팬츠');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (61,'white','M',10,'bottom','노멀 워싱 옆 밴딩 코튼 팬츠');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (61,'gray','S',10,'bottom','노멀 워싱 옆 밴딩 코튼 팬츠');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (62,'gray','M',10,'bottom','스톰 밴딩 조거 팬츠');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (63,'gray','M',10,'bottom','레이블 카고 밴딩 팬츠');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (64,'black','M',10,'bottom','롤업 반 밴딩 데님 팬츠');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (64,'black','L',10,'bottom','롤업 반 밴딩 데님 팬츠');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (64,'black','XL',10,'bottom','롤업 반 밴딩 데님 팬츠');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (65,'black','M',11,'bottom','래너 린넨 밴딩 와이드 팬츠');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (65,'white','S',11,'bottom','래너 린넨 밴딩 와이드 팬츠');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (66,'black','M',10,'bottom','히든밴딩 스트레이트 팬츠');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (66,'white','S',10,'bottom','히든밴딩 스트레이트 팬츠');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (67,'black','M',10,'bottom','사이드 라인 트랙팬츠');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (68,'black','M',10,'bottom','퍼펙트 기모 조거 팬츠');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (69,'black','M',10,'bottom','밴딩 카고 조거 팬츠');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (70,'black','M',10,'bottom','스트링 카고 기모 팬츠');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (70,'white','M',12,'bottom','스트링 카고 기모 팬츠');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (70,'gray','M',41,'bottom','스트링 카고 기모 팬츠');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (71,'black','M',10,'bottom','후리스 스트링 조거팬츠');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (72,'black','M',10,'bottom','헤비 스트링 카고 팬츠');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (72,'gray','S',10,'bottom','헤비 스트링 카고 팬츠');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (72,'gray','M',10,'bottom','헤비 스트링 카고 팬츠');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (73,'black','M',10,'bottom','데일리 스판 반바지');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (73,'black','L',10,'bottom','데일리 스판 반바지');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (74,'red','S',10,'bottom','비비드 린넨 밴딩 팬츠');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (74,'red','M',10,'bottom','비비드 린넨 밴딩 팬츠');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (74,'red','L',10,'bottom','비비드 린넨 밴딩 팬츠');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (75,'white','M',10,'bottom','아웃 포켓 밴딩 반바지');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (75,'white','L',10,'bottom','아웃 포켓 밴딩 반바지');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (76,'black','S',10,'bottom','스티치 하프 데님팬츠');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (76,'black','M',10,'bottom','스티치 하프 데님팬츠');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (77,'black','M',10,'bottom','베이직 컷팅 청 반바지');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (77,'black','L',10,'bottom','베이직 컷팅 청 반바지');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (78,'white','M',10,'bottom','데일리 하프 슬랙스');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (79,'white','M',10,'bottom','소프트 슬릿 하프 슬랙스');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (80,'black','M',10,'bottom','루즈핏 컷팅 숏 팬츠');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (81,'black','M',10,'bottom','핀턱 하프 슬랙스');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (82,'black','S',10,'bottom','데일리 슬림 숏츠 슬랙스');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (82,'black','M',10,'bottom','데일리 슬림 숏츠 슬랙스');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (82,'white','L',10,'bottom','데일리 슬림 숏츠 슬랙스');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (83,'black','M',10,'bottom','오즈 스윔 숏 팬츠 ');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (83,'black','L',10,'bottom','오즈 스윔 숏 팬츠 ');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (83,'blue','S',10,'bottom','오즈 스윔 숏 팬츠 ');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (83,'blue','L',10,'bottom','오즈 스윔 숏 팬츠 ');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (83,'gray','M',10,'bottom','오즈 스윔 숏 팬츠 ');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (84,'gray','M',10,'bottom','큐브 체크 반바지');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (85,'black','M',10,'bottom','스티치 반 바지');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (85,'gray','M',10,'bottom','스티치 반 바지');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (86,'white','M',10,'top','1987 레터링 반팔티');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (87,'black','S',10,'top','썸머 야자수 티셔츠 ');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (87,'black','M',10,'top','썸머 야자수 티셔츠 ');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (87,'white','M',10,'top','썸머 야자수 티셔츠 ');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (88,'white','M',10,'top','하이드로겐 반팔 티셔츠');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (89,'black','M',10,'top','썸머 모크넥 반팔 티셔츠');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (89,'gray','S',10,'top','썸머 모크넥 반팔 티셔츠');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (90,'black','M',10,'top','러브레이스 프린팅 티셔츠');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (90,'white','S',10,'top','러브레이스 프린팅 티셔츠');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (91,'black','M',10,'top','스트라이프 7부 박스티');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (91,'red','M',10,'top','스트라이프 7부 박스티');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (92,'white','M',10,'top','뉴틀리 반팔 티셔츠');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (92,'gray','S',10,'top','뉴틀리 반팔 티셔츠');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (93,'black','S',10,'top','카스토르 반팔 티셔츠');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (93,'white','S',10,'top','카스토르 반팔 티셔츠');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (94,'white','M',10,'top','썸머 텐셀 반팔 티셔츠');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (95,'white','M',10,'top','미키자수 포켓 티셔츠');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (95,'black','S',10,'top','미키자수 포켓 티셔츠');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (96,'black','M',10,'top','토네이도 미키 티셔츠');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (96,'white','M',10,'top','토네이도 미키 티셔츠');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (96,'gray','S',10,'top','토네이도 미키 티셔츠');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (97,'white','M',10,'top','콜로라도 레터랑 티셔츠');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (98,'black','L',10,'top','시가렛 프린팅 티셔츠');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (98,'white','L',10,'top','시가렛 프린팅 티셔츠');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (99,'black','S',10,'top','베이직 오픈 카라셔츠');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (99,'white','L',10,'top','베이직 오픈 카라셔츠');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (100,'gray','L',10,'top','피버 린넨 오버핏 셔츠');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (100,'red','M',10,'top','피버 린넨 오버핏 셔츠');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (101,'red','S',10,'top','땡큐 오버핏 헨리넥 셔츠');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (101,'red','M',10,'top','땡큐 오버핏 헨리넥 셔츠');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (102,'white','M',10,'top','비비드 린넨 셔츠');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (102,'black','S',10,'top','비비드 린넨 셔츠');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (103,'black','M',10,'top','엘버른 체크 셔츠');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (104,'white','M',10,'top','플랩포켓 박스 셔츠');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (105,'black','M',10,'top','베이직 오픈 카라셔츠');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (105,'white','L',10,'top','베이직 오픈 카라셔츠');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (106,'black','M',10,'top','피버 린넨 오버핏 셔츠');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (106,'white','S',10,'top','피버 린넨 오버핏 셔츠');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (107,'black','M',10,'top','땡큐 오버핏 헨리넥 셔츠');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (109,'black','M',10,'acc','하이 퀄리티 숏 비니');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (109,'red','M',10,'acc','하이 퀄리티 숏 비니');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (109,'white','M',10,'acc','하이 퀄리티 숏 비니');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (110,'black','M',10,'acc','비비드 아크릴 볼캡');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (110,'blue','M',10,'acc','비비드 아크릴 볼캡');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (110,'sky','M',10,'acc','비비드 아크릴 볼캡');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (110,'red','M',10,'acc','비비드 아크릴 볼캡');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (111,'black','M',10,'acc','Leather OMG Ball Cap');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (111,'white','M',10,'acc','Leather OMG Ball Cap');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (112,'red','M',50,'acc','클래식 체크 볼캡');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (112,'blue','M',50,'acc','클래식 체크 볼캡');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (113,'black','M',10,'acc','어반 사이드 볼캡');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (113,'white','M',10,'acc','어반 사이드 볼캡');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (114,'black','S',50,'acc','써지컬스틸 사각 스틱 펜던트');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (115,'black','S',50,'acc','써지컬스틸 스탠다드 크로스 체인목걸이 _ 실버');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (116,'black','S',10,'acc','써지컬스틸 크로스 체인목걸이');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (117,'black','S',50,'acc','919 더블코인 펜던트 목걸이');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (118,'black','M',50,'acc','15호 신규입고 PLAIN SILVER-17');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (119,'black','M',50,'acc','EPOXY 2 RING');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (120,'black','M',50,'acc','캐쥬얼 패션링');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (121,'black','L',50,'acc','Twist Ring');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (122,'black','M',50,'acc','캔버스 벨크로 샌들');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (123,'black','M',50,'acc','와이드 라인 쪼리');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (123,'white','M',50,'acc','와이드 라인 쪼리');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (124,'black','L',50,'acc','캔버스 크로스 슬리퍼');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (125,'black','L',50,'acc','모던 원 라인 슬러퍼');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (126,'black','M',50,'acc','핸드메이드 더비 샌들 ');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (127,'black','L',50,'acc','미니멀 스웨이드 슬리퍼');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (128,'black','L',50,'acc','가죽 샌들');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (129,'black','M',10,'acc','무지 스탠다드 양말');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (129,'white','M',10,'acc','무지 스탠다드 양말');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (129,'blue','M',10,'acc','무지 스탠다드 양말');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (129,'gray','M',10,'acc','무지 스탠다드 양말');
Insert into KOREAIT.SPRING_STOKE (IDX,COLOR,SIZE1,EA,CATEGORY,ITEM_NAME) values (129,'red','M',10,'acc','무지 스탠다드 양말');
REM INSERTING into KOREAIT.SPRING_TOP
SET DEFINE OFF;
Insert into KOREAIT.SPRING_TOP (IDX,NAME,PRICE,ID_NUMBER,CATEGORY,VOLUME,GOODSDIR,PHOTO,ITEM_COMMENT,GOODSCOLOR,WRITEDATE,SUB_CATEGORY) values (3,'투웨이 지퍼 후드 집업','42000','3.jpg','top',0,'C:\leejinwon\SPRING\workspace\homeProject\src\main\webapp\resources\goodsupload',11,'투웨이 지퍼 디자인으로 다양한 느낌으로 연출하기 좋은 집업입니다 :)

코튼 100% 소재의 탄탄한 쭈리 원단으로 제작되어 우수한 조직감으로
내구성이 좋아 늘어짐과 변형이 적고 적절한 두께감으로 여름을 제외한
사계절 단품 또는 레이어드 용으로 다양하게 활용 가능한 상품입니다.

부담없이 활용하기 좋은 베이직한 컬러들로만 구성되어 컬러
매치가 쉬워 코디가 간편하며 캐쥬얼하고 스포티한 디자인으로
봄 시즌 데일리 코디에 가볍게 컬쳐 입기 좋은 제품입니다.


- METERIAL : 코튼100%
- CARE TIP : 드라이 크리닝 / 손세탁','black,black,blue',to_date('20/05/28','RR/MM/DD'),1);
Insert into KOREAIT.SPRING_TOP (IDX,NAME,PRICE,ID_NUMBER,CATEGORY,VOLUME,GOODSDIR,PHOTO,ITEM_COMMENT,GOODSCOLOR,WRITEDATE,SUB_CATEGORY) values (4,'베이시스 수트 블레이져','62000','4.jpg','top',0,'C:\leejinwon\SPRING\workspace\homeProject\src\main\webapp\resources\goodsupload',7,'깔끔한 핏과 다양한 컬러감으로 시즌을 느낄 수 있는 수트 자켓입니다 :)

폴리에스테르와 레이온 혼방 소재의 고급 TR 원단을 사용해 제작되어
부드러운 촉감이 느껴지며 스판 함유로 착용감과 활동성이 편하고 적당한
무게감으로 흐물거림 없이 깔끔하게 떨어지는 핏이 나타나는 팬츠입니다.

조금은 캐쥬얼하다고 할 수 있는 위트있는 디자인에 걸맞는 매력적인
컬러 구성으로 어떤 이너와 매치하느냐에 따라 다양하게 연출 가능하며
캐쥬얼한 느낌으로 데일리하게 착용하기 좋아 추천드리는 자켓입니다.


- METERIAL : TR
- CARE TIP : 드라이 크리닝 / 손세탁','white,black',to_date('20/05/28','RR/MM/DD'),1);
Insert into KOREAIT.SPRING_TOP (IDX,NAME,PRICE,ID_NUMBER,CATEGORY,VOLUME,GOODSDIR,PHOTO,ITEM_COMMENT,GOODSCOLOR,WRITEDATE,SUB_CATEGORY) values (5,'럭스 포켓 데님 자켓','58000','5.jpg','top',0,'C:\leejinwon\SPRING\workspace\homeProject\src\main\webapp\resources\goodsupload',6,'크롭한 기장감과 프레쉬한 컬러감이 유니크한 데님 자켓입니다 :)

코튼 100% 소재의 탄탄한 데님 원단으로 제작되어 늘어짐이나
변형없이 오랜 기간 같은 모습으로 즐기실 수 있으며 워싱을
거친 원단으로 부드러운 착용감까지 느끼실 수 있는 상품입니다.

중청과 연청 두 가지 컬러로 구성되어있으며 두 컬러 모두 과한
느낌없이 깔끔하면서도 프레쉬한 컬러감으로 데님, 슬랙스 등
어떤 팬츠에 매치하여도 멋스럽게 코디가 완성되는 제품입니다.


- METERIAL : 코튼100%
- CARE TIP : 드라이 크리닝 / 손세탁','blue,sky',to_date('20/05/28','RR/MM/DD'),1);
Insert into KOREAIT.SPRING_TOP (IDX,NAME,PRICE,ID_NUMBER,CATEGORY,VOLUME,GOODSDIR,PHOTO,ITEM_COMMENT,GOODSCOLOR,WRITEDATE,SUB_CATEGORY) values (1,'워싱 린넨 셔츠 자켓 (4col)','49000','1.jpg','top',0,'C:\leejinwon\SPRING\workspace\homeProject\src\main\webapp\resources\goodsupload',7,'여름 시즌 멋스럽게 착용하기 좋은 린넨 셔츠 자켓입니다 :)

린넨 100% 소재를 사용하여 탄탄한 논 스판 원단으로 제작된 제품으로
내구성이 좋아 늘어짐이나 변형없이 오랜기간 착용이 가능하며
가벼운 무게감과 통기성, 흡수력으로 시원한 착용감이 느낄 수 있습니다.

팬츠와 함께 셋업으로 제작되어 코디 걱정없이 간편하게 스타일을
완성하기 좋으며 베이직한 컬러와 셔츠인듯 자켓같은 디자인으로
단품으로도 다양한 여름철 코디에 활용도 높은 제품입니다.','black',to_date('20/05/28','RR/MM/DD'),1);
Insert into KOREAIT.SPRING_TOP (IDX,NAME,PRICE,ID_NUMBER,CATEGORY,VOLUME,GOODSDIR,PHOTO,ITEM_COMMENT,GOODSCOLOR,WRITEDATE,SUB_CATEGORY) values (6,'에블리 오버 항공 점퍼','53000','6.jpg','top',0,'C:\leejinwon\SPRING\workspace\homeProject\src\main\webapp\resources\goodsupload',7,'미니멀하면서도 스트리 무드가 느껴지는 항공점퍼입니다 :)

항공 점퍼 답게 뛰어난 내구성을 자랑하는 탄탄한 겉감 소재로
쉽게 찢어지거나 손상되지 않는 뛰어난 내구성을 자랑하매 매우 오버한
사이즈지만 형태가 흐트러지지 않고 잘 잡혀있는 핏이 나타납니다.

봄부터 가을까지 어떤 이너와 함께 코디하여도 간편하게 걸쳐 스트릿한
무드를 완성할 수 있는 점퍼로 훌륭한 가격과 우수한 퀄리티로
강력 추천드리는 두컬러 모두 소장하시더라도 후회없으실 제품입니다.


- METERIAL : 폴리100%
- CARE TIP : 드라이 크리닝 / 손세탁','black,gray',to_date('20/05/28','RR/MM/DD'),1);
Insert into KOREAIT.SPRING_TOP (IDX,NAME,PRICE,ID_NUMBER,CATEGORY,VOLUME,GOODSDIR,PHOTO,ITEM_COMMENT,GOODSCOLOR,WRITEDATE,SUB_CATEGORY) values (2,'스냅 스트링 셔츠 자켓 (4col)','49000','2.jpg','top',0,'C:\leejinwon\SPRING\workspace\homeProject\src\main\webapp\resources\goodsupload',7,'밑단 스트링으로 다양한 연출이 가능한 셔츠자켓입니다 :)

나일론100%의 톡톡한 원단으로 제작되어 원단 특유의 탄탄한
조직감이 전체적인 핏을 잘 작아주며 기본적인 내구성이
뛰어나고 신축성이 없어 오랜 기간 착용하여도 변형이 없습니다.

베이직한 셔츠인듯 하지만 곳곳의 디테일과 박시한 핏감이
트렌디한 느낌을 주는 디자인으로 코디와 스트링 조절에 따라
셔츠, 자켓 다양한 스타일링에 활용도 높은 제품입니다.


- METERIAL : 나일론100%
- CARE TIP : 드라이 크리닝 / 손세탁','black,gray',to_date('20/05/28','RR/MM/DD'),1);
Insert into KOREAIT.SPRING_TOP (IDX,NAME,PRICE,ID_NUMBER,CATEGORY,VOLUME,GOODSDIR,PHOTO,ITEM_COMMENT,GOODSCOLOR,WRITEDATE,SUB_CATEGORY) values (7,'아스 미니멀 블루종','74000','7.jpg','top',0,'C:\leejinwon\SPRING\workspace\homeProject\src\main\webapp\resources\goodsupload',6,'간결한 디테일과 집업으로 미니멀한 무드를 보여주는 자켓입니다 :)

폴리50% 레이온46% 우레탄4% 혼방의 탄탄한 조직감의 밀도 높은 원단으로
제작되어 우수한 내구성으로 늘어짐과 변형이 적고 가벼운 무게감에
고신축 스판함유로 부드럽고 편안하게 착용하시기 좋은 제품입니다.

세미 오버 사이즈로 제작되어 체형에 구애받지 않고 편안하게 착용하기
좋고 어떤 이너 위에 걸치더라도 불편함없이 자연스러운 연출이 가능해
손쉽게 미니멀한 감성의 실루엣을 나타낼 수 있어 매력적인 제품입니다.


- METERIAL : 폴리50% 레이온46% 우레탄4%
- CARE TIP : 드라이 크리닝 / 손세탁','black',to_date('20/05/28','RR/MM/DD'),1);
Insert into KOREAIT.SPRING_TOP (IDX,NAME,PRICE,ID_NUMBER,CATEGORY,VOLUME,GOODSDIR,PHOTO,ITEM_COMMENT,GOODSCOLOR,WRITEDATE,SUB_CATEGORY) values (8,'핀턱 벨티드 크롭 자켓','105000','8.jpg','top',0,'C:\leejinwon\SPRING\workspace\homeProject\src\main\webapp\resources\goodsupload',4,'미니멀 하면서도 러프한 디자인이 돋보이는 크롭자켓입니다 :)

코튼 100% 소재를 사용해 가공한 워싱 원단으로 부드러운 질감이
살아있어 편안한 착용감이 느껴지며 워싱으로 축율을 잡아내 늘어짐이나
뒤틀림 등의 변형없이 오랜 기간 같은 모습으로 착용하실 수 있습니다.

적당히 여유감 있는 사이즈에 크롭기장으로 깔끔하게 떨어지는
실루엣이 멋스러우며 벨트와 핀턱 디테일로 더욱 트렌디한
감성을 보여줘 미니멀과 트렌디함이 느껴지는 자켓입니다.


- METERIAL : 코튼100%
- CARE TIP : 드라이 크리닝 / 손세탁','black,red',to_date('20/05/28','RR/MM/DD'),1);
Insert into KOREAIT.SPRING_TOP (IDX,NAME,PRICE,ID_NUMBER,CATEGORY,VOLUME,GOODSDIR,PHOTO,ITEM_COMMENT,GOODSCOLOR,WRITEDATE,SUB_CATEGORY) values (9,'세컨드 분또 가디건','34000','9.jpg','top',0,'C:\leejinwon\SPRING\workspace\homeProject\src\main\webapp\resources\goodsupload',11,'다가오는 봄 시즌 티셔츠 위에 걸쳐입기 좋은 분또 가디건입니다 :)

코튼90% 폴리8% 스판2% 혼방 소재의 부드러운 원단으로 제작해
가볍고 편안한 착용감이 느껴지며 밀도 높은 조직감으로 내구성 또한
우수해 활동에 의한 신축성은 좋으나 늘어짐이나 변형은 적은 상품입니다.

모던한 6가지의컬러 구성으로 취향에 따라 선택의 폭이 넓으며
봄과 가을엔 단품으로 겨울에는 두꺼운 아우터 안에 이너로
활용하기 좋아 컬러 별로 소장하셔도 후회없으실 만한 제품입니다.


- METERIAL : 코튼90% 폴리8% 스판2%
- CARE TIP : 드라이 크리닝 / 손세탁','black,blue,white',to_date('20/05/28','RR/MM/DD'),1);
Insert into KOREAIT.SPRING_TOP (IDX,NAME,PRICE,ID_NUMBER,CATEGORY,VOLUME,GOODSDIR,PHOTO,ITEM_COMMENT,GOODSCOLOR,WRITEDATE,SUB_CATEGORY) values (10,'락 트임 오버 체크 셔츠','48000','10.jpg','top',12,'C:\leejinwon\SPRING\workspace\homeProject\src\main\webapp\resources\goodsupload',5,'캐쥬얼한 체크 패턴과 헤비한 핏이 매력적인 셔츠입니다 :)

코튼100% 소재의 하늘하늘한 원단으로 제작되어 부드러운 촉감과
보송한 원단감으로 편안한 착용감이 느껴지며 논 스판 원단으로 내구성이
우수해 늘어짐이나 변형이 매우 적어 오랜 기간 착용 가능한 셔츠입니다.

부담없이 매치하기 좋은 베이직한 컬러 조합의 체크 패턴으로 어떤 컬러에
코디하여도 잘 어울려 데님, 슬랙스 어디에나 입기 좋으며 셔츠 만으로
깔끔한 캐쥬얼 룩을 완성할 수 있어 데일리 코디에 적극 추천드립니다.


- METERIAL : 코튼100%
- CARE TIP : 드라이 크리닝 / 손세탁','black,white',to_date('20/05/28','RR/MM/DD'),1);
Insert into KOREAIT.SPRING_TOP (IDX,NAME,PRICE,ID_NUMBER,CATEGORY,VOLUME,GOODSDIR,PHOTO,ITEM_COMMENT,GOODSCOLOR,WRITEDATE,SUB_CATEGORY) values (11,'스퀘어 믹스 셔츠','39000','11.jpg','top',0,'C:\leejinwon\SPRING\workspace\homeProject\src\main\webapp\resources\goodsupload',5,'감각적인 컬러 배색으로 세련된 감성을 느낄 수 있는 셔츠입니다 :)

코튼 100% 소재를 사용해 촘촘하게 짜여진 30수 원단으로 제작되어 밀도
높은 원단의 탄탄한 조직감으로 내구성이 우수해 늘어짐과 변형이 적고
특유의 빳빳하고 탄탄한 질감이 깔끔한 매력을 더해준 셔츠입니다.

미니멀한 디자인에 모던한 컬러 배색으로 다양한 스타일링에 활용도를
높였으며 단품으로도 세련된 코디가 가능하고 이너로 활용하기에 좋아
다채롭게 코디에 매칭하실 기본 셔츠로 적극 추천드리는 아이템입니다.


- METERIAL : 코튼100%
- CARE TIP : 드라이 크리닝 / 손세탁','white',to_date('20/05/28','RR/MM/DD'),1);
Insert into KOREAIT.SPRING_TOP (IDX,NAME,PRICE,ID_NUMBER,CATEGORY,VOLUME,GOODSDIR,PHOTO,ITEM_COMMENT,GOODSCOLOR,WRITEDATE,SUB_CATEGORY) values (12,'코듀로이 콤비 더플 코트','149000','12.jpg','top',0,'C:\leejinwon\SPRING\workspace\homeProject\src\main\webapp\resources\goodsupload',6,'코듀로이 콤비 포인트로 매력을 더해 준 더플 코트입니다 :)

고급 울 혼방 소재를 사용해 부드덥고 탄탄한 원단으로 제작되어
우수한 내구성으로 늘어짐과 변형이 없고 관리가 간편하며
안감 누빔 처리로 보온성 또한 높아 따뜻하게 착용 가능합니다.

아이보리, 그레이의 기본적인 컬러 구성으로 어떤 컬러에나
매치가 쉬워 다양한 코디에 걸쳐주기 좋으며 롱한 기장감으로
코트 하나만 걸쳐주어도 코디가 완성되는 제품입니다.


- METERIAL : 울혼방
- CARE TIP : 드라이 크리닝 / 손세탁','white',to_date('20/05/28','RR/MM/DD'),1);
Insert into KOREAIT.SPRING_TOP (IDX,NAME,PRICE,ID_NUMBER,CATEGORY,VOLUME,GOODSDIR,PHOTO,ITEM_COMMENT,GOODSCOLOR,WRITEDATE,SUB_CATEGORY) values (13,'헤비 레더 시어링 자켓','188000','13.jpg','top',0,'C:\leejinwon\SPRING\workspace\homeProject\src\main\webapp\resources\goodsupload',6,'유니크한 지퍼로 다양한 연출이 가능한 시어링 자켓입니다 :)

퀄리티 높은 합성피혁 소재와와 양털 원단을 사용해 제작된
상품으로 양털과 가죽이 자연스럽고 고급스러우며 털빠짐이
적고 내구성이 뛰어나며 보온성 또한 매우 우수한 상품입니다.

품질 좋은 소재를 사용해 고퀄리티 봉제 방식으로 제작된
상품으로 시중의 시어링 자켓과 차별화된 디자인이 멋스러우며
다양한 연출을 할 수 있어 유니크한 스타일링이 가능한 제품입니다.


- METERIAL : pu leather 100%
- CARE TIP : 드라이 크리닝 / 손세탁','black',to_date('20/05/28','RR/MM/DD'),1);
Insert into KOREAIT.SPRING_TOP (IDX,NAME,PRICE,ID_NUMBER,CATEGORY,VOLUME,GOODSDIR,PHOTO,ITEM_COMMENT,GOODSCOLOR,WRITEDATE,SUB_CATEGORY) values (15,'와이드 박스 맨투맨','18000','15.jpg','top',0,'C:\leejinwon\SPRING\workspace\homeProject\src\main\webapp\resources\goodsupload',9,'와이드한 핏감이 매력적인 유니크한 맨투맨 입니다 :)

코튼 100% 소재의 밀도 높은 쭈리 원단으로 제작되어 탄탄한 원단의
우수한 내구성으로 늘어짐과 변형이 적고 무게감있어 깔끔한 핏이 나오며
적당한 두께감으로 간절기부터 기본 이너까지 활용도 높은 상품입니다.

기본적인 디자인에 부담스럽지 않은 컬러 구성으로 어떤 컬러에나 어울려
다양한 코디에 쉽게 매치할 수 있으며 가격 대비 우수한 퀄리티로 가성비가
뛰어나 컬러 별로 소장하셔서 데일리로 즐기셔도 후회없으실 제품입니다.

- METERIAL : 코튼100%
- CARE TIP : 드라이 크리닝 / 손세탁','black,white,gray',to_date('20/05/28','RR/MM/DD'),2);
Insert into KOREAIT.SPRING_TOP (IDX,NAME,PRICE,ID_NUMBER,CATEGORY,VOLUME,GOODSDIR,PHOTO,ITEM_COMMENT,GOODSCOLOR,WRITEDATE,SUB_CATEGORY) values (17,'파라다이스 맨투맨','28000','17.jpg','top',0,'C:\leejinwon\SPRING\workspace\homeProject\src\main\webapp\resources\goodsupload',8,'캐쥬얼한 레터링과 프린팅이 매력적인 오버핏 맨투맨입니다 :)

코튼 100% 소재로 탄탄하게 짜여진 원단을 사용해 제작되어 우수한
내구성으로 늘어짐과 변형이 적어 오랜 기간 같은 모습으로 즐기실 수
있으며 적당한 신축성과 부드러운 촉감으로 착용감 또한 편안합니다.

베이직한 디자인에 분위기있는 프린팅과 레터링 디테일로 단품 만으로
포인트가 되며 어떤 체형에나 매우 오버한 핏으로 데일리하게 즐기기 좋아
간절기부터 겨울이너까지 활용도 높게 착용 할 수 있는 제품입니다.


- METERIAL : 코튼100%
- CARE TIP : 드라이 크리닝 / 손세탁','blue,black',to_date('20/05/28','RR/MM/DD'),2);
Insert into KOREAIT.SPRING_TOP (IDX,NAME,PRICE,ID_NUMBER,CATEGORY,VOLUME,GOODSDIR,PHOTO,ITEM_COMMENT,GOODSCOLOR,WRITEDATE,SUB_CATEGORY) values (18,'고래 자수 맨투맨','36000','18.jpg','top',0,'C:\leejinwon\SPRING\workspace\homeProject\src\main\webapp\resources\goodsupload',7,'귀여운 고래문양의 자수가 매력적인 맨투맨입니다 :)

코튼 100% 소재로 탄탄하게 짜여진 쭈리 원단을 사용해 제작되어 우수한
내구성으로 늘어짐과 변형이 적어 오랜 기간 같은 모습으로 즐기실 수
있으며 적당한 신축성과 부드러운 촉감으로 착용감 또한 편안합니다.

베이직한 디자인에 귀여운 고매 자수 디테일로 단품 만으로
포인트가 되며 어떤 체형에나 자연스러운 핏으로 데일리하게 즐기기 좋아
간절기부터 겨울이너까지 활용도 높게 착용 할 수 있는 제품입니다.


- METERIAL : 코튼100%
- CARE TIP : 드라이 크리닝 / 손세탁
','white,black',to_date('20/05/28','RR/MM/DD'),2);
Insert into KOREAIT.SPRING_TOP (IDX,NAME,PRICE,ID_NUMBER,CATEGORY,VOLUME,GOODSDIR,PHOTO,ITEM_COMMENT,GOODSCOLOR,WRITEDATE,SUB_CATEGORY) values (19,'스티치 언발란스 맨투맨','64000','19.jpg','top',13,'C:\leejinwon\SPRING\workspace\homeProject\src\main\webapp\resources\goodsupload',9,'스티치 디테일과 언발란스한 길이감에서 유니크함이 느껴지는 맨투맨입니다 :)

코튼100% 소재를 사용해 묵직한 3단 쭈리 원단으로 제작되어
탄탄한 조직감으로 내구성이 뛰어나 변형이나 늘어짐이 적으며
더욱 안정적이고 부드럽고 편안한 착용감이 느껴지는 제품입니다.

매우 오버한 사이즈로 제작되어 체형에 구애 받지 않고
착용 가능하며, 박시하게 떨어지는 실루엣에서 더욱 편안한
느낌을 받을 수 있어 데일리하게 착용하기 좋은 제품입니다.


- METERIAL : 코튼100%
- CARE TIP : 드라이 크리닝 / 손세탁','gray,black',to_date('20/05/28','RR/MM/DD'),2);
Insert into KOREAIT.SPRING_TOP (IDX,NAME,PRICE,ID_NUMBER,CATEGORY,VOLUME,GOODSDIR,PHOTO,ITEM_COMMENT,GOODSCOLOR,WRITEDATE,SUB_CATEGORY) values (20,'메르시 오버 맨투맨','41000','20.jpg','top',0,'C:\leejinwon\SPRING\workspace\homeProject\src\main\webapp\resources\goodsupload',7,'감각적인 레터링과 프린팅이 매력적인 맨투맨입니다 :)

코튼 100% 소재로 탄탄하게 짜여진 쭈리 원단을 사용해 제작되어 우수한
내구성으로 늘어짐과 변형이 적어 오랜 기간 같은 모습으로 즐기실 수
있으며 적당한 신축성과 부드러운 촉감으로 착용감 또한 편안합니다.

베이직한 디자인에 분위기있는 프린팅과 레터링 디테일로 단품 만으로
포인트가 되며 어떤 체형에나 자연스러운 핏으로 데일리하게 즐기기 좋아
간절기부터 겨울이너까지 활용도 높게 착용 할 수 있는 제품입니다.


- METERIAL : 코튼100%
- CARE TIP : 드라이 크리닝 / 손세탁','white,gray',to_date('20/05/28','RR/MM/DD'),2);
Insert into KOREAIT.SPRING_TOP (IDX,NAME,PRICE,ID_NUMBER,CATEGORY,VOLUME,GOODSDIR,PHOTO,ITEM_COMMENT,GOODSCOLOR,WRITEDATE,SUB_CATEGORY) values (21,'파티 알파카 라운드 니트','49000','21.jpg','top',0,'C:\leejinwon\SPRING\workspace\homeProject\src\main\webapp\resources\goodsupload',7,'알파카 니트 원단의 보송보송한 터치감이 일품인 니트입니다 :)

아크릴과 탐 털실 소재로 짜여진 니트 원단으로 제작되어
모헤어, 앙고라와 같은 촉감으로 부드럽고 보온성이 우수하며
특유의 선명한 컬러감이 잘 나타나있는 제품입니다.

오버한 사이즈로 제작되어 어떤 체형에나 자연스레 어울리며
보송보송한 원단감과 따뜻한 감성이 잘 어우러져 더욱
유니크하고 고급스러운 무드를 잘 나타내 주는 제품입니다.


- METERIAL : 아크릴혼방
- CARE TIP : 드라이 크리닝 / 손세탁','black,red,white',to_date('20/05/28','RR/MM/DD'),2);
Insert into KOREAIT.SPRING_TOP (IDX,NAME,PRICE,ID_NUMBER,CATEGORY,VOLUME,GOODSDIR,PHOTO,ITEM_COMMENT,GOODSCOLOR,WRITEDATE,SUB_CATEGORY) values (22,'드랍 브이넥 니트','39000','22.jpg','top',15,'C:\leejinwon\SPRING\workspace\homeProject\src\main\webapp\resources\goodsupload',7,'깔끔한 브이넥 라인으로 세련된 느낌을 내기 좋은 니트입니다 :)

아크릴 혼방 소재를 사용해 촘촘하게 짜여진 니트 원단으로 제작되어
밀도높은 원단은 내구성이 우수해 늘어짐과 변형이 적고 촉감이 부드럽고
적당한 무게감과 두께감으로 가을 겨울 시즌 착용하기 좋습니다.

자연스레 떨어지는 드랍 숄더 패턴으로 제작된 여유있는 사이즈의 니트로
체형에 크게 구애받지 않고 착용 가능하며 어떤 체형에나 깔끔한 루즈 핏을
보여주며 과하지 않은 넥 라인으로 부담감없이 즐기기 좋은 니트입니다.


- METERIAL : 아크릴 혼방
- CARE TIP : 드라이 크리닝 / 손세탁','black',to_date('20/05/28','RR/MM/DD'),2);
Insert into KOREAIT.SPRING_TOP (IDX,NAME,PRICE,ID_NUMBER,CATEGORY,VOLUME,GOODSDIR,PHOTO,ITEM_COMMENT,GOODSCOLOR,WRITEDATE,SUB_CATEGORY) values (23,'더블 넥 소프트 니트','46000','23.jpg','top',0,'C:\leejinwon\SPRING\workspace\homeProject\src\main\webapp\resources\goodsupload',8,'고급스러운 텍스쳐와 소프트한 터치감이 일품인 니트입니다 :)

울 아크릴 폴리 혼방 소재를 사용하여 퀄리티 높게 짜여진
니트 원단으로 제작되어 겉보기에도 매우 고급스러우며
묵직한 중량감과 짱짱한 짜임으로 보온성 또한 우수합니다.

원단의 소재감을 최대한 살려줄 수 있는 은은한 컬러들로
구성되어 겨울 시즌 칙칙한 날씨에 부드러운 무드를 연출해주며
상품 자체의 퀄리티가 매우 좋아 추천드리는 제품입니다.


- METERIAL : 울 아크릴 혼방
- CARE TIP : 드라이 크리닝 / 손세탁','black',to_date('20/05/28','RR/MM/DD'),2);
Insert into KOREAIT.SPRING_TOP (IDX,NAME,PRICE,ID_NUMBER,CATEGORY,VOLUME,GOODSDIR,PHOTO,ITEM_COMMENT,GOODSCOLOR,WRITEDATE,SUB_CATEGORY) values (24,'더즈 폴라 울 니트','52000','24.jpg','top',0,'C:\leejinwon\SPRING\workspace\homeProject\src\main\webapp\resources\goodsupload',9,'유니크한 폴라넥 디테일과 컬러감이 매력적인 폴라 니트입니다:)

울80% 아크릴20% 혼방 소재의 니트 원단으로 제작되어 부드러운
터치감과 보온성을 높여 매우 편안한 착용감이 느껴지며
아크릴 혼방으로 내구성 또한 뛰어난 퀄리티 높은 상품입니다.

모던하고 베이직한 톤의 컬러들로 다채롭게 구성되어 다양한
스타일링에 활용도 높으며 감각적인 폴라넥 디테일에 우수한
퀄리티로 컬러별로 소장하셔도 후회없으실 만한 제품입니다.


- METERIAL : 울80% 아크릴20%
- CARE TIP : 드라이 크리닝 / 손세탁','black,white',to_date('20/05/28','RR/MM/DD'),2);
Insert into KOREAIT.SPRING_TOP (IDX,NAME,PRICE,ID_NUMBER,CATEGORY,VOLUME,GOODSDIR,PHOTO,ITEM_COMMENT,GOODSCOLOR,WRITEDATE,SUB_CATEGORY) values (25,'하프 폴라 니트 맨투맨','29000','25.jpg','top',0,'C:\leejinwon\SPRING\workspace\homeProject\src\main\webapp\resources\goodsupload',8,'부드러운 니트 소재감으로 포근한 느낌을 주는 맨투맨입니다 :)

폴리 레이온 스판 혼방 소재로 짜여진 니트지 원단으로
촘촘한 짜임으로 보여지는 깔끔한 텍스쳐가 일품이며
부드러운 터치감과 텐션으로 착용감 또한 우수한 상품입니다.

살짝 높게 올라오는 넥 라인이 더욱 포근한 느낌을 주며
드랍숄더를 통한 오버핏의 트렌디한 실루엣으로 체형에 상관없이
누구나 입기 좋아 데일리 코디에 추천드리는 제품입니다


- METERIAL : 폴리 레이온 스판
- CARE TIP : 드라이 크리닝 / 손세탁','black,white,gray',to_date('20/05/28','RR/MM/DD'),2);
Insert into KOREAIT.SPRING_TOP (IDX,NAME,PRICE,ID_NUMBER,CATEGORY,VOLUME,GOODSDIR,PHOTO,ITEM_COMMENT,GOODSCOLOR,WRITEDATE,SUB_CATEGORY) values (26,'스웨터 자수 맨투맨','34000','26.jpg','top',0,'C:\leejinwon\SPRING\workspace\homeProject\src\main\webapp\resources\goodsupload',5,'심플한 레터링과 세미 오버핏이 조화로운 스웻 셔츠입니다 :)

프린팅 나염이 아닌 자수로 촘촘히 짜여져있어 지워질 걱정없는
레터링이 포인트이며 코튼 100% 소재로 튼튼하면서도 유연하게
제작되어 활동함에 있어 불편함을 느끼지 않는 제품입니다.

와이드한 핏으로 제작되어 은은하게 루즈함을 연출할 수 있으며
소매와 밑단에 시보리가 핏을 잡아주어 스타일링에 흐트러짐
없이 깔끔한 실루엣을 오랜 시간 유지하기 좋은 제품입니다.


- METERIAL : 코튼
- CARE TIP : 드라이 크리닝 / 손세탁','black,gray',to_date('20/05/28','RR/MM/DD'),2);
Insert into KOREAIT.SPRING_TOP (IDX,NAME,PRICE,ID_NUMBER,CATEGORY,VOLUME,GOODSDIR,PHOTO,ITEM_COMMENT,GOODSCOLOR,WRITEDATE,SUB_CATEGORY) values (27,'네오 요꼬 브이넥 맨투맨','29000','27.jpg','top',0,'C:\leejinwon\SPRING\workspace\homeProject\src\main\webapp\resources\goodsupload',1,null,'black',to_date('20/05/28','RR/MM/DD'),2);
Insert into KOREAIT.SPRING_TOP (IDX,NAME,PRICE,ID_NUMBER,CATEGORY,VOLUME,GOODSDIR,PHOTO,ITEM_COMMENT,GOODSCOLOR,WRITEDATE,SUB_CATEGORY) values (28,'플리스 레터링 아노락','49000','28.jpg','top',0,'C:\leejinwon\SPRING\workspace\homeProject\src\main\webapp\resources\goodsupload',6,'부드럽고 가벼우면서도 따뜻한 착용감이 일품인 아노락입니다 :)

폴리100%소재의 탄탄한 조직감의 덤블 원단으로 제작되어
보들보들한 터치감이 살이 있어 착용감 또한 부드러우며
가볍고 보온성이 우수해 쭈욱 착용하기 좋은 상품입니다.

부담없이 코디하기 좋은 베이직한 배색 컬러들로 구성되어 어떤
코디에나 쉽게 매치 가능하며 트렌디한 컬러의 레터링 디테일로
단품으로도 데일리 코디에 포인트 주기 좋은 제품입니다.


- METERIAL : 폴리100%
- CARE TIP : 드라이 크리닝 / 손세탁','black,sky',to_date('20/05/28','RR/MM/DD'),2);
Insert into KOREAIT.SPRING_TOP (IDX,NAME,PRICE,ID_NUMBER,CATEGORY,VOLUME,GOODSDIR,PHOTO,ITEM_COMMENT,GOODSCOLOR,WRITEDATE,SUB_CATEGORY) values (86,'1987 레터링 반팔티','15000','86.jpg','top',0,'C:\leejinwon\SPRING\workspace\homeProject\src\main\webapp\resources\goodsupload',5,'심플하면서도 포인트가 되어주는 프린팅이 매력적인 티셔츠입니다 :)

코튼 100% 소재의 부드러운 면 원단으로 제작되었으며 적절한 두께로
단품으로도 비침 걱정없이 편안하게 착용하실 수 있고 내구성이 좋아
목 늘어짐이나 변형이 적게 오랫동안 즐기실 수 있는 티셔츠입니다.

깔끔한 6가지 컬러구성으로 레터링 디테일을 더해 세련된
분위기를 보여주는 티셔츠로 가볍게 단품으로 착용해도 멋스러우며
자켓이나 블레이져의 이너로 매치해 레터링으로 포인트주기 좋습니다.


- METERIAL : 코튼100%
- CARE TIP : 드라이 크리닝 / 손세탁','white',to_date('20/05/29','RR/MM/DD'),4);
Insert into KOREAIT.SPRING_TOP (IDX,NAME,PRICE,ID_NUMBER,CATEGORY,VOLUME,GOODSDIR,PHOTO,ITEM_COMMENT,GOODSCOLOR,WRITEDATE,SUB_CATEGORY) values (87,'썸머 야자수 티셔츠 ','26000','87.jpg','top',0,'C:\leejinwon\SPRING\workspace\homeProject\src\main\webapp\resources\goodsupload',7,'화려한 나염 디테일이 돋보이는 야자수 나염 티셔츠입니다 :)

코튼 100% 소재를 사용하여 썸머 시즌에 착장하기 좋은
20수 싱글 면 원단으로 제작되어 더운 날씨에도
가볍고 쾌적한 착용감을 느끼실 수 있습니다.

가슴과 등 부분의 화려한 야자수,레터링 나염 디테일이
강렬한 포인트가 되어주는 디자인으로 베이직한 팬츠와
매치하여 손 쉽게 포인트 있는 코디를 완성 가능한 제품입니다.


- METERIAL : 코튼100%
- CARE TIP : 드라이 크리닝 / 손세탁','black,white',to_date('20/05/29','RR/MM/DD'),4);
Insert into KOREAIT.SPRING_TOP (IDX,NAME,PRICE,ID_NUMBER,CATEGORY,VOLUME,GOODSDIR,PHOTO,ITEM_COMMENT,GOODSCOLOR,WRITEDATE,SUB_CATEGORY) values (88,'하이드로겐 반팔 티셔츠','26000','88.jpg','top',0,'C:\leejinwon\SPRING\workspace\homeProject\src\main\webapp\resources\goodsupload',4,'흐르듯이 가볍고 부드러운 원단으로 착용감이 우수한 티셔츠입니다 :)

코튼65% 나일론30% 스판5% 혼방 소재의 실키한 원단으로 제작되어 가볍고
부드러운 촉감과 우수한 통기성, 흡습성으로 쾌적하고 편안한 착용감이
느껴지는 티셔츠로 더운 여름시즌 착용하시기 좋을만큼 시원합니다.

소재 특유의 은은한 컬러 텍스쳐가 잘 나타나있어 부담스러운 느낌없이
쉽게 다양한 컬러 코디를 하실 수 있으며 고급스러운 느낌의 소재는 실제로
너무도 편안해 여름 시즌 내내 편안하게 즐기시기 좋은 제품입니다.


- METERIAL : 코튼65% 나일론30% 스판5%
- CARE TIP : 드라이 크리닝 / 손세탁','white',to_date('20/05/29','RR/MM/DD'),4);
Insert into KOREAIT.SPRING_TOP (IDX,NAME,PRICE,ID_NUMBER,CATEGORY,VOLUME,GOODSDIR,PHOTO,ITEM_COMMENT,GOODSCOLOR,WRITEDATE,SUB_CATEGORY) values (89,'썸머 모크넥 반팔 티셔츠','18000','89.jpg','top',0,'C:\leejinwon\SPRING\workspace\homeProject\src\main\webapp\resources\goodsupload',6,'유니크한 모크넥 디테일이 매력적인 반팔 티셔츠입니다 :)

폴리95% 스판5% 혼방 소재의 매우 실키한 원단으로 제작되어 가볍고
부드러운 촉감과 우수한 통기성, 흡습성으로 쾌적하고 편안한 착용감이
느껴지는 티셔츠로 더운 여름시즌 착용하시기 좋을만큼 시원합니다.

모던한 컬러감으로 제작된 무채색 컬러감의 티셔츠로
원단에서 느껴지는 부드러운 감성과 모던한 컬러감이 어우러져
부드러운 데일리 코디를 완성하기 좋은 제품입니다.


- METERIAL : 폴리95% 스판5%
- CARE TIP : 드라이 크리닝 / 손세탁','black,gray',to_date('20/05/29','RR/MM/DD'),4);
Insert into KOREAIT.SPRING_TOP (IDX,NAME,PRICE,ID_NUMBER,CATEGORY,VOLUME,GOODSDIR,PHOTO,ITEM_COMMENT,GOODSCOLOR,WRITEDATE,SUB_CATEGORY) values (90,'러브레이스 프린팅 티셔츠','20000','90.jpg','top',0,'C:\leejinwon\SPRING\workspace\homeProject\src\main\webapp\resources\goodsupload',5,'익살스러운 프린팅 디테일이 매력적인 티셔츠입니다 :)

코튼 100% 소재의 부드러운 면 원단으로 제작되었으며 적절한 두께로
단품으로도 비침 걱정없이 편안하게 착용하실 수 있고 내구성이 좋아
목 늘어짐이나 변형이 적게 오랫동안 즐기실 수 있는 티셔츠입니다.

가장 기본적인 2가지 컬러로 구성되어 있으며 바탕 위에 들어간
익살스러운 프린팅 디자인이 유니크하면서도 캐쥬얼한 느낌을
더해줘 다양한 팬츠와 데일리 룩을 코디하기 좋은 제품입니다.


- METERIAL : 코튼100%
- CARE TIP : 드라이 크리닝 / 손세탁','black,white',to_date('20/05/29','RR/MM/DD'),4);
Insert into KOREAIT.SPRING_TOP (IDX,NAME,PRICE,ID_NUMBER,CATEGORY,VOLUME,GOODSDIR,PHOTO,ITEM_COMMENT,GOODSCOLOR,WRITEDATE,SUB_CATEGORY) values (91,'스트라이프 7부 박스티','34000','91.jpg','top',0,'C:\leejinwon\SPRING\workspace\homeProject\src\main\webapp\resources\goodsupload',6,'스트라이프 패턴으로 캐쥬얼한 감성을 느낄 수 있는 티셔츠입니다 :)

코튼 100% 소재를 사용해 촘촘하게 짜여진 원단으로 제작되어
밀도 높은 원단의 탄탄한 조직감으로 내구성이 우수해 늘어짐과
변형이 적어 오랜기간 두고 착용하실 수 있는 제품입니다.

드랍숄더의 매우 헤비한 핏으로 제작되어 체형에 구애받지 않고
어떤 체형에나 착용가능하며 7부소매의 유니크한 핏으로 단품만으로도
포인트를 줄 수 있어 여름시즌 데일리하게 즐기기 좋은 제품입니다.


- METERIAL : 코튼100%
- CARE TIP : 드라이 크리닝 / 손세탁','black,red',to_date('20/05/29','RR/MM/DD'),4);
Insert into KOREAIT.SPRING_TOP (IDX,NAME,PRICE,ID_NUMBER,CATEGORY,VOLUME,GOODSDIR,PHOTO,ITEM_COMMENT,GOODSCOLOR,WRITEDATE,SUB_CATEGORY) values (92,'뉴틀리 반팔 티셔츠','28000','92.jpg','top',0,'C:\leejinwon\SPRING\workspace\homeProject\src\main\webapp\resources\goodsupload',6,'프리미엄 헤비 코튼 원단으로 제작된 깔끔한 핏감의 티셔츠입니다 :)

코튼100% 소재의 밀도높게 짜여진 원단으로 내구성을 높이고 구김이나 손상을
최소화한 헤비 코튼 원단으로 오래 두고 입으시기 좋으며 적당한 두께와
부드러운 촉감으로 맨 살 위에 입으셔도 부담없이 편안한 상품입니다.

깔끔한 실루엣을 보여주는 오버사이즈의 티셔츠로 어떤 체형에나 어울려
레이어드 티셔츠로 좋으며 탄탄한 마감처리와 우수한 퀄리티와
다채로운 컬로 구성으로 소장하셔도 후회하지 않으실 만한 제품입니다.


- METERIAL : 코튼100%
- CARE TIP : 드라이 크리닝 / 손세탁','white,gray',to_date('20/05/29','RR/MM/DD'),4);
Insert into KOREAIT.SPRING_TOP (IDX,NAME,PRICE,ID_NUMBER,CATEGORY,VOLUME,GOODSDIR,PHOTO,ITEM_COMMENT,GOODSCOLOR,WRITEDATE,SUB_CATEGORY) values (93,'카스토르 반팔 티셔츠','22000','93.jpg','top',0,'C:\leejinwon\SPRING\workspace\homeProject\src\main\webapp\resources\goodsupload',6,'심플하면서도 포인트가 되어주는 프린팅이 매력적인 티셔츠입니다 :)

코튼 100% 소재의 부드러운 면 원단으로 제작되었으며 적절한 두께로
단품으로도 비침 걱정없이 편안하게 착용하실 수 있고 내구성이 좋아
목 늘어짐이나 변형이 적게 오랫동안 즐기실 수 있는 티셔츠입니다.

깔끔한 4가지 컬러구성으로 레터링 디테일을 더해 세련된
분위기를 보여주는 티셔츠로 가볍게 단품으로 착용해도 멋스러우며
자켓이나 블레이져의 이너로 매치해 레터링으로 포인트주기 좋습니다.


- METERIAL : 코튼100%
- CARE TIP : 드라이 크리닝 / 손세탁','black,white',to_date('20/05/29','RR/MM/DD'),4);
Insert into KOREAIT.SPRING_TOP (IDX,NAME,PRICE,ID_NUMBER,CATEGORY,VOLUME,GOODSDIR,PHOTO,ITEM_COMMENT,GOODSCOLOR,WRITEDATE,SUB_CATEGORY) values (94,'썸머 텐셀 반팔 티셔츠','24000','94.jpg','top',0,'C:\leejinwon\SPRING\workspace\homeProject\src\main\webapp\resources\goodsupload',5,'흐르듯이 가볍고 부드러운 원단으로 착용감이 우수한 티셔츠입니다 :)

폴리95% 스판5% 혼방 소재의 매우 실키한 원단으로 제작되어 가볍고
부드러운 촉감과 우수한 통기성, 흡습성으로 쾌적하고 편안한 착용감이
느껴지는 티셔츠로 더운 여름시즌 착용하시기 좋을만큼 시원합니다.
소재 특유의 은은한 컬러 텍스쳐가 잘 나타나있어 부담스러운 느낌없이
쉽게 다양한 컬러 코디를 하실 수 있으며 고급스러운 느낌의 소재는 실제로
너무도 편안해 여름 시즌 내내 편안하게 즐기시기 좋은 제품입니다.


- METERIAL : 폴리95% 스판5%
- CARE TIP : 드라이 크리닝 / 손세탁','white',to_date('20/05/29','RR/MM/DD'),4);
Insert into KOREAIT.SPRING_TOP (IDX,NAME,PRICE,ID_NUMBER,CATEGORY,VOLUME,GOODSDIR,PHOTO,ITEM_COMMENT,GOODSCOLOR,WRITEDATE,SUB_CATEGORY) values (95,'미키자수 포켓 티셔츠','24000','95.jpg','top',0,'C:\leejinwon\SPRING\workspace\homeProject\src\main\webapp\resources\goodsupload',5,'귀여운 미키마우스 자수로 포인트주기 좋은 디즈니 정품 티셔츠입니다 :)

코튼 100% 소재의 부드러운 면 원단으로 제작되었으며 적절한 두께로
단품으로도 비침 걱정없이 편안하게 착용하실 수 있고 내구성이 좋아
목 늘어짐이나 변형이 적게 오랫동안 즐기실 수 있는 티셔츠입니다.

심플한 컬러구성에 정면 포켓 미키마우스 자수 디테일을 더해 캐쥬얼한
분위기를 보여주는 티셔츠로 가볍게 단품으로 착용해도 멋스러우며
누구에게나 어울리는 트렌디한 오버핏의 실루엣을 연출해줍니다.


- METERIAL : 코튼100%
- CARE TIP : 드라이 크리닝 / 손세탁','white,black',to_date('20/05/29','RR/MM/DD'),4);
Insert into KOREAIT.SPRING_TOP (IDX,NAME,PRICE,ID_NUMBER,CATEGORY,VOLUME,GOODSDIR,PHOTO,ITEM_COMMENT,GOODSCOLOR,WRITEDATE,SUB_CATEGORY) values (96,'토네이도 미키 티셔츠','24000','96.jpg','top',0,'C:\leejinwon\SPRING\workspace\homeProject\src\main\webapp\resources\goodsupload',6,'귀여운 미키마우스 프린팅으로 포인트주기 좋은 디즈니 정품 티셔츠입니다 :)

코튼 100% 소재의 부드러운 면 원단으로 제작되었으며 적절한 두께로
단품으로도 비침 걱정없이 편안하게 착용하실 수 있고 내구성이 좋아
목 늘어짐이나 변형이 적게 오랫동안 즐기실 수 있는 티셔츠입니다.

심플한 컬러구성에 정면 미키마우스 프린팅 디테일을 더해 캐쥬얼한
분위기를 보여주는 티셔츠로 가볍게 단품으로 착용해도 멋스러우며
자켓이나 블레이져의 이너로 매치해 포인트 주기 좋습니다.


- METERIAL : 코튼100%
- CARE TIP : 드라이 크리닝 / 손세탁','black,white,gray',to_date('20/05/29','RR/MM/DD'),4);
Insert into KOREAIT.SPRING_TOP (IDX,NAME,PRICE,ID_NUMBER,CATEGORY,VOLUME,GOODSDIR,PHOTO,ITEM_COMMENT,GOODSCOLOR,WRITEDATE,SUB_CATEGORY) values (97,'콜로라도 레터랑 티셔츠','16000','97.jpg','top',0,'C:\leejinwon\SPRING\workspace\homeProject\src\main\webapp\resources\goodsupload',6,'슬라브 원단의 내츄럴한 텍스쳐가 살아있는 반팔 티셔츠입니다 :)

코튼 100% 소재를 사용해 20수 면 슬라브 원단으로
제작되어 촉감이 가볍고 매우 부드러우며 편안하고 시원한
착용감을 느낄 수 있어 여름시즌 즐기기 좋은 제품입니다.

슬라브 원단의 내츄럴한 소재감과 톡톡튀는 컬러감, 캐쥬얼한
프린팅 디테일에서 시원한 느낌을 받으실 수 있는 상품으로
여름시즌 데일리 티셔츠로 활용하기 좋은 제품입니다.


- METERIAL : 코튼100%
- CARE TIP : 드라이 크리닝 / 손세탁','white',to_date('20/05/29','RR/MM/DD'),4);
Insert into KOREAIT.SPRING_TOP (IDX,NAME,PRICE,ID_NUMBER,CATEGORY,VOLUME,GOODSDIR,PHOTO,ITEM_COMMENT,GOODSCOLOR,WRITEDATE,SUB_CATEGORY) values (98,'시가렛 프린팅 티셔츠','17000','98.jpg','top',4,'C:\leejinwon\SPRING\workspace\homeProject\src\main\webapp\resources\goodsupload',6,'박시한 오버핏과 감각적인 프린팅이 매력적인 티셔츠입니다 :)

코튼 100% 소재의 부드러운 면 원단으로 제작되어 맨 살 위에
입어도 꺼끌거림없이 편안한 착용감이 느껴지며 여름 시즌까지
가볍고 시원하게 단품으로 코디하시기도 좋은 티셔츠입니다.

가장 기본적인 3가지 컬러로 구성되어 있으며 바탕 위에 들어간
감각적인 프린팅 디자인이 유니크하면서도 캐쥬얼한 느낌을
더해줘 다양한 팬츠와 데일리 룩을 코디하기 좋은 제품입니다.


- METERIAL : 코튼100%
- CARE TIP : 드라이 크리닝 / 손세탁','black,white',to_date('20/05/29','RR/MM/DD'),4);
Insert into KOREAIT.SPRING_TOP (IDX,NAME,PRICE,ID_NUMBER,CATEGORY,VOLUME,GOODSDIR,PHOTO,ITEM_COMMENT,GOODSCOLOR,WRITEDATE,SUB_CATEGORY) values (99,'베이직 오픈 카라셔츠','18000','99.jpg','top',0,'C:\leejinwon\SPRING\workspace\homeProject\src\main\webapp\resources\goodsupload',4,'적당한 오버핏 실루엣에서 트렌디한 매력을 느낄 수 있는 셔츠입니다 :)

폴리 100% 소재의 부드러운 TR 셔츠 원단으로 제작되어
실키한 촉감의 원단감과 가벼운 무게감으로 착용감이 편안하며
밀도높은 짜임과 내구성으로 늘어짐이나 변형없이 오랜 기간 착용됩니다.

부담없는 베이직한디자인과 다양한 컬러들로 구성되어 어떤 팬츠나
아우터에도 잘 어울려 코디에 쉽게 매치하실 수 있으며 깔끔한 핏
만으로 데일리 룩에 활용도 높아 여러 벌 소장하셔도 좋습니다.
(화이트 컬러는 빛에 따라 약간의 비침이 있을 수 있습니다.)','black,white',to_date('20/05/29','RR/MM/DD'),3);
Insert into KOREAIT.SPRING_TOP (IDX,NAME,PRICE,ID_NUMBER,CATEGORY,VOLUME,GOODSDIR,PHOTO,ITEM_COMMENT,GOODSCOLOR,WRITEDATE,SUB_CATEGORY) values (100,'피버 린넨 오버핏 셔츠','32000','100.jpg','top',0,'C:\leejinwon\SPRING\workspace\homeProject\src\main\webapp\resources\goodsupload',5,'시원한 소재감이 너무나도 매력적인 오버핏 셔츠입니다 :)

텐셀60% 레이온40% 소재의 탄탄한 원단에 워싱을 거쳐 부드러운
촉감과 여름시즌 입기 좋은 적당한 두께감으로 제작되었으며
워싱을 거친 원단으로 변형이 거의 없고 내구성 또한 우수합니다.

오버핏한 사이즈로 제작되어 어떤 체형에나 알맞은 핏으로
착용이 가능하고 시원하고 매력적인 컬러들로 구성되어
다양한 코디에 쉽게 매치할 수 있어 추천해드리는 제품입니다','gray,red',to_date('20/05/29','RR/MM/DD'),3);
Insert into KOREAIT.SPRING_TOP (IDX,NAME,PRICE,ID_NUMBER,CATEGORY,VOLUME,GOODSDIR,PHOTO,ITEM_COMMENT,GOODSCOLOR,WRITEDATE,SUB_CATEGORY) values (101,'땡큐 오버핏 헨리넥 셔츠','20000','101.jpg','top',0,'C:\leejinwon\SPRING\workspace\homeProject\src\main\webapp\resources\goodsupload',3,'너무나보 부드럽고 편안한 착용감의 헨리넥 셔츠입니다 :)

폴리 100% 소재를 사용해 직기 방ㅎ식으로 짜여진 실키한 느낌의
원단으로 제작되어 원단 다체의 촉감이 매우 부드럽고 촉촉하며
무게감 또한 가벼워 시원하고 편안한 착용감이 느껴집니다.

불필요한 디테일없이 미니멀하고 깔끔한 디자인의 셔츠로
누구나 부담없이 착용하기 좋으며 오버핏의 여유로운
사이즈로 나타나는 루즈한 실루엣이 편안한 느낌을 줍니다.','red',to_date('20/05/29','RR/MM/DD'),3);
Insert into KOREAIT.SPRING_TOP (IDX,NAME,PRICE,ID_NUMBER,CATEGORY,VOLUME,GOODSDIR,PHOTO,ITEM_COMMENT,GOODSCOLOR,WRITEDATE,SUB_CATEGORY) values (102,'비비드 린넨 셔츠','28000','102.jpg','top',0,'C:\leejinwon\SPRING\workspace\homeProject\src\main\webapp\resources\goodsupload',4,'비비드 컬러감이 너무나도 매력적인 오버핏 셔츠입니다 :)

린넨 소재의 탄탄한 조직감의 원단에 워싱을 거쳐 부드러운
촉감과 여름시즌 입기 좋은 적당한 두께감으로 제작되었으며
워싱을 거친 원단으로 변형이 거의 없고 내구성 또한 우수합니다.

오버핏한 사이즈로 제작되어 어떤 체형에나 알맞은 핏으로
착용이 가능하고 시원하고 매력적인 컬러들로 구성되어
다양한 코디에 쉽게 매치할 수 있어 추천해드리는 제품입니다.','white,black',to_date('20/05/29','RR/MM/DD'),3);
Insert into KOREAIT.SPRING_TOP (IDX,NAME,PRICE,ID_NUMBER,CATEGORY,VOLUME,GOODSDIR,PHOTO,ITEM_COMMENT,GOODSCOLOR,WRITEDATE,SUB_CATEGORY) values (103,'엘버른 체크 셔츠','32000','103.jpg','top',0,'C:\leejinwon\SPRING\workspace\homeProject\src\main\webapp\resources\goodsupload',4,'깔끔한 컬러의 조합으로 캐쥬얼한 매력의 체크 셔츠입니다 :)

코튼 100% 소재의 면 원단으로 제작되어 부드러운 촉감으로
편안한 착용감이 느껴지며 가벼우면서도 시즌에 알맞는 두께로
티셔츠 위에 걸치거나 단품으로도 코디하시기 좋은 셔츠입니다.

적절히 오버한 사이즈로 제작되어 어떤 체형에나 잘 어울리는
자연스러운 실루엣이 나타나며 다양한 컬러 조합으로 나타낸
체크 패턴이 들어가 셔츠 하나 만으로 포인트가 되는 제품입니다.','black',to_date('20/05/29','RR/MM/DD'),3);
Insert into KOREAIT.SPRING_TOP (IDX,NAME,PRICE,ID_NUMBER,CATEGORY,VOLUME,GOODSDIR,PHOTO,ITEM_COMMENT,GOODSCOLOR,WRITEDATE,SUB_CATEGORY) values (104,'플랩포켓 박스 셔츠','59000','104.jpg','top',0,'C:\leejinwon\SPRING\workspace\homeProject\src\main\webapp\resources\goodsupload',3,'베이직한 디자인에 과감한 오버 핏으로 포인트를 준 셔츠입니다 :)

코튼100% 소재의 밀도 높은 셔츠 원단으로 제작되어
오랜 기간 착용하여도 늘어짐이나 변형없이 같은 모습을
유지하며 맨 살 위에 입어도 비침 걱정이 없는 셔츠입니다.

베이직한 기본 디자인에 오버한 사이즈로 제작되어 어떤
체형에나 어울리는 트렌디한 실루엣이 나타나며 깔끔한 컬러로
구성되어 단품으로도, 미니멀한 스타일링에도 좋은 제품입니다.','white',to_date('20/05/29','RR/MM/DD'),3);
Insert into KOREAIT.SPRING_TOP (IDX,NAME,PRICE,ID_NUMBER,CATEGORY,VOLUME,GOODSDIR,PHOTO,ITEM_COMMENT,GOODSCOLOR,WRITEDATE,SUB_CATEGORY) values (105,'베이직 오픈 카라셔츠','18000','105.jpg','top',0,'C:\leejinwon\SPRING\workspace\homeProject\src\main\webapp\resources\goodsupload',3,'적당한 오버핏 실루엣에서 트렌디한 매력을 느낄 수 있는 셔츠입니다 :)

폴리 100% 소재의 부드러운 TR 셔츠 원단으로 제작되어
실키한 촉감의 원단감과 가벼운 무게감으로 착용감이 편안하며
밀도높은 짜임과 내구성으로 늘어짐이나 변형없이 오랜 기간 착용됩니다.

부담없는 베이직한디자인과 다양한 컬러들로 구성되어 어떤 팬츠나
아우터에도 잘 어울려 코디에 쉽게 매치하실 수 있으며 깔끔한 핏
만으로 데일리 룩에 활용도 높아 여러 벌 소장하셔도 좋습니다.
(화이트 컬러는 빛에 따라 약간의 비침이 있을 수 있습니다.)','black,white',to_date('20/05/29','RR/MM/DD'),5);
Insert into KOREAIT.SPRING_TOP (IDX,NAME,PRICE,ID_NUMBER,CATEGORY,VOLUME,GOODSDIR,PHOTO,ITEM_COMMENT,GOODSCOLOR,WRITEDATE,SUB_CATEGORY) values (106,'피버 린넨 오버핏 셔츠','32000','106.jpg','top',0,'C:\leejinwon\SPRING\workspace\homeProject\src\main\webapp\resources\goodsupload',4,'시원한 소재감이 너무나도 매력적인 오버핏 셔츠입니다 :)

텐셀60% 레이온40% 소재의 탄탄한 원단에 워싱을 거쳐 부드러운
촉감과 여름시즌 입기 좋은 적당한 두께감으로 제작되었으며
워싱을 거친 원단으로 변형이 거의 없고 내구성 또한 우수합니다.

오버핏한 사이즈로 제작되어 어떤 체형에나 알맞은 핏으로
착용이 가능하고 시원하고 매력적인 컬러들로 구성되어
다양한 코디에 쉽게 매치할 수 있어 추천해드리는 제품입니다','black,white',to_date('20/05/29','RR/MM/DD'),5);
Insert into KOREAIT.SPRING_TOP (IDX,NAME,PRICE,ID_NUMBER,CATEGORY,VOLUME,GOODSDIR,PHOTO,ITEM_COMMENT,GOODSCOLOR,WRITEDATE,SUB_CATEGORY) values (107,'땡큐 오버핏 헨리넥 셔츠','20000','107.jpg','top',0,'C:\leejinwon\SPRING\workspace\homeProject\src\main\webapp\resources\goodsupload',5,'너무나보 부드럽고 편안한 착용감의 헨리넥 셔츠입니다 :)

폴리 100% 소재를 사용해 직기 방ㅎ식으로 짜여진 실키한 느낌의
원단으로 제작되어 원단 다체의 촉감이 매우 부드럽고 촉촉하며
무게감 또한 가벼워 시원하고 편안한 착용감이 느껴집니다.

불필요한 디테일없이 미니멀하고 깔끔한 디자인의 셔츠로
누구나 부담없이 착용하기 좋으며 오버핏의 여유로운
사이즈로 나타나는 루즈한 실루엣이 편안한 느낌을 줍니다.','black',to_date('20/05/29','RR/MM/DD'),5);
--------------------------------------------------------
--  DDL for Index SPRING_ACC_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "KOREAIT"."SPRING_ACC_PK" ON "KOREAIT"."SPRING_ACC" ("IDX") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index SPRING_BOTTOM_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "KOREAIT"."SPRING_BOTTOM_PK" ON "KOREAIT"."SPRING_BOTTOM" ("IDX") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index MEMBER_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "KOREAIT"."MEMBER_PK" ON "KOREAIT"."SPRING_MEMBER" ("IDX") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index NOTICE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "KOREAIT"."NOTICE_PK" ON "KOREAIT"."SPRING_NOTICE" ("IDX") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index SPRING_REVIEW_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "KOREAIT"."SPRING_REVIEW_PK" ON "KOREAIT"."SPRING_REVIEW" ("IDX") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index SPRING_STATUS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "KOREAIT"."SPRING_STATUS_PK" ON "KOREAIT"."SPRING_STATUS" ("IDX") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  Constraints for Table SPRING_ACC
--------------------------------------------------------

  ALTER TABLE "KOREAIT"."SPRING_ACC" ADD CONSTRAINT "SPRING_ACC_PK" PRIMARY KEY ("IDX")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "KOREAIT"."SPRING_ACC" MODIFY ("IDX" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table SPRING_BOTTOM
--------------------------------------------------------

  ALTER TABLE "KOREAIT"."SPRING_BOTTOM" ADD CONSTRAINT "SPRING_BOTTOM_PK" PRIMARY KEY ("IDX")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "KOREAIT"."SPRING_BOTTOM" MODIFY ("IDX" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table SPRING_MEMBER
--------------------------------------------------------

  ALTER TABLE "KOREAIT"."SPRING_MEMBER" ADD CONSTRAINT "MEMBER_PK" PRIMARY KEY ("IDX")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "KOREAIT"."SPRING_MEMBER" MODIFY ("GENDER" NOT NULL ENABLE);
  ALTER TABLE "KOREAIT"."SPRING_MEMBER" MODIFY ("PHONE" NOT NULL ENABLE);
  ALTER TABLE "KOREAIT"."SPRING_MEMBER" MODIFY ("BIRTH" NOT NULL ENABLE);
  ALTER TABLE "KOREAIT"."SPRING_MEMBER" MODIFY ("PW" NOT NULL ENABLE);
  ALTER TABLE "KOREAIT"."SPRING_MEMBER" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "KOREAIT"."SPRING_MEMBER" MODIFY ("NAME" NOT NULL ENABLE);
  ALTER TABLE "KOREAIT"."SPRING_MEMBER" MODIFY ("IDX" NOT NULL ENABLE);
  ALTER TABLE "KOREAIT"."SPRING_MEMBER" MODIFY ("EMAIL" NOT NULL ENABLE);
  ALTER TABLE "KOREAIT"."SPRING_MEMBER" MODIFY ("ADDR" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table SPRING_NOTICE
--------------------------------------------------------

  ALTER TABLE "KOREAIT"."SPRING_NOTICE" ADD CONSTRAINT "NOTICE_PK" PRIMARY KEY ("IDX")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "KOREAIT"."SPRING_NOTICE" MODIFY ("IDX" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table SPRING_REVIEW
--------------------------------------------------------

  ALTER TABLE "KOREAIT"."SPRING_REVIEW" ADD CONSTRAINT "SPRING_REVIEW_PK" PRIMARY KEY ("IDX")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "KOREAIT"."SPRING_REVIEW" MODIFY ("CONTENT" NOT NULL ENABLE);
  ALTER TABLE "KOREAIT"."SPRING_REVIEW" MODIFY ("IDX" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table SPRING_STATUS
--------------------------------------------------------

  ALTER TABLE "KOREAIT"."SPRING_STATUS" ADD CONSTRAINT "SPRING_STATUS_PK" PRIMARY KEY ("IDX")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "KOREAIT"."SPRING_STATUS" MODIFY ("IDX" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table SPRING_TOP
--------------------------------------------------------

  ALTER TABLE "KOREAIT"."SPRING_TOP" MODIFY ("IDX" NOT NULL ENABLE);
