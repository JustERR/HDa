CREATE TABLE [dbo].[Orders] (
  [ID] [int] IDENTITY,
  [Customer] [int] NOT NULL,
  [Template] [int] NULL,
  [Price] [int] NULL,
  [DateLow] [datetime] NULL,
  [DateHigh] [datetime] NULL,
  [Comment] [nvarchar](max) NULL,
  CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED ([ID]),
  CONSTRAINT [FK_Orders_Customers] FOREIGN KEY ([Customer]) REFERENCES [dbo].[Customers] ([ID])
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO