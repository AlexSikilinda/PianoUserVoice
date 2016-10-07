CREATE PROCEDURE [dbo].[GetDetails] @songId INT,
@currentUserId NVARCHAR(128)
AS
BEGIN
	SELECT
		s.[Id]
		,s.[Title]
		,[Description]
		,[UserName] AS Author
		,s.CreatedAt
		,(SELECT
				COUNT(1)
			FROM [dbo].[SongVotes]
			WHERE [SongId] = s.[Id])
		AS [Votes]
		,ss.Title AS [Status]
		,(SELECT
				COUNT(1)
			FROM [dbo].[Comments]
			WHERE [SongId] = s.[Id])
		AS [CommentsCount]
		,CASE
			WHEN s.[Id] IN (SELECT
						SongId
					FROM SongVotes sv
					WHERE sv.UserId = @currentUserId) THEN 0
			ELSE 1
		END AS CanVote
	FROM [dbo].[Songs] AS s
	INNER JOIN [dbo].[SongStatuses] AS ss
		ON s.StatusId = ss.Id
	INNER JOIN [dbo].[AspNetUsers] AS anu
		ON s.UserId = anu.Id
	WHERE s.Id = @songId;

	SELECT
		c.Id
		,Text
		,CreatedAt
		,anu.UserName
	FROM Comments c
	JOIN AspNetUsers anu
		ON c.UserId = anu.Id
	WHERE c.SongId = @songId
	ORDER BY c.CreatedAt;
END