CREATE TABLE [dbo].[Product] (
    [IDProduct]       INT            NOT NULL,
    [ProductName]     NVARCHAR (MAX) NULL,
    [Discription]     NVARCHAR (MAX) NULL,
    [FullDiscription] NVARCHAR (MAX) NULL,
    [IDPhoto]         INT            NOT NULL,
    PRIMARY KEY CLUSTERED ([IDProduct] ASC), 
    CONSTRAINT [FK_Photo] FOREIGN KEY (IDPhoto) REFERENCES Photo(IDPhoto)
);

