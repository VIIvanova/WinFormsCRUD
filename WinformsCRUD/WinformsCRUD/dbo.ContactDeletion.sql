CREATE PROCEDURE [dbo].[ContactDeletion]
@ContactId int
AS
DELETE tbl_Contact
WHERE ContactId = @ContactId