CREATE TABLE [dbo].[Comments]
(
	[Id] int not null primary key identity(1,1),
	[Text] nvarchar(500) not null,
	[CreatedAt] datetime not null default(getdate()),
	[UserId] nvarchar (128) NOT NULL,
	[SongId] INT NOT NULL,
	constraint FK_Comments_To_Users foreign key ([UserId]) references [AspNetUsers] ([Id]),
	constraint FK_Comments_To_Songs foreign key ([SongId]) references [Songs] ([Id])
);
