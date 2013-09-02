CREATE TABLE [dbo].[ProductCategory] (
    [IDProduct]  INT NOT NULL,
    [IDCategory] INT NOT NULL, 
    CONSTRAINT [FK_ProductCategory] FOREIGN KEY (IDProduct) REFERENCES Product(IDProduct), 
    CONSTRAINT [FK_Category] FOREIGN KEY (IDCategory) REFERENCES Category(IDCategory)
);

