--------------------------------------------------------
--  File created - Saturday-August-07-2021   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table THONGKE
--------------------------------------------------------

  CREATE TABLE "TT"."THONGKE" 
   (	"THOIGIAN" DATE, 
	"MATKT" CHAR(9 BYTE), 
	"MATTVT" CHAR(9 BYTE), 
	"TENTTVT" VARCHAR2(50 BYTE), 
	"TENTKT" VARCHAR2(50 BYTE), 
	"SL_TBMPT" NUMBER(*,0), 
	"SL_TBML" NUMBER(*,0), 
	"SL_TBNH" NUMBER(*,0), 
	"TL_GTBH" FLOAT(126)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table TKT
--------------------------------------------------------

  CREATE TABLE "TT"."TKT" 
   (	"MATKT" CHAR(9 BYTE), 
	"TENTKT" VARCHAR2(50 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table TTVT
--------------------------------------------------------

  CREATE TABLE "TT"."TTVT" 
   (	"MATTVT" CHAR(9 BYTE), 
	"TENTTVT" VARCHAR2(50 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
REM INSERTING into TT.THONGKE
SET DEFINE OFF;
Insert into TT.THONGKE (THOIGIAN,MATKT,MATTVT,TENTTVT,TENTKT,SL_TBMPT,SL_TBML,SL_TBNH,TL_GTBH) values (to_date('01-MAR-21','DD-MON-RR'),'BLU050100','BLU050000','Trung T�m Vi?n Th�ng B?c Li�u 1','T? K? thu?t B?c Li�u',122,3,45,34.43);
Insert into TT.THONGKE (THOIGIAN,MATKT,MATTVT,TENTTVT,TENTKT,SL_TBMPT,SL_TBML,SL_TBNH,TL_GTBH) values (to_date('01-MAR-21','DD-MON-RR'),'BLU050500','BLU050000','Trung T�m Vi?n Th�ng B?c Li�u 1','T? K? thu?t Tr� Kha',82,10,36,31.71);
Insert into TT.THONGKE (THOIGIAN,MATKT,MATTVT,TENTTVT,TENTKT,SL_TBMPT,SL_TBML,SL_TBNH,TL_GTBH) values (to_date('01-MAR-21','DD-MON-RR'),'BLU050300','BLU050000','Trung T�m Vi?n Th�ng B?c Li�u 1','T? K? thu?t Hi?p Th�nh',58,0,20,34.48);
Insert into TT.THONGKE (THOIGIAN,MATKT,MATTVT,TENTTVT,TENTKT,SL_TBMPT,SL_TBML,SL_TBNH,TL_GTBH) values (to_date('01-MAR-21','DD-MON-RR'),'BLU050200','BLU050000','Trung T�m Vi?n Th�ng B?c Li�u 1','T? K? thu?t C�i D�y',56,6,8,3.57);
Insert into TT.THONGKE (THOIGIAN,MATKT,MATTVT,TENTTVT,TENTKT,SL_TBMPT,SL_TBML,SL_TBNH,TL_GTBH) values (to_date('01-MAR-21','DD-MON-RR'),'BLU050400','BLU050000','Trung T�m Vi?n Th�ng B?c Li�u 1','T? K? thu?t H?ng Th�nh',239,2,5,1.26);
Insert into TT.THONGKE (THOIGIAN,MATKT,MATTVT,TENTTVT,TENTKT,SL_TBMPT,SL_TBML,SL_TBNH,TL_GTBH) values (to_date('01-MAR-21','DD-MON-RR'),'BLU050600','BLU050000','Trung T�m Vi?n Th�ng B?c Li�u 1','T? K? thu?t ?� Th? M?i',50,0,15,30);
Insert into TT.THONGKE (THOIGIAN,MATKT,MATTVT,TENTTVT,TENTKT,SL_TBMPT,SL_TBML,SL_TBNH,TL_GTBH) values (to_date('01-MAR-21','DD-MON-RR'),'BLU060200','BLU060000','Trung T�m Vi?n Th�ng B?c Li�u 2','T? K? thu?t H�a B�nh',61,0,15,24.59);
Insert into TT.THONGKE (THOIGIAN,MATKT,MATTVT,TENTTVT,TENTKT,SL_TBMPT,SL_TBML,SL_TBNH,TL_GTBH) values (to_date('01-MAR-21','DD-MON-RR'),'BLU060400','BLU060000','Trung T�m Vi?n Th�ng B?c Li�u 2','T? K? thu?t C?u S? 2',73,1,10,12.33);
Insert into TT.THONGKE (THOIGIAN,MATKT,MATTVT,TENTTVT,TENTKT,SL_TBMPT,SL_TBML,SL_TBNH,TL_GTBH) values (to_date('01-MAR-21','DD-MON-RR'),'BLU060300','BLU060000','Trung T�m Vi?n Th�ng B?c Li�u 2','T? K? thu?t C�i C�ng',149,0,22,14.77);
Insert into TT.THONGKE (THOIGIAN,MATKT,MATTVT,TENTTVT,TENTKT,SL_TBMPT,SL_TBML,SL_TBNH,TL_GTBH) values (to_date('01-MAR-21','DD-MON-RR'),'BLU070200','BLU070000','Trung T�m Vi?n Th�ng B?c Li�u 3','T? K? thu?t Gi� Rai',93,6,14,8.6);
Insert into TT.THONGKE (THOIGIAN,MATKT,MATTVT,TENTTVT,TENTKT,SL_TBMPT,SL_TBML,SL_TBNH,TL_GTBH) values (to_date('01-MAR-21','DD-MON-RR'),'BLU070400','BLU070000','Trung T�m Vi?n Th�ng B?c Li�u 3','T? K? thu?t H? Ph�ng',163,2,11,5.52);
Insert into TT.THONGKE (THOIGIAN,MATKT,MATTVT,TENTTVT,TENTKT,SL_TBMPT,SL_TBML,SL_TBNH,TL_GTBH) values (to_date('01-MAR-21','DD-MON-RR'),'BLU070500','BLU070000','Trung T�m Vi?n Th�ng B?c Li�u 3','T? K? thu?t L�ng Tr�m',71,3,20,23.94);
Insert into TT.THONGKE (THOIGIAN,MATKT,MATTVT,TENTTVT,TENTKT,SL_TBMPT,SL_TBML,SL_TBNH,TL_GTBH) values (to_date('01-MAR-21','DD-MON-RR'),'BLU070300','BLU070000','Trung T�m Vi?n Th�ng B?c Li�u 3','T? K? thu?t L�ng Tr�n',89,2,13,12.36);
Insert into TT.THONGKE (THOIGIAN,MATKT,MATTVT,TENTTVT,TENTKT,SL_TBMPT,SL_TBML,SL_TBNH,TL_GTBH) values (to_date('01-MAR-21','DD-MON-RR'),'BLU070700','BLU070000','Trung T�m Vi?n Th�ng B?c Li�u 3','T? K? thu?t Kinh T?',97,0,19,19.59);
Insert into TT.THONGKE (THOIGIAN,MATKT,MATTVT,TENTTVT,TENTKT,SL_TBMPT,SL_TBML,SL_TBNH,TL_GTBH) values (to_date('01-MAR-21','DD-MON-RR'),'BLU070600','BLU070000','Trung T�m Vi?n Th�ng B?c Li�u 3','T? K? thu?t G�nh H�o',68,1,10,13.24);
Insert into TT.THONGKE (THOIGIAN,MATKT,MATTVT,TENTTVT,TENTKT,SL_TBMPT,SL_TBML,SL_TBNH,TL_GTBH) values (to_date('01-MAR-21','DD-MON-RR'),'BLU080200','BLU080000','Trung T�m Vi?n Th�ng B?c Li�u 4','T? K? thu?t Ph??c Long',187,0,24,12.83);
Insert into TT.THONGKE (THOIGIAN,MATKT,MATTVT,TENTTVT,TENTKT,SL_TBMPT,SL_TBML,SL_TBNH,TL_GTBH) values (to_date('01-MAR-21','DD-MON-RR'),'BLU080300','BLU080000','Trung T�m Vi?n Th�ng B?c Li�u 4','T? K? thu?t Ngan D?a',128,0,22,17.19);
Insert into TT.THONGKE (THOIGIAN,MATKT,MATTVT,TENTTVT,TENTKT,SL_TBMPT,SL_TBML,SL_TBNH,TL_GTBH) values (to_date('01-MAR-21','DD-MON-RR'),'BLU080400','BLU080000','Trung T�m Vi?n Th�ng B?c Li�u 4','T? K? thu?t Ph� Sinh',111,1,12,9.91);
Insert into TT.THONGKE (THOIGIAN,MATKT,MATTVT,TENTTVT,TENTKT,SL_TBMPT,SL_TBML,SL_TBNH,TL_GTBH) values (to_date('01-APR-21','DD-MON-RR'),'BLU050100','BLU050000','Trung T�m Vi?n Th�ng B?c Li�u 1','T? K? thu?t B?c Li�u',119,3,106,86.55);
Insert into TT.THONGKE (THOIGIAN,MATKT,MATTVT,TENTTVT,TENTKT,SL_TBMPT,SL_TBML,SL_TBNH,TL_GTBH) values (to_date('01-APR-21','DD-MON-RR'),'BLU050500','BLU050000','Trung T�m Vi?n Th�ng B?c Li�u 1','T? K? thu?t Tr� Kha',79,0,67,84.81);
Insert into TT.THONGKE (THOIGIAN,MATKT,MATTVT,TENTTVT,TENTKT,SL_TBMPT,SL_TBML,SL_TBNH,TL_GTBH) values (to_date('01-APR-21','DD-MON-RR'),'BLU050300','BLU050000','Trung T�m Vi?n Th�ng B?c Li�u 1','T? K? thu?t Hi?p Th�nh',72,2,50,66.67);
Insert into TT.THONGKE (THOIGIAN,MATKT,MATTVT,TENTTVT,TENTKT,SL_TBMPT,SL_TBML,SL_TBNH,TL_GTBH) values (to_date('01-APR-21','DD-MON-RR'),'BLU050200','BLU050000','Trung T�m Vi?n Th�ng B?c Li�u 1','T? K? thu?t C�i D�y',50,3,48,90);
Insert into TT.THONGKE (THOIGIAN,MATKT,MATTVT,TENTTVT,TENTKT,SL_TBMPT,SL_TBML,SL_TBNH,TL_GTBH) values (to_date('01-APR-21','DD-MON-RR'),'BLU050400','BLU050000','Trung T�m Vi?n Th�ng B?c Li�u 1','T? K? thu?t H?ng Th�nh',100,0,8,8);
Insert into TT.THONGKE (THOIGIAN,MATKT,MATTVT,TENTTVT,TENTKT,SL_TBMPT,SL_TBML,SL_TBNH,TL_GTBH) values (to_date('01-APR-21','DD-MON-RR'),'BLU050600','BLU050000','Trung T�m Vi?n Th�ng B?c Li�u 1','T? K? thu?t ?� Th? M?i',50,2,45,86);
Insert into TT.THONGKE (THOIGIAN,MATKT,MATTVT,TENTTVT,TENTKT,SL_TBMPT,SL_TBML,SL_TBNH,TL_GTBH) values (to_date('01-APR-21','DD-MON-RR'),'BLU060200','BLU060000','Trung T�m Vi?n Th�ng B?c Li�u 2','T? K? thu?t H�a B�nh',64,2,31,45.31);
Insert into TT.THONGKE (THOIGIAN,MATKT,MATTVT,TENTTVT,TENTKT,SL_TBMPT,SL_TBML,SL_TBNH,TL_GTBH) values (to_date('01-APR-21','DD-MON-RR'),'BLU060400','BLU060000','Trung T�m Vi?n Th�ng B?c Li�u 2','T? K? thu?t C?u S? 2',64,0,8,12.5);
Insert into TT.THONGKE (THOIGIAN,MATKT,MATTVT,TENTTVT,TENTKT,SL_TBMPT,SL_TBML,SL_TBNH,TL_GTBH) values (to_date('01-APR-21','DD-MON-RR'),'BLU060300','BLU060000','Trung T�m Vi?n Th�ng B?c Li�u 2','T? K? thu?t C�i C�ng',67,0,19,28.36);
Insert into TT.THONGKE (THOIGIAN,MATKT,MATTVT,TENTTVT,TENTKT,SL_TBMPT,SL_TBML,SL_TBNH,TL_GTBH) values (to_date('01-APR-21','DD-MON-RR'),'BLU070200','BLU070000','Trung T�m Vi?n Th�ng B?c Li�u 3','T? K? thu?t Gi� Rai',108,1,43,38.89);
Insert into TT.THONGKE (THOIGIAN,MATKT,MATTVT,TENTTVT,TENTKT,SL_TBMPT,SL_TBML,SL_TBNH,TL_GTBH) values (to_date('01-APR-21','DD-MON-RR'),'BLU070400','BLU070000','Trung T�m Vi?n Th�ng B?c Li�u 3','T? K? thu?t H? Ph�ng',101,1,14,12.87);
Insert into TT.THONGKE (THOIGIAN,MATKT,MATTVT,TENTTVT,TENTKT,SL_TBMPT,SL_TBML,SL_TBNH,TL_GTBH) values (to_date('01-APR-21','DD-MON-RR'),'BLU070500','BLU070000','Trung T�m Vi?n Th�ng B?c Li�u 3','T? K? thu?t L�ng Tr�m',81,1,33,39.51);
Insert into TT.THONGKE (THOIGIAN,MATKT,MATTVT,TENTTVT,TENTKT,SL_TBMPT,SL_TBML,SL_TBNH,TL_GTBH) values (to_date('01-APR-21','DD-MON-RR'),'BLU070300','BLU070000','Trung T�m Vi?n Th�ng B?c Li�u 3','T? K? thu?t L�ng Tr�n',76,1,34,43.42);
Insert into TT.THONGKE (THOIGIAN,MATKT,MATTVT,TENTTVT,TENTKT,SL_TBMPT,SL_TBML,SL_TBNH,TL_GTBH) values (to_date('01-APR-21','DD-MON-RR'),'BLU070700','BLU070000','Trung T�m Vi?n Th�ng B?c Li�u 3','T? K? thu?t Kinh T?',96,0,53,55.21);
Insert into TT.THONGKE (THOIGIAN,MATKT,MATTVT,TENTTVT,TENTKT,SL_TBMPT,SL_TBML,SL_TBNH,TL_GTBH) values (to_date('01-APR-21','DD-MON-RR'),'BLU070600','BLU070000','Trung T�m Vi?n Th�ng B?c Li�u 3','T? K? thu?t G�nh H�o',92,0,21,22.83);
Insert into TT.THONGKE (THOIGIAN,MATKT,MATTVT,TENTTVT,TENTKT,SL_TBMPT,SL_TBML,SL_TBNH,TL_GTBH) values (to_date('01-APR-21','DD-MON-RR'),'BLU080200','BLU080000','Trung T�m Vi?n Th�ng B?c Li�u 4','T? K? thu?t Ph??c Long',105,3,33,28.57);
Insert into TT.THONGKE (THOIGIAN,MATKT,MATTVT,TENTTVT,TENTKT,SL_TBMPT,SL_TBML,SL_TBNH,TL_GTBH) values (to_date('01-APR-21','DD-MON-RR'),'BLU080300','BLU080000','Trung T�m Vi?n Th�ng B?c Li�u 4','T? K? thu?t Ngan D?a',84,2,59,67.86);
Insert into TT.THONGKE (THOIGIAN,MATKT,MATTVT,TENTTVT,TENTKT,SL_TBMPT,SL_TBML,SL_TBNH,TL_GTBH) values (to_date('01-APR-21','DD-MON-RR'),'BLU080400','BLU080000','Trung T�m Vi?n Th�ng B?c Li�u 4','T? K? thu?t Ph� Sinh',53,0,26,49.06);
Insert into TT.THONGKE (THOIGIAN,MATKT,MATTVT,TENTTVT,TENTKT,SL_TBMPT,SL_TBML,SL_TBNH,TL_GTBH) values (to_date('01-MAY-21','DD-MON-RR'),'BLU050100','BLU050000','Trung T�m Vi?n Th�ng B?c Li�u 1','T? K? thu?t B?c Li�u',127,10,59,38.58);
Insert into TT.THONGKE (THOIGIAN,MATKT,MATTVT,TENTTVT,TENTKT,SL_TBMPT,SL_TBML,SL_TBNH,TL_GTBH) values (to_date('01-MAY-21','DD-MON-RR'),'BLU050500','BLU050000','Trung T�m Vi?n Th�ng B?c Li�u 1','T? K? thu?t Tr� Kha',118,1,72,60.17);
Insert into TT.THONGKE (THOIGIAN,MATKT,MATTVT,TENTTVT,TENTKT,SL_TBMPT,SL_TBML,SL_TBNH,TL_GTBH) values (to_date('01-MAY-21','DD-MON-RR'),'BLU050300','BLU050000','Trung T�m Vi?n Th�ng B?c Li�u 1','T? K? thu?t Hi?p Th�nh',441,2,52,11.34);
Insert into TT.THONGKE (THOIGIAN,MATKT,MATTVT,TENTTVT,TENTKT,SL_TBMPT,SL_TBML,SL_TBNH,TL_GTBH) values (to_date('01-MAY-21','DD-MON-RR'),'BLU050200','BLU050000','Trung T�m Vi?n Th�ng B?c Li�u 1','T? K? thu?t C�i D�y',87,5,19,16.09);
Insert into TT.THONGKE (THOIGIAN,MATKT,MATTVT,TENTTVT,TENTKT,SL_TBMPT,SL_TBML,SL_TBNH,TL_GTBH) values (to_date('01-MAY-21','DD-MON-RR'),'BLU050400','BLU050000','Trung T�m Vi?n Th�ng B?c Li�u 1','T? K? thu?t H?ng Th�nh',131,0,15,11.45);
Insert into TT.THONGKE (THOIGIAN,MATKT,MATTVT,TENTTVT,TENTKT,SL_TBMPT,SL_TBML,SL_TBNH,TL_GTBH) values (to_date('01-MAY-21','DD-MON-RR'),'BLU050600','BLU050000','Trung T�m Vi?n Th�ng B?c Li�u 1','T? K? thu?t ?� Th? M?i',45,3,42,86.67);
Insert into TT.THONGKE (THOIGIAN,MATKT,MATTVT,TENTTVT,TENTKT,SL_TBMPT,SL_TBML,SL_TBNH,TL_GTBH) values (to_date('01-MAY-21','DD-MON-RR'),'BLU060200','BLU060000','Trung T�m Vi?n Th�ng B?c Li�u 2','T? K? thu?t H�a B�nh',91,3,18,16.48);
Insert into TT.THONGKE (THOIGIAN,MATKT,MATTVT,TENTTVT,TENTKT,SL_TBMPT,SL_TBML,SL_TBNH,TL_GTBH) values (to_date('01-MAY-21','DD-MON-RR'),'BLU060400','BLU060000','Trung T�m Vi?n Th�ng B?c Li�u 2','T? K? thu?t C?u S? 2',37,1,6,13.51);
Insert into TT.THONGKE (THOIGIAN,MATKT,MATTVT,TENTTVT,TENTKT,SL_TBMPT,SL_TBML,SL_TBNH,TL_GTBH) values (to_date('01-MAY-21','DD-MON-RR'),'BLU060300','BLU060000','Trung T�m Vi?n Th�ng B?c Li�u 2','T? K? thu?t C�i C�ng',71,3,12,12.68);
Insert into TT.THONGKE (THOIGIAN,MATKT,MATTVT,TENTTVT,TENTKT,SL_TBMPT,SL_TBML,SL_TBNH,TL_GTBH) values (to_date('01-MAY-21','DD-MON-RR'),'BLU070200','BLU070000','Trung T�m Vi?n Th�ng B?c Li�u 3','T? K? thu?t Gi� Rai',105,4,37,31.43);
Insert into TT.THONGKE (THOIGIAN,MATKT,MATTVT,TENTTVT,TENTKT,SL_TBMPT,SL_TBML,SL_TBNH,TL_GTBH) values (to_date('01-MAY-21','DD-MON-RR'),'BLU070400','BLU070000','Trung T�m Vi?n Th�ng B?c Li�u 3','T? K? thu?t H? Ph�ng',135,1,37,26.67);
Insert into TT.THONGKE (THOIGIAN,MATKT,MATTVT,TENTTVT,TENTKT,SL_TBMPT,SL_TBML,SL_TBNH,TL_GTBH) values (to_date('01-MAY-21','DD-MON-RR'),'BLU070500','BLU070000','Trung T�m Vi?n Th�ng B?c Li�u 3','T? K? thu?t L�ng Tr�m',212,2,36,16.04);
Insert into TT.THONGKE (THOIGIAN,MATKT,MATTVT,TENTTVT,TENTKT,SL_TBMPT,SL_TBML,SL_TBNH,TL_GTBH) values (to_date('01-MAY-21','DD-MON-RR'),'BLU070300','BLU070000','Trung T�m Vi?n Th�ng B?c Li�u 3','T? K? thu?t L�ng Tr�n',85,1,29,32.94);
Insert into TT.THONGKE (THOIGIAN,MATKT,MATTVT,TENTTVT,TENTKT,SL_TBMPT,SL_TBML,SL_TBNH,TL_GTBH) values (to_date('01-MAY-21','DD-MON-RR'),'BLU070700','BLU070000','Trung T�m Vi?n Th�ng B?c Li�u 3','T? K? thu?t Kinh T?',137,1,26,18.25);
Insert into TT.THONGKE (THOIGIAN,MATKT,MATTVT,TENTTVT,TENTKT,SL_TBMPT,SL_TBML,SL_TBNH,TL_GTBH) values (to_date('01-MAY-21','DD-MON-RR'),'BLU070600','BLU070000','Trung T�m Vi?n Th�ng B?c Li�u 3','T? K? thu?t G�nh H�o',67,0,22,32.84);
Insert into TT.THONGKE (THOIGIAN,MATKT,MATTVT,TENTTVT,TENTKT,SL_TBMPT,SL_TBML,SL_TBNH,TL_GTBH) values (to_date('01-MAY-21','DD-MON-RR'),'BLU080200','BLU080000','Trung T�m Vi?n Th�ng B?c Li�u 4','T? K? thu?t Ph??c Long',147,1,23,14.97);
Insert into TT.THONGKE (THOIGIAN,MATKT,MATTVT,TENTTVT,TENTKT,SL_TBMPT,SL_TBML,SL_TBNH,TL_GTBH) values (to_date('01-MAY-21','DD-MON-RR'),'BLU080300','BLU080000','Trung T�m Vi?n Th�ng B?c Li�u 4','T? K? thu?t Ngan D?a',144,2,26,16.67);
Insert into TT.THONGKE (THOIGIAN,MATKT,MATTVT,TENTTVT,TENTKT,SL_TBMPT,SL_TBML,SL_TBNH,TL_GTBH) values (to_date('01-MAY-21','DD-MON-RR'),'BLU080400','BLU080000','Trung T�m Vi?n Th�ng B?c Li�u 4','T? K? thu?t Ph� Sinh',119,0,29,24.37);
REM INSERTING into TT.TKT
SET DEFINE OFF;
Insert into TT.TKT (MATKT,TENTKT) values ('BLU050100','T? K? thu?t B?c Li�u');
Insert into TT.TKT (MATKT,TENTKT) values ('BLU050500','T? K? thu?t Tr� Kha');
Insert into TT.TKT (MATKT,TENTKT) values ('BLU050300','T? K? thu?t Hi?p Th�nh');
Insert into TT.TKT (MATKT,TENTKT) values ('BLU050200','T? K? thu?t C�i D�y');
Insert into TT.TKT (MATKT,TENTKT) values ('BLU050400','T? K? thu?t H?ng Th�nh');
Insert into TT.TKT (MATKT,TENTKT) values ('BLU050600','T? K? thu?t ?� Th? M?i');
Insert into TT.TKT (MATKT,TENTKT) values ('BLU060200','T? K? thu?t H�a B�nh');
Insert into TT.TKT (MATKT,TENTKT) values ('BLU060400','T? K? thu?t C?u S? 2');
Insert into TT.TKT (MATKT,TENTKT) values ('BLU060300','T? K? thu?t C�i C�ng');
Insert into TT.TKT (MATKT,TENTKT) values ('BLU070200','T? K? thu?t Gi� Rai');
Insert into TT.TKT (MATKT,TENTKT) values ('BLU070400','T? K? thu?t H? Ph�ng');
Insert into TT.TKT (MATKT,TENTKT) values ('BLU070500','T? K? thu?t L�ng Tr�m');
Insert into TT.TKT (MATKT,TENTKT) values ('BLU070300','T? K? thu?t L�ng Tr�n');
Insert into TT.TKT (MATKT,TENTKT) values ('BLU070700','T? K? thu?t Kinh T?');
Insert into TT.TKT (MATKT,TENTKT) values ('BLU070600','T? K? thu?t G�nh H�o');
Insert into TT.TKT (MATKT,TENTKT) values ('BLU080200','T? K? thu?t Ph??c Long');
Insert into TT.TKT (MATKT,TENTKT) values ('BLU080300','T? K? thu?t Ngan D?a');
Insert into TT.TKT (MATKT,TENTKT) values ('BLU080400','T? K? thu?t Ph� Sinh');
REM INSERTING into TT.TTVT
SET DEFINE OFF;
Insert into TT.TTVT (MATTVT,TENTTVT) values ('BLU050000','Trung T�m Vi?n Th�ng B?c Li�u 1');
Insert into TT.TTVT (MATTVT,TENTTVT) values ('BLU060000','Trung T�m Vi?n Th�ng B?c Li�u 2');
Insert into TT.TTVT (MATTVT,TENTTVT) values ('BLU070000','Trung T�m Vi?n Th�ng B?c Li�u 3');
Insert into TT.TTVT (MATTVT,TENTTVT) values ('BLU080000','Trung T�m Vi?n Th�ng B?c Li�u 4');
--------------------------------------------------------
--  DDL for Index PK_TTVT
--------------------------------------------------------

  CREATE UNIQUE INDEX "TT"."PK_TTVT" ON "TT"."TTVT" ("MATTVT") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_THONGKE
--------------------------------------------------------

  CREATE UNIQUE INDEX "TT"."PK_THONGKE" ON "TT"."THONGKE" ("THOIGIAN", "MATKT") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_TKT
--------------------------------------------------------

  CREATE UNIQUE INDEX "TT"."PK_TKT" ON "TT"."TKT" ("MATKT") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Procedure SPGETDATA
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "TT"."SPGETDATA" 
AS
v_mattvt char(9);
v_tenttvt varchar2(50);
Begin
SELECT MATTVT, TENTTVT into v_mattvt,v_tenttvt from TTVT;
End;

/
--------------------------------------------------------
--  DDL for Procedure SP_GETDATA
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "TT"."SP_GETDATA" 
AS
v_mattvt char(9);
v_tenttvt varchar2(50);
Begin
    select MATTVT, TENTTVT into v_mattvt, v_tenttvt from ttvt;
end;

/
--------------------------------------------------------
--  DDL for Procedure SP_SHOWTHONGKE
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "TT"."SP_SHOWTHONGKE" 
AS
  c1 SYS_REFCURSOR;  
BEGIN
  open c1 for
  SELECT * FROM THONGKE;
  DBMS_SQL.RETURN_RESULT(c1);
END;

/
--------------------------------------------------------
--  Constraints for Table TTVT
--------------------------------------------------------

  ALTER TABLE "TT"."TTVT" ADD CONSTRAINT "PK_TTVT" PRIMARY KEY ("MATTVT")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "TT"."TTVT" MODIFY ("TENTTVT" NOT NULL ENABLE);
  ALTER TABLE "TT"."TTVT" MODIFY ("MATTVT" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table TKT
--------------------------------------------------------

  ALTER TABLE "TT"."TKT" ADD CONSTRAINT "PK_TKT" PRIMARY KEY ("MATKT")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "TT"."TKT" MODIFY ("TENTKT" NOT NULL ENABLE);
  ALTER TABLE "TT"."TKT" MODIFY ("MATKT" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table THONGKE
--------------------------------------------------------

  ALTER TABLE "TT"."THONGKE" ADD CONSTRAINT "PK_THONGKE" PRIMARY KEY ("THOIGIAN", "MATKT")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "TT"."THONGKE" ADD CHECK (TL_GTBH >= 0) ENABLE;
  ALTER TABLE "TT"."THONGKE" ADD CHECK (SL_TBNH >= 0) ENABLE;
  ALTER TABLE "TT"."THONGKE" ADD CHECK (SL_TBML >= 0) ENABLE;
  ALTER TABLE "TT"."THONGKE" ADD CHECK (SL_TBMPT >= 0) ENABLE;
  ALTER TABLE "TT"."THONGKE" MODIFY ("TL_GTBH" NOT NULL ENABLE);
  ALTER TABLE "TT"."THONGKE" MODIFY ("SL_TBNH" NOT NULL ENABLE);
  ALTER TABLE "TT"."THONGKE" MODIFY ("SL_TBML" NOT NULL ENABLE);
  ALTER TABLE "TT"."THONGKE" MODIFY ("SL_TBMPT" NOT NULL ENABLE);
  ALTER TABLE "TT"."THONGKE" MODIFY ("TENTKT" NOT NULL ENABLE);
  ALTER TABLE "TT"."THONGKE" MODIFY ("TENTTVT" NOT NULL ENABLE);
  ALTER TABLE "TT"."THONGKE" MODIFY ("MATTVT" NOT NULL ENABLE);
  ALTER TABLE "TT"."THONGKE" MODIFY ("MATKT" NOT NULL ENABLE);
  ALTER TABLE "TT"."THONGKE" MODIFY ("THOIGIAN" NOT NULL ENABLE);
