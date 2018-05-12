CREATE PROCEDURE [dbo].[ContactAddOrEdit]
	@mode nvarchar(10),
	@ContactId int,
	@Name nvarchar(50),
	@PhoneNumber nvarchar(50),
	@Address nvarchar(250)

AS
	IF @mode='Add'
	BEGIN
	INSERT INTO tbl_Contact(
	Name,
	PhoneNumber,
	Address
	)
	VALUES
	(
	@Name,
	@PhoneNumber,
	@Address
	)
	END
	ELSE IF @mode='Edit'
	BEGIN
	UPDATE tbl_Contact
	SET
	Name = @Name,
	PhoneNumber = @PhoneNumber,
	Address = @Address
	WHERE ContactId = @ContactId
	END