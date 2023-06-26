USE [Testing]
GO

/****** Object:  Table [dbo].[employeedetails]    Script Date: 26-06-2023 15:44:12 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[employeedetails](
	[EmpId] [int] IDENTITY(1,1) NOT NULL,
	[Firstname] [nvarchar](30) NULL,
	[Lastname] [nvarchar](30) NULL,
	[EmailId] [nvarchar](30) NULL,
	[Password] [nvarchar](80) NULL,
	[DOB] [date] NULL,
	[Phonenum] [int] NULL,
	[Address1] [nvarchar](30) NULL,
	[Address2] [nvarchar](30) NULL,
	[City] [nvarchar](30) NULL,
	[State] [nvarchar](30) NULL,
	[Zipcode] [int] NULL,
	[E_key] [nvarchar](80) NULL,
	[is_admin] [nvarchar](50) NULL,
	[is_Active] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[EmpId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


