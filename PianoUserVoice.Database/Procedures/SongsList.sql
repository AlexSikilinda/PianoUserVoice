create procedure SongsList
	@currentUserId nvarchar(128)
as
select top 100
	s.[Id],
	s.[Title],
	[Description],
	[UserName] as Author,
	s.CreatedAt,
	(select count(1) from [dbo].[SongVotes] where [SongId] = s.[Id]) as [Votes],
	ss.Title as [Status],
	(select count(1) from [dbo].[Comments] where [SongId] = s.[Id]) as [CommentsCount],
	cast(CASE
		WHEN s.[Id] in (select SongId from SongVotes sv where sv.UserId = @currentUserId) THEN 0
		ELSE 1
	END as bit) AS CanVote
from 
	[dbo].[Songs] as s
	inner join [dbo].[SongStatuses] as ss on s.StatusId = ss.Id
	inner join [dbo].[AspNetUsers] as anu on s.UserId = anu.Id
order by
	[Votes] desc