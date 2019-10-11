create table user(
	userId binary(16) not null,
	userAtHandle varchar(255),
	userPhoneNumber char(10) not null,
	unique(userAtHandle),
	unique(userPhoneNumber),
	primary key(userId)
);


create table photoPost(
	photoPostId binary(16) not null,
	photoPostUserId varchar(32) not null,
	primary key(photoPostId)
);

create table like(
	likeUserId binary(16) not null,
	likePhotoPostId binary(16) not null,
	);
