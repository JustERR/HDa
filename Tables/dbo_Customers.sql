CREATE TABLE [dbo].[Customers] (
  [ID] [int] IDENTITY,
  [Name] [nvarchar](150) NOT NULL,
  [Phone] [nvarchar](11) NOT NULL,
  [Address] [nvarchar](500) NULL,
  [City] [int] NULL,
  [IsLead] [int] NULL CONSTRAINT [DF_Customers_IsLead] DEFAULT (0),
  [DateLastOrder] [datetime] NULL,
  CONSTRAINT [PK_Customers] PRIMARY KEY CLUSTERED ([ID]),
  CONSTRAINT [FK_Customers_Customers] FOREIGN KEY ([ID]) REFERENCES [dbo].[Customers] ([ID])
)
ON [PRIMARY]
GO