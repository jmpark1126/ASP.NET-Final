use Master;
create table Plant (
pID varchar(10) primary key,
pName varchar(20) not null,
category varchar(10),
country varchar(20),
price int
)

insert Plant values ('001', '포인세티아', '식물', '아메리카', 5000)
insert Plant values ('002', '아라우카리아', '식물', '호주', 10000)
insert Plant values ('003', '아이비', '식물', '유럽', 3000)
insert Plant values ('004', '관음죽', '식물', '아시아', 9000)
insert Plant values ('005', '산세베리아', '식물', '아프리카', 6000)
insert Plant values ('006', '안스리움', '식물', '아메리카', 8000)
insert Plant values ('007', '행운목', '식물', '아프리카', 3000)
insert Plant values ('008', '테이블야자', '식물', '아메리카', 7000)
insert Plant values ('009', '대나무야자', '식물', '아메리카', 10000)
insert Plant values ('010', '피닉스야자', '식물', '아시아', 13000)
insert Plant values ('011', '패랭이', '꽃', '아시아', 3000)
insert Plant values ('012', '철쭉', '꽃', '아시아', 8000)
insert Plant values ('013', '카네이션', '꽃', '유럽', 5000)
insert Plant values ('014', '수국', '꽃', '아시아', 11000)
insert Plant values ('015', '제라늄', '꽃', '아프리카', 4000)

select * from Plant;