CREATE TABLE [dbo].[SongVotes]
(
	[SongId] int not null,
	[UserId] nvarchar(128) not null,
	constraint PK_SongVotes primary key ([SongId], [UserId]),
	constraint FK_SongVotes_To_Users foreign key ([UserId]) references [AspNetUsers] ([Id]) on delete cascade,
	constraint FK_SongVotes_To_Songs foreign key ([SongId]) references [Songs] ([Id]) on delete cascade,
	
)
