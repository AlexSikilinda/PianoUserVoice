CREATE TABLE [dbo].[Songs]
(
	[Id] INT NOT NULL PRIMARY KEY identity(1,1),
	[Title] nvarchar(256) not null,
	[Description] nvarchar(1024) not null,
	[CreatedAt] datetime not null default(getdate()),
	--[Votes] as dbo.[GetSongVotes]([Id]),
	[UserId] NVARCHAR (128) NOT NULL,
	[StatusId] tinyint not null,
	constraint FK_Songs_To_Users foreign key ([UserId]) references [AspNetUsers] ([Id]),
	constraint FK_Songs_To_Statuses foreign key ([StatusId]) references [SongStatuses] ([Id]),
)
