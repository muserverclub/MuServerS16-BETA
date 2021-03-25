/****** Object:  Table [dbo].[GremoryCasePShop]    Script Date: 31/01/2021 16:53:49 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[GremoryCasePShop](
	[Name] [varchar](10) NOT NULL,
	[Slot] [int] NOT NULL,
	[Type] [int] NOT NULL,
	[Item] [varbinary](16) NOT NULL,
	[CreateTime] [int] NOT NULL,
	[ExpireTime] [int] NOT NULL,
 CONSTRAINT [PK_GremoryCasePShop] PRIMARY KEY CLUSTERED 
(
	[Name] ASC,
	[Slot] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO
