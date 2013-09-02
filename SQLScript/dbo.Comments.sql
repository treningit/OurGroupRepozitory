CREATE TABLE [dbo].[Comments] (
    [IDProduct] INT            NOT NULL,
    [IDUser]    INT            NOT NULL,
    [Comments]  NVARCHAR (MAX) NULL, 
    CONSTRAINT [FK_Product] FOREIGN KEY (IDProduct) REFERENCES Product(IDProduct), 
    CONSTRAINT [FK_User] FOREIGN KEY (IDUser) REFERENCES [User](IDUser)
);

