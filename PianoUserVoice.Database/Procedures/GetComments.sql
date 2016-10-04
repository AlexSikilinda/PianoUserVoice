CREATE PROCEDURE [dbo].[GetComments]
	@songId INT
AS
	SELECT c.Id, Text, CreatedAt, anu.UserName
	FROM Comments c
		JOIN AspNetUsers anu ON c.UserId = anu.Id;
RETURN 0
