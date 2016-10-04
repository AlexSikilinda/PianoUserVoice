CREATE FUNCTION [dbo].[GetSongVotes]
(
	@songId int
)
RETURNS INT
AS
BEGIN
	declare @votes int
	select @votes = count(1) from SongVotes where SongId = @songId
	RETURN @votes
END
