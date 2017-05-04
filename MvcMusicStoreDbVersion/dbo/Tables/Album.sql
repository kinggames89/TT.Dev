CREATE TABLE [dbo].[Album] (
    [AlbumId]     INT             IDENTITY (1, 1) NOT NULL,
    [GenreId]     INT             NOT NULL,
    [ArtistId]    INT             NOT NULL,
    [Title]       NVARCHAR (160)  NOT NULL,
    [Price]       NUMERIC (10, 2) NOT NULL,
    [AlbumArtUrl] NVARCHAR (1024) CONSTRAINT [DF_Album_AlbumArtUrl] DEFAULT (N'/Content/Images/placeholder.gif') NULL,
    CONSTRAINT [PK__Album__97B4BE370AD2A005] PRIMARY KEY CLUSTERED ([AlbumId] ASC),
    CONSTRAINT [FK__Album__ArtistId__276EDEB3] FOREIGN KEY ([ArtistId]) REFERENCES [dbo].[Artist] ([ArtistId]),
    CONSTRAINT [FK_Album_Genre] FOREIGN KEY ([GenreId]) REFERENCES [dbo].[Genre] ([GenreId])
);


GO
CREATE NONCLUSTERED INDEX [IFK_Artist_Album]
    ON [dbo].[Album]([ArtistId] ASC);


GO
CREATE NONCLUSTERED INDEX [IPK_ProductItem]
    ON [dbo].[Album]([AlbumId] ASC);

