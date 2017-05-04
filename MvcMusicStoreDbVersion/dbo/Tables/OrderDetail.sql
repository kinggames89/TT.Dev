CREATE TABLE [dbo].[OrderDetail] (
    [OrderDetailId] INT             IDENTITY (1, 1) NOT NULL,
    [OrderId]       INT             NOT NULL,
    [AlbumId]       INT             NOT NULL,
    [Quantity]      INT             NOT NULL,
    [UnitPrice]     NUMERIC (10, 2) NOT NULL,
    CONSTRAINT [PK__InvoiceL__0D760AD91DE57479] PRIMARY KEY CLUSTERED ([OrderDetailId] ASC),
    CONSTRAINT [FK__InvoiceLi__Invoi__2F10007B] FOREIGN KEY ([OrderId]) REFERENCES [dbo].[Order] ([OrderId]),
    CONSTRAINT [FK_InvoiceLine_Album] FOREIGN KEY ([AlbumId]) REFERENCES [dbo].[Album] ([AlbumId])
);


GO
CREATE NONCLUSTERED INDEX [IFK_Invoice_InvoiceLine]
    ON [dbo].[OrderDetail]([OrderId] ASC);


GO
CREATE NONCLUSTERED INDEX [IPK_InvoiceLine]
    ON [dbo].[OrderDetail]([OrderDetailId] ASC);

