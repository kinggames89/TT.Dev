CREATE TABLE [dbo].[Order] (
    [OrderId]    INT             IDENTITY (1, 1) NOT NULL,
    [OrderDate]  DATETIME        NOT NULL,
    [Username]   NVARCHAR (256)  NULL,
    [FirstName]  NVARCHAR (160)  NULL,
    [LastName]   NVARCHAR (160)  NULL,
    [Address]    NVARCHAR (70)   NULL,
    [City]       NVARCHAR (40)   NULL,
    [State]      NVARCHAR (40)   NULL,
    [PostalCode] NVARCHAR (10)   NULL,
    [Country]    NVARCHAR (40)   NULL,
    [Phone]      NVARCHAR (24)   NULL,
    [Email]      NVARCHAR (160)  NULL,
    [Total]      NUMERIC (10, 2) NOT NULL,
    CONSTRAINT [PK__Invoice__D796AAB51A14E395] PRIMARY KEY CLUSTERED ([OrderId] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IPK_Invoice]
    ON [dbo].[Order]([OrderId] ASC);

