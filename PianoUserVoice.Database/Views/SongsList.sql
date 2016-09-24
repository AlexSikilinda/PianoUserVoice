create view SongsList
as
select top 100
	s.[Title],
	[Description],
	[UserName] as Author,
	s.CreatedAt,
	(select count(1) from [dbo].[SongVotes] where [SongId] = s.[Id]) as [Votes],
	ss.Title as [Status],
	(select count(1) from [dbo].[Comments] where [SongId] = s.[Id]) as [CommentsCount]
from 
	[dbo].[Songs] as s
	inner join [dbo].[SongStatuses] as ss on s.StatusId = ss.Id
	inner join [dbo].[AspNetUsers] as anu on s.UserId = anu.Id
order by
	[Votes] desc


	