create view SongsList
as
select top 100
	s.[Title],
	[Description],
	(select count(1) from [dbo].[SongVotes] where [SongId] = s.Id) as [Votes],
	ss.Title as [Status]
from 
	[dbo].[Songs] as s
	inner join [dbo].[SongStatuses] as ss on s.StatusId = ss.Id
order by
	[Votes] desc


	