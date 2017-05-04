CREATE TABLE [dbo].[ActionLog] (
    [Controller]  NVARCHAR (500) NOT NULL,
    [Action]      NVARCHAR (500) NOT NULL,
    [IP]          NVARCHAR (50)  NULL,
    [Datetime]    DATETIME       NOT NULL,
    [ActionLogId] INT            IDENTITY (1, 1) NOT NULL,
    PRIMARY KEY CLUSTERED ([ActionLogId] ASC)
);

