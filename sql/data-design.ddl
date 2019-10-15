create table user(
	userId binary(16) not null,
	userAtHandle varchar(255),
	userPhoneNumber char(10) not null,
	unique(userAtHandle),
	unique(userPhoneNumber),
	unique(userId),
	index (userAtHandle),
	primary key(userId)
);


create table photoPost(
	photoPostId binary(16) not null,
	photoPostUserId varchar(32) not null,
	unique(photoPostId),
	primary key(photoPostId),
	foreign key(photoPostUserId) references user(userId)
);

create table "like"(
	likeUserId binary(16) not null,
	likePhotoPostId binary(16) not null,
	foreign key(likeUserId) references user(userId),
	foreign key(likePhotoPostId) references photoPost(photoPostId)
);
