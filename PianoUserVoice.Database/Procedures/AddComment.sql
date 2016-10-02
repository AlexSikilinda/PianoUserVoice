CREATE PROCEDURE [dbo].[AddComment] @text NVARCHAR(500),
@songId INT,
@currentUserId NVARCHAR(128)
AS
BEGIN
	INSERT INTO Comments (Text, CreatedAt, UserId, SongId)
	VALUES (@text, GETUTCDATE(), @currentUserId, @songId);
END