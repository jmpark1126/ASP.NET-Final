use Master;
create Table People (
	UserID varchar(30) primary key,
	Password varchar(30) not null,
	Name varchar(30) not null,
	Phone varchar(30)
)

Insert into People Values ('admin', '1111', '관리자', '010-1111-1111');
Insert into People Values ('jmpark', '1111', '박지민', '010-1000-1000');
Insert into People Values ('mhlee', '1111', '이민형', '010-2222-2222');
Insert into People Values ('rjhaung', '1111', '황인준', '010-3333-3333');
Insert into People Values ('jmna', '1111', '나재민', '010-4444-4444');
Insert into People Values ('jnlee', '1111', '이제노', '010-5555-5555');
Insert into People Values ('hclee', '1111', '이해찬', '010-6666-6666');
Insert into People Values ('clzhong', '1111', '종천러', '010-7777-7777');
Insert into People Values ('jspark', '1111', '박지성', '010-8888-8888');

Select * from People;