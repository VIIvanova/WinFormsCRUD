CREATE TABLE [dbo].[tbl_Contact] (
    [ContactId]   INT            IDENTITY (1, 1) NOT NULL,
    [Name]        NVARCHAR (50)  NULL,
    [PhoneNumber] NVARCHAR (50)  NULL,
    [Address]     NVARCHAR (250) NULL,
    PRIMARY KEY CLUSTERED ([ContactId] ASC)
);

