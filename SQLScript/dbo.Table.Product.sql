CREATE TABLE [dbo].Product
(
	[IDProduct] INT NOT NULL PRIMARY KEY, 
    [ProductName] NVARCHAR(MAX) NULL, 
    [Discription] NVARCHAR(MAX) NULL, 
    [FullDiscription] NVARCHAR(MAX) NULL, 
    [IDPhoto] INT NOT NULL
)
