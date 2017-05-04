CREATE TABLE [dbo].[Cart] (
    [RecordId]    INT          IDENTITY (1, 1) NOT NULL,
    [CartId]      VARCHAR (50) NOT NULL,
    [AlbumId]     INT          NOT NULL,
    [Count]       INT          NOT NULL,
    [DateCreated] DATETIME     NOT NULL,
    CONSTRAINT [PK_Cart] PRIMARY KEY CLUSTERED ([RecordId] ASC),
    CONSTRAINT [FK_Cart_Album] FOREIGN KEY ([AlbumId]) REFERENCES [dbo].[Album] ([AlbumId])
);

