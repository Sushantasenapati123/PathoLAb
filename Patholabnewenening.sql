USE [PathoLab]
GO
/****** Object:  Table [dbo].[M_PL_BrandName]    Script Date: 20-04-2023 17:50:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[M_PL_BrandName](
	[BrandId] [int] IDENTITY(1,1) NOT NULL,
	[BrandName] [varchar](100) NULL,
	[CreatedOn] [datetime] NULL,
	[CreatedBy] [varchar](100) NULL,
	[UpdatedOn] [datetime] NULL,
	[UpdatedBy] [varchar](100) NULL,
	[DeletedFlag] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[M_PL_ClientMaster]    Script Date: 20-04-2023 17:50:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[M_PL_ClientMaster](
	[ClintID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](100) NULL,
	[Address] [varchar](100) NULL,
	[City] [varchar](50) NULL,
	[phoneno] [varchar](50) NULL,
	[WhatsAppNo] [varchar](50) NULL,
	[ReferByClientId] [int] NULL,
	[CreatedOn] [datetime] NULL,
	[CreatedBy] [varchar](100) NULL,
	[UpdatedOn] [datetime] NULL,
	[UpdatedBy] [varchar](100) NULL,
	[DeletedFlag] [bit] NULL,
 CONSTRAINT [PK_ClientMast] PRIMARY KEY CLUSTERED 
(
	[ClintID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[M_PL_Configure_tbl]    Script Date: 20-04-2023 17:50:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[M_PL_Configure_tbl](
	[ConfigureId] [int] NOT NULL,
	[Doctor] [int] NULL,
	[Department] [int] NULL,
	[Slot] [datetime] NULL,
	[Fees] [decimal](18, 0) NULL,
	[Days] [varchar](100) NULL,
	[CreatedOn] [datetime] NULL,
	[CreatedBy] [int] NULL,
	[UpdatedOn] [datetime] NULL,
	[UpdatedBy] [int] NULL,
	[DeletedFlag] [bit] NULL,
 CONSTRAINT [PK_M_PL_Configure_tbl] PRIMARY KEY CLUSTERED 
(
	[ConfigureId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[M_PL_Day]    Script Date: 20-04-2023 17:50:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[M_PL_Day](
	[DaysId] [int] NULL,
	[Day] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[M_PL_DepartmentMaster]    Script Date: 20-04-2023 17:50:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[M_PL_DepartmentMaster](
	[DepartmentId] [int] IDENTITY(1,1) NOT NULL,
	[Department] [varchar](100) NULL,
	[CreatedOn] [date] NULL,
	[CreatedBy] [int] NULL,
	[UpdatedOn] [date] NULL,
	[UpdatedBy] [int] NULL,
	[DeletedFlag] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[DepartmentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[M_PL_DesignationMaster]    Script Date: 20-04-2023 17:50:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[M_PL_DesignationMaster](
	[DesignationId] [int] IDENTITY(1,1) NOT NULL,
	[Designation] [varchar](100) NULL,
	[CreatedOn] [date] NULL,
	[CreatedBy] [int] NULL,
	[UpdatedOn] [date] NULL,
	[UpdatedBy] [int] NULL,
	[DeletedFlag] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[DesignationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[M_PL_DignosisCatagory]    Script Date: 20-04-2023 17:50:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[M_PL_DignosisCatagory](
	[DignosisCatagoryID] [int] IDENTITY(1,1) NOT NULL,
	[DignosisCategoryName] [varchar](30) NULL,
	[CreatedOn] [datetime] NULL,
	[CreatedBy] [int] NULL,
	[UpdatedOn] [datetime] NULL,
	[UpdatedBy] [int] NULL,
	[DeletedFlag] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[M_PL_DignosisMaster]    Script Date: 20-04-2023 17:50:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[M_PL_DignosisMaster](
	[DignosisID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](100) NULL,
	[DignosisCatagoryID] [int] NULL,
	[CreatedOn] [date] NULL,
	[CreatedBy] [int] NULL,
	[UpdatedOn] [date] NULL,
	[UpdatedBy] [int] NULL,
	[DeletedFlag] [bit] NULL,
 CONSTRAINT [PK_M_PL_DignosisMaster] PRIMARY KEY CLUSTERED 
(
	[DignosisID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[M_PL_DoctorMaster]    Script Date: 20-04-2023 17:50:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[M_PL_DoctorMaster](
	[DoctorID] [int] IDENTITY(1,1) NOT NULL,
	[Prefix] [varchar](10) NULL,
	[DoctorName] [varchar](100) NOT NULL,
	[Designation] [varchar](100) NULL,
	[Department] [varchar](100) NULL,
	[HospitalName] [varchar](100) NULL,
	[RegnNo] [varchar](100) NULL,
	[Mobile] [varchar](50) NULL,
	[Fees] [decimal](16, 2) NULL,
	[CreatedOn] [date] NULL,
	[CreatedBy] [int] NULL,
	[UpdatedOn] [date] NULL,
	[UpdatedBy] [int] NULL,
	[DeletedFlag] [bit] NULL,
 CONSTRAINT [PK_M_PL_DoctorMaster] PRIMARY KEY CLUSTERED 
(
	[DoctorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[M_PL_DoseMaster]    Script Date: 20-04-2023 17:50:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[M_PL_DoseMaster](
	[DoseId] [int] IDENTITY(1,1) NOT NULL,
	[SubCatagoryId] [int] NULL,
	[CatagoryId] [int] NULL,
	[MedicineId] [int] NULL,
	[DoseName] [varchar](50) NULL,
	[DeletedFlag] [bit] NULL,
	[CreatedBy] [int] NULL,
	[CreatedOn] [date] NULL,
	[UpdatedBy] [int] NULL,
	[UpdatedOn] [date] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[M_PL_Doses]    Script Date: 20-04-2023 17:50:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[M_PL_Doses](
	[DoseID] [int] IDENTITY(1,1) NOT NULL,
	[DoseName] [varchar](100) NULL,
	[CatagoryID] [int] NULL,
	[CreatedOn] [date] NULL,
	[CreatedBy] [int] NULL,
	[UpdatedOn] [date] NULL,
	[UpdatedBy] [int] NULL,
	[DeletedFlag] [bit] NULL,
 CONSTRAINT [PK_M_PL_Doses] PRIMARY KEY CLUSTERED 
(
	[DoseID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[M_PL_HospitalMaster]    Script Date: 20-04-2023 17:50:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[M_PL_HospitalMaster](
	[HospitalID] [int] IDENTITY(1,1) NOT NULL,
	[HospitalName] [varchar](100) NULL,
	[RegstrationNo] [varchar](50) NULL,
	[LandlineNo] [varchar](50) NULL,
	[Address] [varchar](100) NULL,
	[City] [varchar](50) NULL,
	[State] [varchar](50) NULL,
	[PinCode] [int] NULL,
	[ContactPerson] [varchar](50) NULL,
	[MobielNo] [varchar](50) NULL,
	[GSTNo] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[CreatedBy] [int] NULL,
	[UpdatedOn] [datetime] NULL,
	[UpdatedBy] [int] NULL,
	[DeletedFlag] [bit] NULL,
	[HEmail] [varchar](50) NULL,
	[HWebsite] [varchar](50) NULL,
 CONSTRAINT [PK_M_PL_HospitalMaster] PRIMARY KEY CLUSTERED 
(
	[HospitalID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[M_PL_HsnCode]    Script Date: 20-04-2023 17:50:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[M_PL_HsnCode](
	[HsnId] [int] IDENTITY(1,1) NOT NULL,
	[HsnCode] [varchar](100) NULL,
	[Gst] [int] NULL,
	[CreatedOn] [datetime] NULL,
	[CreatedBy] [varchar](100) NULL,
	[UpdatedOn] [datetime] NULL,
	[UpdatedBy] [varchar](100) NULL,
	[DeletedFlag] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[M_PL_LABTEST]    Script Date: 20-04-2023 17:50:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[M_PL_LABTEST](
	[LabTestId] [int] IDENTITY(1,1) NOT NULL,
	[LabTestName] [varchar](100) NULL,
	[CreatedBy] [int] NULL,
	[CreatedOn] [date] NULL,
	[UpdatedBy] [int] NULL,
	[UpdatedOn] [date] NULL,
	[DeletedFlag] [bit] NULL,
	[DignosisID] [int] NULL,
	[Price] [varchar](100) NULL,
 CONSTRAINT [PK_M_PL_LABTEST] PRIMARY KEY CLUSTERED 
(
	[LabTestId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[M_PL_MadicineCatagory]    Script Date: 20-04-2023 17:50:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[M_PL_MadicineCatagory](
	[CatagoryId] [int] IDENTITY(1,1) NOT NULL,
	[CatagoryName] [varchar](100) NULL,
	[CreatedOn] [datetime] NULL,
	[CreatedBy] [varchar](100) NULL,
	[UpdatedOn] [datetime] NULL,
	[UpdatedBy] [varchar](100) NULL,
	[DeletedFlag] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[M_PL_MadicineSubCatagory]    Script Date: 20-04-2023 17:50:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[M_PL_MadicineSubCatagory](
	[SubCatagoryId] [int] IDENTITY(1,1) NOT NULL,
	[CatagoryId] [int] NULL,
	[SubCatagoryName] [varchar](100) NULL,
	[CreatedOn] [datetime] NULL,
	[CreatedBy] [varchar](100) NULL,
	[UpdatedOn] [datetime] NULL,
	[UpdatedBy] [varchar](100) NULL,
	[DeletedFlag] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[M_PL_MedicineMaster]    Script Date: 20-04-2023 17:50:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[M_PL_MedicineMaster](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SubCatagoryId] [int] NOT NULL,
	[CatagoryId] [int] NOT NULL,
	[Name] [varchar](100) NULL,
	[ShortName] [varchar](100) NULL,
	[ProductCode] [varchar](100) NULL,
	[MRP] [numeric](8, 2) NULL,
	[HsnId] [int] NOT NULL,
	[Expiry] [datetime] NULL,
	[Manufacture] [datetime] NULL,
	[Description] [varchar](100) NULL,
	[UnitId] [int] NOT NULL,
	[BrandId] [int] NOT NULL,
	[CreatedOn] [datetime] NULL,
	[CreatedBy] [varchar](100) NULL,
	[UpdatedOn] [datetime] NULL,
	[UpdatedBy] [varchar](100) NULL,
	[DeletedFlag] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[M_PL_MenuTable]    Script Date: 20-04-2023 17:50:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[M_PL_MenuTable](
	[MenuId] [int] IDENTITY(1,1) NOT NULL,
	[MenuName] [varchar](100) NULL,
	[SlNo] [int] NULL,
	[IconName] [varchar](100) NULL,
	[CreatedOn] [date] NULL,
	[CreatedBy] [int] NULL,
	[UpdatedOn] [date] NULL,
	[UpdatedBy] [int] NULL,
	[DeletedFlag] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[MenuId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[M_PL_PatientMaster]    Script Date: 20-04-2023 17:50:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[M_PL_PatientMaster](
	[PatientID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NULL,
	[Gender] [nvarchar](50) NULL,
	[AgeYear] [int] NULL,
	[AgeMonth] [int] NULL,
	[AgeDays] [int] NULL,
	[Address] [nvarchar](100) NULL,
	[City] [nvarchar](50) NULL,
	[Pincode] [nvarchar](50) NULL,
	[phoneno] [nvarchar](50) NULL,
	[WhatsAppNo] [nvarchar](50) NULL,
	[ReferByClientId] [int] NULL,
	[EDate] [datetime] NULL,
	[Status] [nvarchar](10) NULL,
	[CreatedOn] [date] NULL,
	[CreatedBy] [int] NULL,
	[UpdatedBy] [int] NULL,
	[UpdatedOn] [date] NULL,
	[DeletedFlag] [bit] NULL,
 CONSTRAINT [PK_tbl_PatientMaster] PRIMARY KEY CLUSTERED 
(
	[PatientID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[M_PL_PatientMasterNew]    Script Date: 20-04-2023 17:50:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[M_PL_PatientMasterNew](
	[PatientId] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NULL,
	[PatientHistory] [varchar](500) NULL,
	[CreatedOn] [date] NULL,
	[CreatedBy] [int] NULL,
	[UpdatedBy] [int] NULL,
	[UpdatedOn] [date] NULL,
	[DeletedFlag] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[M_PL_PermissionTable]    Script Date: 20-04-2023 17:50:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[M_PL_PermissionTable](
	[PermissionId] [int] IDENTITY(1,1) NOT NULL,
	[DesignationId] [int] NULL,
	[UserId] [int] NULL,
	[SubMenuId] [int] NULL,
	[IsChecked] [bit] NULL,
	[CreatedOn] [date] NULL,
	[CreatedBy] [int] NULL,
	[UpdatedOn] [date] NULL,
	[UpdatedBy] [int] NULL,
	[DeletedFlag] [bit] NULL,
 CONSTRAINT [PK__M_PL_Per__F5C738EA0D0FEE32] PRIMARY KEY CLUSTERED 
(
	[PermissionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[M_PL_RoleMaster]    Script Date: 20-04-2023 17:50:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[M_PL_RoleMaster](
	[RoleId] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [varchar](50) NULL,
	[CreatedOn] [date] NULL,
	[CreatedBy] [int] NULL,
	[UpdatedBy] [int] NULL,
	[UpdatedOn] [date] NULL,
	[DeletedFlag] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[M_PL_Slot_Master]    Script Date: 20-04-2023 17:50:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[M_PL_Slot_Master](
	[SlotID] [int] IDENTITY(1,1) NOT NULL,
	[SlotName] [varchar](100) NULL,
	[HospitalID] [int] NULL,
	[Slot_TimeFrom] [varchar](100) NULL,
	[Capacity] [int] NULL,
	[Slot_TimeTo] [varchar](100) NULL,
	[CreatedOn] [datetime] NULL,
	[CreatedBy] [varchar](100) NULL,
	[UpdatedOn] [datetime] NULL,
	[UpdatedBy] [varchar](100) NULL,
	[DeletedFlag] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[M_PL_SlotMapping]    Script Date: 20-04-2023 17:50:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[M_PL_SlotMapping](
	[SMId] [int] IDENTITY(1,1) NOT NULL,
	[HospitalID] [int] NULL,
	[SlotID] [int] NULL,
	[DoctorId] [int] NULL,
	[DaysId] [int] NULL,
	[CreatedOn] [date] NULL,
	[CreatedBy] [int] NULL,
	[UpdatedBy] [int] NULL,
	[UpdatedOn] [date] NULL,
	[DeletedFlag] [bit] NULL,
 CONSTRAINT [PK__M_PL_Slo__A47B2F767A672E12] PRIMARY KEY CLUSTERED 
(
	[SMId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[M_PL_State]    Script Date: 20-04-2023 17:50:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[M_PL_State](
	[StateId] [int] IDENTITY(1,1) NOT NULL,
	[StateName] [varchar](30) NULL,
	[CreatedOn] [datetime] NULL,
	[CreatedBy] [int] NULL,
	[UpdatedOn] [datetime] NULL,
	[UpdatedBy] [int] NULL,
	[DeletedFlag] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[M_PL_SubMenuTable]    Script Date: 20-04-2023 17:50:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[M_PL_SubMenuTable](
	[SubMenuId] [int] IDENTITY(1,1) NOT NULL,
	[SubMenuName] [varchar](100) NULL,
	[SubMenuURL] [varchar](100) NULL,
	[MenuId] [int] NULL,
	[SlNo] [int] NULL,
	[SubMenuDescription] [varchar](100) NULL,
	[CreatedOn] [date] NULL,
	[CreatedBy] [int] NULL,
	[UpdatedOn] [date] NULL,
	[UpdatedBy] [int] NULL,
	[DeletedFlag] [bit] NULL,
 CONSTRAINT [PK__M_PL_Sub__EA065CF9093F5D4E] PRIMARY KEY CLUSTERED 
(
	[SubMenuId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[M_PL_TestMast]    Script Date: 20-04-2023 17:50:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[M_PL_TestMast](
	[TestID] [int] IDENTITY(1,1) NOT NULL,
	[TestType] [varchar](100) NULL,
	[TestName] [varchar](100) NULL,
	[CreatedOn] [datetime] NULL,
	[CreatedBy] [int] NULL,
	[UpdatedOn] [datetime] NULL,
	[UpdatedBy] [int] NULL,
	[DeletedFlag] [bit] NULL,
 CONSTRAINT [PK_M_PL_TestMast] PRIMARY KEY CLUSTERED 
(
	[TestID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[M_PL_TestType]    Script Date: 20-04-2023 17:50:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[M_PL_TestType](
	[TestTypeID] [int] IDENTITY(1,1) NOT NULL,
	[TestType] [varchar](100) NULL,
	[CreatedOn] [datetime] NULL,
	[CreatedBy] [int] NULL,
	[UpdatedOn] [datetime] NULL,
	[UpdatedBy] [int] NULL,
	[DeletedFlag] [bit] NULL,
 CONSTRAINT [PK_TestType] PRIMARY KEY CLUSTERED 
(
	[TestTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[M_PL_Unit]    Script Date: 20-04-2023 17:50:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[M_PL_Unit](
	[UnitId] [int] IDENTITY(1,1) NOT NULL,
	[UnitName] [varchar](100) NULL,
	[CreatedOn] [datetime] NULL,
	[CreatedBy] [varchar](100) NULL,
	[UpdatedOn] [datetime] NULL,
	[UpdatedBy] [varchar](100) NULL,
	[DeletedFlag] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[M_PL_USER]    Script Date: 20-04-2023 17:50:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[M_PL_USER](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [varchar](50) NULL,
	[Password] [varchar](50) NULL,
	[FullName] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[Mobile] [varchar](50) NULL,
	[Gender] [varchar](50) NULL,
	[Address] [varchar](500) NULL,
	[City] [varchar](300) NULL,
	[DesignationId] [int] NULL,
	[DepartmentId] [int] NULL,
	[HospitalID] [int] NULL,
	[Address1] [varchar](500) NULL,
	[CreatedOn] [date] NULL,
	[CreatedBy] [int] NULL,
	[UpdatedBy] [int] NULL,
	[UpdatedOn] [date] NULL,
	[DeletedFlag] [bit] NULL,
	[DOB] [date] NULL,
	[Age] [int] NULL,
 CONSTRAINT [PK_M_PL_USER] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_PL_DignosisConfiguration]    Script Date: 20-04-2023 17:50:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_PL_DignosisConfiguration](
	[DignosisConfigId] [int] IDENTITY(1,1) NOT NULL,
	[LabTestId] [int] NULL,
	[DignosisID] [int] NULL,
	[InvestigationName] [varchar](100) NULL,
	[MinimumPercentage] [decimal](16, 2) NULL,
	[MaximumPercentage] [decimal](16, 2) NULL,
	[Unit] [varchar](100) NULL,
	[CreatedBy] [int] NULL,
	[CreatedOn] [date] NULL,
	[UpdatedBy] [int] NULL,
	[UpdatedOn] [date] NULL,
	[DeletedFlag] [bit] NULL,
 CONSTRAINT [PK_T_PL_DignosisConfiguration] PRIMARY KEY CLUSTERED 
(
	[DignosisConfigId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_PL_PathoBill]    Script Date: 20-04-2023 17:50:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_PL_PathoBill](
	[PathoBillId] [int] IDENTITY(1,1) NOT NULL,
	[CollectionId] [varchar](100) NULL,
	[Barcode] [varchar](100) NULL,
	[Price] [varchar](100) NULL,
	[PayMode] [varchar](100) NULL,
	[Mobile] [varchar](100) NULL,
	[Age] [int] NULL,
	[Email] [varchar](100) NULL,
	[PatientId] [int] NULL,
	[Gender] [varchar](100) NULL,
	[FullName] [varchar](100) NULL,
	[DateOfAppointment] [date] NULL,
	[DoctorName] [varchar](100) NULL,
	[CreatedBy] [int] NULL,
	[CreatedOn] [date] NULL,
	[UpdatedBy] [int] NULL,
	[UpdatedOn] [date] NULL,
	[DeletedFlag] [bit] NULL,
	[CollectionFlag] [bit] NULL,
 CONSTRAINT [PK__T_PL_Pat__2F86C2EA41B8C09B] PRIMARY KEY CLUSTERED 
(
	[PathoBillId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_PL_PathoReportCollection]    Script Date: 20-04-2023 17:50:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_PL_PathoReportCollection](
	[ReportId] [int] IDENTITY(1,1) NOT NULL,
	[PathoBillId] [int] NULL,
	[LabTestId] [int] NULL,
	[DignosisConfigId] [int] NULL,
	[Value] [varchar](100) NULL,
	[CreatedBy] [int] NULL,
	[CreatedOn] [date] NULL,
	[UpdatedBy] [int] NULL,
	[UpdatedOn] [date] NULL,
	[DeletedFlag] [bit] NULL,
 CONSTRAINT [PK_T_PL_PathoReportCollection] PRIMARY KEY CLUSTERED 
(
	[ReportId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_PL_PatientAppointment]    Script Date: 20-04-2023 17:50:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_PL_PatientAppointment](
	[AppointmentId] [int] IDENTITY(1,1) NOT NULL,
	[RegdNo] [int] NOT NULL,
	[DateOfAppointment] [date] NULL,
	[HospitalID] [int] NULL,
	[DepartmentId] [int] NULL,
	[DoctorId] [int] NULL,
	[SlotID] [int] NULL,
	[PatientID] [int] NULL,
	[CreatedBy] [int] NULL,
	[CreatedOn] [date] NULL,
	[UpdatedBy] [int] NULL,
	[UpdatedOn] [date] NULL,
	[DeletedFlag] [bit] NULL,
 CONSTRAINT [PK_T_PL_PatientAppointment] PRIMARY KEY CLUSTERED 
(
	[AppointmentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_PL_PrescribedDignosis]    Script Date: 20-04-2023 17:50:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_PL_PrescribedDignosis](
	[PresDignosisId] [int] IDENTITY(1,1) NOT NULL,
	[PrescriptionId] [int] NULL,
	[DignosisID] [int] NULL,
	[CreatedOn] [date] NULL,
	[CreatedBy] [int] NULL,
	[UpdatedOn] [date] NULL,
	[UpdatedBy] [int] NULL,
	[DeletedFlag] [bit] NULL,
 CONSTRAINT [PK_T_PL_PrescribedDignosis] PRIMARY KEY CLUSTERED 
(
	[PresDignosisId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_PL_PrescribedMedicine]    Script Date: 20-04-2023 17:50:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_PL_PrescribedMedicine](
	[PrdMedId] [int] IDENTITY(1,1) NOT NULL,
	[Id] [int] NULL,
	[MorningAfterMeal] [varchar](50) NULL,
	[MorningBeforeMeal] [varchar](50) NULL,
	[AfternoonAfterMeal] [varchar](50) NULL,
	[AfternoonBeforeMeal] [varchar](50) NULL,
	[NightAfterMeal] [varchar](50) NULL,
	[NightBeforeMeal] [varchar](50) NULL,
	[PrescriptionId] [int] NULL,
	[DoseId] [int] NULL,
	[DeletedFlag] [bit] NULL,
	[PatientID] [int] NULL,
	[CreatedBy] [int] NULL,
	[CreatedOn] [date] NULL,
	[UpdatedBy] [int] NULL,
	[UpdatedOn] [date] NULL,
	[MedicineName] [varchar](50) NULL,
	[Duration] [varchar](1000) NULL,
 CONSTRAINT [PK_T_PL_PrescribedMedicine] PRIMARY KEY CLUSTERED 
(
	[PrdMedId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_PL_PrescriptionDetails]    Script Date: 20-04-2023 17:50:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_PL_PrescriptionDetails](
	[PrescriptionId] [int] IDENTITY(1,1) NOT NULL,
	[HospitalID] [int] NULL,
	[PatientID] [int] NULL,
	[Height] [numeric](8, 2) NULL,
	[BloodPressure] [varchar](100) NULL,
	[Weight] [numeric](8, 2) NULL,
	[Pulse] [varchar](100) NULL,
	[Temperature] [varchar](100) NULL,
	[OxygenLevel] [varchar](50) NULL,
	[Symptoms] [varchar](1000) NULL,
	[PatientHistory] [varchar](1000) NULL,
	[OtherAdvice] [varchar](1000) NULL,
	[DeletedFlag] [bit] NULL,
	[CreateBy] [int] NULL,
	[CreatedOn] [date] NULL,
	[UpdatedBy] [int] NULL,
	[UpdatedOn] [date] NULL,
	[GuardianName] [varchar](100) NULL,
 CONSTRAINT [PK_T_PL_PrescriptionDetails] PRIMARY KEY CLUSTERED 
(
	[PrescriptionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_PL_SampleCollection]    Script Date: 20-04-2023 17:50:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_PL_SampleCollection](
	[Sid] [int] IDENTITY(1,1) NOT NULL,
	[SampleColNo] [int] NULL,
	[LabTestId] [int] NULL,
	[BarCode] [varchar](100) NULL,
	[CreatedBy] [int] NULL,
	[CreatedOn] [date] NULL,
	[UpdatedBy] [int] NULL,
	[UpdatedOn] [date] NULL,
	[DeletedFlag] [bit] NULL,
 CONSTRAINT [PK_T_PL_SampleCollection] PRIMARY KEY CLUSTERED 
(
	[Sid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_PL_TestTable]    Script Date: 20-04-2023 17:50:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_PL_TestTable](
	[TesttblId] [int] IDENTITY(1,1) NOT NULL,
	[PathoBillId] [int] NULL,
	[Price] [varchar](100) NULL,
	[CGST] [decimal](18, 0) NULL,
	[SGST] [decimal](18, 0) NULL,
	[CreatedBy] [int] NULL,
	[CreatedOn] [date] NULL,
	[UpdatedBy] [int] NULL,
	[UpdatedOn] [date] NULL,
	[DeletedFlag] [bit] NULL,
	[LabTestId] [int] NULL,
	[LabTestName] [varchar](100) NULL,
	[ReportFile] [varchar](200) NULL,
 CONSTRAINT [PK_T_PL_TestTable] PRIMARY KEY CLUSTERED 
(
	[TesttblId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBL_CollectionNo]    Script Date: 20-04-2023 17:50:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBL_CollectionNo](
	[SampleColNo] [int] IDENTITY(1,1) NOT NULL,
	[PathoBillId] [int] NULL,
	[CollectionId] [varchar](100) NULL,
	[CreatedBy] [int] NULL,
	[CreatedOn] [date] NULL,
	[UpdatedBy] [int] NULL,
	[UpdatedOn] [date] NULL,
	[DeletedFlag] [bit] NULL,
 CONSTRAINT [PK_TBL_CollectionNo] PRIMARY KEY CLUSTERED 
(
	[SampleColNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[M_PL_BrandName] ON 

INSERT [dbo].[M_PL_BrandName] ([BrandId], [BrandName], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (1, N'Sun Pharmaceutical Industries', CAST(N'2023-01-19T11:55:31.447' AS DateTime), NULL, CAST(N'2023-01-19T11:55:31.447' AS DateTime), NULL, 0)
INSERT [dbo].[M_PL_BrandName] ([BrandId], [BrandName], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (2, N'Divi''s laboratories limited', CAST(N'2023-01-19T11:55:47.197' AS DateTime), NULL, CAST(N'2023-01-19T11:55:47.197' AS DateTime), NULL, 0)
SET IDENTITY_INSERT [dbo].[M_PL_BrandName] OFF
GO
SET IDENTITY_INSERT [dbo].[M_PL_ClientMaster] ON 

INSERT [dbo].[M_PL_ClientMaster] ([ClintID], [Name], [Address], [City], [phoneno], [WhatsAppNo], [ReferByClientId], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (1, N'DIPTI', N'BBSR', N'1', N'9966554433', N'8765432156', 4, CAST(N'2023-01-04T12:55:51.983' AS DateTime), N'0', CAST(N'2023-01-04T12:56:03.353' AS DateTime), N'0', 1)
INSERT [dbo].[M_PL_ClientMaster] ([ClintID], [Name], [Address], [City], [phoneno], [WhatsAppNo], [ReferByClientId], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (2, N'Sushanta kumar senapati', N'AT/po-kuliana,block-Badasahi,dist-MBJ,odisha,pin-757025', N'2', N'+918658193889', N'87654321`', 1, CAST(N'2023-01-04T17:13:00.433' AS DateTime), N'0', NULL, NULL, 1)
INSERT [dbo].[M_PL_ClientMaster] ([ClintID], [Name], [Address], [City], [phoneno], [WhatsAppNo], [ReferByClientId], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (3, N'Sushanta kumar senapati', N'AT/po-kuliana,block-Badasahi,dist-MBJ,odisha,pin-757025', N'2', N'+918658193889', N'98765432', 5, CAST(N'2023-01-04T17:15:59.407' AS DateTime), N'0', NULL, NULL, 1)
INSERT [dbo].[M_PL_ClientMaster] ([ClintID], [Name], [Address], [City], [phoneno], [WhatsAppNo], [ReferByClientId], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (4, N'subha', N'Kalpana', N'1', N'1234567890', N'1234567890', 1, CAST(N'2023-01-04T17:19:37.547' AS DateTime), N'0', NULL, NULL, 1)
INSERT [dbo].[M_PL_ClientMaster] ([ClintID], [Name], [Address], [City], [phoneno], [WhatsAppNo], [ReferByClientId], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (5, N'asdfasdf', N'asdfg', N'1', N'1234567890', N'1234567809', 2, CAST(N'2023-01-04T17:20:47.747' AS DateTime), N'0', NULL, NULL, 1)
INSERT [dbo].[M_PL_ClientMaster] ([ClintID], [Name], [Address], [City], [phoneno], [WhatsAppNo], [ReferByClientId], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (6, N'QWDJKHK', N'DJKFHJK', N'1', N'JHDSGJ', N'DHFH', 0, CAST(N'2023-01-04T19:11:30.177' AS DateTime), N'0', NULL, NULL, 1)
INSERT [dbo].[M_PL_ClientMaster] ([ClintID], [Name], [Address], [City], [phoneno], [WhatsAppNo], [ReferByClientId], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (7, N'sushmita', N'Laxmisagar', N'Bhubaneswar', N'9937861938', N'9937861938', 0, CAST(N'2023-01-05T13:06:59.113' AS DateTime), N'0', CAST(N'2023-01-06T10:22:33.037' AS DateTime), N'0', 0)
INSERT [dbo].[M_PL_ClientMaster] ([ClintID], [Name], [Address], [City], [phoneno], [WhatsAppNo], [ReferByClientId], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (8, N'kjhgf', N'kjhgfd', N'Rourkela', N'3434343434', N'3434343434', 0, CAST(N'2023-01-06T10:15:26.560' AS DateTime), N'0', CAST(N'2023-01-06T10:22:01.890' AS DateTime), N'0', 0)
INSERT [dbo].[M_PL_ClientMaster] ([ClintID], [Name], [Address], [City], [phoneno], [WhatsAppNo], [ReferByClientId], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (9, N'pragya smruty ', N'sdfgh', N'Cuttuck', N'1234567890', N'1234567890', 0, CAST(N'2023-01-06T10:19:36.777' AS DateTime), N'0', CAST(N'2023-01-06T10:22:51.783' AS DateTime), N'0', 0)
INSERT [dbo].[M_PL_ClientMaster] ([ClintID], [Name], [Address], [City], [phoneno], [WhatsAppNo], [ReferByClientId], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (10, N'cvh', N'fghjk', N'Rourkela', N'1234567890', N'1234567890', 0, CAST(N'2023-01-06T10:25:58.240' AS DateTime), N'0', NULL, NULL, 0)
INSERT [dbo].[M_PL_ClientMaster] ([ClintID], [Name], [Address], [City], [phoneno], [WhatsAppNo], [ReferByClientId], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (11, N'sai baba', N'shiridi', N'Rourkela', N'1234567890', NULL, 0, CAST(N'2023-01-06T10:52:41.723' AS DateTime), N'0', CAST(N'2023-01-06T12:27:18.210' AS DateTime), N'0', 0)
INSERT [dbo].[M_PL_ClientMaster] ([ClintID], [Name], [Address], [City], [phoneno], [WhatsAppNo], [ReferByClientId], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (12, N'sri ram', N'ayodhya', N'Bhubaneswar', N'1234567890', NULL, 0, CAST(N'2023-01-06T11:39:49.060' AS DateTime), N'0', CAST(N'2023-01-06T15:15:40.797' AS DateTime), N'0', 0)
SET IDENTITY_INSERT [dbo].[M_PL_ClientMaster] OFF
GO
INSERT [dbo].[M_PL_Day] ([DaysId], [Day]) VALUES (2, N'Monday')
INSERT [dbo].[M_PL_Day] ([DaysId], [Day]) VALUES (3, N'Tuesday')
INSERT [dbo].[M_PL_Day] ([DaysId], [Day]) VALUES (4, N'Wednesday')
INSERT [dbo].[M_PL_Day] ([DaysId], [Day]) VALUES (5, N'Thursday')
INSERT [dbo].[M_PL_Day] ([DaysId], [Day]) VALUES (6, N'Friday')
INSERT [dbo].[M_PL_Day] ([DaysId], [Day]) VALUES (7, N'Saturday')
INSERT [dbo].[M_PL_Day] ([DaysId], [Day]) VALUES (1, N'Sunday')
GO
SET IDENTITY_INSERT [dbo].[M_PL_DepartmentMaster] ON 

INSERT [dbo].[M_PL_DepartmentMaster] ([DepartmentId], [Department], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (1, N'Neurologist', CAST(N'2023-01-04' AS Date), 0, CAST(N'2023-01-16' AS Date), 0, 0)
INSERT [dbo].[M_PL_DepartmentMaster] ([DepartmentId], [Department], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (2, N'Gynecologists', CAST(N'2023-01-04' AS Date), 0, NULL, NULL, 1)
INSERT [dbo].[M_PL_DepartmentMaster] ([DepartmentId], [Department], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (3, N'SSHSGHJK', CAST(N'2023-01-04' AS Date), 0, CAST(N'2023-01-04' AS Date), 0, 1)
INSERT [dbo].[M_PL_DepartmentMaster] ([DepartmentId], [Department], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (4, N'Pediatrician', CAST(N'2023-01-05' AS Date), 0, NULL, NULL, 1)
INSERT [dbo].[M_PL_DepartmentMaster] ([DepartmentId], [Department], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (5, N'Child Psychologist', CAST(N'2023-01-10' AS Date), 0, CAST(N'2023-01-11' AS Date), 0, 0)
INSERT [dbo].[M_PL_DepartmentMaster] ([DepartmentId], [Department], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (6, N'Dermatologist', CAST(N'2023-01-10' AS Date), 0, NULL, NULL, 0)
INSERT [dbo].[M_PL_DepartmentMaster] ([DepartmentId], [Department], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (7, N'Cardiologist', CAST(N'2023-01-10' AS Date), 0, CAST(N'2023-01-11' AS Date), 0, 0)
INSERT [dbo].[M_PL_DepartmentMaster] ([DepartmentId], [Department], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (8, N'Dentist', CAST(N'2023-01-10' AS Date), 0, NULL, NULL, 0)
INSERT [dbo].[M_PL_DepartmentMaster] ([DepartmentId], [Department], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (9, N'Allergist', CAST(N'2023-01-10' AS Date), 0, NULL, NULL, 0)
INSERT [dbo].[M_PL_DepartmentMaster] ([DepartmentId], [Department], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (10, N'Pediatrician', CAST(N'2023-01-10' AS Date), 0, NULL, NULL, 0)
INSERT [dbo].[M_PL_DepartmentMaster] ([DepartmentId], [Department], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (11, N'Endocrinologist', CAST(N'2023-01-10' AS Date), 0, NULL, NULL, 1)
INSERT [dbo].[M_PL_DepartmentMaster] ([DepartmentId], [Department], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (12, N'Audiologist', CAST(N'2023-01-10' AS Date), 0, NULL, NULL, 1)
INSERT [dbo].[M_PL_DepartmentMaster] ([DepartmentId], [Department], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (13, N'Smruti3', CAST(N'2023-01-10' AS Date), 0, CAST(N'2023-01-10' AS Date), 0, 1)
INSERT [dbo].[M_PL_DepartmentMaster] ([DepartmentId], [Department], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (14, N'Test', CAST(N'2023-01-10' AS Date), 0, NULL, NULL, 1)
INSERT [dbo].[M_PL_DepartmentMaster] ([DepartmentId], [Department], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (15, N'Smruti', CAST(N'2023-01-10' AS Date), 0, NULL, NULL, 1)
INSERT [dbo].[M_PL_DepartmentMaster] ([DepartmentId], [Department], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (16, N'ss', CAST(N'2023-01-10' AS Date), 0, NULL, NULL, 1)
INSERT [dbo].[M_PL_DepartmentMaster] ([DepartmentId], [Department], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (17, N'zsxdcf', CAST(N'2023-01-11' AS Date), 0, NULL, NULL, 1)
INSERT [dbo].[M_PL_DepartmentMaster] ([DepartmentId], [Department], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (18, N'sdfghjk', CAST(N'2023-01-11' AS Date), 0, NULL, NULL, 1)
INSERT [dbo].[M_PL_DepartmentMaster] ([DepartmentId], [Department], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (19, N'sdfghjk', CAST(N'2023-01-11' AS Date), 0, NULL, NULL, 1)
INSERT [dbo].[M_PL_DepartmentMaster] ([DepartmentId], [Department], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (20, N',mnm,', CAST(N'2023-01-11' AS Date), 0, NULL, NULL, 1)
INSERT [dbo].[M_PL_DepartmentMaster] ([DepartmentId], [Department], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (21, N'sdfghjkl;', CAST(N'2023-01-11' AS Date), 0, NULL, NULL, 1)
INSERT [dbo].[M_PL_DepartmentMaster] ([DepartmentId], [Department], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (22, N'sdfghujikol', CAST(N'2023-01-11' AS Date), 0, NULL, NULL, 1)
INSERT [dbo].[M_PL_DepartmentMaster] ([DepartmentId], [Department], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (23, N's', CAST(N'2023-01-11' AS Date), 0, CAST(N'2023-01-11' AS Date), 0, 1)
INSERT [dbo].[M_PL_DepartmentMaster] ([DepartmentId], [Department], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (24, N'''DE'' ; Delete from M_PL_DepartmentMaster ;', CAST(N'2023-01-16' AS Date), 0, NULL, NULL, 1)
INSERT [dbo].[M_PL_DepartmentMaster] ([DepartmentId], [Department], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (25, N'asdfghj', CAST(N'2023-02-23' AS Date), 0, NULL, NULL, 1)
INSERT [dbo].[M_PL_DepartmentMaster] ([DepartmentId], [Department], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (26, N'HR', CAST(N'2023-03-20' AS Date), 0, NULL, NULL, 0)
INSERT [dbo].[M_PL_DepartmentMaster] ([DepartmentId], [Department], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (27, N'Finance', CAST(N'2023-03-20' AS Date), 0, NULL, NULL, 0)
INSERT [dbo].[M_PL_DepartmentMaster] ([DepartmentId], [Department], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (28, N'Receptionist ', CAST(N'2023-03-20' AS Date), 0, NULL, NULL, 1)
INSERT [dbo].[M_PL_DepartmentMaster] ([DepartmentId], [Department], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (29, N'Medicine ', CAST(N'2023-03-21' AS Date), 0, NULL, NULL, 0)
INSERT [dbo].[M_PL_DepartmentMaster] ([DepartmentId], [Department], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (30, N'Admistrative', CAST(N'2023-03-21' AS Date), 0, NULL, NULL, 0)
INSERT [dbo].[M_PL_DepartmentMaster] ([DepartmentId], [Department], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (31, N'Pathology', CAST(N'2023-03-21' AS Date), 0, CAST(N'2023-03-21' AS Date), 0, 0)
INSERT [dbo].[M_PL_DepartmentMaster] ([DepartmentId], [Department], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (32, N'OPD', CAST(N'2023-04-13' AS Date), 0, NULL, NULL, 1)
SET IDENTITY_INSERT [dbo].[M_PL_DepartmentMaster] OFF
GO
SET IDENTITY_INSERT [dbo].[M_PL_DesignationMaster] ON 

INSERT [dbo].[M_PL_DesignationMaster] ([DesignationId], [Designation], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (1, N'Admin', CAST(N'2023-01-17' AS Date), 0, CAST(N'2023-02-16' AS Date), 0, 0)
INSERT [dbo].[M_PL_DesignationMaster] ([DesignationId], [Designation], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (2, N'Doctor', CAST(N'2023-01-17' AS Date), 0, NULL, NULL, 0)
INSERT [dbo].[M_PL_DesignationMaster] ([DesignationId], [Designation], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (3, N'Patient', CAST(N'2023-01-17' AS Date), 0, NULL, NULL, 0)
INSERT [dbo].[M_PL_DesignationMaster] ([DesignationId], [Designation], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (5, N'Front Office', CAST(N'2023-03-21' AS Date), 0, NULL, NULL, 0)
INSERT [dbo].[M_PL_DesignationMaster] ([DesignationId], [Designation], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (6, N'Data Entry Opertator', CAST(N'2023-04-12' AS Date), 0, NULL, NULL, 0)
INSERT [dbo].[M_PL_DesignationMaster] ([DesignationId], [Designation], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (7, N'SuperAdmin', CAST(N'2023-04-13' AS Date), 0, NULL, NULL, 0)
INSERT [dbo].[M_PL_DesignationMaster] ([DesignationId], [Designation], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (8, N'Superviser', CAST(N'2023-04-13' AS Date), 0, NULL, NULL, 0)
SET IDENTITY_INSERT [dbo].[M_PL_DesignationMaster] OFF
GO
SET IDENTITY_INSERT [dbo].[M_PL_DignosisCatagory] ON 

INSERT [dbo].[M_PL_DignosisCatagory] ([DignosisCatagoryID], [DignosisCategoryName], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (1, N'Invasive', CAST(N'2023-01-23T17:24:20.303' AS DateTime), NULL, CAST(N'2023-01-23T17:24:20.303' AS DateTime), NULL, 0)
INSERT [dbo].[M_PL_DignosisCatagory] ([DignosisCatagoryID], [DignosisCategoryName], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (2, N'Minimally-Invasive', CAST(N'2023-01-23T17:24:37.773' AS DateTime), NULL, CAST(N'2023-01-23T17:24:37.773' AS DateTime), NULL, 0)
INSERT [dbo].[M_PL_DignosisCatagory] ([DignosisCatagoryID], [DignosisCategoryName], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (3, N'Non-Invasive', CAST(N'2023-01-23T17:24:48.393' AS DateTime), NULL, CAST(N'2023-01-23T17:24:48.393' AS DateTime), NULL, 0)
SET IDENTITY_INSERT [dbo].[M_PL_DignosisCatagory] OFF
GO
SET IDENTITY_INSERT [dbo].[M_PL_DignosisMaster] ON 

INSERT [dbo].[M_PL_DignosisMaster] ([DignosisID], [Name], [DignosisCatagoryID], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (1, N'CT scan', 1, CAST(N'2023-01-30' AS Date), 0, NULL, NULL, 1)
INSERT [dbo].[M_PL_DignosisMaster] ([DignosisID], [Name], [DignosisCatagoryID], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (2, N'Colonoscopy', 1, CAST(N'2023-01-30' AS Date), 0, NULL, NULL, 0)
INSERT [dbo].[M_PL_DignosisMaster] ([DignosisID], [Name], [DignosisCatagoryID], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (3, N'Electrocardiogram ECG ', 1, CAST(N'2023-01-30' AS Date), 0, NULL, NULL, 0)
INSERT [dbo].[M_PL_DignosisMaster] ([DignosisID], [Name], [DignosisCatagoryID], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (4, N'Gastroscopy', 2, CAST(N'2023-01-30' AS Date), 0, NULL, NULL, 0)
INSERT [dbo].[M_PL_DignosisMaster] ([DignosisID], [Name], [DignosisCatagoryID], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (5, N'Eye tests', 3, CAST(N'2023-01-30' AS Date), 0, NULL, NULL, 0)
INSERT [dbo].[M_PL_DignosisMaster] ([DignosisID], [Name], [DignosisCatagoryID], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (6, N'Electroencephalogram EEG', 2, CAST(N'2023-01-30' AS Date), 0, NULL, NULL, 0)
INSERT [dbo].[M_PL_DignosisMaster] ([DignosisID], [Name], [DignosisCatagoryID], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (7, N'BCG', 1, CAST(N'2023-02-01' AS Date), 0, NULL, NULL, 1)
INSERT [dbo].[M_PL_DignosisMaster] ([DignosisID], [Name], [DignosisCatagoryID], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (8, N'vdvefvef', 2, CAST(N'2023-02-01' AS Date), 0, NULL, NULL, 1)
INSERT [dbo].[M_PL_DignosisMaster] ([DignosisID], [Name], [DignosisCatagoryID], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (9, N'jjjjjjjjjjjj', 3, CAST(N'2023-02-01' AS Date), 0, CAST(N'2023-02-01' AS Date), 0, 1)
INSERT [dbo].[M_PL_DignosisMaster] ([DignosisID], [Name], [DignosisCatagoryID], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (10, N'fwfwfwff', 2, CAST(N'2023-02-01' AS Date), 0, CAST(N'2023-02-01' AS Date), 0, 1)
INSERT [dbo].[M_PL_DignosisMaster] ([DignosisID], [Name], [DignosisCatagoryID], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (11, N'typhoid', 3, CAST(N'2023-02-23' AS Date), 0, NULL, NULL, 0)
INSERT [dbo].[M_PL_DignosisMaster] ([DignosisID], [Name], [DignosisCatagoryID], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (12, N'pneumonia', 3, CAST(N'2023-02-23' AS Date), 0, NULL, NULL, 0)
INSERT [dbo].[M_PL_DignosisMaster] ([DignosisID], [Name], [DignosisCatagoryID], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (13, N'IronDefficiency', 3, CAST(N'2023-02-23' AS Date), 0, NULL, NULL, 0)
INSERT [dbo].[M_PL_DignosisMaster] ([DignosisID], [Name], [DignosisCatagoryID], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (14, N'Malaria', 3, CAST(N'2023-02-23' AS Date), 0, NULL, NULL, 0)
INSERT [dbo].[M_PL_DignosisMaster] ([DignosisID], [Name], [DignosisCatagoryID], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (15, N'CBC', 2, CAST(N'2023-03-20' AS Date), 0, NULL, NULL, 0)
SET IDENTITY_INSERT [dbo].[M_PL_DignosisMaster] OFF
GO
SET IDENTITY_INSERT [dbo].[M_PL_DoctorMaster] ON 

INSERT [dbo].[M_PL_DoctorMaster] ([DoctorID], [Prefix], [DoctorName], [Designation], [Department], [HospitalName], [RegnNo], [Mobile], [Fees], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (1, N'Mr', N'sushanta', N'Medicine Specialist', N'Child Psychologist', N'wdsw', N'212sw', N'98765432', CAST(1300000.00 AS Decimal(16, 2)), CAST(N'2023-01-04' AS Date), 0, CAST(N'2023-01-04' AS Date), 0, 1)
INSERT [dbo].[M_PL_DoctorMaster] ([DoctorID], [Prefix], [DoctorName], [Designation], [Department], [HospitalName], [RegnNo], [Mobile], [Fees], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (2, N'Mr', N'SDQ', N'Professor', N'Cardiologist ', N'DD', N'3434ESDS', N'DSFSDF', CAST(0.00 AS Decimal(16, 2)), CAST(N'2023-01-04' AS Date), 0, CAST(N'2023-01-04' AS Date), 0, 1)
INSERT [dbo].[M_PL_DoctorMaster] ([DoctorID], [Prefix], [DoctorName], [Designation], [Department], [HospitalName], [RegnNo], [Mobile], [Fees], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (3, N'Miss', N'Pragyan', N'Medicine Specialist', N'Pediatrician', N'kmc', N'D104', N'9937643088', CAST(500.00 AS Decimal(16, 2)), CAST(N'2023-01-05' AS Date), 0, NULL, NULL, 1)
INSERT [dbo].[M_PL_DoctorMaster] ([DoctorID], [Prefix], [DoctorName], [Designation], [Department], [HospitalName], [RegnNo], [Mobile], [Fees], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (4, N'Mr', N'Abhijit', N'Professor', N'Gynecologists', N'KM', N'2002', N'989898989900', CAST(8989.00 AS Decimal(16, 2)), CAST(N'2023-01-05' AS Date), 0, NULL, NULL, 1)
INSERT [dbo].[M_PL_DoctorMaster] ([DoctorID], [Prefix], [DoctorName], [Designation], [Department], [HospitalName], [RegnNo], [Mobile], [Fees], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (5, N'Mr', N'Abhi', N'6', N'4', N'KMC', N'1001', N'9437745159', CAST(2500.00 AS Decimal(16, 2)), CAST(N'2023-01-05' AS Date), 0, CAST(N'2023-01-16' AS Date), 0, 0)
INSERT [dbo].[M_PL_DoctorMaster] ([DoctorID], [Prefix], [DoctorName], [Designation], [Department], [HospitalName], [RegnNo], [Mobile], [Fees], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (6, N'Miss', N'pragyan naYAK', N'Assistant Professor', N'Dermatologist ', N'ASD', N'ASDXCVasxdcv ', N'9937643088', CAST(12345.00 AS Decimal(16, 2)), CAST(N'2023-01-06' AS Date), 0, NULL, NULL, 1)
INSERT [dbo].[M_PL_DoctorMaster] ([DoctorID], [Prefix], [DoctorName], [Designation], [Department], [HospitalName], [RegnNo], [Mobile], [Fees], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (7, N'Miss', N'subha nayak', N'15', N'9', N'KM', N'123456789', N'1234567890', CAST(123456.00 AS Decimal(16, 2)), CAST(N'2023-01-06' AS Date), 0, CAST(N'2023-01-16' AS Date), 0, 0)
INSERT [dbo].[M_PL_DoctorMaster] ([DoctorID], [Prefix], [DoctorName], [Designation], [Department], [HospitalName], [RegnNo], [Mobile], [Fees], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (8, N'Miss', N'Pragyan Smruty Nayak', N'6', N'5', N'KMC', N'12345', N'1234567890', CAST(2000.00 AS Decimal(16, 2)), CAST(N'2023-01-06' AS Date), 0, CAST(N'2023-01-16' AS Date), 0, 0)
INSERT [dbo].[M_PL_DoctorMaster] ([DoctorID], [Prefix], [DoctorName], [Designation], [Department], [HospitalName], [RegnNo], [Mobile], [Fees], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (9, N'Miss', N'dipti debasmita', N'Medicine Specialist', N'Dermatologist ', N'wertghj', N'1234', N'1234567890', CAST(1200.00 AS Decimal(16, 2)), CAST(N'2023-01-06' AS Date), 0, NULL, NULL, 1)
INSERT [dbo].[M_PL_DoctorMaster] ([DoctorID], [Prefix], [DoctorName], [Designation], [Department], [HospitalName], [RegnNo], [Mobile], [Fees], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (10, N'Miss', N'susu senapati', N'Assistant Professor', N'Dentist', N'kmcc', N'd190', N'9876543216', CAST(200.00 AS Decimal(16, 2)), CAST(N'2023-01-06' AS Date), 0, NULL, NULL, 1)
INSERT [dbo].[M_PL_DoctorMaster] ([DoctorID], [Prefix], [DoctorName], [Designation], [Department], [HospitalName], [RegnNo], [Mobile], [Fees], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (11, N'Mr', N'SUS SENAPATI', N'Medicine Specialist', N'Cardiologist ', N'AIMS', N'D450', N'9654327654', CAST(600.00 AS Decimal(16, 2)), CAST(N'2023-01-06' AS Date), 0, NULL, NULL, 0)
INSERT [dbo].[M_PL_DoctorMaster] ([DoctorID], [Prefix], [DoctorName], [Designation], [Department], [HospitalName], [RegnNo], [Mobile], [Fees], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (12, N'Miss', N'asdfg sdfghb', N'Professor', N'Gynecologists', N'dfghjkl', N'12345671234', N'0987654321', CAST(1234.00 AS Decimal(16, 2)), CAST(N'2023-01-06' AS Date), 0, NULL, NULL, 1)
INSERT [dbo].[M_PL_DoctorMaster] ([DoctorID], [Prefix], [DoctorName], [Designation], [Department], [HospitalName], [RegnNo], [Mobile], [Fees], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (13, N'Miss', N'Yashasmini Nayak', N'Professor', N'Gynecologists', N'kmcc', N'd88', N'1234567890', CAST(450.00 AS Decimal(16, 2)), CAST(N'2023-01-06' AS Date), 0, NULL, NULL, 0)
INSERT [dbo].[M_PL_DoctorMaster] ([DoctorID], [Prefix], [DoctorName], [Designation], [Department], [HospitalName], [RegnNo], [Mobile], [Fees], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (14, N'Miss', N'SUSU', N'Assistant Professor', N'Allergist', N'KMMMMM', N'D10000', N'1234567890', CAST(15000.00 AS Decimal(16, 2)), CAST(N'2023-01-06' AS Date), 0, CAST(N'2023-01-06' AS Date), 0, 1)
SET IDENTITY_INSERT [dbo].[M_PL_DoctorMaster] OFF
GO
SET IDENTITY_INSERT [dbo].[M_PL_DoseMaster] ON 

INSERT [dbo].[M_PL_DoseMaster] ([DoseId], [SubCatagoryId], [CatagoryId], [MedicineId], [DoseName], [DeletedFlag], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (1, 0, 1, 5, N'Two tb', 1, 0, CAST(N'2023-02-03' AS Date), NULL, NULL)
INSERT [dbo].[M_PL_DoseMaster] ([DoseId], [SubCatagoryId], [CatagoryId], [MedicineId], [DoseName], [DeletedFlag], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (2, 0, 2, 6, N'five mll', 1, 0, CAST(N'2023-02-03' AS Date), 0, CAST(N'2023-02-03' AS Date))
INSERT [dbo].[M_PL_DoseMaster] ([DoseId], [SubCatagoryId], [CatagoryId], [MedicineId], [DoseName], [DeletedFlag], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (3, 0, 1, 2, N'1 Morning Before Meal', 0, 0, CAST(N'2023-02-03' AS Date), 0, CAST(N'2023-02-20' AS Date))
INSERT [dbo].[M_PL_DoseMaster] ([DoseId], [SubCatagoryId], [CatagoryId], [MedicineId], [DoseName], [DeletedFlag], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (4, 0, 1, 2, N'1/2 Morning Before Meal', 0, 0, CAST(N'2023-02-03' AS Date), 0, CAST(N'2023-02-20' AS Date))
INSERT [dbo].[M_PL_DoseMaster] ([DoseId], [SubCatagoryId], [CatagoryId], [MedicineId], [DoseName], [DeletedFlag], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (5, 0, 2, 8, N'5 ml AfterNoon AfterMeal', 0, 0, CAST(N'2023-02-03' AS Date), 0, CAST(N'2023-03-22' AS Date))
INSERT [dbo].[M_PL_DoseMaster] ([DoseId], [SubCatagoryId], [CatagoryId], [MedicineId], [DoseName], [DeletedFlag], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (6, 0, 2, 8, N'110ml', 1, 0, CAST(N'2023-02-06' AS Date), 0, CAST(N'2023-02-06' AS Date))
INSERT [dbo].[M_PL_DoseMaster] ([DoseId], [SubCatagoryId], [CatagoryId], [MedicineId], [DoseName], [DeletedFlag], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (7, 0, 2, 8, N'5ml', 1, 0, CAST(N'2023-02-07' AS Date), NULL, NULL)
INSERT [dbo].[M_PL_DoseMaster] ([DoseId], [SubCatagoryId], [CatagoryId], [MedicineId], [DoseName], [DeletedFlag], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (11, NULL, 2, NULL, N'3ml AfterNoon AfterMeal', 0, 0, CAST(N'2023-02-20' AS Date), 0, CAST(N'2023-03-22' AS Date))
INSERT [dbo].[M_PL_DoseMaster] ([DoseId], [SubCatagoryId], [CatagoryId], [MedicineId], [DoseName], [DeletedFlag], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (12, NULL, 4, NULL, N'1 pc', 0, 0, CAST(N'2023-02-20' AS Date), 0, CAST(N'2023-02-20' AS Date))
INSERT [dbo].[M_PL_DoseMaster] ([DoseId], [SubCatagoryId], [CatagoryId], [MedicineId], [DoseName], [DeletedFlag], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (13, NULL, 1, NULL, N'1 Morning After Meal', 0, 0, CAST(N'2023-02-20' AS Date), NULL, NULL)
INSERT [dbo].[M_PL_DoseMaster] ([DoseId], [SubCatagoryId], [CatagoryId], [MedicineId], [DoseName], [DeletedFlag], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (14, NULL, 1, NULL, N'1/2 Morning After Meal', 0, 0, CAST(N'2023-02-20' AS Date), NULL, NULL)
INSERT [dbo].[M_PL_DoseMaster] ([DoseId], [SubCatagoryId], [CatagoryId], [MedicineId], [DoseName], [DeletedFlag], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (15, NULL, 1, NULL, N'1 Afternoon Before Meal', 0, 0, CAST(N'2023-02-20' AS Date), NULL, NULL)
INSERT [dbo].[M_PL_DoseMaster] ([DoseId], [SubCatagoryId], [CatagoryId], [MedicineId], [DoseName], [DeletedFlag], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (16, NULL, 1, NULL, N'1 Afternoon After Meal', 0, 0, CAST(N'2023-02-20' AS Date), NULL, NULL)
INSERT [dbo].[M_PL_DoseMaster] ([DoseId], [SubCatagoryId], [CatagoryId], [MedicineId], [DoseName], [DeletedFlag], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (17, NULL, 1, NULL, N'1/2 Afternoon Before Meal', 0, 0, CAST(N'2023-02-20' AS Date), NULL, NULL)
INSERT [dbo].[M_PL_DoseMaster] ([DoseId], [SubCatagoryId], [CatagoryId], [MedicineId], [DoseName], [DeletedFlag], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (18, NULL, 1, NULL, N'1/2 Afternoon After Meal', 0, 0, CAST(N'2023-02-20' AS Date), NULL, NULL)
INSERT [dbo].[M_PL_DoseMaster] ([DoseId], [SubCatagoryId], [CatagoryId], [MedicineId], [DoseName], [DeletedFlag], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (19, NULL, 1, NULL, N'1 Night Before Meal', 0, 0, CAST(N'2023-02-20' AS Date), NULL, NULL)
INSERT [dbo].[M_PL_DoseMaster] ([DoseId], [SubCatagoryId], [CatagoryId], [MedicineId], [DoseName], [DeletedFlag], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (20, NULL, 1, NULL, N'1 Night After Meal', 0, 0, CAST(N'2023-02-20' AS Date), NULL, NULL)
INSERT [dbo].[M_PL_DoseMaster] ([DoseId], [SubCatagoryId], [CatagoryId], [MedicineId], [DoseName], [DeletedFlag], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (21, NULL, 1, NULL, N'1/2 Night After Meal', 0, 0, CAST(N'2023-02-20' AS Date), NULL, NULL)
INSERT [dbo].[M_PL_DoseMaster] ([DoseId], [SubCatagoryId], [CatagoryId], [MedicineId], [DoseName], [DeletedFlag], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (22, NULL, 1, NULL, N'1/2 Night Before Meal', 0, 0, CAST(N'2023-02-20' AS Date), NULL, NULL)
INSERT [dbo].[M_PL_DoseMaster] ([DoseId], [SubCatagoryId], [CatagoryId], [MedicineId], [DoseName], [DeletedFlag], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (23, NULL, 1, NULL, N'1 Evening After Meal', 0, 0, CAST(N'2023-02-20' AS Date), NULL, NULL)
INSERT [dbo].[M_PL_DoseMaster] ([DoseId], [SubCatagoryId], [CatagoryId], [MedicineId], [DoseName], [DeletedFlag], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (24, NULL, 1, NULL, N'1 Evening Before Meal', 0, 0, CAST(N'2023-02-20' AS Date), NULL, NULL)
INSERT [dbo].[M_PL_DoseMaster] ([DoseId], [SubCatagoryId], [CatagoryId], [MedicineId], [DoseName], [DeletedFlag], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (25, NULL, 1, NULL, N'1/2 Evening Before Meal', 0, 0, CAST(N'2023-02-20' AS Date), NULL, NULL)
INSERT [dbo].[M_PL_DoseMaster] ([DoseId], [SubCatagoryId], [CatagoryId], [MedicineId], [DoseName], [DeletedFlag], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (26, NULL, 1, NULL, N'1/2 Evening After Meal', 0, 0, CAST(N'2023-02-20' AS Date), NULL, NULL)
INSERT [dbo].[M_PL_DoseMaster] ([DoseId], [SubCatagoryId], [CatagoryId], [MedicineId], [DoseName], [DeletedFlag], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (27, NULL, 4, NULL, N'2 pc', 0, 0, CAST(N'2023-02-20' AS Date), NULL, NULL)
INSERT [dbo].[M_PL_DoseMaster] ([DoseId], [SubCatagoryId], [CatagoryId], [MedicineId], [DoseName], [DeletedFlag], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (28, NULL, 4, NULL, N'3 pc', 0, 0, CAST(N'2023-02-20' AS Date), NULL, NULL)
INSERT [dbo].[M_PL_DoseMaster] ([DoseId], [SubCatagoryId], [CatagoryId], [MedicineId], [DoseName], [DeletedFlag], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (29, NULL, 4, NULL, N'4 pc', 0, 0, CAST(N'2023-02-20' AS Date), NULL, NULL)
SET IDENTITY_INSERT [dbo].[M_PL_DoseMaster] OFF
GO
SET IDENTITY_INSERT [dbo].[M_PL_Doses] ON 

INSERT [dbo].[M_PL_Doses] ([DoseID], [DoseName], [CatagoryID], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (1, N'1 Morning AfterMeal', 1, CAST(N'2023-02-17' AS Date), NULL, CAST(N'2023-02-17' AS Date), NULL, 0)
INSERT [dbo].[M_PL_Doses] ([DoseID], [DoseName], [CatagoryID], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (2, N'1 Morning BeforeMeal', 1, CAST(N'2023-02-17' AS Date), NULL, CAST(N'2023-02-17' AS Date), NULL, 0)
INSERT [dbo].[M_PL_Doses] ([DoseID], [DoseName], [CatagoryID], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (3, N'1 AfterNoon BeforeMeal', 1, CAST(N'2023-02-17' AS Date), NULL, CAST(N'2023-02-17' AS Date), NULL, 0)
INSERT [dbo].[M_PL_Doses] ([DoseID], [DoseName], [CatagoryID], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (4, N'1 AfterNoon AfterMeal', 1, CAST(N'2023-02-17' AS Date), NULL, CAST(N'2023-02-17' AS Date), NULL, 0)
SET IDENTITY_INSERT [dbo].[M_PL_Doses] OFF
GO
SET IDENTITY_INSERT [dbo].[M_PL_HospitalMaster] ON 

INSERT [dbo].[M_PL_HospitalMaster] ([HospitalID], [HospitalName], [RegstrationNo], [LandlineNo], [Address], [City], [State], [PinCode], [ContactPerson], [MobielNo], [GSTNo], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag], [HEmail], [HWebsite]) VALUES (1, N'sanjibani', N'2a2345', N'064-7654321', N'bbsr', N'bbsr', N'WestBengal', 751006, N'gjgj', N'9087654321', N'21ANRPN6274B2ZM', CAST(N'2023-01-10T15:36:22.220' AS DateTime), 0, CAST(N'2023-01-17T17:56:53.497' AS DateTime), 0, 1, NULL, NULL)
INSERT [dbo].[M_PL_HospitalMaster] ([HospitalID], [HospitalName], [RegstrationNo], [LandlineNo], [Address], [City], [State], [PinCode], [ContactPerson], [MobielNo], [GSTNo], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag], [HEmail], [HWebsite]) VALUES (2, N'Sanjibani Hospital', N'20010', N'0684-2516666', N'Near AxisBank ,PK Road', N'Bhubaneswar', N'Odisha', 756003, N'0684-2518888', N'8976509789', N'18AABCU9603R1ZM', CAST(N'2023-01-10T16:10:30.020' AS DateTime), 0, CAST(N'2023-04-11T12:02:33.347' AS DateTime), 0, 0, N'customercare@sajibani.com', N'www.sanjibanihospital.com')
INSERT [dbo].[M_PL_HospitalMaster] ([HospitalID], [HospitalName], [RegstrationNo], [LandlineNo], [Address], [City], [State], [PinCode], [ContactPerson], [MobielNo], [GSTNo], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag], [HEmail], [HWebsite]) VALUES (3, N'Apollo', N'1234567890', N'1234-567890', N'fgh', N'dfghj', N'Odisha', 756001, N'sdfghj', N'1234567890', N'18AABCU9603R1ZM', CAST(N'2023-01-10T16:59:00.710' AS DateTime), 0, CAST(N'2023-02-24T15:21:40.453' AS DateTime), 0, 0, NULL, NULL)
INSERT [dbo].[M_PL_HospitalMaster] ([HospitalID], [HospitalName], [RegstrationNo], [LandlineNo], [Address], [City], [State], [PinCode], [ContactPerson], [MobielNo], [GSTNo], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag], [HEmail], [HWebsite]) VALUES (4, N'Ayush Hospital', N'123456', N'123-9876543', N'lkjhgfd', N'lkjhgf', N'WestBengal', 987654, N'lkjhgf', N'1234567890', N'18AABCU9603R1ZM', CAST(N'2023-01-10T17:23:16.710' AS DateTime), 0, CAST(N'2023-01-19T16:02:47.263' AS DateTime), 0, 0, NULL, NULL)
INSERT [dbo].[M_PL_HospitalMaster] ([HospitalID], [HospitalName], [RegstrationNo], [LandlineNo], [Address], [City], [State], [PinCode], [ContactPerson], [MobielNo], [GSTNo], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag], [HEmail], [HWebsite]) VALUES (5, N'Appolo Hospital', N'defghj', N'123-23456789', N'asdfghj', N'asdfgh', N'Bihar', 756001, N'sdfgh', N'1234567890', N'18AABCU9603R1ZM', CAST(N'2023-01-10T17:24:08.240' AS DateTime), 0, CAST(N'2023-01-19T16:02:16.903' AS DateTime), 0, 1, NULL, NULL)
INSERT [dbo].[M_PL_HospitalMaster] ([HospitalID], [HospitalName], [RegstrationNo], [LandlineNo], [Address], [City], [State], [PinCode], [ContactPerson], [MobielNo], [GSTNo], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag], [HEmail], [HWebsite]) VALUES (6, N'Utakal Hospital', N'ceecwhfvjwy56d', N'892-38277356', N'AT/po-kuliana,block-Badasahi,dist-MBJ,odisha,pin-757025', N'Mayurbhanj', N'Odisha', 757025, N'Sushanta kumar senapati', N'9876543213', N'18AABCU9603R1ZM', CAST(N'2023-01-11T15:09:32.160' AS DateTime), 0, CAST(N'2023-01-19T16:03:28.143' AS DateTime), 0, 0, NULL, NULL)
INSERT [dbo].[M_PL_HospitalMaster] ([HospitalID], [HospitalName], [RegstrationNo], [LandlineNo], [Address], [City], [State], [PinCode], [ContactPerson], [MobielNo], [GSTNo], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag], [HEmail], [HWebsite]) VALUES (7, N'dsdad', N'dadada', N'876-543545', N'dwd', N'Mayurbhanj', N'Odisha', 757025, N'uygfds', N'9876543254', N'27AAPFU0939F1ZV', CAST(N'2023-01-11T15:52:49.737' AS DateTime), 0, NULL, NULL, 1, NULL, NULL)
INSERT [dbo].[M_PL_HospitalMaster] ([HospitalID], [HospitalName], [RegstrationNo], [LandlineNo], [Address], [City], [State], [PinCode], [ContactPerson], [MobielNo], [GSTNo], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag], [HEmail], [HWebsite]) VALUES (8, N'Jebban', N'fwfwf', N'544-87878787', N'AT/po-kuliana,block-Badasahi,dist-MBJ,odisha,pin-757025', N'Mayurbhanj', N'Odisha', 757025, N'Sushanta kumar senapati', N'7665566565', N'27AAPFU0939F1ZV', CAST(N'2023-01-11T15:55:48.630' AS DateTime), 0, CAST(N'2023-01-12T11:26:27.027' AS DateTime), 0, 1, NULL, NULL)
INSERT [dbo].[M_PL_HospitalMaster] ([HospitalID], [HospitalName], [RegstrationNo], [LandlineNo], [Address], [City], [State], [PinCode], [ContactPerson], [MobielNo], [GSTNo], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag], [HEmail], [HWebsite]) VALUES (9, N'qkdhg', N'dhe23897u', N'992-9992229', N'SJDGSDGUY', N'SDHGGSD', N'Bihar', 243876, N'23743HJNH', N'2399999999', N'21ANRPN6274B1ZC', CAST(N'2023-01-11T16:51:16.003' AS DateTime), 0, CAST(N'2023-01-11T16:51:44.737' AS DateTime), 0, 1, NULL, NULL)
INSERT [dbo].[M_PL_HospitalMaster] ([HospitalID], [HospitalName], [RegstrationNo], [LandlineNo], [Address], [City], [State], [PinCode], [ContactPerson], [MobielNo], [GSTNo], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag], [HEmail], [HWebsite]) VALUES (10, N'Applolo Vine Hospital', N'5644364646465', N'544-87878787', N'AT/po-kuliana,block-Badasahi,dist-MBJ,odisha,pin-757025', N'Mayurbhanj', N'Odisha', 757025, N'Sushanta kumar senapati', N'5754757755', N'18AABCU9603R1ZM', CAST(N'2023-01-12T11:29:35.623' AS DateTime), 0, CAST(N'2023-01-19T16:03:46.127' AS DateTime), 0, 0, NULL, NULL)
INSERT [dbo].[M_PL_HospitalMaster] ([HospitalID], [HospitalName], [RegstrationNo], [LandlineNo], [Address], [City], [State], [PinCode], [ContactPerson], [MobielNo], [GSTNo], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag], [HEmail], [HWebsite]) VALUES (11, N'Sahoo Clinic', N'1200', N'544-87878787', N'acharya vihar', N'bbsr', N'Odisha', 756321, N'9876543219', N'9876543219', N'18AABCU9603R1ZM', CAST(N'2023-03-21T17:03:57.170' AS DateTime), 0, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[M_PL_HospitalMaster] ([HospitalID], [HospitalName], [RegstrationNo], [LandlineNo], [Address], [City], [State], [PinCode], [ContactPerson], [MobielNo], [GSTNo], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag], [HEmail], [HWebsite]) VALUES (12, N'fabysa', N'12345678', N'1234-987654', N'1234-234565', N'bbjhgf', N'Odisha', 765432, N'34569867', N'9876543210', N'18AABCU9603R2ZM', CAST(N'2023-03-23T12:29:53.420' AS DateTime), 0, NULL, NULL, 1, N'naye@gmail.com', N'www.fgdfgh.com')
INSERT [dbo].[M_PL_HospitalMaster] ([HospitalID], [HospitalName], [RegstrationNo], [LandlineNo], [Address], [City], [State], [PinCode], [ContactPerson], [MobielNo], [GSTNo], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag], [HEmail], [HWebsite]) VALUES (13, N'Nilachala Hospital', N'2189764', N'122-34567678', N'Dolamundei chaka', N'Cuttuck', N'Odisha', 678901, N'7689909090', N'8765878789', N'17AABCU7603R5ZM', CAST(N'2023-03-28T15:48:49.310' AS DateTime), 0, NULL, NULL, 0, N'nilachala@nhospital.com', N'www.nilachalahospital.com')
SET IDENTITY_INSERT [dbo].[M_PL_HospitalMaster] OFF
GO
SET IDENTITY_INSERT [dbo].[M_PL_HsnCode] ON 

INSERT [dbo].[M_PL_HsnCode] ([HsnId], [HsnCode], [Gst], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (1, N'72.02.99.11', 18, CAST(N'2023-01-19T12:24:11.380' AS DateTime), NULL, CAST(N'2023-01-19T12:24:11.380' AS DateTime), NULL, 0)
INSERT [dbo].[M_PL_HsnCode] ([HsnId], [HsnCode], [Gst], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (2, N'52.34.78.34', 18, CAST(N'2023-01-19T12:24:44.760' AS DateTime), NULL, CAST(N'2023-01-19T12:24:44.760' AS DateTime), NULL, 0)
SET IDENTITY_INSERT [dbo].[M_PL_HsnCode] OFF
GO
SET IDENTITY_INSERT [dbo].[M_PL_LABTEST] ON 

INSERT [dbo].[M_PL_LABTEST] ([LabTestId], [LabTestName], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag], [DignosisID], [Price]) VALUES (1, N'CBC', 0, CAST(N'2023-02-23' AS Date), NULL, CAST(N'2023-02-23' AS Date), 0, 12, N'350')
INSERT [dbo].[M_PL_LABTEST] ([LabTestId], [LabTestName], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag], [DignosisID], [Price]) VALUES (2, N'CRT ', 0, CAST(N'2023-02-23' AS Date), NULL, CAST(N'2023-02-23' AS Date), 0, 3, N'300')
INSERT [dbo].[M_PL_LABTEST] ([LabTestId], [LabTestName], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag], [DignosisID], [Price]) VALUES (3, N'hCG ', 0, CAST(N'2023-02-23' AS Date), NULL, CAST(N'2023-02-23' AS Date), 0, NULL, NULL)
INSERT [dbo].[M_PL_LABTEST] ([LabTestId], [LabTestName], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag], [DignosisID], [Price]) VALUES (4, N'FolateTest', 0, CAST(N'2023-02-23' AS Date), NULL, CAST(N'2023-02-23' AS Date), 0, NULL, NULL)
INSERT [dbo].[M_PL_LABTEST] ([LabTestId], [LabTestName], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag], [DignosisID], [Price]) VALUES (5, N'ESRTest', 0, CAST(N'2023-02-23' AS Date), NULL, CAST(N'2023-02-23' AS Date), 0, 0, NULL)
INSERT [dbo].[M_PL_LABTEST] ([LabTestId], [LabTestName], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag], [DignosisID], [Price]) VALUES (6, N'HbA1c Test', 0, CAST(N'2023-02-23' AS Date), NULL, CAST(N'2023-02-23' AS Date), 0, 0, NULL)
INSERT [dbo].[M_PL_LABTEST] ([LabTestId], [LabTestName], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag], [DignosisID], [Price]) VALUES (7, N'Inr', 0, CAST(N'2023-02-23' AS Date), 0, CAST(N'2023-02-23' AS Date), 0, 0, NULL)
INSERT [dbo].[M_PL_LABTEST] ([LabTestId], [LabTestName], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag], [DignosisID], [Price]) VALUES (8, N'Liver function', 0, CAST(N'2023-02-23' AS Date), NULL, CAST(N'2023-02-23' AS Date), 0, 4, N'500')
INSERT [dbo].[M_PL_LABTEST] ([LabTestId], [LabTestName], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag], [DignosisID], [Price]) VALUES (9, N'ghjk', 0, CAST(N'2023-02-23' AS Date), NULL, CAST(N'2023-02-23' AS Date), 1, 0, NULL)
INSERT [dbo].[M_PL_LABTEST] ([LabTestId], [LabTestName], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag], [DignosisID], [Price]) VALUES (10, N'fghjk', 0, CAST(N'2023-02-23' AS Date), NULL, CAST(N'2023-02-23' AS Date), 1, 0, NULL)
INSERT [dbo].[M_PL_LABTEST] ([LabTestId], [LabTestName], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag], [DignosisID], [Price]) VALUES (11, N'qwe', 0, CAST(N'2023-02-23' AS Date), NULL, CAST(N'2023-02-23' AS Date), 1, 0, NULL)
INSERT [dbo].[M_PL_LABTEST] ([LabTestId], [LabTestName], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag], [DignosisID], [Price]) VALUES (12, N'ghjkl6789', 0, CAST(N'2023-02-23' AS Date), NULL, CAST(N'2023-02-23' AS Date), 1, 0, NULL)
INSERT [dbo].[M_PL_LABTEST] ([LabTestId], [LabTestName], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag], [DignosisID], [Price]) VALUES (13, N'asdfgh', 0, CAST(N'2023-02-23' AS Date), NULL, CAST(N'2023-02-23' AS Date), 1, 0, NULL)
INSERT [dbo].[M_PL_LABTEST] ([LabTestId], [LabTestName], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag], [DignosisID], [Price]) VALUES (14, N'fghjkl;', 0, CAST(N'2023-02-23' AS Date), NULL, CAST(N'2023-02-23' AS Date), 1, 0, NULL)
INSERT [dbo].[M_PL_LABTEST] ([LabTestId], [LabTestName], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag], [DignosisID], [Price]) VALUES (15, N'aaaaaa', 0, CAST(N'2023-02-23' AS Date), 0, CAST(N'2023-02-23' AS Date), 1, 0, NULL)
INSERT [dbo].[M_PL_LABTEST] ([LabTestId], [LabTestName], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag], [DignosisID], [Price]) VALUES (16, N'sdfg', 0, CAST(N'2023-02-23' AS Date), NULL, CAST(N'2023-02-23' AS Date), 1, 0, NULL)
INSERT [dbo].[M_PL_LABTEST] ([LabTestId], [LabTestName], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag], [DignosisID], [Price]) VALUES (17, N'asdf', 0, CAST(N'2023-02-23' AS Date), NULL, CAST(N'2023-02-23' AS Date), 1, 0, NULL)
INSERT [dbo].[M_PL_LABTEST] ([LabTestId], [LabTestName], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag], [DignosisID], [Price]) VALUES (18, N'asdfg', 0, CAST(N'2023-02-23' AS Date), NULL, CAST(N'2023-02-23' AS Date), 1, 0, NULL)
INSERT [dbo].[M_PL_LABTEST] ([LabTestId], [LabTestName], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag], [DignosisID], [Price]) VALUES (19, N'asdf', 0, CAST(N'2023-02-23' AS Date), NULL, CAST(N'2023-02-23' AS Date), 1, 0, NULL)
INSERT [dbo].[M_PL_LABTEST] ([LabTestId], [LabTestName], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag], [DignosisID], [Price]) VALUES (20, N'PCR ', 0, CAST(N'2023-02-23' AS Date), NULL, CAST(N'2023-02-23' AS Date), 0, 14, N'320')
INSERT [dbo].[M_PL_LABTEST] ([LabTestId], [LabTestName], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag], [DignosisID], [Price]) VALUES (21, N'Diabetic Retinopathy', 0, CAST(N'2023-02-23' AS Date), NULL, CAST(N'2023-02-23' AS Date), 0, 5, N'600')
INSERT [dbo].[M_PL_LABTEST] ([LabTestId], [LabTestName], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag], [DignosisID], [Price]) VALUES (22, N'WBC', 0, CAST(N'2023-02-24' AS Date), NULL, CAST(N'2023-02-24' AS Date), 0, 13, N'400')
SET IDENTITY_INSERT [dbo].[M_PL_LABTEST] OFF
GO
SET IDENTITY_INSERT [dbo].[M_PL_MadicineCatagory] ON 

INSERT [dbo].[M_PL_MadicineCatagory] ([CatagoryId], [CatagoryName], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (1, N'Tablet', CAST(N'2023-02-17T19:07:32.430' AS DateTime), NULL, CAST(N'2023-02-17T19:07:32.430' AS DateTime), NULL, 0)
INSERT [dbo].[M_PL_MadicineCatagory] ([CatagoryId], [CatagoryName], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (2, N'Syrup', CAST(N'2023-02-17T19:07:32.440' AS DateTime), NULL, CAST(N'2023-02-17T19:07:32.440' AS DateTime), NULL, 0)
INSERT [dbo].[M_PL_MadicineCatagory] ([CatagoryId], [CatagoryName], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (3, N'Capsule', CAST(N'2023-02-17T19:07:32.440' AS DateTime), NULL, CAST(N'2023-02-17T19:07:32.440' AS DateTime), NULL, 0)
INSERT [dbo].[M_PL_MadicineCatagory] ([CatagoryId], [CatagoryName], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (4, N'Injection', CAST(N'2023-02-17T19:07:32.440' AS DateTime), NULL, CAST(N'2023-02-17T19:07:32.440' AS DateTime), NULL, 0)
SET IDENTITY_INSERT [dbo].[M_PL_MadicineCatagory] OFF
GO
SET IDENTITY_INSERT [dbo].[M_PL_MadicineSubCatagory] ON 

INSERT [dbo].[M_PL_MadicineSubCatagory] ([SubCatagoryId], [CatagoryId], [SubCatagoryName], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (1, 1, N'G Tablet', CAST(N'2023-01-19T12:31:07.423' AS DateTime), NULL, CAST(N'2023-01-19T12:31:07.423' AS DateTime), NULL, 0)
INSERT [dbo].[M_PL_MadicineSubCatagory] ([SubCatagoryId], [CatagoryId], [SubCatagoryName], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (2, 2, N'G Syrap', CAST(N'2023-01-19T12:31:20.537' AS DateTime), NULL, CAST(N'2023-01-19T12:31:20.537' AS DateTime), NULL, 0)
INSERT [dbo].[M_PL_MadicineSubCatagory] ([SubCatagoryId], [CatagoryId], [SubCatagoryName], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (3, 1, N'T Tablet', CAST(N'2023-01-19T12:31:37.103' AS DateTime), NULL, CAST(N'2023-01-19T12:31:37.103' AS DateTime), NULL, 0)
INSERT [dbo].[M_PL_MadicineSubCatagory] ([SubCatagoryId], [CatagoryId], [SubCatagoryName], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (4, 2, N'T Syrap', CAST(N'2023-01-19T12:31:47.227' AS DateTime), NULL, CAST(N'2023-01-19T12:31:47.227' AS DateTime), NULL, 0)
INSERT [dbo].[M_PL_MadicineSubCatagory] ([SubCatagoryId], [CatagoryId], [SubCatagoryName], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (5, 4, N'G Injections', CAST(N'2023-02-02T16:51:07.420' AS DateTime), NULL, CAST(N'2023-02-02T16:51:07.420' AS DateTime), NULL, 0)
INSERT [dbo].[M_PL_MadicineSubCatagory] ([SubCatagoryId], [CatagoryId], [SubCatagoryName], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (6, 4, N'T Injections', CAST(N'2023-02-02T16:51:24.673' AS DateTime), NULL, CAST(N'2023-02-02T16:51:24.673' AS DateTime), NULL, 0)
SET IDENTITY_INSERT [dbo].[M_PL_MadicineSubCatagory] OFF
GO
SET IDENTITY_INSERT [dbo].[M_PL_MedicineMaster] ON 

INSERT [dbo].[M_PL_MedicineMaster] ([Id], [SubCatagoryId], [CatagoryId], [Name], [ShortName], [ProductCode], [MRP], [HsnId], [Expiry], [Manufacture], [Description], [UnitId], [BrandId], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (1, 1, 1, N'Sushanta kumar senapati', N'ss', N'vdvdfdwdwd', CAST(12.00 AS Numeric(8, 2)), 1, CAST(N'2023-01-19T00:00:00.000' AS DateTime), CAST(N'2023-01-20T00:00:00.000' AS DateTime), N'For Cold', 2, 1, NULL, N'0', NULL, NULL, 1)
INSERT [dbo].[M_PL_MedicineMaster] ([Id], [SubCatagoryId], [CatagoryId], [Name], [ShortName], [ProductCode], [MRP], [HsnId], [Expiry], [Manufacture], [Description], [UnitId], [BrandId], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (2, 1, 1, N'Nam Cold', N'Ncold', N'cvhwjcvhv656wv', CAST(23.00 AS Numeric(8, 2)), 2, CAST(N'2023-01-28T00:00:00.000' AS DateTime), CAST(N'2023-01-13T00:00:00.000' AS DateTime), N'For Cold
', 2, 1, CAST(N'2023-01-19T17:03:50.190' AS DateTime), N'0', CAST(N'2023-02-02T17:07:58.880' AS DateTime), N'2', 0)
INSERT [dbo].[M_PL_MedicineMaster] ([Id], [SubCatagoryId], [CatagoryId], [Name], [ShortName], [ProductCode], [MRP], [HsnId], [Expiry], [Manufacture], [Description], [UnitId], [BrandId], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (3, 1, 1, N'Quinen', N'Quen', N'XBWJBXW56BVH', CAST(12.80 AS Numeric(8, 2)), 1, CAST(N'2023-01-17T00:00:00.000' AS DateTime), CAST(N'2023-02-04T00:00:00.000' AS DateTime), N'For Fileria', 1, 1, CAST(N'2023-01-20T16:26:45.953' AS DateTime), N'0', CAST(N'2023-02-01T16:24:30.843' AS DateTime), N'3', 0)
INSERT [dbo].[M_PL_MedicineMaster] ([Id], [SubCatagoryId], [CatagoryId], [Name], [ShortName], [ProductCode], [MRP], [HsnId], [Expiry], [Manufacture], [Description], [UnitId], [BrandId], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (4, 1, 1, N'Amitriptyline', N'AP', N'GHFTTYF67FGF', CAST(99.50 AS Numeric(8, 2)), 1, CAST(N'2023-01-04T00:00:00.000' AS DateTime), CAST(N'2023-01-27T00:00:00.000' AS DateTime), N'Patient Name', 1, 2, CAST(N'2023-01-20T16:30:24.840' AS DateTime), N'0', CAST(N'2023-01-20T16:34:09.877' AS DateTime), N'4', 1)
INSERT [dbo].[M_PL_MedicineMaster] ([Id], [SubCatagoryId], [CatagoryId], [Name], [ShortName], [ProductCode], [MRP], [HsnId], [Expiry], [Manufacture], [Description], [UnitId], [BrandId], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (5, 2, 1, N'Honitus ', N'HS', N'XBWJBX32HXJA', CAST(23.00 AS Numeric(8, 2)), 1, CAST(N'2023-01-18T00:00:00.000' AS DateTime), CAST(N'2023-06-28T00:00:00.000' AS DateTime), N'No Side Effect', 1, 1, CAST(N'2023-01-31T10:22:31.363' AS DateTime), N'0', NULL, NULL, 0)
INSERT [dbo].[M_PL_MedicineMaster] ([Id], [SubCatagoryId], [CatagoryId], [Name], [ShortName], [ProductCode], [MRP], [HsnId], [Expiry], [Manufacture], [Description], [UnitId], [BrandId], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (6, 2, 2, N'Kofol Cough', N'KC', N'VEFE43CDCSFD', CAST(77.00 AS Numeric(8, 2)), 1, CAST(N'2023-01-12T00:00:00.000' AS DateTime), CAST(N'2023-07-28T00:00:00.000' AS DateTime), N'No Side Effect', 1, 1, CAST(N'2023-01-31T10:24:09.920' AS DateTime), N'0', NULL, NULL, 0)
INSERT [dbo].[M_PL_MedicineMaster] ([Id], [SubCatagoryId], [CatagoryId], [Name], [ShortName], [ProductCode], [MRP], [HsnId], [Expiry], [Manufacture], [Description], [UnitId], [BrandId], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (15, 5, 4, N'Acetaminophen ', N'mophen', N'SDFGHJK', CAST(180.00 AS Numeric(8, 2)), 1, CAST(N'2023-03-01T00:00:00.000' AS DateTime), CAST(N'2025-03-19T00:00:00.000' AS DateTime), N'Fever', 1, 1, CAST(N'2023-03-20T16:31:56.547' AS DateTime), N'0', NULL, NULL, 0)
INSERT [dbo].[M_PL_MedicineMaster] ([Id], [SubCatagoryId], [CatagoryId], [Name], [ShortName], [ProductCode], [MRP], [HsnId], [Expiry], [Manufacture], [Description], [UnitId], [BrandId], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (7, 2, 1, N'Vaddaman Zecof', N'VZ', N'DWDW23DSC', CAST(60.00 AS Numeric(8, 2)), 2, CAST(N'2023-01-10T00:00:00.000' AS DateTime), CAST(N'2023-05-18T00:00:00.000' AS DateTime), N'No Side Effect', 2, 1, CAST(N'2023-01-31T10:26:12.057' AS DateTime), N'0', NULL, NULL, 0)
INSERT [dbo].[M_PL_MedicineMaster] ([Id], [SubCatagoryId], [CatagoryId], [Name], [ShortName], [ProductCode], [MRP], [HsnId], [Expiry], [Manufacture], [Description], [UnitId], [BrandId], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (8, 2, 2, N'Kashni Cough ', N'KC', N'XCWCCCW23XSX', CAST(34.75 AS Numeric(8, 2)), 1, CAST(N'2023-01-19T00:00:00.000' AS DateTime), CAST(N'2024-05-24T00:00:00.000' AS DateTime), N'No Side Effect', 1, 2, CAST(N'2023-01-31T10:27:52.720' AS DateTime), N'0', NULL, NULL, 0)
INSERT [dbo].[M_PL_MedicineMaster] ([Id], [SubCatagoryId], [CatagoryId], [Name], [ShortName], [ProductCode], [MRP], [HsnId], [Expiry], [Manufacture], [Description], [UnitId], [BrandId], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (9, 1, 1, N'Allegra', N'AG', N'CSCSD11DAD', CAST(30.00 AS Numeric(8, 2)), 1, CAST(N'2023-01-25T00:00:00.000' AS DateTime), CAST(N'2023-03-24T00:00:00.000' AS DateTime), N'Slight side effect
', 1, 1, CAST(N'2023-01-31T10:31:43.847' AS DateTime), N'0', NULL, NULL, 0)
INSERT [dbo].[M_PL_MedicineMaster] ([Id], [SubCatagoryId], [CatagoryId], [Name], [ShortName], [ProductCode], [MRP], [HsnId], [Expiry], [Manufacture], [Description], [UnitId], [BrandId], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (10, 1, 1, N'Atarax', N'AT', N'XSCSSD22C', CAST(22.00 AS Numeric(8, 2)), 2, CAST(N'2023-01-18T00:00:00.000' AS DateTime), CAST(N'2023-05-31T00:00:00.000' AS DateTime), N'No side effect', 1, 2, CAST(N'2023-01-31T10:33:01.757' AS DateTime), N'0', NULL, NULL, 0)
INSERT [dbo].[M_PL_MedicineMaster] ([Id], [SubCatagoryId], [CatagoryId], [Name], [ShortName], [ProductCode], [MRP], [HsnId], [Expiry], [Manufacture], [Description], [UnitId], [BrandId], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (11, 1, 1, N'Arkamin', N'AK', N'CSCSCSCQ11D', CAST(11.00 AS Numeric(8, 2)), 1, CAST(N'2023-01-18T00:00:00.000' AS DateTime), CAST(N'2023-04-19T00:00:00.000' AS DateTime), N'No side effect', 2, 1, CAST(N'2023-01-31T10:34:27.947' AS DateTime), N'0', NULL, NULL, 0)
INSERT [dbo].[M_PL_MedicineMaster] ([Id], [SubCatagoryId], [CatagoryId], [Name], [ShortName], [ProductCode], [MRP], [HsnId], [Expiry], [Manufacture], [Description], [UnitId], [BrandId], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (12, 1, 1, N'AltraDay', N'AD', N'BVRHBFNY80UYJHF', CAST(40.00 AS Numeric(8, 2)), 1, CAST(N'2023-01-20T00:00:00.000' AS DateTime), CAST(N'2023-06-30T00:00:00.000' AS DateTime), N'No side Effect', 2, 1, CAST(N'2023-01-31T10:35:51.677' AS DateTime), N'0', NULL, NULL, 0)
SET IDENTITY_INSERT [dbo].[M_PL_MedicineMaster] OFF
GO
SET IDENTITY_INSERT [dbo].[M_PL_MenuTable] ON 

INSERT [dbo].[M_PL_MenuTable] ([MenuId], [MenuName], [SlNo], [IconName], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (1, N'Master', 1, N'asdfgh', CAST(N'2023-04-06' AS Date), 0, CAST(N'2023-04-10' AS Date), 0, 1)
INSERT [dbo].[M_PL_MenuTable] ([MenuId], [MenuName], [SlNo], [IconName], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (2, N'Hospital', 2, NULL, CAST(N'2023-04-07' AS Date), 0, CAST(N'2023-04-07' AS Date), NULL, 1)
INSERT [dbo].[M_PL_MenuTable] ([MenuId], [MenuName], [SlNo], [IconName], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (3, N'Slot Mapping', 2, N'sdfghjk', CAST(N'2023-04-07' AS Date), 0, CAST(N'2023-04-07' AS Date), NULL, 1)
INSERT [dbo].[M_PL_MenuTable] ([MenuId], [MenuName], [SlNo], [IconName], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (4, N'Patient Appointment', 3, N'dfghjk', CAST(N'2023-04-07' AS Date), 0, CAST(N'2023-04-07' AS Date), NULL, 1)
INSERT [dbo].[M_PL_MenuTable] ([MenuId], [MenuName], [SlNo], [IconName], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (5, N'Pathology', 4, N'ertyu', CAST(N'2023-04-07' AS Date), 0, CAST(N'2023-04-07' AS Date), NULL, 1)
INSERT [dbo].[M_PL_MenuTable] ([MenuId], [MenuName], [SlNo], [IconName], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (6, N'Authentication', 5, N'edrtyuio', CAST(N'2023-04-07' AS Date), 0, CAST(N'2023-04-07' AS Date), NULL, 1)
INSERT [dbo].[M_PL_MenuTable] ([MenuId], [MenuName], [SlNo], [IconName], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (7, N'Master', 1, N'fa fa-user', CAST(N'2023-04-10' AS Date), 0, CAST(N'2023-04-11' AS Date), 0, 0)
INSERT [dbo].[M_PL_MenuTable] ([MenuId], [MenuName], [SlNo], [IconName], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (8, N'Slot Mapping', 2, N'fa fa-map', CAST(N'2023-04-10' AS Date), 0, CAST(N'2023-04-11' AS Date), 0, 0)
INSERT [dbo].[M_PL_MenuTable] ([MenuId], [MenuName], [SlNo], [IconName], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (9, N'Patient Appointment', 3, N'fa fa-user-md', CAST(N'2023-04-10' AS Date), 0, CAST(N'2023-04-11' AS Date), 0, 0)
INSERT [dbo].[M_PL_MenuTable] ([MenuId], [MenuName], [SlNo], [IconName], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (10, N'Pathology', 4, N'fa fa-stethoscope', CAST(N'2023-04-10' AS Date), 0, CAST(N'2023-04-11' AS Date), 0, 0)
INSERT [dbo].[M_PL_MenuTable] ([MenuId], [MenuName], [SlNo], [IconName], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (11, N'Authentication', 5, N'fa fa-user-secret', CAST(N'2023-04-10' AS Date), 0, CAST(N'2023-04-11' AS Date), 0, 0)
INSERT [dbo].[M_PL_MenuTable] ([MenuId], [MenuName], [SlNo], [IconName], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (12, N'Dashboard', 1, N'fa fa-television', CAST(N'2023-04-11' AS Date), 0, CAST(N'2023-04-11' AS Date), NULL, 1)
INSERT [dbo].[M_PL_MenuTable] ([MenuId], [MenuName], [SlNo], [IconName], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (13, N'Appointment', 6, N'fa fa-list', CAST(N'2023-04-11' AS Date), 0, CAST(N'2023-04-11' AS Date), NULL, 0)
INSERT [dbo].[M_PL_MenuTable] ([MenuId], [MenuName], [SlNo], [IconName], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (14, N'Print Pathology', 7, N'fa fa-print', CAST(N'2023-04-11' AS Date), 0, CAST(N'2023-04-11' AS Date), NULL, 0)
INSERT [dbo].[M_PL_MenuTable] ([MenuId], [MenuName], [SlNo], [IconName], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (15, N'Report', 8, N'fa fa-list', CAST(N'2023-04-12' AS Date), 0, CAST(N'2023-04-12' AS Date), NULL, 0)
SET IDENTITY_INSERT [dbo].[M_PL_MenuTable] OFF
GO
SET IDENTITY_INSERT [dbo].[M_PL_PatientMaster] ON 

INSERT [dbo].[M_PL_PatientMaster] ([PatientID], [Name], [Gender], [AgeYear], [AgeMonth], [AgeDays], [Address], [City], [Pincode], [phoneno], [WhatsAppNo], [ReferByClientId], [EDate], [Status], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (1, N'Sushanta kumar senapati', N'Female', 4, 4, 4, N'AT/po-kuliana,block-Badasahi,dist-MBJ,odisha,pin-757025', N'Mayurbhanj', N'757025', N'+918658193889', N'+918658193889', 2, CAST(N'2023-01-18T00:00:00.000' AS DateTime), N'Active', CAST(N'2023-01-04' AS Date), 0, 1, CAST(N'2023-01-04' AS Date), 1)
INSERT [dbo].[M_PL_PatientMaster] ([PatientID], [Name], [Gender], [AgeYear], [AgeMonth], [AgeDays], [Address], [City], [Pincode], [phoneno], [WhatsAppNo], [ReferByClientId], [EDate], [Status], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (2, N'Sushanta kumar senapati', N'Male', 5, 5, 5, N'AT/po-kuliana,block-Badasahi,dist-MBJ,odisha,pin-757025', N'Mayurbhanj', N'757025', N'+918658193889', N'+918658193889', 1, CAST(N'2023-01-19T00:00:00.000' AS DateTime), N'Pending', CAST(N'2023-01-04' AS Date), 0, 2, CAST(N'2023-01-04' AS Date), 1)
INSERT [dbo].[M_PL_PatientMaster] ([PatientID], [Name], [Gender], [AgeYear], [AgeMonth], [AgeDays], [Address], [City], [Pincode], [phoneno], [WhatsAppNo], [ReferByClientId], [EDate], [Status], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (3, N'Sushanta kumar senapati', N'Female', 5, 5, 5, N'AT/po-kuliana,block-Badasahi,dist-MBJ,odisha,pin-757025', N'Mayurbhanj', N'757025', N'+918658193889', N'+918658193889', 1, CAST(N'2023-02-02T00:00:00.000' AS DateTime), N'Active', CAST(N'2023-01-04' AS Date), 0, NULL, NULL, 1)
INSERT [dbo].[M_PL_PatientMaster] ([PatientID], [Name], [Gender], [AgeYear], [AgeMonth], [AgeDays], [Address], [City], [Pincode], [phoneno], [WhatsAppNo], [ReferByClientId], [EDate], [Status], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (4, N'Sushanta Dumo', N'Male', 4, 5, 5, N'AT/po-kuliana,block-Badasahi,dist-MBJ,odisha,pin-757025', N'Mayurbhanj', N'757025', N'8658193889', N'8658193889', 2, NULL, NULL, CAST(N'2023-01-05' AS Date), 0, 4, CAST(N'2023-01-05' AS Date), 1)
INSERT [dbo].[M_PL_PatientMaster] ([PatientID], [Name], [Gender], [AgeYear], [AgeMonth], [AgeDays], [Address], [City], [Pincode], [phoneno], [WhatsAppNo], [ReferByClientId], [EDate], [Status], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (5, N'Sushanta kumar senapati', N'Male', 4, 4, 4, N'AT/po-kuliana,block-Badasahi,dist-MBJ,odisha,pin-757025', N'Mayurbhanj', N'757025', N'8658193889', N'8658193889', 1, CAST(N'2023-01-05T13:17:47.880' AS DateTime), N'Active', CAST(N'2023-01-05' AS Date), 0, NULL, NULL, 1)
INSERT [dbo].[M_PL_PatientMaster] ([PatientID], [Name], [Gender], [AgeYear], [AgeMonth], [AgeDays], [Address], [City], [Pincode], [phoneno], [WhatsAppNo], [ReferByClientId], [EDate], [Status], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (6, N'Sushanta kumar senapati', N'Female', 4, 3, 31, N'AT/po-kuliana,block-Badasahi,dist-MBJ,odisha,pin-757025', N'Mayurbhanj', N'757025', N'8658193889', NULL, 1, NULL, NULL, CAST(N'2023-01-05' AS Date), 0, 6, CAST(N'2023-01-06' AS Date), 1)
INSERT [dbo].[M_PL_PatientMaster] ([PatientID], [Name], [Gender], [AgeYear], [AgeMonth], [AgeDays], [Address], [City], [Pincode], [phoneno], [WhatsAppNo], [ReferByClientId], [EDate], [Status], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (7, N'dwd', N'Female', 7, 7, 7, N'AT/po-kuliana,block-Badasahi,dist-MBJ,odisha,pin-757025', N'Mayurbhanj', N'757025', N'8658193889', N'8658193889', 2, CAST(N'2023-01-05T15:24:20.360' AS DateTime), N'Active', CAST(N'2023-01-05' AS Date), 0, NULL, NULL, 1)
INSERT [dbo].[M_PL_PatientMaster] ([PatientID], [Name], [Gender], [AgeYear], [AgeMonth], [AgeDays], [Address], [City], [Pincode], [phoneno], [WhatsAppNo], [ReferByClientId], [EDate], [Status], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (8, N'Sushanta kumar senapati', N'Female', 32, 55, 555, N'AT/po-kuliana,block-Badasahi,dist-MBJ,odisha,pin-757025', N'Mayurbhanj', N'757025', N'8658193889', N'8658193889', 1, CAST(N'2023-01-06T11:40:32.900' AS DateTime), N'Active', CAST(N'2023-01-06' AS Date), 0, NULL, NULL, 1)
INSERT [dbo].[M_PL_PatientMaster] ([PatientID], [Name], [Gender], [AgeYear], [AgeMonth], [AgeDays], [Address], [City], [Pincode], [phoneno], [WhatsAppNo], [ReferByClientId], [EDate], [Status], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (9, N'Sushanta kumar senapati', N'Male', 3, 32, 32, N'AT/po-kuliana,block-Badasahi,dist-MBJ,odisha,pin-757025', N'Mayurbhanj', N'757025', N'8658193889', N'8658193889', 2, CAST(N'2023-01-06T12:16:29.853' AS DateTime), N'Active', CAST(N'2023-01-06' AS Date), 0, NULL, NULL, 1)
INSERT [dbo].[M_PL_PatientMaster] ([PatientID], [Name], [Gender], [AgeYear], [AgeMonth], [AgeDays], [Address], [City], [Pincode], [phoneno], [WhatsAppNo], [ReferByClientId], [EDate], [Status], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (10, N'Sushanta kumar senapati', N'Female', 54, 54, 54, N'AT/po-kuliana,block-Badasahi,dist-MBJ,odisha,pin-757025', N'Mayurbhanj', N'757025', N'8658193889', N'8658193889', 1, CAST(N'2023-01-06T12:19:59.273' AS DateTime), N'Active', CAST(N'2023-01-06' AS Date), 0, NULL, NULL, 1)
INSERT [dbo].[M_PL_PatientMaster] ([PatientID], [Name], [Gender], [AgeYear], [AgeMonth], [AgeDays], [Address], [City], [Pincode], [phoneno], [WhatsAppNo], [ReferByClientId], [EDate], [Status], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (11, N'Sushanta kumar senapati', N'Male', 454, 9, 30, N'AT/po-kuliana,block-Badasahi,dist-MBJ,odisha,pin-757025', N'Mayurbhanj', N'757025', N'8658193889', N'8658193889', 2, CAST(N'2023-01-06T12:22:53.100' AS DateTime), N'Active', CAST(N'2023-01-06' AS Date), 0, NULL, NULL, 1)
INSERT [dbo].[M_PL_PatientMaster] ([PatientID], [Name], [Gender], [AgeYear], [AgeMonth], [AgeDays], [Address], [City], [Pincode], [phoneno], [WhatsAppNo], [ReferByClientId], [EDate], [Status], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (12, N'Sushanta kumar senapati', N'Female', 12, 3, 4, N'AT/po-kuliana,block-Badasahi,dist-MBJ,odisha,pin-757025', N'Mayurbhanj', N'757025', N'8018935900', N'8658193889', 2, CAST(N'2023-01-06T12:58:59.827' AS DateTime), N'Active', CAST(N'2023-01-06' AS Date), 0, NULL, NULL, 0)
INSERT [dbo].[M_PL_PatientMaster] ([PatientID], [Name], [Gender], [AgeYear], [AgeMonth], [AgeDays], [Address], [City], [Pincode], [phoneno], [WhatsAppNo], [ReferByClientId], [EDate], [Status], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (13, N'Sushanta kumar senapati', N'Female', 4, 4, 4, N'AT/po-kuliana,block-Badasahi,dist-MBJ,odisha,pin-757025', N'Mayurbhanj', N'757025', N'8658193889', NULL, 1, NULL, NULL, CAST(N'2023-01-06' AS Date), 0, 13, CAST(N'2023-01-09' AS Date), 0)
INSERT [dbo].[M_PL_PatientMaster] ([PatientID], [Name], [Gender], [AgeYear], [AgeMonth], [AgeDays], [Address], [City], [Pincode], [phoneno], [WhatsAppNo], [ReferByClientId], [EDate], [Status], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (14, N'Dr. senapati', N'Male', 4, 4, 4, N'dheygcyh', N'ctc', N'787878', N'9898989889', NULL, 1, CAST(N'2023-01-06T17:09:46.430' AS DateTime), N'Active', CAST(N'2023-01-06' AS Date), 0, NULL, NULL, 0)
INSERT [dbo].[M_PL_PatientMaster] ([PatientID], [Name], [Gender], [AgeYear], [AgeMonth], [AgeDays], [Address], [City], [Pincode], [phoneno], [WhatsAppNo], [ReferByClientId], [EDate], [Status], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (15, N'psn', N'Male', 2322, 11, 31, N'2397y9823y', N'sd', N'182788', N'1208718927', NULL, 1, CAST(N'2023-01-16T17:03:05.723' AS DateTime), N'Active', CAST(N'2023-01-16' AS Date), 0, NULL, NULL, 0)
SET IDENTITY_INSERT [dbo].[M_PL_PatientMaster] OFF
GO
SET IDENTITY_INSERT [dbo].[M_PL_PatientMasterNew] ON 

INSERT [dbo].[M_PL_PatientMasterNew] ([PatientId], [UserId], [PatientHistory], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (2, 63, N'Namcold', CAST(N'2023-01-18' AS Date), 62, 0, CAST(N'2023-01-18' AS Date), 1)
INSERT [dbo].[M_PL_PatientMasterNew] ([PatientId], [UserId], [PatientHistory], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (3, 64, N'Cold', CAST(N'2023-01-18' AS Date), 63, 64, CAST(N'2023-01-18' AS Date), 1)
INSERT [dbo].[M_PL_PatientMasterNew] ([PatientId], [UserId], [PatientHistory], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (4, 65, N'Jada Bandi', CAST(N'2023-01-18' AS Date), 64, 0, CAST(N'2023-01-18' AS Date), 1)
INSERT [dbo].[M_PL_PatientMasterNew] ([PatientId], [UserId], [PatientHistory], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (8, 94, N'Previously No Bemari', CAST(N'2023-01-23' AS Date), 94, 0, CAST(N'2023-01-23' AS Date), 0)
INSERT [dbo].[M_PL_PatientMasterNew] ([PatientId], [UserId], [PatientHistory], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (9, 107, N'rvefwdqs', CAST(N'2023-01-31' AS Date), 107, 107, CAST(N'2023-02-01' AS Date), 0)
INSERT [dbo].[M_PL_PatientMasterNew] ([PatientId], [UserId], [PatientHistory], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (10, 108, N'wd3wd2', CAST(N'2023-01-31' AS Date), 108, 0, CAST(N'2023-01-31' AS Date), 1)
INSERT [dbo].[M_PL_PatientMasterNew] ([PatientId], [UserId], [PatientHistory], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (11, 112, N'fvefewfwfwf', CAST(N'2023-02-01' AS Date), 112, 0, CAST(N'2023-02-01' AS Date), 0)
INSERT [dbo].[M_PL_PatientMasterNew] ([PatientId], [UserId], [PatientHistory], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (12, 113, N'tr', CAST(N'2023-02-01' AS Date), 113, 113, CAST(N'2023-02-01' AS Date), 1)
INSERT [dbo].[M_PL_PatientMasterNew] ([PatientId], [UserId], [PatientHistory], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (5, 69, N'Cold Fever', CAST(N'2023-01-18' AS Date), 68, 69, CAST(N'2023-01-18' AS Date), 1)
INSERT [dbo].[M_PL_PatientMasterNew] ([PatientId], [UserId], [PatientHistory], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (6, 78, N'Severe cold', CAST(N'2023-01-19' AS Date), 78, 0, CAST(N'2023-01-19' AS Date), 0)
INSERT [dbo].[M_PL_PatientMasterNew] ([PatientId], [UserId], [PatientHistory], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (7, 79, N'cold', CAST(N'2023-01-19' AS Date), 79, 0, CAST(N'2023-01-19' AS Date), 0)
SET IDENTITY_INSERT [dbo].[M_PL_PatientMasterNew] OFF
GO
SET IDENTITY_INSERT [dbo].[M_PL_PermissionTable] ON 

INSERT [dbo].[M_PL_PermissionTable] ([PermissionId], [DesignationId], [UserId], [SubMenuId], [IsChecked], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (95, 2, 0, 2, 0, CAST(N'2023-04-11' AS Date), 0, CAST(N'2023-04-11' AS Date), NULL, 0)
INSERT [dbo].[M_PL_PermissionTable] ([PermissionId], [DesignationId], [UserId], [SubMenuId], [IsChecked], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (96, 2, 0, 6, 0, CAST(N'2023-04-11' AS Date), 0, CAST(N'2023-04-11' AS Date), NULL, 0)
INSERT [dbo].[M_PL_PermissionTable] ([PermissionId], [DesignationId], [UserId], [SubMenuId], [IsChecked], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (97, 2, 0, 7, 0, CAST(N'2023-04-11' AS Date), 0, CAST(N'2023-04-11' AS Date), NULL, 0)
INSERT [dbo].[M_PL_PermissionTable] ([PermissionId], [DesignationId], [UserId], [SubMenuId], [IsChecked], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (98, 2, 0, 8, 0, CAST(N'2023-04-11' AS Date), 0, CAST(N'2023-04-11' AS Date), NULL, 0)
INSERT [dbo].[M_PL_PermissionTable] ([PermissionId], [DesignationId], [UserId], [SubMenuId], [IsChecked], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (99, 2, 0, 9, 0, CAST(N'2023-04-11' AS Date), 0, CAST(N'2023-04-11' AS Date), NULL, 0)
INSERT [dbo].[M_PL_PermissionTable] ([PermissionId], [DesignationId], [UserId], [SubMenuId], [IsChecked], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (100, 2, 0, 10, 0, CAST(N'2023-04-11' AS Date), 0, CAST(N'2023-04-11' AS Date), NULL, 0)
INSERT [dbo].[M_PL_PermissionTable] ([PermissionId], [DesignationId], [UserId], [SubMenuId], [IsChecked], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (101, 2, 0, 11, 0, CAST(N'2023-04-11' AS Date), 0, CAST(N'2023-04-11' AS Date), NULL, 0)
INSERT [dbo].[M_PL_PermissionTable] ([PermissionId], [DesignationId], [UserId], [SubMenuId], [IsChecked], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (102, 2, 0, 12, 0, CAST(N'2023-04-11' AS Date), 0, CAST(N'2023-04-11' AS Date), NULL, 0)
INSERT [dbo].[M_PL_PermissionTable] ([PermissionId], [DesignationId], [UserId], [SubMenuId], [IsChecked], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (103, 2, 0, 13, 0, CAST(N'2023-04-11' AS Date), 0, CAST(N'2023-04-11' AS Date), NULL, 0)
INSERT [dbo].[M_PL_PermissionTable] ([PermissionId], [DesignationId], [UserId], [SubMenuId], [IsChecked], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (104, 2, 0, 14, 0, CAST(N'2023-04-11' AS Date), 0, CAST(N'2023-04-11' AS Date), NULL, 0)
INSERT [dbo].[M_PL_PermissionTable] ([PermissionId], [DesignationId], [UserId], [SubMenuId], [IsChecked], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (105, 2, 0, 15, 0, CAST(N'2023-04-11' AS Date), 0, CAST(N'2023-04-11' AS Date), NULL, 0)
INSERT [dbo].[M_PL_PermissionTable] ([PermissionId], [DesignationId], [UserId], [SubMenuId], [IsChecked], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (106, 2, 0, 16, 0, CAST(N'2023-04-11' AS Date), 0, CAST(N'2023-04-11' AS Date), NULL, 0)
INSERT [dbo].[M_PL_PermissionTable] ([PermissionId], [DesignationId], [UserId], [SubMenuId], [IsChecked], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (107, 2, 0, 17, 0, CAST(N'2023-04-11' AS Date), 0, CAST(N'2023-04-11' AS Date), NULL, 0)
INSERT [dbo].[M_PL_PermissionTable] ([PermissionId], [DesignationId], [UserId], [SubMenuId], [IsChecked], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (108, 2, 0, 19, 1, CAST(N'2023-04-11' AS Date), 0, CAST(N'2023-04-11' AS Date), NULL, 0)
INSERT [dbo].[M_PL_PermissionTable] ([PermissionId], [DesignationId], [UserId], [SubMenuId], [IsChecked], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (109, 5, 0, 2, 0, CAST(N'2023-04-11' AS Date), 0, CAST(N'2023-04-11' AS Date), NULL, 0)
INSERT [dbo].[M_PL_PermissionTable] ([PermissionId], [DesignationId], [UserId], [SubMenuId], [IsChecked], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (110, 5, 0, 6, 1, CAST(N'2023-04-11' AS Date), 0, CAST(N'2023-04-11' AS Date), NULL, 0)
INSERT [dbo].[M_PL_PermissionTable] ([PermissionId], [DesignationId], [UserId], [SubMenuId], [IsChecked], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (111, 5, 0, 7, 0, CAST(N'2023-04-11' AS Date), 0, CAST(N'2023-04-11' AS Date), NULL, 0)
INSERT [dbo].[M_PL_PermissionTable] ([PermissionId], [DesignationId], [UserId], [SubMenuId], [IsChecked], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (112, 5, 0, 8, 0, CAST(N'2023-04-11' AS Date), 0, CAST(N'2023-04-11' AS Date), NULL, 0)
INSERT [dbo].[M_PL_PermissionTable] ([PermissionId], [DesignationId], [UserId], [SubMenuId], [IsChecked], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (113, 5, 0, 9, 0, CAST(N'2023-04-11' AS Date), 0, CAST(N'2023-04-11' AS Date), NULL, 0)
INSERT [dbo].[M_PL_PermissionTable] ([PermissionId], [DesignationId], [UserId], [SubMenuId], [IsChecked], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (114, 5, 0, 10, 0, CAST(N'2023-04-11' AS Date), 0, CAST(N'2023-04-11' AS Date), NULL, 0)
INSERT [dbo].[M_PL_PermissionTable] ([PermissionId], [DesignationId], [UserId], [SubMenuId], [IsChecked], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (115, 5, 0, 11, 0, CAST(N'2023-04-11' AS Date), 0, CAST(N'2023-04-11' AS Date), NULL, 0)
INSERT [dbo].[M_PL_PermissionTable] ([PermissionId], [DesignationId], [UserId], [SubMenuId], [IsChecked], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (116, 5, 0, 12, 0, CAST(N'2023-04-11' AS Date), 0, CAST(N'2023-04-11' AS Date), NULL, 0)
INSERT [dbo].[M_PL_PermissionTable] ([PermissionId], [DesignationId], [UserId], [SubMenuId], [IsChecked], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (117, 5, 0, 13, 0, CAST(N'2023-04-11' AS Date), 0, CAST(N'2023-04-11' AS Date), NULL, 0)
INSERT [dbo].[M_PL_PermissionTable] ([PermissionId], [DesignationId], [UserId], [SubMenuId], [IsChecked], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (118, 5, 0, 14, 0, CAST(N'2023-04-11' AS Date), 0, CAST(N'2023-04-11' AS Date), NULL, 0)
INSERT [dbo].[M_PL_PermissionTable] ([PermissionId], [DesignationId], [UserId], [SubMenuId], [IsChecked], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (119, 5, 0, 15, 0, CAST(N'2023-04-11' AS Date), 0, CAST(N'2023-04-11' AS Date), NULL, 0)
INSERT [dbo].[M_PL_PermissionTable] ([PermissionId], [DesignationId], [UserId], [SubMenuId], [IsChecked], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (120, 5, 0, 16, 0, CAST(N'2023-04-11' AS Date), 0, CAST(N'2023-04-11' AS Date), NULL, 0)
INSERT [dbo].[M_PL_PermissionTable] ([PermissionId], [DesignationId], [UserId], [SubMenuId], [IsChecked], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (121, 5, 0, 17, 0, CAST(N'2023-04-11' AS Date), 0, CAST(N'2023-04-11' AS Date), NULL, 0)
INSERT [dbo].[M_PL_PermissionTable] ([PermissionId], [DesignationId], [UserId], [SubMenuId], [IsChecked], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (122, 5, 0, 19, 0, CAST(N'2023-04-11' AS Date), 0, CAST(N'2023-04-11' AS Date), NULL, 0)
INSERT [dbo].[M_PL_PermissionTable] ([PermissionId], [DesignationId], [UserId], [SubMenuId], [IsChecked], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (123, 5, 0, 20, 1, CAST(N'2023-04-11' AS Date), 0, CAST(N'2023-04-11' AS Date), NULL, 0)
INSERT [dbo].[M_PL_PermissionTable] ([PermissionId], [DesignationId], [UserId], [SubMenuId], [IsChecked], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (173, 6, 0, 2, 0, CAST(N'2023-04-12' AS Date), 0, CAST(N'2023-04-12' AS Date), NULL, 0)
INSERT [dbo].[M_PL_PermissionTable] ([PermissionId], [DesignationId], [UserId], [SubMenuId], [IsChecked], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (174, 6, 0, 6, 1, CAST(N'2023-04-12' AS Date), 0, CAST(N'2023-04-12' AS Date), NULL, 0)
INSERT [dbo].[M_PL_PermissionTable] ([PermissionId], [DesignationId], [UserId], [SubMenuId], [IsChecked], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (175, 6, 0, 7, 0, CAST(N'2023-04-12' AS Date), 0, CAST(N'2023-04-12' AS Date), NULL, 0)
INSERT [dbo].[M_PL_PermissionTable] ([PermissionId], [DesignationId], [UserId], [SubMenuId], [IsChecked], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (176, 6, 0, 8, 0, CAST(N'2023-04-12' AS Date), 0, CAST(N'2023-04-12' AS Date), NULL, 0)
INSERT [dbo].[M_PL_PermissionTable] ([PermissionId], [DesignationId], [UserId], [SubMenuId], [IsChecked], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (177, 6, 0, 9, 0, CAST(N'2023-04-12' AS Date), 0, CAST(N'2023-04-12' AS Date), NULL, 0)
INSERT [dbo].[M_PL_PermissionTable] ([PermissionId], [DesignationId], [UserId], [SubMenuId], [IsChecked], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (178, 6, 0, 10, 0, CAST(N'2023-04-12' AS Date), 0, CAST(N'2023-04-12' AS Date), NULL, 0)
INSERT [dbo].[M_PL_PermissionTable] ([PermissionId], [DesignationId], [UserId], [SubMenuId], [IsChecked], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (179, 6, 0, 11, 0, CAST(N'2023-04-12' AS Date), 0, CAST(N'2023-04-12' AS Date), NULL, 0)
INSERT [dbo].[M_PL_PermissionTable] ([PermissionId], [DesignationId], [UserId], [SubMenuId], [IsChecked], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (180, 6, 0, 12, 0, CAST(N'2023-04-12' AS Date), 0, CAST(N'2023-04-12' AS Date), NULL, 0)
INSERT [dbo].[M_PL_PermissionTable] ([PermissionId], [DesignationId], [UserId], [SubMenuId], [IsChecked], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (181, 6, 0, 13, 0, CAST(N'2023-04-12' AS Date), 0, CAST(N'2023-04-12' AS Date), NULL, 0)
INSERT [dbo].[M_PL_PermissionTable] ([PermissionId], [DesignationId], [UserId], [SubMenuId], [IsChecked], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (182, 6, 0, 14, 0, CAST(N'2023-04-12' AS Date), 0, CAST(N'2023-04-12' AS Date), NULL, 0)
INSERT [dbo].[M_PL_PermissionTable] ([PermissionId], [DesignationId], [UserId], [SubMenuId], [IsChecked], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (183, 6, 0, 15, 0, CAST(N'2023-04-12' AS Date), 0, CAST(N'2023-04-12' AS Date), NULL, 0)
INSERT [dbo].[M_PL_PermissionTable] ([PermissionId], [DesignationId], [UserId], [SubMenuId], [IsChecked], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (184, 6, 0, 16, 0, CAST(N'2023-04-12' AS Date), 0, CAST(N'2023-04-12' AS Date), NULL, 0)
INSERT [dbo].[M_PL_PermissionTable] ([PermissionId], [DesignationId], [UserId], [SubMenuId], [IsChecked], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (185, 6, 0, 17, 0, CAST(N'2023-04-12' AS Date), 0, CAST(N'2023-04-12' AS Date), NULL, 0)
INSERT [dbo].[M_PL_PermissionTable] ([PermissionId], [DesignationId], [UserId], [SubMenuId], [IsChecked], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (186, 6, 0, 19, 0, CAST(N'2023-04-12' AS Date), 0, CAST(N'2023-04-12' AS Date), NULL, 0)
INSERT [dbo].[M_PL_PermissionTable] ([PermissionId], [DesignationId], [UserId], [SubMenuId], [IsChecked], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (187, 6, 0, 20, 0, CAST(N'2023-04-12' AS Date), 0, CAST(N'2023-04-12' AS Date), NULL, 0)
INSERT [dbo].[M_PL_PermissionTable] ([PermissionId], [DesignationId], [UserId], [SubMenuId], [IsChecked], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (188, 6, 0, 21, 0, CAST(N'2023-04-12' AS Date), 0, CAST(N'2023-04-12' AS Date), NULL, 0)
INSERT [dbo].[M_PL_PermissionTable] ([PermissionId], [DesignationId], [UserId], [SubMenuId], [IsChecked], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (189, 7, 0, 2, 0, CAST(N'2023-04-13' AS Date), 0, CAST(N'2023-04-13' AS Date), NULL, 0)
INSERT [dbo].[M_PL_PermissionTable] ([PermissionId], [DesignationId], [UserId], [SubMenuId], [IsChecked], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (190, 7, 0, 6, 0, CAST(N'2023-04-13' AS Date), 0, CAST(N'2023-04-13' AS Date), NULL, 0)
INSERT [dbo].[M_PL_PermissionTable] ([PermissionId], [DesignationId], [UserId], [SubMenuId], [IsChecked], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (191, 7, 0, 7, 0, CAST(N'2023-04-13' AS Date), 0, CAST(N'2023-04-13' AS Date), NULL, 0)
INSERT [dbo].[M_PL_PermissionTable] ([PermissionId], [DesignationId], [UserId], [SubMenuId], [IsChecked], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (192, 7, 0, 8, 0, CAST(N'2023-04-13' AS Date), 0, CAST(N'2023-04-13' AS Date), NULL, 0)
INSERT [dbo].[M_PL_PermissionTable] ([PermissionId], [DesignationId], [UserId], [SubMenuId], [IsChecked], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (193, 7, 0, 9, 0, CAST(N'2023-04-13' AS Date), 0, CAST(N'2023-04-13' AS Date), NULL, 0)
INSERT [dbo].[M_PL_PermissionTable] ([PermissionId], [DesignationId], [UserId], [SubMenuId], [IsChecked], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (194, 7, 0, 10, 0, CAST(N'2023-04-13' AS Date), 0, CAST(N'2023-04-13' AS Date), NULL, 0)
INSERT [dbo].[M_PL_PermissionTable] ([PermissionId], [DesignationId], [UserId], [SubMenuId], [IsChecked], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (195, 7, 0, 11, 0, CAST(N'2023-04-13' AS Date), 0, CAST(N'2023-04-13' AS Date), NULL, 0)
INSERT [dbo].[M_PL_PermissionTable] ([PermissionId], [DesignationId], [UserId], [SubMenuId], [IsChecked], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (196, 7, 0, 12, 0, CAST(N'2023-04-13' AS Date), 0, CAST(N'2023-04-13' AS Date), NULL, 0)
INSERT [dbo].[M_PL_PermissionTable] ([PermissionId], [DesignationId], [UserId], [SubMenuId], [IsChecked], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (197, 7, 0, 13, 0, CAST(N'2023-04-13' AS Date), 0, CAST(N'2023-04-13' AS Date), NULL, 0)
INSERT [dbo].[M_PL_PermissionTable] ([PermissionId], [DesignationId], [UserId], [SubMenuId], [IsChecked], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (198, 7, 0, 14, 0, CAST(N'2023-04-13' AS Date), 0, CAST(N'2023-04-13' AS Date), NULL, 0)
INSERT [dbo].[M_PL_PermissionTable] ([PermissionId], [DesignationId], [UserId], [SubMenuId], [IsChecked], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (199, 7, 0, 15, 0, CAST(N'2023-04-13' AS Date), 0, CAST(N'2023-04-13' AS Date), NULL, 0)
INSERT [dbo].[M_PL_PermissionTable] ([PermissionId], [DesignationId], [UserId], [SubMenuId], [IsChecked], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (200, 7, 0, 16, 0, CAST(N'2023-04-13' AS Date), 0, CAST(N'2023-04-13' AS Date), NULL, 0)
INSERT [dbo].[M_PL_PermissionTable] ([PermissionId], [DesignationId], [UserId], [SubMenuId], [IsChecked], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (201, 7, 0, 17, 0, CAST(N'2023-04-13' AS Date), 0, CAST(N'2023-04-13' AS Date), NULL, 0)
INSERT [dbo].[M_PL_PermissionTable] ([PermissionId], [DesignationId], [UserId], [SubMenuId], [IsChecked], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (202, 7, 0, 19, 0, CAST(N'2023-04-13' AS Date), 0, CAST(N'2023-04-13' AS Date), NULL, 0)
INSERT [dbo].[M_PL_PermissionTable] ([PermissionId], [DesignationId], [UserId], [SubMenuId], [IsChecked], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (203, 7, 0, 20, 0, CAST(N'2023-04-13' AS Date), 0, CAST(N'2023-04-13' AS Date), NULL, 0)
INSERT [dbo].[M_PL_PermissionTable] ([PermissionId], [DesignationId], [UserId], [SubMenuId], [IsChecked], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (204, 7, 0, 21, 1, CAST(N'2023-04-13' AS Date), 0, CAST(N'2023-04-13' AS Date), NULL, 0)
INSERT [dbo].[M_PL_PermissionTable] ([PermissionId], [DesignationId], [UserId], [SubMenuId], [IsChecked], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (205, 1, 0, 2, 1, CAST(N'2023-04-13' AS Date), 0, CAST(N'2023-04-13' AS Date), NULL, 0)
INSERT [dbo].[M_PL_PermissionTable] ([PermissionId], [DesignationId], [UserId], [SubMenuId], [IsChecked], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (206, 1, 0, 6, 1, CAST(N'2023-04-13' AS Date), 0, CAST(N'2023-04-13' AS Date), NULL, 0)
INSERT [dbo].[M_PL_PermissionTable] ([PermissionId], [DesignationId], [UserId], [SubMenuId], [IsChecked], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (207, 1, 0, 7, 1, CAST(N'2023-04-13' AS Date), 0, CAST(N'2023-04-13' AS Date), NULL, 0)
INSERT [dbo].[M_PL_PermissionTable] ([PermissionId], [DesignationId], [UserId], [SubMenuId], [IsChecked], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (208, 1, 0, 8, 1, CAST(N'2023-04-13' AS Date), 0, CAST(N'2023-04-13' AS Date), NULL, 0)
INSERT [dbo].[M_PL_PermissionTable] ([PermissionId], [DesignationId], [UserId], [SubMenuId], [IsChecked], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (209, 1, 0, 9, 1, CAST(N'2023-04-13' AS Date), 0, CAST(N'2023-04-13' AS Date), NULL, 0)
INSERT [dbo].[M_PL_PermissionTable] ([PermissionId], [DesignationId], [UserId], [SubMenuId], [IsChecked], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (210, 1, 0, 10, 1, CAST(N'2023-04-13' AS Date), 0, CAST(N'2023-04-13' AS Date), NULL, 0)
INSERT [dbo].[M_PL_PermissionTable] ([PermissionId], [DesignationId], [UserId], [SubMenuId], [IsChecked], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (211, 1, 0, 11, 1, CAST(N'2023-04-13' AS Date), 0, CAST(N'2023-04-13' AS Date), NULL, 0)
INSERT [dbo].[M_PL_PermissionTable] ([PermissionId], [DesignationId], [UserId], [SubMenuId], [IsChecked], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (212, 1, 0, 12, 1, CAST(N'2023-04-13' AS Date), 0, CAST(N'2023-04-13' AS Date), NULL, 0)
INSERT [dbo].[M_PL_PermissionTable] ([PermissionId], [DesignationId], [UserId], [SubMenuId], [IsChecked], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (213, 1, 0, 13, 1, CAST(N'2023-04-13' AS Date), 0, CAST(N'2023-04-13' AS Date), NULL, 0)
INSERT [dbo].[M_PL_PermissionTable] ([PermissionId], [DesignationId], [UserId], [SubMenuId], [IsChecked], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (214, 1, 0, 14, 1, CAST(N'2023-04-13' AS Date), 0, CAST(N'2023-04-13' AS Date), NULL, 0)
INSERT [dbo].[M_PL_PermissionTable] ([PermissionId], [DesignationId], [UserId], [SubMenuId], [IsChecked], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (215, 1, 0, 15, 1, CAST(N'2023-04-13' AS Date), 0, CAST(N'2023-04-13' AS Date), NULL, 0)
INSERT [dbo].[M_PL_PermissionTable] ([PermissionId], [DesignationId], [UserId], [SubMenuId], [IsChecked], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (216, 1, 0, 16, 1, CAST(N'2023-04-13' AS Date), 0, CAST(N'2023-04-13' AS Date), NULL, 0)
INSERT [dbo].[M_PL_PermissionTable] ([PermissionId], [DesignationId], [UserId], [SubMenuId], [IsChecked], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (217, 1, 0, 17, 1, CAST(N'2023-04-13' AS Date), 0, CAST(N'2023-04-13' AS Date), NULL, 0)
INSERT [dbo].[M_PL_PermissionTable] ([PermissionId], [DesignationId], [UserId], [SubMenuId], [IsChecked], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (218, 1, 0, 19, 0, CAST(N'2023-04-13' AS Date), 0, CAST(N'2023-04-13' AS Date), NULL, 0)
INSERT [dbo].[M_PL_PermissionTable] ([PermissionId], [DesignationId], [UserId], [SubMenuId], [IsChecked], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (219, 1, 0, 20, 0, CAST(N'2023-04-13' AS Date), 0, CAST(N'2023-04-13' AS Date), NULL, 0)
INSERT [dbo].[M_PL_PermissionTable] ([PermissionId], [DesignationId], [UserId], [SubMenuId], [IsChecked], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (220, 1, 0, 21, 1, CAST(N'2023-04-13' AS Date), 0, CAST(N'2023-04-13' AS Date), NULL, 0)
INSERT [dbo].[M_PL_PermissionTable] ([PermissionId], [DesignationId], [UserId], [SubMenuId], [IsChecked], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (237, 8, 0, 2, 0, CAST(N'2023-04-13' AS Date), 0, CAST(N'2023-04-13' AS Date), NULL, 0)
INSERT [dbo].[M_PL_PermissionTable] ([PermissionId], [DesignationId], [UserId], [SubMenuId], [IsChecked], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (238, 8, 0, 6, 1, CAST(N'2023-04-13' AS Date), 0, CAST(N'2023-04-13' AS Date), NULL, 0)
INSERT [dbo].[M_PL_PermissionTable] ([PermissionId], [DesignationId], [UserId], [SubMenuId], [IsChecked], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (239, 8, 0, 7, 0, CAST(N'2023-04-13' AS Date), 0, CAST(N'2023-04-13' AS Date), NULL, 0)
INSERT [dbo].[M_PL_PermissionTable] ([PermissionId], [DesignationId], [UserId], [SubMenuId], [IsChecked], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (240, 8, 0, 8, 0, CAST(N'2023-04-13' AS Date), 0, CAST(N'2023-04-13' AS Date), NULL, 0)
INSERT [dbo].[M_PL_PermissionTable] ([PermissionId], [DesignationId], [UserId], [SubMenuId], [IsChecked], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (241, 8, 0, 9, 0, CAST(N'2023-04-13' AS Date), 0, CAST(N'2023-04-13' AS Date), NULL, 0)
INSERT [dbo].[M_PL_PermissionTable] ([PermissionId], [DesignationId], [UserId], [SubMenuId], [IsChecked], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (242, 8, 0, 10, 0, CAST(N'2023-04-13' AS Date), 0, CAST(N'2023-04-13' AS Date), NULL, 0)
INSERT [dbo].[M_PL_PermissionTable] ([PermissionId], [DesignationId], [UserId], [SubMenuId], [IsChecked], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (243, 8, 0, 11, 0, CAST(N'2023-04-13' AS Date), 0, CAST(N'2023-04-13' AS Date), NULL, 0)
INSERT [dbo].[M_PL_PermissionTable] ([PermissionId], [DesignationId], [UserId], [SubMenuId], [IsChecked], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (244, 8, 0, 12, 0, CAST(N'2023-04-13' AS Date), 0, CAST(N'2023-04-13' AS Date), NULL, 0)
INSERT [dbo].[M_PL_PermissionTable] ([PermissionId], [DesignationId], [UserId], [SubMenuId], [IsChecked], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (245, 8, 0, 13, 0, CAST(N'2023-04-13' AS Date), 0, CAST(N'2023-04-13' AS Date), NULL, 0)
INSERT [dbo].[M_PL_PermissionTable] ([PermissionId], [DesignationId], [UserId], [SubMenuId], [IsChecked], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (246, 8, 0, 14, 0, CAST(N'2023-04-13' AS Date), 0, CAST(N'2023-04-13' AS Date), NULL, 0)
INSERT [dbo].[M_PL_PermissionTable] ([PermissionId], [DesignationId], [UserId], [SubMenuId], [IsChecked], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (247, 8, 0, 15, 0, CAST(N'2023-04-13' AS Date), 0, CAST(N'2023-04-13' AS Date), NULL, 0)
INSERT [dbo].[M_PL_PermissionTable] ([PermissionId], [DesignationId], [UserId], [SubMenuId], [IsChecked], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (248, 8, 0, 16, 0, CAST(N'2023-04-13' AS Date), 0, CAST(N'2023-04-13' AS Date), NULL, 0)
INSERT [dbo].[M_PL_PermissionTable] ([PermissionId], [DesignationId], [UserId], [SubMenuId], [IsChecked], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (249, 8, 0, 17, 0, CAST(N'2023-04-13' AS Date), 0, CAST(N'2023-04-13' AS Date), NULL, 0)
INSERT [dbo].[M_PL_PermissionTable] ([PermissionId], [DesignationId], [UserId], [SubMenuId], [IsChecked], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (250, 8, 0, 19, 0, CAST(N'2023-04-13' AS Date), 0, CAST(N'2023-04-13' AS Date), NULL, 0)
INSERT [dbo].[M_PL_PermissionTable] ([PermissionId], [DesignationId], [UserId], [SubMenuId], [IsChecked], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (251, 8, 0, 20, 0, CAST(N'2023-04-13' AS Date), 0, CAST(N'2023-04-13' AS Date), NULL, 0)
INSERT [dbo].[M_PL_PermissionTable] ([PermissionId], [DesignationId], [UserId], [SubMenuId], [IsChecked], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (252, 8, 0, 21, 1, CAST(N'2023-04-13' AS Date), 0, CAST(N'2023-04-13' AS Date), NULL, 0)
SET IDENTITY_INSERT [dbo].[M_PL_PermissionTable] OFF
GO
SET IDENTITY_INSERT [dbo].[M_PL_RoleMaster] ON 

INSERT [dbo].[M_PL_RoleMaster] ([RoleId], [RoleName], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (1, N'Pharmasist', CAST(N'2023-01-04' AS Date), 0, 1, CAST(N'2023-02-01' AS Date), 0)
INSERT [dbo].[M_PL_RoleMaster] ([RoleId], [RoleName], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (2, N'Laboratory', CAST(N'2023-01-04' AS Date), 0, 2, CAST(N'2023-01-09' AS Date), 0)
INSERT [dbo].[M_PL_RoleMaster] ([RoleId], [RoleName], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (3, N'Clerk', CAST(N'2023-01-04' AS Date), 0, 3, CAST(N'2023-01-04' AS Date), 1)
INSERT [dbo].[M_PL_RoleMaster] ([RoleId], [RoleName], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (4, N'Super Admin', CAST(N'2023-01-09' AS Date), 0, 4, CAST(N'2023-01-09' AS Date), 0)
INSERT [dbo].[M_PL_RoleMaster] ([RoleId], [RoleName], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (5, N'Accountant', CAST(N'2023-01-09' AS Date), 0, 5, CAST(N'2023-02-01' AS Date), 0)
INSERT [dbo].[M_PL_RoleMaster] ([RoleId], [RoleName], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (6, N'dwddddd', CAST(N'2023-02-01' AS Date), 0, 0, CAST(N'2023-02-01' AS Date), 1)
INSERT [dbo].[M_PL_RoleMaster] ([RoleId], [RoleName], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (7, N'fefw', CAST(N'2023-02-01' AS Date), 0, 0, CAST(N'2023-02-01' AS Date), 1)
INSERT [dbo].[M_PL_RoleMaster] ([RoleId], [RoleName], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (8, N'fwf', CAST(N'2023-02-01' AS Date), 0, 0, CAST(N'2023-02-01' AS Date), 1)
INSERT [dbo].[M_PL_RoleMaster] ([RoleId], [RoleName], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (9, N'fwfww', CAST(N'2023-02-01' AS Date), 0, 9, CAST(N'2023-02-01' AS Date), 1)
SET IDENTITY_INSERT [dbo].[M_PL_RoleMaster] OFF
GO
SET IDENTITY_INSERT [dbo].[M_PL_Slot_Master] ON 

INSERT [dbo].[M_PL_Slot_Master] ([SlotID], [SlotName], [HospitalID], [Slot_TimeFrom], [Capacity], [Slot_TimeTo], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (1, N'MorningEvening', 1, N'9', 20, N'10', NULL, NULL, CAST(N'2023-01-12T10:45:15.177' AS DateTime), N'1', 1)
INSERT [dbo].[M_PL_Slot_Master] ([SlotID], [SlotName], [HospitalID], [Slot_TimeFrom], [Capacity], [Slot_TimeTo], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (2, N'Morning', 2, N'10', 20, N'12', NULL, NULL, CAST(N'2023-01-12T11:18:31.053' AS DateTime), N'2', 1)
INSERT [dbo].[M_PL_Slot_Master] ([SlotID], [SlotName], [HospitalID], [Slot_TimeFrom], [Capacity], [Slot_TimeTo], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (3, N'morning', 1, N'2', 20, N'3', NULL, N'0', NULL, NULL, NULL)
INSERT [dbo].[M_PL_Slot_Master] ([SlotID], [SlotName], [HospitalID], [Slot_TimeFrom], [Capacity], [Slot_TimeTo], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (4, N'dsw', 1, N'3', 20, N'4', NULL, N'0', NULL, NULL, NULL)
INSERT [dbo].[M_PL_Slot_Master] ([SlotID], [SlotName], [HospitalID], [Slot_TimeFrom], [Capacity], [Slot_TimeTo], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (5, N'sds', 4, N'3', 20, N'4', NULL, N'0', NULL, NULL, NULL)
INSERT [dbo].[M_PL_Slot_Master] ([SlotID], [SlotName], [HospitalID], [Slot_TimeFrom], [Capacity], [Slot_TimeTo], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (6, N'morning', 6, N'2', 20, N'3', NULL, N'0', CAST(N'2023-01-12T11:21:00.883' AS DateTime), N'6', 1)
INSERT [dbo].[M_PL_Slot_Master] ([SlotID], [SlotName], [HospitalID], [Slot_TimeFrom], [Capacity], [Slot_TimeTo], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (7, N'morning', 1, N'4', 20, N'24', NULL, N'0', NULL, NULL, 1)
INSERT [dbo].[M_PL_Slot_Master] ([SlotID], [SlotName], [HospitalID], [Slot_TimeFrom], [Capacity], [Slot_TimeTo], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (8, N'Night', 1, N'4', 20, N'5', NULL, N'0', NULL, NULL, 1)
INSERT [dbo].[M_PL_Slot_Master] ([SlotID], [SlotName], [HospitalID], [Slot_TimeFrom], [Capacity], [Slot_TimeTo], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (9, N'NIght', 4, N'3', 20, N'4', NULL, N'0', NULL, NULL, 1)
INSERT [dbo].[M_PL_Slot_Master] ([SlotID], [SlotName], [HospitalID], [Slot_TimeFrom], [Capacity], [Slot_TimeTo], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (10, N'hgfds', 4, N'4', 20, N'8', NULL, N'0', NULL, NULL, 1)
INSERT [dbo].[M_PL_Slot_Master] ([SlotID], [SlotName], [HospitalID], [Slot_TimeFrom], [Capacity], [Slot_TimeTo], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (11, N'gbfvdc', 1, N'3', 20, N'4', NULL, N'0', NULL, NULL, 1)
INSERT [dbo].[M_PL_Slot_Master] ([SlotID], [SlotName], [HospitalID], [Slot_TimeFrom], [Capacity], [Slot_TimeTo], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (12, N'chikun1', 2, N'3', 20, N'4', NULL, N'0', NULL, NULL, 1)
INSERT [dbo].[M_PL_Slot_Master] ([SlotID], [SlotName], [HospitalID], [Slot_TimeFrom], [Capacity], [Slot_TimeTo], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (13, N'evening', 1, N'3', 20, N'3.30', NULL, N'0', NULL, NULL, 1)
INSERT [dbo].[M_PL_Slot_Master] ([SlotID], [SlotName], [HospitalID], [Slot_TimeFrom], [Capacity], [Slot_TimeTo], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (14, N'Enening', 10, N'3.30', 20, N'4', NULL, N'0', NULL, NULL, 1)
INSERT [dbo].[M_PL_Slot_Master] ([SlotID], [SlotName], [HospitalID], [Slot_TimeFrom], [Capacity], [Slot_TimeTo], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (17, N'Morning', 10, N'10', 20, N'12', NULL, N'0', NULL, NULL, 1)
INSERT [dbo].[M_PL_Slot_Master] ([SlotID], [SlotName], [HospitalID], [Slot_TimeFrom], [Capacity], [Slot_TimeTo], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (18, N'Evng', 10, N'5', 20, N'7', NULL, N'0', NULL, NULL, 1)
INSERT [dbo].[M_PL_Slot_Master] ([SlotID], [SlotName], [HospitalID], [Slot_TimeFrom], [Capacity], [Slot_TimeTo], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (19, N'Morning', 10, N'12:52', 20, N'19:55', NULL, N'0', CAST(N'2023-01-17T09:53:28.437' AS DateTime), N'19', 1)
INSERT [dbo].[M_PL_Slot_Master] ([SlotID], [SlotName], [HospitalID], [Slot_TimeFrom], [Capacity], [Slot_TimeTo], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (22, N'Morning', 5, N'13:06', 20, N'14:06', NULL, N'0', NULL, NULL, 1)
INSERT [dbo].[M_PL_Slot_Master] ([SlotID], [SlotName], [HospitalID], [Slot_TimeFrom], [Capacity], [Slot_TimeTo], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (26, N'Morning', 2, N'09:00', 20, N'11:00', NULL, N'0', CAST(N'2023-01-17T09:52:42.100' AS DateTime), N'26', 0)
INSERT [dbo].[M_PL_Slot_Master] ([SlotID], [SlotName], [HospitalID], [Slot_TimeFrom], [Capacity], [Slot_TimeTo], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (27, N'AfterNoon', 6, N'03:00', 20, N'05:00', NULL, N'0', NULL, NULL, 1)
INSERT [dbo].[M_PL_Slot_Master] ([SlotID], [SlotName], [HospitalID], [Slot_TimeFrom], [Capacity], [Slot_TimeTo], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (28, N'Evening', 1, N'19:00', 20, N'20:00', NULL, N'0', CAST(N'2023-01-17T09:52:31.747' AS DateTime), N'28', 1)
INSERT [dbo].[M_PL_Slot_Master] ([SlotID], [SlotName], [HospitalID], [Slot_TimeFrom], [Capacity], [Slot_TimeTo], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (29, N'Morning', 5, N'07:00', 20, N'10:00', NULL, N'0', CAST(N'2023-01-17T09:52:19.970' AS DateTime), N'29', 0)
INSERT [dbo].[M_PL_Slot_Master] ([SlotID], [SlotName], [HospitalID], [Slot_TimeFrom], [Capacity], [Slot_TimeTo], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (31, N'Evening', 2, N'14:00', 20, N'16:00', NULL, N'0', CAST(N'2023-01-19T16:09:14.413' AS DateTime), N'31', 0)
INSERT [dbo].[M_PL_Slot_Master] ([SlotID], [SlotName], [HospitalID], [Slot_TimeFrom], [Capacity], [Slot_TimeTo], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (15, N'AfterNoon', 4, N'15', 20, N'16', NULL, N'0', NULL, NULL, 1)
INSERT [dbo].[M_PL_Slot_Master] ([SlotID], [SlotName], [HospitalID], [Slot_TimeFrom], [Capacity], [Slot_TimeTo], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (16, N'gg', 1, N'12', 20, N'13.30', NULL, N'0', NULL, NULL, 1)
INSERT [dbo].[M_PL_Slot_Master] ([SlotID], [SlotName], [HospitalID], [Slot_TimeFrom], [Capacity], [Slot_TimeTo], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (23, N'fvdcs', 7, N'13:49', 20, N'19:47', NULL, N'0', NULL, NULL, 1)
INSERT [dbo].[M_PL_Slot_Master] ([SlotID], [SlotName], [HospitalID], [Slot_TimeFrom], [Capacity], [Slot_TimeTo], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (25, N'Night', 4, N'16:30', 20, N'20:30', NULL, N'0', CAST(N'2023-01-19T16:09:36.060' AS DateTime), N'25', 0)
INSERT [dbo].[M_PL_Slot_Master] ([SlotID], [SlotName], [HospitalID], [Slot_TimeFrom], [Capacity], [Slot_TimeTo], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (20, N'Morning', 5, N'13:15', 20, N'16:15', NULL, N'0', NULL, NULL, 1)
INSERT [dbo].[M_PL_Slot_Master] ([SlotID], [SlotName], [HospitalID], [Slot_TimeFrom], [Capacity], [Slot_TimeTo], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (21, N'Night', 2, N'18:00', 20, N'19:00', NULL, N'0', CAST(N'2023-01-19T16:09:56.240' AS DateTime), N'21', 0)
INSERT [dbo].[M_PL_Slot_Master] ([SlotID], [SlotName], [HospitalID], [Slot_TimeFrom], [Capacity], [Slot_TimeTo], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (24, N'Morning', 4, N'09:00', 20, N'12:00', NULL, N'0', CAST(N'2023-01-19T15:58:13.900' AS DateTime), N'24', 0)
INSERT [dbo].[M_PL_Slot_Master] ([SlotID], [SlotName], [HospitalID], [Slot_TimeFrom], [Capacity], [Slot_TimeTo], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (30, N'Morning', 10, N'08:30', 20, N'11:30', NULL, N'0', CAST(N'2023-01-19T16:08:57.913' AS DateTime), N'30', 0)
INSERT [dbo].[M_PL_Slot_Master] ([SlotID], [SlotName], [HospitalID], [Slot_TimeFrom], [Capacity], [Slot_TimeTo], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (32, N'ss', 1, N'12:12', 20, N'14:04', NULL, N'0', CAST(N'2023-01-16T19:07:22.727' AS DateTime), N'32', 1)
INSERT [dbo].[M_PL_Slot_Master] ([SlotID], [SlotName], [HospitalID], [Slot_TimeFrom], [Capacity], [Slot_TimeTo], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (33, N'Morning', 1, N'09:47', 20, N'11:47', NULL, N'0', NULL, NULL, 1)
INSERT [dbo].[M_PL_Slot_Master] ([SlotID], [SlotName], [HospitalID], [Slot_TimeFrom], [Capacity], [Slot_TimeTo], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (34, N'mrng', 1, N'07:00', 20, N'10:00', NULL, N'0', NULL, NULL, 1)
INSERT [dbo].[M_PL_Slot_Master] ([SlotID], [SlotName], [HospitalID], [Slot_TimeFrom], [Capacity], [Slot_TimeTo], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (35, N'Evening', 10, N'15:00', 20, N'18:00', NULL, N'0', CAST(N'2023-01-19T16:08:38.690' AS DateTime), N'35', 0)
INSERT [dbo].[M_PL_Slot_Master] ([SlotID], [SlotName], [HospitalID], [Slot_TimeFrom], [Capacity], [Slot_TimeTo], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (36, N'Night', 10, N'18:00', 20, N'22:00', NULL, N'0', CAST(N'2023-01-19T16:07:29.293' AS DateTime), N'36', 0)
INSERT [dbo].[M_PL_Slot_Master] ([SlotID], [SlotName], [HospitalID], [Slot_TimeFrom], [Capacity], [Slot_TimeTo], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (37, N'Evening', 4, N'17:00', 20, N'19:00', NULL, N'0', NULL, NULL, 0)
INSERT [dbo].[M_PL_Slot_Master] ([SlotID], [SlotName], [HospitalID], [Slot_TimeFrom], [Capacity], [Slot_TimeTo], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (38, N'Morning', 6, N'09:00', 20, N'11:00', NULL, N'0', NULL, NULL, 0)
INSERT [dbo].[M_PL_Slot_Master] ([SlotID], [SlotName], [HospitalID], [Slot_TimeFrom], [Capacity], [Slot_TimeTo], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (39, N'Nightt', 6, N'17:32', 20, N'21:33', NULL, N'0', CAST(N'2023-02-01T17:37:20.030' AS DateTime), N'39', 1)
INSERT [dbo].[M_PL_Slot_Master] ([SlotID], [SlotName], [HospitalID], [Slot_TimeFrom], [Capacity], [Slot_TimeTo], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (40, N'dwd', 4, N'17:51', 20, N'20:51', NULL, N'0', NULL, NULL, 1)
INSERT [dbo].[M_PL_Slot_Master] ([SlotID], [SlotName], [HospitalID], [Slot_TimeFrom], [Capacity], [Slot_TimeTo], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (41, N'Morning', 11, N'06:00', 20, N'10:00', NULL, N'0', NULL, NULL, 0)
INSERT [dbo].[M_PL_Slot_Master] ([SlotID], [SlotName], [HospitalID], [Slot_TimeFrom], [Capacity], [Slot_TimeTo], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (42, N'Evening', 11, N'05:00', 20, N'07:00', NULL, N'0', CAST(N'2023-04-13T11:55:57.130' AS DateTime), N'42', 0)
INSERT [dbo].[M_PL_Slot_Master] ([SlotID], [SlotName], [HospitalID], [Slot_TimeFrom], [Capacity], [Slot_TimeTo], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (43, N'Night', 3, N'08:00', 20, N'10:00', NULL, N'0', CAST(N'2023-04-13T11:55:45.470' AS DateTime), N'43', 0)
INSERT [dbo].[M_PL_Slot_Master] ([SlotID], [SlotName], [HospitalID], [Slot_TimeFrom], [Capacity], [Slot_TimeTo], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (44, N'Morning', 13, N'07:00', 20, N'10:00', NULL, N'0', NULL, NULL, 0)
INSERT [dbo].[M_PL_Slot_Master] ([SlotID], [SlotName], [HospitalID], [Slot_TimeFrom], [Capacity], [Slot_TimeTo], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (45, N'Night', 13, N'08:00', 20, N'19:00', NULL, N'0', NULL, NULL, 0)
INSERT [dbo].[M_PL_Slot_Master] ([SlotID], [SlotName], [HospitalID], [Slot_TimeFrom], [Capacity], [Slot_TimeTo], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (46, N'Morning', 3, N'06:00', 20, N'10:00', NULL, N'0', NULL, NULL, 0)
INSERT [dbo].[M_PL_Slot_Master] ([SlotID], [SlotName], [HospitalID], [Slot_TimeFrom], [Capacity], [Slot_TimeTo], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (47, N'Evening', 6, N'04:00', 20, N'07:00', NULL, N'0', NULL, NULL, 0)
SET IDENTITY_INSERT [dbo].[M_PL_Slot_Master] OFF
GO
SET IDENTITY_INSERT [dbo].[M_PL_SlotMapping] ON 

INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (1, 1, 28, 57, 1, CAST(N'2023-01-18' AS Date), 0, NULL, CAST(N'2023-01-18' AS Date), 0)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (2, 1, 28, 57, 2, CAST(N'2023-01-18' AS Date), 0, NULL, CAST(N'2023-01-18' AS Date), 0)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (3, 1, 28, 57, 3, CAST(N'2023-01-18' AS Date), 0, NULL, CAST(N'2023-01-18' AS Date), 0)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (4, 1, 28, 57, 6, CAST(N'2023-01-18' AS Date), 0, NULL, CAST(N'2023-01-18' AS Date), 0)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (5, 1, 28, 57, 5, CAST(N'2023-01-18' AS Date), 0, NULL, CAST(N'2023-01-18' AS Date), 0)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (6, 2, 26, 56, 1, CAST(N'2023-01-18' AS Date), 0, NULL, CAST(N'2023-01-18' AS Date), 0)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (7, 2, 26, 56, 2, CAST(N'2023-01-18' AS Date), 0, NULL, CAST(N'2023-01-18' AS Date), 0)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (8, 2, 26, 56, 3, CAST(N'2023-01-18' AS Date), 0, NULL, CAST(N'2023-01-18' AS Date), 0)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (9, 2, 26, 56, 4, CAST(N'2023-01-18' AS Date), 0, NULL, CAST(N'2023-01-18' AS Date), 0)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (10, 10, 30, 40, 5, CAST(N'2023-01-18' AS Date), 0, NULL, CAST(N'2023-01-18' AS Date), 0)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (11, 10, 30, 40, 6, CAST(N'2023-01-18' AS Date), 0, NULL, CAST(N'2023-01-18' AS Date), 0)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (12, 10, 30, 40, 7, CAST(N'2023-01-18' AS Date), 0, NULL, CAST(N'2023-01-18' AS Date), 0)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (13, 5, 29, 57, 1, CAST(N'2023-01-18' AS Date), 0, NULL, CAST(N'2023-01-18' AS Date), 0)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (14, 5, 29, 57, 2, CAST(N'2023-01-18' AS Date), 0, NULL, CAST(N'2023-01-18' AS Date), 0)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (15, 2, 26, 56, 5, CAST(N'2023-01-18' AS Date), 0, NULL, CAST(N'2023-01-18' AS Date), 1)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (16, 4, 25, 66, 3, CAST(N'2023-01-19' AS Date), 0, NULL, CAST(N'2023-01-19' AS Date), 0)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (17, 4, 25, 66, 4, CAST(N'2023-01-19' AS Date), 0, NULL, CAST(N'2023-01-19' AS Date), 0)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (18, 4, 25, 66, 5, CAST(N'2023-01-19' AS Date), 0, NULL, CAST(N'2023-01-19' AS Date), 0)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (19, 4, 25, 66, 6, CAST(N'2023-01-19' AS Date), 0, NULL, CAST(N'2023-01-19' AS Date), 0)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (20, 2, 26, 56, 6, CAST(N'2023-01-19' AS Date), 0, NULL, CAST(N'2023-01-19' AS Date), 1)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (21, 2, 26, 56, 7, CAST(N'2023-01-19' AS Date), 0, NULL, CAST(N'2023-01-19' AS Date), 1)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (22, 4, 25, 79, 4, CAST(N'2023-01-19' AS Date), 0, NULL, CAST(N'2023-01-19' AS Date), 0)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (23, 4, 25, 79, 5, CAST(N'2023-01-19' AS Date), 0, NULL, CAST(N'2023-01-19' AS Date), 0)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (24, 4, 25, 79, 6, CAST(N'2023-01-19' AS Date), 0, NULL, CAST(N'2023-01-19' AS Date), 0)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (25, 4, 25, 79, 7, CAST(N'2023-01-19' AS Date), 0, NULL, CAST(N'2023-01-19' AS Date), 0)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (26, 2, 26, 40, 4, CAST(N'2023-01-19' AS Date), 0, NULL, CAST(N'2023-01-19' AS Date), 0)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (27, 2, 26, 40, 5, CAST(N'2023-01-19' AS Date), 0, NULL, CAST(N'2023-01-19' AS Date), 0)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (28, 2, 26, 40, 6, CAST(N'2023-01-19' AS Date), 0, NULL, CAST(N'2023-01-19' AS Date), 1)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (29, 6, 38, 56, 4, CAST(N'2023-01-19' AS Date), 0, NULL, CAST(N'2023-01-19' AS Date), 0)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (30, 6, 38, 56, 5, CAST(N'2023-01-19' AS Date), 0, NULL, CAST(N'2023-01-19' AS Date), 0)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (31, 6, 38, 56, 6, CAST(N'2023-01-19' AS Date), 0, NULL, CAST(N'2023-01-19' AS Date), 0)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (32, 6, 38, 56, 7, CAST(N'2023-01-19' AS Date), 0, NULL, CAST(N'2023-01-19' AS Date), 0)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (33, 2, 26, 56, 5, CAST(N'2023-01-19' AS Date), 0, NULL, CAST(N'2023-01-19' AS Date), 0)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (34, 2, 26, 56, 6, CAST(N'2023-01-19' AS Date), 0, NULL, CAST(N'2023-01-19' AS Date), 0)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (35, 2, 21, 57, 2, CAST(N'2023-02-01' AS Date), 0, NULL, CAST(N'2023-02-01' AS Date), 0)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (36, 2, 21, 57, 3, CAST(N'2023-02-01' AS Date), 0, NULL, CAST(N'2023-02-01' AS Date), 0)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (37, 2, 21, 57, 4, CAST(N'2023-02-01' AS Date), 0, NULL, CAST(N'2023-02-01' AS Date), 0)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (38, 2, 21, 57, 5, CAST(N'2023-02-01' AS Date), 0, NULL, CAST(N'2023-02-01' AS Date), 0)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (39, 2, 21, 57, 6, CAST(N'2023-02-01' AS Date), 0, NULL, CAST(N'2023-02-01' AS Date), 0)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (40, 6, 38, 57, 1, CAST(N'2023-03-10' AS Date), 0, NULL, CAST(N'2023-03-10' AS Date), 0)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (41, 6, 38, 57, 6, CAST(N'2023-03-10' AS Date), 0, NULL, CAST(N'2023-03-10' AS Date), 0)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (42, 6, 38, 57, 7, CAST(N'2023-03-10' AS Date), 0, NULL, CAST(N'2023-03-10' AS Date), 0)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (43, 10, 30, 157, 1, CAST(N'2023-03-20' AS Date), 0, NULL, CAST(N'2023-03-20' AS Date), 0)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (44, 10, 30, 157, 2, CAST(N'2023-03-20' AS Date), 0, NULL, CAST(N'2023-03-20' AS Date), 0)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (45, 10, 30, 157, 3, CAST(N'2023-03-20' AS Date), 0, NULL, CAST(N'2023-03-20' AS Date), 0)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (46, 10, 30, 157, 4, CAST(N'2023-03-20' AS Date), 0, NULL, CAST(N'2023-03-20' AS Date), 0)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (47, 10, 30, 157, 5, CAST(N'2023-03-20' AS Date), 0, NULL, CAST(N'2023-03-20' AS Date), 0)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (48, 10, 30, 157, 6, CAST(N'2023-03-20' AS Date), 0, NULL, CAST(N'2023-03-20' AS Date), 0)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (49, 11, 41, 161, 1, CAST(N'2023-03-21' AS Date), 0, NULL, CAST(N'2023-03-21' AS Date), 0)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (50, 11, 41, 161, 2, CAST(N'2023-03-21' AS Date), 0, NULL, CAST(N'2023-03-21' AS Date), 0)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (51, 11, 41, 161, 3, CAST(N'2023-03-21' AS Date), 0, NULL, CAST(N'2023-03-21' AS Date), 0)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (52, 11, 41, 161, 4, CAST(N'2023-03-21' AS Date), 0, NULL, CAST(N'2023-03-21' AS Date), 0)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (53, 11, 41, 161, 5, CAST(N'2023-03-21' AS Date), 0, NULL, CAST(N'2023-03-21' AS Date), 0)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (54, 11, 41, 161, 6, CAST(N'2023-03-21' AS Date), 0, NULL, CAST(N'2023-03-21' AS Date), 0)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (55, 11, 41, 161, 7, CAST(N'2023-03-21' AS Date), 0, NULL, CAST(N'2023-03-21' AS Date), 0)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (56, 11, 42, 161, 1, CAST(N'2023-03-21' AS Date), 0, NULL, CAST(N'2023-03-21' AS Date), 0)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (57, 11, 42, 161, 2, CAST(N'2023-03-21' AS Date), 0, NULL, CAST(N'2023-03-21' AS Date), 0)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (58, 11, 42, 161, 3, CAST(N'2023-03-21' AS Date), 0, NULL, CAST(N'2023-03-21' AS Date), 0)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (59, 11, 42, 161, 4, CAST(N'2023-03-21' AS Date), 0, NULL, CAST(N'2023-03-21' AS Date), 0)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (60, 11, 42, 161, 5, CAST(N'2023-03-21' AS Date), 0, NULL, CAST(N'2023-03-21' AS Date), 0)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (61, 2, 26, 123, 1, CAST(N'2023-04-10' AS Date), 0, NULL, CAST(N'2023-04-10' AS Date), 0)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (62, 3, 43, 195, 1, CAST(N'2023-04-10' AS Date), 0, NULL, CAST(N'2023-04-10' AS Date), 0)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (63, 3, 43, 195, 2, CAST(N'2023-04-10' AS Date), 0, NULL, CAST(N'2023-04-10' AS Date), 0)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (64, 3, 43, 195, 3, CAST(N'2023-04-10' AS Date), 0, NULL, CAST(N'2023-04-10' AS Date), 0)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (65, 3, 43, 195, 4, CAST(N'2023-04-10' AS Date), 0, NULL, CAST(N'2023-04-10' AS Date), 0)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (66, 3, 43, 195, 5, CAST(N'2023-04-10' AS Date), 0, NULL, CAST(N'2023-04-10' AS Date), 0)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (67, 3, 43, 195, 6, CAST(N'2023-04-10' AS Date), 0, NULL, CAST(N'2023-04-10' AS Date), 0)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (68, 3, 43, 195, 7, CAST(N'2023-04-10' AS Date), 0, NULL, CAST(N'2023-04-10' AS Date), 0)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (69, 3, 43, 57, 1, CAST(N'2023-04-13' AS Date), 0, NULL, CAST(N'2023-04-13' AS Date), 0)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (70, 3, 43, 57, 2, CAST(N'2023-04-13' AS Date), 0, NULL, CAST(N'2023-04-13' AS Date), 0)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (71, 3, 43, 57, 3, CAST(N'2023-04-13' AS Date), 0, NULL, CAST(N'2023-04-13' AS Date), 0)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (72, 3, 43, 57, 4, CAST(N'2023-04-13' AS Date), 0, NULL, CAST(N'2023-04-13' AS Date), 0)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (73, 3, 43, 57, 5, CAST(N'2023-04-13' AS Date), 0, NULL, CAST(N'2023-04-13' AS Date), 0)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (74, 3, 43, 57, 6, CAST(N'2023-04-13' AS Date), 0, NULL, CAST(N'2023-04-13' AS Date), 0)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (75, 11, 41, 207, 1, CAST(N'2023-04-13' AS Date), 0, NULL, CAST(N'2023-04-13' AS Date), 0)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (76, 11, 41, 207, 2, CAST(N'2023-04-13' AS Date), 0, NULL, CAST(N'2023-04-13' AS Date), 0)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (77, 11, 41, 207, 3, CAST(N'2023-04-13' AS Date), 0, NULL, CAST(N'2023-04-13' AS Date), 0)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (78, 11, 41, 207, 4, CAST(N'2023-04-13' AS Date), 0, NULL, CAST(N'2023-04-13' AS Date), 0)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (79, 11, 41, 207, 5, CAST(N'2023-04-13' AS Date), 0, NULL, CAST(N'2023-04-13' AS Date), 0)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (80, 11, 41, 207, 6, CAST(N'2023-04-13' AS Date), 0, NULL, CAST(N'2023-04-13' AS Date), 0)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (81, 11, 42, 207, 1, CAST(N'2023-04-13' AS Date), 0, NULL, CAST(N'2023-04-13' AS Date), 0)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (82, 11, 42, 207, 2, CAST(N'2023-04-13' AS Date), 0, NULL, CAST(N'2023-04-13' AS Date), 0)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (83, 11, 42, 207, 3, CAST(N'2023-04-13' AS Date), 0, NULL, CAST(N'2023-04-13' AS Date), 0)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (84, 11, 42, 207, 4, CAST(N'2023-04-13' AS Date), 0, NULL, CAST(N'2023-04-13' AS Date), 0)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (85, 11, 42, 207, 5, CAST(N'2023-04-13' AS Date), 0, NULL, CAST(N'2023-04-13' AS Date), 0)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (86, 11, 42, 207, 6, CAST(N'2023-04-13' AS Date), 0, NULL, CAST(N'2023-04-13' AS Date), 0)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (87, 4, 24, 40, 1, CAST(N'2023-04-13' AS Date), 0, NULL, CAST(N'2023-04-13' AS Date), 0)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (88, 4, 24, 40, 2, CAST(N'2023-04-13' AS Date), 0, NULL, CAST(N'2023-04-13' AS Date), 0)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (89, 4, 24, 40, 3, CAST(N'2023-04-13' AS Date), 0, NULL, CAST(N'2023-04-13' AS Date), 0)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (90, 4, 24, 40, 4, CAST(N'2023-04-13' AS Date), 0, NULL, CAST(N'2023-04-13' AS Date), 0)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (91, 4, 24, 40, 5, CAST(N'2023-04-13' AS Date), 0, NULL, CAST(N'2023-04-13' AS Date), 0)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (92, 4, 24, 40, 6, CAST(N'2023-04-13' AS Date), 0, NULL, CAST(N'2023-04-13' AS Date), 0)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (93, 2, 26, 40, 1, CAST(N'2023-04-13' AS Date), 0, NULL, CAST(N'2023-04-13' AS Date), 0)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (94, 2, 26, 40, 2, CAST(N'2023-04-13' AS Date), 0, NULL, CAST(N'2023-04-13' AS Date), 0)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (95, 2, 26, 40, 3, CAST(N'2023-04-13' AS Date), 0, NULL, CAST(N'2023-04-13' AS Date), 0)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (96, 2, 26, 40, 6, CAST(N'2023-04-13' AS Date), 0, NULL, CAST(N'2023-04-13' AS Date), 0)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (97, 2, 26, 165, 1, CAST(N'2023-04-13' AS Date), 0, NULL, CAST(N'2023-04-13' AS Date), 0)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (98, 2, 26, 165, 2, CAST(N'2023-04-13' AS Date), 0, NULL, CAST(N'2023-04-13' AS Date), 0)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (99, 2, 26, 165, 3, CAST(N'2023-04-13' AS Date), 0, NULL, CAST(N'2023-04-13' AS Date), 0)
GO
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (100, 2, 26, 165, 4, CAST(N'2023-04-13' AS Date), 0, NULL, CAST(N'2023-04-13' AS Date), 0)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (101, 2, 26, 165, 5, CAST(N'2023-04-13' AS Date), 0, NULL, CAST(N'2023-04-13' AS Date), 0)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (102, 2, 26, 165, 6, CAST(N'2023-04-13' AS Date), 0, NULL, CAST(N'2023-04-13' AS Date), 0)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (103, 2, 26, 57, 1, CAST(N'2023-04-13' AS Date), 0, NULL, CAST(N'2023-04-13' AS Date), 0)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (104, 2, 26, 57, 2, CAST(N'2023-04-13' AS Date), 0, NULL, CAST(N'2023-04-13' AS Date), 0)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (105, 2, 26, 57, 3, CAST(N'2023-04-13' AS Date), 0, NULL, CAST(N'2023-04-13' AS Date), 0)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (106, 2, 26, 57, 4, CAST(N'2023-04-13' AS Date), 0, NULL, CAST(N'2023-04-13' AS Date), 0)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (107, 2, 26, 57, 5, CAST(N'2023-04-13' AS Date), 0, NULL, CAST(N'2023-04-13' AS Date), 0)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (108, 2, 26, 57, 6, CAST(N'2023-04-13' AS Date), 0, NULL, CAST(N'2023-04-13' AS Date), 0)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (109, 2, 26, 207, 1, CAST(N'2023-04-13' AS Date), 0, NULL, CAST(N'2023-04-13' AS Date), 0)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (110, 2, 26, 207, 2, CAST(N'2023-04-13' AS Date), 0, NULL, CAST(N'2023-04-13' AS Date), 0)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (111, 2, 26, 207, 3, CAST(N'2023-04-13' AS Date), 0, NULL, CAST(N'2023-04-13' AS Date), 0)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (112, 2, 26, 207, 4, CAST(N'2023-04-13' AS Date), 0, NULL, CAST(N'2023-04-13' AS Date), 0)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (113, 2, 26, 207, 5, CAST(N'2023-04-13' AS Date), 0, NULL, CAST(N'2023-04-13' AS Date), 0)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (114, 2, 26, 207, 6, CAST(N'2023-04-13' AS Date), 0, NULL, CAST(N'2023-04-13' AS Date), 0)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (115, 2, 26, 208, 1, CAST(N'2023-04-13' AS Date), 0, NULL, CAST(N'2023-04-13' AS Date), 0)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (116, 2, 26, 208, 2, CAST(N'2023-04-13' AS Date), 0, NULL, CAST(N'2023-04-13' AS Date), 0)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (117, 2, 26, 208, 3, CAST(N'2023-04-13' AS Date), 0, NULL, CAST(N'2023-04-13' AS Date), 0)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (118, 2, 26, 208, 4, CAST(N'2023-04-13' AS Date), 0, NULL, CAST(N'2023-04-13' AS Date), 0)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (119, 2, 26, 208, 5, CAST(N'2023-04-13' AS Date), 0, NULL, CAST(N'2023-04-13' AS Date), 0)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (120, 2, 26, 208, 6, CAST(N'2023-04-13' AS Date), 0, NULL, CAST(N'2023-04-13' AS Date), 0)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (121, 2, 26, 209, 1, CAST(N'2023-04-13' AS Date), 0, NULL, CAST(N'2023-04-13' AS Date), 0)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (122, 2, 26, 209, 2, CAST(N'2023-04-13' AS Date), 0, NULL, CAST(N'2023-04-13' AS Date), 0)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (123, 2, 26, 209, 3, CAST(N'2023-04-13' AS Date), 0, NULL, CAST(N'2023-04-13' AS Date), 0)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (124, 2, 26, 209, 4, CAST(N'2023-04-13' AS Date), 0, NULL, CAST(N'2023-04-13' AS Date), 0)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (125, 2, 26, 209, 5, CAST(N'2023-04-13' AS Date), 0, NULL, CAST(N'2023-04-13' AS Date), 0)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (126, 2, 26, 209, 6, CAST(N'2023-04-13' AS Date), 0, NULL, CAST(N'2023-04-13' AS Date), 0)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (127, 2, 26, 210, 1, CAST(N'2023-04-13' AS Date), 0, NULL, CAST(N'2023-04-13' AS Date), 0)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (128, 2, 26, 210, 2, CAST(N'2023-04-13' AS Date), 0, NULL, CAST(N'2023-04-13' AS Date), 0)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (129, 2, 26, 210, 3, CAST(N'2023-04-13' AS Date), 0, NULL, CAST(N'2023-04-13' AS Date), 0)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (130, 2, 26, 210, 4, CAST(N'2023-04-13' AS Date), 0, NULL, CAST(N'2023-04-13' AS Date), 0)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (131, 2, 26, 210, 5, CAST(N'2023-04-13' AS Date), 0, NULL, CAST(N'2023-04-13' AS Date), 0)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (132, 2, 26, 210, 6, CAST(N'2023-04-13' AS Date), 0, NULL, CAST(N'2023-04-13' AS Date), 0)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (133, 2, 26, 246, 1, CAST(N'2023-04-13' AS Date), 0, NULL, CAST(N'2023-04-13' AS Date), 0)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (134, 2, 26, 246, 2, CAST(N'2023-04-13' AS Date), 0, NULL, CAST(N'2023-04-13' AS Date), 0)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (135, 2, 26, 246, 3, CAST(N'2023-04-13' AS Date), 0, NULL, CAST(N'2023-04-13' AS Date), 0)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (136, 2, 26, 246, 4, CAST(N'2023-04-13' AS Date), 0, NULL, CAST(N'2023-04-13' AS Date), 0)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (137, 2, 26, 246, 5, CAST(N'2023-04-13' AS Date), 0, NULL, CAST(N'2023-04-13' AS Date), 0)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (138, 2, 26, 246, 6, CAST(N'2023-04-13' AS Date), 0, NULL, CAST(N'2023-04-13' AS Date), 0)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (139, 2, 31, 219, 1, CAST(N'2023-04-13' AS Date), 0, NULL, CAST(N'2023-04-13' AS Date), 0)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (140, 2, 31, 219, 2, CAST(N'2023-04-13' AS Date), 0, NULL, CAST(N'2023-04-13' AS Date), 0)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (141, 2, 31, 219, 3, CAST(N'2023-04-13' AS Date), 0, NULL, CAST(N'2023-04-13' AS Date), 0)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (142, 2, 31, 219, 4, CAST(N'2023-04-13' AS Date), 0, NULL, CAST(N'2023-04-13' AS Date), 0)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (143, 2, 31, 219, 5, CAST(N'2023-04-13' AS Date), 0, NULL, CAST(N'2023-04-13' AS Date), 0)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (144, 2, 31, 219, 6, CAST(N'2023-04-13' AS Date), 0, NULL, CAST(N'2023-04-13' AS Date), 0)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (145, 6, 38, 238, 1, CAST(N'2023-04-13' AS Date), 0, NULL, CAST(N'2023-04-13' AS Date), 0)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (146, 6, 38, 238, 2, CAST(N'2023-04-13' AS Date), 0, NULL, CAST(N'2023-04-13' AS Date), 0)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (147, 6, 38, 238, 3, CAST(N'2023-04-13' AS Date), 0, NULL, CAST(N'2023-04-13' AS Date), 0)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (148, 6, 38, 238, 4, CAST(N'2023-04-13' AS Date), 0, NULL, CAST(N'2023-04-13' AS Date), 0)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (149, 6, 38, 238, 5, CAST(N'2023-04-13' AS Date), 0, NULL, CAST(N'2023-04-13' AS Date), 0)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (150, 6, 38, 238, 6, CAST(N'2023-04-13' AS Date), 0, NULL, CAST(N'2023-04-13' AS Date), 0)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (151, 10, 30, 57, 1, CAST(N'2023-04-13' AS Date), 0, NULL, CAST(N'2023-04-13' AS Date), 0)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (152, 10, 30, 57, 2, CAST(N'2023-04-13' AS Date), 0, NULL, CAST(N'2023-04-13' AS Date), 0)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (153, 10, 30, 57, 3, CAST(N'2023-04-13' AS Date), 0, NULL, CAST(N'2023-04-13' AS Date), 0)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (154, 10, 30, 57, 4, CAST(N'2023-04-13' AS Date), 0, NULL, CAST(N'2023-04-13' AS Date), 0)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (155, 10, 30, 57, 5, CAST(N'2023-04-13' AS Date), 0, NULL, CAST(N'2023-04-13' AS Date), 0)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (156, 10, 30, 57, 6, CAST(N'2023-04-13' AS Date), 0, NULL, CAST(N'2023-04-13' AS Date), 0)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (157, 3, 46, 210, 1, CAST(N'2023-04-13' AS Date), 0, NULL, CAST(N'2023-04-13' AS Date), 0)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (158, 3, 46, 210, 2, CAST(N'2023-04-13' AS Date), 0, NULL, CAST(N'2023-04-13' AS Date), 0)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (159, 3, 46, 210, 3, CAST(N'2023-04-13' AS Date), 0, NULL, CAST(N'2023-04-13' AS Date), 0)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (160, 3, 46, 210, 4, CAST(N'2023-04-13' AS Date), 0, NULL, CAST(N'2023-04-13' AS Date), 0)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (161, 3, 46, 210, 5, CAST(N'2023-04-13' AS Date), 0, NULL, CAST(N'2023-04-13' AS Date), 0)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (162, 3, 46, 210, 6, CAST(N'2023-04-13' AS Date), 0, NULL, CAST(N'2023-04-13' AS Date), 0)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (163, 3, 46, 210, 7, CAST(N'2023-04-13' AS Date), 0, NULL, CAST(N'2023-04-13' AS Date), 0)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (164, 13, 44, 209, 1, CAST(N'2023-04-13' AS Date), 0, NULL, CAST(N'2023-04-13' AS Date), 0)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (165, 13, 44, 209, 2, CAST(N'2023-04-13' AS Date), 0, NULL, CAST(N'2023-04-13' AS Date), 0)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (166, 13, 44, 209, 3, CAST(N'2023-04-13' AS Date), 0, NULL, CAST(N'2023-04-13' AS Date), 0)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (167, 13, 44, 209, 4, CAST(N'2023-04-13' AS Date), 0, NULL, CAST(N'2023-04-13' AS Date), 0)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (168, 13, 44, 209, 5, CAST(N'2023-04-13' AS Date), 0, NULL, CAST(N'2023-04-13' AS Date), 0)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (169, 13, 44, 209, 6, CAST(N'2023-04-13' AS Date), 0, NULL, CAST(N'2023-04-13' AS Date), 0)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (170, 3, 46, 222, 1, CAST(N'2023-04-13' AS Date), 0, NULL, CAST(N'2023-04-13' AS Date), 0)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (171, 3, 46, 222, 2, CAST(N'2023-04-13' AS Date), 0, NULL, CAST(N'2023-04-13' AS Date), 0)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (172, 3, 46, 222, 3, CAST(N'2023-04-13' AS Date), 0, NULL, CAST(N'2023-04-13' AS Date), 0)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (173, 3, 46, 222, 4, CAST(N'2023-04-13' AS Date), 0, NULL, CAST(N'2023-04-13' AS Date), 0)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (174, 3, 46, 222, 5, CAST(N'2023-04-13' AS Date), 0, NULL, CAST(N'2023-04-13' AS Date), 0)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (175, 3, 46, 222, 6, CAST(N'2023-04-13' AS Date), 0, NULL, CAST(N'2023-04-13' AS Date), 0)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (176, 13, 45, 209, 1, CAST(N'2023-04-13' AS Date), 0, NULL, CAST(N'2023-04-13' AS Date), 0)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (177, 13, 45, 209, 2, CAST(N'2023-04-13' AS Date), 0, NULL, CAST(N'2023-04-13' AS Date), 0)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (178, 13, 45, 209, 3, CAST(N'2023-04-13' AS Date), 0, NULL, CAST(N'2023-04-13' AS Date), 0)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (179, 13, 45, 209, 4, CAST(N'2023-04-13' AS Date), 0, NULL, CAST(N'2023-04-13' AS Date), 0)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (180, 13, 45, 209, 5, CAST(N'2023-04-13' AS Date), 0, NULL, CAST(N'2023-04-13' AS Date), 0)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (181, 13, 45, 209, 6, CAST(N'2023-04-13' AS Date), 0, NULL, CAST(N'2023-04-13' AS Date), 0)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (182, 3, 43, 222, 1, CAST(N'2023-04-14' AS Date), 0, NULL, CAST(N'2023-04-14' AS Date), 0)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (183, 3, 43, 222, 2, CAST(N'2023-04-14' AS Date), 0, NULL, CAST(N'2023-04-14' AS Date), 0)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (184, 3, 43, 222, 3, CAST(N'2023-04-14' AS Date), 0, NULL, CAST(N'2023-04-14' AS Date), 0)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (185, 3, 43, 222, 4, CAST(N'2023-04-14' AS Date), 0, NULL, CAST(N'2023-04-14' AS Date), 0)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (186, 3, 43, 222, 5, CAST(N'2023-04-14' AS Date), 0, NULL, CAST(N'2023-04-14' AS Date), 0)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (187, 3, 43, 222, 6, CAST(N'2023-04-14' AS Date), 0, NULL, CAST(N'2023-04-14' AS Date), 0)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (188, 3, 43, 220, 1, CAST(N'2023-04-14' AS Date), 0, NULL, CAST(N'2023-04-14' AS Date), 0)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (189, 3, 43, 220, 2, CAST(N'2023-04-14' AS Date), 0, NULL, CAST(N'2023-04-14' AS Date), 0)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (190, 3, 43, 220, 3, CAST(N'2023-04-14' AS Date), 0, NULL, CAST(N'2023-04-14' AS Date), 0)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (191, 3, 43, 220, 4, CAST(N'2023-04-14' AS Date), 0, NULL, CAST(N'2023-04-14' AS Date), 0)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (192, 3, 43, 220, 5, CAST(N'2023-04-14' AS Date), 0, NULL, CAST(N'2023-04-14' AS Date), 0)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (193, 3, 43, 220, 6, CAST(N'2023-04-14' AS Date), 0, NULL, CAST(N'2023-04-14' AS Date), 0)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (194, 6, 38, 234, 1, CAST(N'2023-04-14' AS Date), 0, NULL, CAST(N'2023-04-14' AS Date), 0)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (195, 6, 38, 234, 2, CAST(N'2023-04-14' AS Date), 0, NULL, CAST(N'2023-04-14' AS Date), 0)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (196, 6, 38, 234, 3, CAST(N'2023-04-14' AS Date), 0, NULL, CAST(N'2023-04-14' AS Date), 0)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (197, 6, 38, 234, 4, CAST(N'2023-04-14' AS Date), 0, NULL, CAST(N'2023-04-14' AS Date), 0)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (198, 6, 38, 234, 5, CAST(N'2023-04-14' AS Date), 0, NULL, CAST(N'2023-04-14' AS Date), 0)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (199, 6, 38, 234, 6, CAST(N'2023-04-14' AS Date), 0, NULL, CAST(N'2023-04-14' AS Date), 0)
GO
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (200, 10, 30, 36, 1, CAST(N'2023-04-14' AS Date), 0, NULL, CAST(N'2023-04-14' AS Date), 0)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (201, 10, 30, 36, 2, CAST(N'2023-04-14' AS Date), 0, NULL, CAST(N'2023-04-14' AS Date), 0)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (202, 10, 30, 36, 3, CAST(N'2023-04-14' AS Date), 0, NULL, CAST(N'2023-04-14' AS Date), 0)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (203, 10, 30, 36, 4, CAST(N'2023-04-14' AS Date), 0, NULL, CAST(N'2023-04-14' AS Date), 0)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (204, 10, 30, 36, 5, CAST(N'2023-04-14' AS Date), 0, NULL, CAST(N'2023-04-14' AS Date), 0)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (205, 10, 30, 36, 6, CAST(N'2023-04-14' AS Date), 0, NULL, CAST(N'2023-04-14' AS Date), 0)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (206, 10, 35, 157, 1, CAST(N'2023-04-14' AS Date), 0, NULL, CAST(N'2023-04-14' AS Date), 0)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (207, 10, 35, 157, 2, CAST(N'2023-04-14' AS Date), 0, NULL, CAST(N'2023-04-14' AS Date), 0)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (208, 10, 35, 157, 3, CAST(N'2023-04-14' AS Date), 0, NULL, CAST(N'2023-04-14' AS Date), 0)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (209, 10, 35, 157, 4, CAST(N'2023-04-14' AS Date), 0, NULL, CAST(N'2023-04-14' AS Date), 0)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (210, 10, 35, 157, 5, CAST(N'2023-04-14' AS Date), 0, NULL, CAST(N'2023-04-14' AS Date), 0)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (211, 10, 35, 157, 6, CAST(N'2023-04-14' AS Date), 0, NULL, CAST(N'2023-04-14' AS Date), 0)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (212, 4, 37, 243, 1, CAST(N'2023-04-14' AS Date), 0, NULL, CAST(N'2023-04-14' AS Date), 0)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (213, 4, 37, 243, 2, CAST(N'2023-04-14' AS Date), 0, NULL, CAST(N'2023-04-14' AS Date), 0)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (214, 4, 37, 243, 3, CAST(N'2023-04-14' AS Date), 0, NULL, CAST(N'2023-04-14' AS Date), 0)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (215, 4, 37, 243, 4, CAST(N'2023-04-14' AS Date), 0, NULL, CAST(N'2023-04-14' AS Date), 0)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (216, 4, 37, 243, 5, CAST(N'2023-04-14' AS Date), 0, NULL, CAST(N'2023-04-14' AS Date), 0)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (217, 4, 37, 243, 6, CAST(N'2023-04-14' AS Date), 0, NULL, CAST(N'2023-04-14' AS Date), 0)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (218, 4, 24, 210, 1, CAST(N'2023-04-14' AS Date), 0, NULL, CAST(N'2023-04-14' AS Date), 0)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (219, 4, 24, 210, 2, CAST(N'2023-04-14' AS Date), 0, NULL, CAST(N'2023-04-14' AS Date), 0)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (220, 4, 24, 210, 3, CAST(N'2023-04-14' AS Date), 0, NULL, CAST(N'2023-04-14' AS Date), 0)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (221, 4, 24, 210, 4, CAST(N'2023-04-14' AS Date), 0, NULL, CAST(N'2023-04-14' AS Date), 0)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (222, 4, 24, 210, 5, CAST(N'2023-04-14' AS Date), 0, NULL, CAST(N'2023-04-14' AS Date), 0)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (223, 4, 24, 210, 6, CAST(N'2023-04-14' AS Date), 0, NULL, CAST(N'2023-04-14' AS Date), 0)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (224, 2, 31, 212, 1, CAST(N'2023-04-14' AS Date), 0, NULL, CAST(N'2023-04-14' AS Date), 0)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (225, 2, 31, 212, 2, CAST(N'2023-04-14' AS Date), 0, NULL, CAST(N'2023-04-14' AS Date), 0)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (226, 2, 31, 212, 3, CAST(N'2023-04-14' AS Date), 0, NULL, CAST(N'2023-04-14' AS Date), 0)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (227, 2, 31, 212, 4, CAST(N'2023-04-14' AS Date), 0, NULL, CAST(N'2023-04-14' AS Date), 0)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (228, 2, 31, 212, 5, CAST(N'2023-04-14' AS Date), 0, NULL, CAST(N'2023-04-14' AS Date), 0)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (229, 2, 31, 212, 6, CAST(N'2023-04-14' AS Date), 0, NULL, CAST(N'2023-04-14' AS Date), 0)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (230, 6, 47, 235, 1, CAST(N'2023-04-14' AS Date), 0, NULL, CAST(N'2023-04-14' AS Date), 0)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (231, 6, 47, 235, 2, CAST(N'2023-04-14' AS Date), 0, NULL, CAST(N'2023-04-14' AS Date), 0)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (232, 6, 47, 235, 3, CAST(N'2023-04-14' AS Date), 0, NULL, CAST(N'2023-04-14' AS Date), 0)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (233, 6, 47, 235, 4, CAST(N'2023-04-14' AS Date), 0, NULL, CAST(N'2023-04-14' AS Date), 0)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (234, 6, 47, 235, 5, CAST(N'2023-04-14' AS Date), 0, NULL, CAST(N'2023-04-14' AS Date), 0)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (235, 6, 47, 235, 6, CAST(N'2023-04-14' AS Date), 0, NULL, CAST(N'2023-04-14' AS Date), 0)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (236, 6, 38, 35, 1, CAST(N'2023-04-14' AS Date), 0, NULL, CAST(N'2023-04-14' AS Date), 0)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (237, 6, 38, 35, 2, CAST(N'2023-04-14' AS Date), 0, NULL, CAST(N'2023-04-14' AS Date), 0)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (238, 6, 38, 35, 3, CAST(N'2023-04-14' AS Date), 0, NULL, CAST(N'2023-04-14' AS Date), 0)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (239, 6, 38, 35, 4, CAST(N'2023-04-14' AS Date), 0, NULL, CAST(N'2023-04-14' AS Date), 0)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (240, 6, 38, 35, 5, CAST(N'2023-04-14' AS Date), 0, NULL, CAST(N'2023-04-14' AS Date), 0)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (241, 6, 38, 35, 6, CAST(N'2023-04-14' AS Date), 0, NULL, CAST(N'2023-04-14' AS Date), 0)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (242, 10, 35, 245, 1, CAST(N'2023-04-14' AS Date), 0, NULL, CAST(N'2023-04-14' AS Date), 0)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (243, 10, 35, 245, 2, CAST(N'2023-04-14' AS Date), 0, NULL, CAST(N'2023-04-14' AS Date), 0)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (244, 10, 35, 245, 3, CAST(N'2023-04-14' AS Date), 0, NULL, CAST(N'2023-04-14' AS Date), 0)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (245, 10, 35, 245, 4, CAST(N'2023-04-14' AS Date), 0, NULL, CAST(N'2023-04-14' AS Date), 0)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (246, 10, 35, 245, 5, CAST(N'2023-04-14' AS Date), 0, NULL, CAST(N'2023-04-14' AS Date), 0)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (247, 10, 35, 245, 6, CAST(N'2023-04-14' AS Date), 0, NULL, CAST(N'2023-04-14' AS Date), 0)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (248, 2, 31, 201, 1, CAST(N'2023-04-14' AS Date), 0, NULL, CAST(N'2023-04-14' AS Date), 0)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (249, 2, 31, 201, 2, CAST(N'2023-04-14' AS Date), 0, NULL, CAST(N'2023-04-14' AS Date), 0)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (250, 2, 31, 201, 3, CAST(N'2023-04-14' AS Date), 0, NULL, CAST(N'2023-04-14' AS Date), 0)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (251, 2, 31, 201, 4, CAST(N'2023-04-14' AS Date), 0, NULL, CAST(N'2023-04-14' AS Date), 0)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (252, 2, 31, 201, 5, CAST(N'2023-04-14' AS Date), 0, NULL, CAST(N'2023-04-14' AS Date), 0)
INSERT [dbo].[M_PL_SlotMapping] ([SMId], [HospitalID], [SlotID], [DoctorId], [DaysId], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (253, 2, 31, 201, 6, CAST(N'2023-04-14' AS Date), 0, NULL, CAST(N'2023-04-14' AS Date), 0)
SET IDENTITY_INSERT [dbo].[M_PL_SlotMapping] OFF
GO
SET IDENTITY_INSERT [dbo].[M_PL_SubMenuTable] ON 

INSERT [dbo].[M_PL_SubMenuTable] ([SubMenuId], [SubMenuName], [SubMenuURL], [MenuId], [SlNo], [SubMenuDescription], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (1, N'Hospital', N'HospitalMaster/AddHospital', 0, 1, N' Set Hospital Details', CAST(N'2023-04-07' AS Date), 0, CAST(N'2023-04-10' AS Date), 0, 0)
INSERT [dbo].[M_PL_SubMenuTable] ([SubMenuId], [SubMenuName], [SubMenuURL], [MenuId], [SlNo], [SubMenuDescription], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (2, N'Slot Mapping', N'/SlotMapping/AddSlotMapping', 8, 1, N'Slot Mapping Details', CAST(N'2023-04-07' AS Date), 0, CAST(N'2023-04-11' AS Date), 0, 0)
INSERT [dbo].[M_PL_SubMenuTable] ([SubMenuId], [SubMenuName], [SubMenuURL], [MenuId], [SlNo], [SubMenuDescription], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (3, N'PathoLab Bill', NULL, 0, 1, N'Patho Bill Record', CAST(N'2023-04-07' AS Date), 0, CAST(N'2023-04-07' AS Date), NULL, 0)
INSERT [dbo].[M_PL_SubMenuTable] ([SubMenuId], [SubMenuName], [SubMenuURL], [MenuId], [SlNo], [SubMenuDescription], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (4, N'Patho Lab Record  Updated', NULL, 0, 2, N'Patho Lab Record  Updated Details', CAST(N'2023-04-07' AS Date), 0, CAST(N'2023-04-07' AS Date), NULL, 0)
INSERT [dbo].[M_PL_SubMenuTable] ([SubMenuId], [SubMenuName], [SubMenuURL], [MenuId], [SlNo], [SubMenuDescription], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (5, N'wasedcfvgbhnj', NULL, 5, 2, N'asdfghjnmk,', CAST(N'2023-04-07' AS Date), 0, CAST(N'2023-04-07' AS Date), NULL, 1)
INSERT [dbo].[M_PL_SubMenuTable] ([SubMenuId], [SubMenuName], [SubMenuURL], [MenuId], [SlNo], [SubMenuDescription], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (6, N'Book Appointment', N'/PatientAppointment/AddPatientAppointment', 9, 1, N' Create PatientAppointment', CAST(N'2023-04-07' AS Date), 0, CAST(N'2023-04-11' AS Date), 0, 0)
INSERT [dbo].[M_PL_SubMenuTable] ([SubMenuId], [SubMenuName], [SubMenuURL], [MenuId], [SlNo], [SubMenuDescription], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (7, N'Department', N'/Department/AddDepartment', 7, 2, N'Set Department', CAST(N'2023-04-10' AS Date), 0, CAST(N'2023-04-11' AS Date), 0, 0)
INSERT [dbo].[M_PL_SubMenuTable] ([SubMenuId], [SubMenuName], [SubMenuURL], [MenuId], [SlNo], [SubMenuDescription], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (8, N'Designation', N'/Designation/AddDesignation', 7, 3, N'Set  Designation', CAST(N'2023-04-10' AS Date), 0, CAST(N'2023-04-11' AS Date), 0, 0)
INSERT [dbo].[M_PL_SubMenuTable] ([SubMenuId], [SubMenuName], [SubMenuURL], [MenuId], [SlNo], [SubMenuDescription], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (9, N'User Registration', N'/RegistrationUser/User_Registration', 7, 4, N'User(Doctor,Patient) Registration', CAST(N'2023-04-10' AS Date), 0, CAST(N'2023-04-11' AS Date), 0, 0)
INSERT [dbo].[M_PL_SubMenuTable] ([SubMenuId], [SubMenuName], [SubMenuURL], [MenuId], [SlNo], [SubMenuDescription], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (10, N'Slot', N'/Slot/Add_Slot', 7, 5, N'Set Slot', CAST(N'2023-04-10' AS Date), 0, CAST(N'2023-04-11' AS Date), 0, 0)
INSERT [dbo].[M_PL_SubMenuTable] ([SubMenuId], [SubMenuName], [SubMenuURL], [MenuId], [SlNo], [SubMenuDescription], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (11, N'Dignosis', N'/Dignosis/AddDignosis', 7, 6, N'Set Dignosis', CAST(N'2023-04-10' AS Date), 0, CAST(N'2023-04-11' AS Date), 0, 0)
INSERT [dbo].[M_PL_SubMenuTable] ([SubMenuId], [SubMenuName], [SubMenuURL], [MenuId], [SlNo], [SubMenuDescription], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (12, N'Lab Test', N'/LabTest/AddLabTest', 7, 7, N'Set Lab Test', CAST(N'2023-04-10' AS Date), 0, CAST(N'2023-04-11' AS Date), 0, 0)
INSERT [dbo].[M_PL_SubMenuTable] ([SubMenuId], [SubMenuName], [SubMenuURL], [MenuId], [SlNo], [SubMenuDescription], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (13, N'DignosisConfiguration', N'/DignosisConfiguration/AddDignosisConfiguration', 7, 8, N'Set Dignosis Configuration', CAST(N'2023-04-10' AS Date), 0, CAST(N'2023-04-11' AS Date), 0, 0)
INSERT [dbo].[M_PL_SubMenuTable] ([SubMenuId], [SubMenuName], [SubMenuURL], [MenuId], [SlNo], [SubMenuDescription], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (14, N'Pharmacy', N'/Medicine/AddMedicine', 7, 9, N'Add Medicines', CAST(N'2023-04-10' AS Date), 0, CAST(N'2023-04-11' AS Date), 0, 0)
INSERT [dbo].[M_PL_SubMenuTable] ([SubMenuId], [SubMenuName], [SubMenuURL], [MenuId], [SlNo], [SubMenuDescription], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (15, N'Medicine Doses', N'/Dose/AddDose', 7, 10, N'Set Medicine Doses', CAST(N'2023-04-10' AS Date), 0, CAST(N'2023-04-11' AS Date), 0, 0)
INSERT [dbo].[M_PL_SubMenuTable] ([SubMenuId], [SubMenuName], [SubMenuURL], [MenuId], [SlNo], [SubMenuDescription], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (16, N'PathoLabBill', N'/PathoLab/PathoLabBill', 10, 1, N' Create Patho Lab Bill ,Print Patho Bill', CAST(N'2023-04-10' AS Date), 0, CAST(N'2023-04-11' AS Date), 0, 0)
INSERT [dbo].[M_PL_SubMenuTable] ([SubMenuId], [SubMenuName], [SubMenuURL], [MenuId], [SlNo], [SubMenuDescription], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (17, N'PathoLab Record Updated', N'/PathoLab/ViewCollection', 10, 2, N'PathoLab Record Update and Print PathoLab Report', CAST(N'2023-04-10' AS Date), 0, CAST(N'2023-04-11' AS Date), 0, 0)
INSERT [dbo].[M_PL_SubMenuTable] ([SubMenuId], [SubMenuName], [SubMenuURL], [MenuId], [SlNo], [SubMenuDescription], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (18, N'Dashboard', N'Home/Dashboard', 12, 1, N'Dashboard ', CAST(N'2023-04-11' AS Date), 0, CAST(N'2023-04-11' AS Date), NULL, 1)
INSERT [dbo].[M_PL_SubMenuTable] ([SubMenuId], [SubMenuName], [SubMenuURL], [MenuId], [SlNo], [SubMenuDescription], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (19, N'Prescription', N'/DoctorSchdule/Appointments', 13, 1, N'Prescription ,Print Prescription', CAST(N'2023-04-11' AS Date), 0, CAST(N'2023-04-11' AS Date), NULL, 0)
INSERT [dbo].[M_PL_SubMenuTable] ([SubMenuId], [SubMenuName], [SubMenuURL], [MenuId], [SlNo], [SubMenuDescription], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (20, N'Patho Lab Report', N'/PathoLab/PathoReportCollectionForPrint', 14, 1, N'Patho Lab Report And Print Pathology Report', CAST(N'2023-04-11' AS Date), 0, CAST(N'2023-04-11' AS Date), NULL, 0)
INSERT [dbo].[M_PL_SubMenuTable] ([SubMenuId], [SubMenuName], [SubMenuURL], [MenuId], [SlNo], [SubMenuDescription], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (21, N'DailyDateWiseAppointment', N'/Report/DailyDateWiseAppointment', 15, 1, N'Daily Date Wise Appointment', CAST(N'2023-04-12' AS Date), 0, CAST(N'2023-04-12' AS Date), NULL, 0)
INSERT [dbo].[M_PL_SubMenuTable] ([SubMenuId], [SubMenuName], [SubMenuURL], [MenuId], [SlNo], [SubMenuDescription], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (22, N'HospitalWiseAppointment', N'/Report/HospitalWiseAppointment', 15, 2, N'Hospital Wise Appointment', CAST(N'2023-04-12' AS Date), 0, CAST(N'2023-04-12' AS Date), NULL, 1)
SET IDENTITY_INSERT [dbo].[M_PL_SubMenuTable] OFF
GO
SET IDENTITY_INSERT [dbo].[M_PL_TestMast] ON 

INSERT [dbo].[M_PL_TestMast] ([TestID], [TestType], [TestName], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (1, N'1', N'CBC', CAST(N'2023-01-05T15:39:01.290' AS DateTime), 0, NULL, NULL, 0)
INSERT [dbo].[M_PL_TestMast] ([TestID], [TestType], [TestName], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (2, N'1', N'HBCD', CAST(N'2023-01-05T16:01:52.983' AS DateTime), 0, CAST(N'2023-01-05T16:23:39.843' AS DateTime), 0, 0)
SET IDENTITY_INSERT [dbo].[M_PL_TestMast] OFF
GO
SET IDENTITY_INSERT [dbo].[M_PL_TestType] ON 

INSERT [dbo].[M_PL_TestType] ([TestTypeID], [TestType], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (1, N'Bloodtest', CAST(N'2023-01-04T18:25:42.577' AS DateTime), 1, CAST(N'2023-01-23T15:19:29.283' AS DateTime), 0, 0)
INSERT [dbo].[M_PL_TestType] ([TestTypeID], [TestType], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (2, N'Urin Test', CAST(N'2023-01-23T15:19:19.143' AS DateTime), 0, CAST(N'2023-01-23T15:19:49.093' AS DateTime), 0, 0)
SET IDENTITY_INSERT [dbo].[M_PL_TestType] OFF
GO
SET IDENTITY_INSERT [dbo].[M_PL_Unit] ON 

INSERT [dbo].[M_PL_Unit] ([UnitId], [UnitName], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (1, N'Unit 1', CAST(N'2023-01-19T12:11:56.773' AS DateTime), NULL, CAST(N'2023-01-19T12:11:56.773' AS DateTime), NULL, 0)
INSERT [dbo].[M_PL_Unit] ([UnitId], [UnitName], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (2, N'Unit 2', CAST(N'2023-01-19T12:12:03.323' AS DateTime), NULL, CAST(N'2023-01-19T12:12:03.323' AS DateTime), NULL, 0)
SET IDENTITY_INSERT [dbo].[M_PL_Unit] OFF
GO
SET IDENTITY_INSERT [dbo].[M_PL_USER] ON 

INSERT [dbo].[M_PL_USER] ([UserId], [UserName], [Password], [FullName], [Email], [Mobile], [Gender], [Address], [City], [DesignationId], [DepartmentId], [HospitalID], [Address1], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag], [DOB], [Age]) VALUES (35, N'PragyanNayak', N'UHJhZ3lhbk5heWFrQDAx', N'Pragyan', N'Pragyan@gmail.com', N'9937643088', N'Female', N'Gopalgaon', N'Balasore', 15, 5, 6, N'Gopalgaon', CAST(N'2023-01-13' AS Date), 0, 35, CAST(N'2023-01-13' AS Date), 0, NULL, NULL)
INSERT [dbo].[M_PL_USER] ([UserId], [UserName], [Password], [FullName], [Email], [Mobile], [Gender], [Address], [City], [DesignationId], [DepartmentId], [HospitalID], [Address1], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag], [DOB], [Age]) VALUES (36, N'SusantaSenapati', N'U3VzYW50YVNlbmFwYXRpQDAx', N'Susanta', N'Susanta@gmail.com', N'9654326743', N'Male', N'FM nagar', N'Balasore', 15, 4, 10, N'FM nagar', CAST(N'2023-01-13' AS Date), 0, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[M_PL_USER] ([UserId], [UserName], [Password], [FullName], [Email], [Mobile], [Gender], [Address], [City], [DesignationId], [DepartmentId], [HospitalID], [Address1], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag], [DOB], [Age]) VALUES (37, N'SubhasmitaNayak', N'U3ViaGFzbWl0YU5heWFrQDAx', N'Subhasmita', N'Subhasmita@gmail.com', N'9954362877', N'Female', N'Laxmi bihar', N'BBSR', 15, 11, 4, N'Laxmi bihar', CAST(N'2023-01-13' AS Date), 0, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[M_PL_USER] ([UserId], [UserName], [Password], [FullName], [Email], [Mobile], [Gender], [Address], [City], [DesignationId], [DepartmentId], [HospitalID], [Address1], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag], [DOB], [Age]) VALUES (40, N'Subhasmita03', N'U3ViaGFzbWl0YUAwMw==', N'Subhasmita', N'Subhasmita@gmail.com', N'1234567890', N'Female', N'Mayurbhanj', N'Mayurbhanj', 2, 10, 2, N'Mayurbhanj', CAST(N'2023-01-17' AS Date), 0, 40, CAST(N'2023-04-13' AS Date), 0, CAST(N'1995-03-12' AS Date), NULL)
INSERT [dbo].[M_PL_USER] ([UserId], [UserName], [Password], [FullName], [Email], [Mobile], [Gender], [Address], [City], [DesignationId], [DepartmentId], [HospitalID], [Address1], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag], [DOB], [Age]) VALUES (56, N'AmitBehera', N'RGlwdGlAMDE=', N'Amit', N'Amit@gmail.com', N'9754234567', N'Male', N'Acharya Bihar', N'BBSR', 2, 5, 2, N'Acharya Bihar', CAST(N'2023-01-18' AS Date), 0, 56, CAST(N'2023-04-13' AS Date), 0, CAST(N'1979-10-20' AS Date), NULL)
INSERT [dbo].[M_PL_USER] ([UserId], [UserName], [Password], [FullName], [Email], [Mobile], [Gender], [Address], [City], [DesignationId], [DepartmentId], [HospitalID], [Address1], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag], [DOB], [Age]) VALUES (57, N'PragyanSNayak', N'UHJhZ3lhblNOYXlha0AwMQ==', N'Pragyan Smruty Nayak', N'pragyannayak@gmail.com', N'9937643088', N'Female', N'Chunvati Lane', N'Balasore', 2, 1, 4, N'Chunvati Lane', CAST(N'2023-01-18' AS Date), 0, 57, CAST(N'2023-04-13' AS Date), 0, CAST(N'1997-10-01' AS Date), NULL)
INSERT [dbo].[M_PL_USER] ([UserId], [UserName], [Password], [FullName], [Email], [Mobile], [Gender], [Address], [City], [DesignationId], [DepartmentId], [HospitalID], [Address1], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag], [DOB], [Age]) VALUES (160, N'SahooAdmin', N'U2Fob29AMDE=', N'SahooAdmin', N'sahoo@gmail.com', N'9976543288', N'Male', N'nayapalli', N'bbsr', 1, 29, 11, N'nayapalli', CAST(N'2023-03-21' AS Date), 0, 160, CAST(N'2023-04-13' AS Date), 0, CAST(N'1986-02-12' AS Date), NULL)
INSERT [dbo].[M_PL_USER] ([UserId], [UserName], [Password], [FullName], [Email], [Mobile], [Gender], [Address], [City], [DesignationId], [DepartmentId], [HospitalID], [Address1], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag], [DOB], [Age]) VALUES (162, N'SahooAmit', N'U2Fob29BbWl0QDAx', N'Amit', N'amit@gmail.com', N'9854236789', N'Male', N'bbsr', N'bbsrbbr', 5, 30, 11, N'bbsr', CAST(N'2023-03-21' AS Date), 0, 162, CAST(N'2023-03-22' AS Date), 0, CAST(N'1991-02-13' AS Date), NULL)
INSERT [dbo].[M_PL_USER] ([UserId], [UserName], [Password], [FullName], [Email], [Mobile], [Gender], [Address], [City], [DesignationId], [DepartmentId], [HospitalID], [Address1], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag], [DOB], [Age]) VALUES (165, N'Arpita22', N'QXJwaXRhQDIy', N'Arpita Sahu', N'arpita@gmail.com', N'7205828589', N'Female', N'Mayurbhanj', N'Mayurbhanj', 2, 29, 2, N'Mayurbhanj', CAST(N'2023-03-22' AS Date), 0, NULL, NULL, 0, CAST(N'1999-03-22' AS Date), NULL)
INSERT [dbo].[M_PL_USER] ([UserId], [UserName], [Password], [FullName], [Email], [Mobile], [Gender], [Address], [City], [DesignationId], [DepartmentId], [HospitalID], [Address1], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag], [DOB], [Age]) VALUES (192, N'Ritika01', N'Uml0aWthQDAx', N'Ritika', N'ritika@gmail.com', N'9856342675', N'Female', N'Acharya Vihar', N'BBSR', 5, 30, 2, N'Acharya Vihar', CAST(N'2023-04-05' AS Date), 0, NULL, NULL, 0, CAST(N'1995-07-11' AS Date), NULL)
INSERT [dbo].[M_PL_USER] ([UserId], [UserName], [Password], [FullName], [Email], [Mobile], [Gender], [Address], [City], [DesignationId], [DepartmentId], [HospitalID], [Address1], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag], [DOB], [Age]) VALUES (201, N'Smruti12', N'UGFzc3dvcmRAMQ==', N'SM', N'sm@ss.com', N'9861957392', N'Male', N'BBSR', N'BBSR', 6, 30, 2, N'BBSR', CAST(N'2023-04-12' AS Date), 0, 201, CAST(N'2023-04-13' AS Date), 0, CAST(N'2005-04-13' AS Date), NULL)
INSERT [dbo].[M_PL_USER] ([UserId], [UserName], [Password], [FullName], [Email], [Mobile], [Gender], [Address], [City], [DesignationId], [DepartmentId], [HospitalID], [Address1], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag], [DOB], [Age]) VALUES (202, N'SAdmin01', N'U0FkbWluQDAx', N'Ramesh', N'ramesh@gmail.com', N'9734567893', N'Male', N'bbsr', N'bbsr', 7, 30, 2, N'bbsr', CAST(N'2023-04-13' AS Date), 0, NULL, NULL, 0, CAST(N'1990-12-06' AS Date), NULL)
INSERT [dbo].[M_PL_USER] ([UserId], [UserName], [Password], [FullName], [Email], [Mobile], [Gender], [Address], [City], [DesignationId], [DepartmentId], [HospitalID], [Address1], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag], [DOB], [Age]) VALUES (203, N'Admin123', N'QWRtaW5AMTIz', N'Smruty Nayak', N'smruty@gmail.com', N'7654389213', N'Female', N'Puri', N'Puri', 1, 30, 2, N'Puri', CAST(N'2023-04-13' AS Date), 0, 203, CAST(N'2023-04-13' AS Date), 0, CAST(N'2000-12-09' AS Date), NULL)
INSERT [dbo].[M_PL_USER] ([UserId], [UserName], [Password], [FullName], [Email], [Mobile], [Gender], [Address], [City], [DesignationId], [DepartmentId], [HospitalID], [Address1], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag], [DOB], [Age]) VALUES (204, N'Ranjan01', N'UmFuamFuQDAx', N'Ranjan Nayak', N'ranjan@gmnail.com', N'8765983245', N'Male', N'Puri', N'Puri', 8, 30, 2, N'Puri', CAST(N'2023-04-13' AS Date), 0, NULL, NULL, 0, CAST(N'2002-05-15' AS Date), NULL)
INSERT [dbo].[M_PL_USER] ([UserId], [UserName], [Password], [FullName], [Email], [Mobile], [Gender], [Address], [City], [DesignationId], [DepartmentId], [HospitalID], [Address1], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag], [DOB], [Age]) VALUES (207, N'RSahoo01', N'UlNhaG9vQDAx', N'Rajesh Sahoo ', N'sahoo@gmail.com', N'9634567832', N'Female', N'CTC', N'CTC', 2, 29, 11, N'CTC', CAST(N'2023-04-13' AS Date), 0, NULL, NULL, 0, CAST(N'1991-09-12' AS Date), NULL)
INSERT [dbo].[M_PL_USER] ([UserId], [UserName], [Password], [FullName], [Email], [Mobile], [Gender], [Address], [City], [DesignationId], [DepartmentId], [HospitalID], [Address1], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag], [DOB], [Age]) VALUES (208, N'Chandra01', N'Q2hhbmRyYUAwMQ==', N'Ramesh  Chandra Nayak', N'ramesh@gmail.com', N'9763456789', N'Male', N'BBSR', N'BBSR', 2, 7, 10, N'BBSR', CAST(N'2023-04-13' AS Date), 0, NULL, NULL, 0, CAST(N'1980-06-11' AS Date), NULL)
INSERT [dbo].[M_PL_USER] ([UserId], [UserName], [Password], [FullName], [Email], [Mobile], [Gender], [Address], [City], [DesignationId], [DepartmentId], [HospitalID], [Address1], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag], [DOB], [Age]) VALUES (209, N'Sabyasachi01', N'U2FieWFzYWNoaUAwMQ==', N'Sabyasachi Nayak', N'sabyasachi@gmail.com', N'8532678943', N'Male', N'Puri', N'Puri', 2, 1, 13, N'Puri', CAST(N'2023-04-13' AS Date), 0, NULL, NULL, 0, CAST(N'1970-07-08' AS Date), NULL)
INSERT [dbo].[M_PL_USER] ([UserId], [UserName], [Password], [FullName], [Email], [Mobile], [Gender], [Address], [City], [DesignationId], [DepartmentId], [HospitalID], [Address1], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag], [DOB], [Age]) VALUES (210, N'SitaRaman01', N'U2l0YVJhbWFuQDAx', N'Sita Raman', N'sita1992@gmail.com', N'8531234567', N'Female', N'Koraput', N'Koraput', 2, 9, 4, N'Koraput', CAST(N'2023-04-13' AS Date), 0, NULL, NULL, 0, CAST(N'1992-10-14' AS Date), NULL)
INSERT [dbo].[M_PL_USER] ([UserId], [UserName], [Password], [FullName], [Email], [Mobile], [Gender], [Address], [City], [DesignationId], [DepartmentId], [HospitalID], [Address1], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag], [DOB], [Age]) VALUES (211, N'RajaDas01', N'UmFqYURhc0AwMQ==', N'Raja Das', N'raja@gmail.com', N'8523467987', N'Male', N'BBSR', N'BBSR', 2, 12, 3, N'BBSR', CAST(N'2023-04-13' AS Date), 0, NULL, NULL, 0, CAST(N'1980-11-29' AS Date), NULL)
INSERT [dbo].[M_PL_USER] ([UserId], [UserName], [Password], [FullName], [Email], [Mobile], [Gender], [Address], [City], [DesignationId], [DepartmentId], [HospitalID], [Address1], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag], [DOB], [Age]) VALUES (212, N'SagarJena01', N'U2FnYXJKZW5hQDAx', N'Sagar Jena', N'sagar@gmail.com', N'9657843256', N'Male', N'BDRK', N'BDRK', 2, 1, 2, N'BDRK', CAST(N'2023-04-13' AS Date), 0, NULL, NULL, 0, CAST(N'1970-07-07' AS Date), NULL)
INSERT [dbo].[M_PL_USER] ([UserId], [UserName], [Password], [FullName], [Email], [Mobile], [Gender], [Address], [City], [DesignationId], [DepartmentId], [HospitalID], [Address1], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag], [DOB], [Age]) VALUES (213, N'PinkyNayak01', N'UGlua3lOYXlha0AwMQ==', N'Pinky Nayak', N'pinky@gmail.com', N'9567432456', N'Female', N'CTC', N'CTC', 2, 10, 6, N'CTC', CAST(N'2023-04-13' AS Date), 0, NULL, NULL, 0, CAST(N'1999-09-22' AS Date), NULL)
INSERT [dbo].[M_PL_USER] ([UserId], [UserName], [Password], [FullName], [Email], [Mobile], [Gender], [Address], [City], [DesignationId], [DepartmentId], [HospitalID], [Address1], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag], [DOB], [Age]) VALUES (214, N'Himashu01', N'SGltYXNodUAwMQ==', N'Himashu Prakash', N'himanshu@gmail.com', N'9456783256', N'Male', N'Balasore', N'Balasore', 2, 6, 2, N'Balasore', CAST(N'2023-04-13' AS Date), 0, NULL, NULL, 0, CAST(N'1979-02-14' AS Date), NULL)
INSERT [dbo].[M_PL_USER] ([UserId], [UserName], [Password], [FullName], [Email], [Mobile], [Gender], [Address], [City], [DesignationId], [DepartmentId], [HospitalID], [Address1], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag], [DOB], [Age]) VALUES (215, N'Avinash01', N'QXZpbmFzaEAwMQ==', N'Avinash Dash', N'avinash@gmail.com', N'9643567865', N'Male', N'BBSR', N'BBSR', 2, 7, 2, N'BBSR', CAST(N'2023-04-13' AS Date), 0, NULL, NULL, 0, CAST(N'1978-12-21' AS Date), NULL)
INSERT [dbo].[M_PL_USER] ([UserId], [UserName], [Password], [FullName], [Email], [Mobile], [Gender], [Address], [City], [DesignationId], [DepartmentId], [HospitalID], [Address1], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag], [DOB], [Age]) VALUES (216, N'Armaan01', N'QXJtYWFuQDAx', N'Armaan Naik', N'armaan@gmail.com', N'9567843256', N'Male', N'Mayurbhanj', N'Mayurbhanj', 2, 8, 2, N'Mayurbhanj', CAST(N'2023-04-13' AS Date), 0, NULL, NULL, 0, CAST(N'1987-05-22' AS Date), NULL)
INSERT [dbo].[M_PL_USER] ([UserId], [UserName], [Password], [FullName], [Email], [Mobile], [Gender], [Address], [City], [DesignationId], [DepartmentId], [HospitalID], [Address1], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag], [DOB], [Age]) VALUES (217, N'Nikhat01', N'TmlraGF0QDAx', N'Nikhat ', N'nikhat@gmail.com', N'8675432476', N'Female', N'CTC', N'CTC', 2, 9, 2, N'CTC', CAST(N'2023-04-13' AS Date), 0, NULL, NULL, 0, CAST(N'1991-11-05' AS Date), NULL)
INSERT [dbo].[M_PL_USER] ([UserId], [UserName], [Password], [FullName], [Email], [Mobile], [Gender], [Address], [City], [DesignationId], [DepartmentId], [HospitalID], [Address1], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag], [DOB], [Age]) VALUES (218, N'AnitaPradhan01', N'QW5pdGFQcmFkaGFuQDAx', N'Anita Pradhan', N'anita@gmail.com', N'7432567894', N'Female', N'Sambalpur', N'Sambalpur', 2, 11, 2, N'Sambalpur', CAST(N'2023-04-13' AS Date), 0, NULL, NULL, 0, CAST(N'1985-07-06' AS Date), NULL)
INSERT [dbo].[M_PL_USER] ([UserId], [UserName], [Password], [FullName], [Email], [Mobile], [Gender], [Address], [City], [DesignationId], [DepartmentId], [HospitalID], [Address1], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag], [DOB], [Age]) VALUES (219, N'Rashmi01', N'UmFzaG1pQDAx', N'Rashmi Khatwa', N'rashmi@gmail.com', N'9965478543', N'Female', N'Basta', N'Balasore', 2, 12, 2, N'Basta', CAST(N'2023-04-13' AS Date), 0, NULL, NULL, 0, CAST(N'1999-10-28' AS Date), NULL)
INSERT [dbo].[M_PL_USER] ([UserId], [UserName], [Password], [FullName], [Email], [Mobile], [Gender], [Address], [City], [DesignationId], [DepartmentId], [HospitalID], [Address1], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag], [DOB], [Age]) VALUES (220, N'Ranjita01', N'UmFuaml0YUAwMQ==', N'Ranjita', N'ranjita@gmail.com', N'9876543234', N'Female', N'Baripada', N'Mayurbhanj', 2, 1, 3, N'Baripada', CAST(N'2023-04-13' AS Date), 0, NULL, NULL, 0, CAST(N'1986-07-23' AS Date), NULL)
INSERT [dbo].[M_PL_USER] ([UserId], [UserName], [Password], [FullName], [Email], [Mobile], [Gender], [Address], [City], [DesignationId], [DepartmentId], [HospitalID], [Address1], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag], [DOB], [Age]) VALUES (221, N'Sindhu01', N'U2luZGh1QDAx', N'Sindhu', N'sindhu@gmail.com', N'9876789543', N'Female', N'BBSR', N'BBSR', 2, 5, 3, N'BBSR', CAST(N'2023-04-13' AS Date), 0, NULL, NULL, 0, CAST(N'1971-06-10' AS Date), NULL)
INSERT [dbo].[M_PL_USER] ([UserId], [UserName], [Password], [FullName], [Email], [Mobile], [Gender], [Address], [City], [DesignationId], [DepartmentId], [HospitalID], [Address1], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag], [DOB], [Age]) VALUES (222, N'ManojSingh01', N'TWFub2pTaW5naEAwMQ==', N'Manoj Singh', N'manoj@gmail.com', N'9765432567', N'Male', N'BBSR', N'BBSR', 2, 6, 3, N'BBSR', CAST(N'2023-04-13' AS Date), 0, NULL, NULL, 0, CAST(N'1979-02-28' AS Date), NULL)
INSERT [dbo].[M_PL_USER] ([UserId], [UserName], [Password], [FullName], [Email], [Mobile], [Gender], [Address], [City], [DesignationId], [DepartmentId], [HospitalID], [Address1], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag], [DOB], [Age]) VALUES (223, N'Ankita01', N'QW5raXRhQDAx', N'Ankita Dutta', N'ankita@gmail.com', N'9753462134', N'Female', N'Balasore', N'Balasore', 2, 29, 3, N'Balasore', CAST(N'2023-04-13' AS Date), 0, NULL, NULL, 0, CAST(N'1965-07-31' AS Date), NULL)
INSERT [dbo].[M_PL_USER] ([UserId], [UserName], [Password], [FullName], [Email], [Mobile], [Gender], [Address], [City], [DesignationId], [DepartmentId], [HospitalID], [Address1], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag], [DOB], [Age]) VALUES (224, N'Sachin01', N'U2FjaGluQDAx', N'Sachin  Giri', N'sachin@gmail.com', N'7564328976', N'Male', N'ctc', N'ctc', 2, 7, 3, N'ctc', CAST(N'2023-04-13' AS Date), 0, NULL, NULL, 0, CAST(N'1989-12-28' AS Date), NULL)
INSERT [dbo].[M_PL_USER] ([UserId], [UserName], [Password], [FullName], [Email], [Mobile], [Gender], [Address], [City], [DesignationId], [DepartmentId], [HospitalID], [Address1], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag], [DOB], [Age]) VALUES (225, N'Anirudh01', N'QW5pcnVkaEAwMQ==', N'Anirudh', N'anirudh@gmail.com', N'9765432567', N'Male', N'Kakatpur', N'Kakatpur', 2, 8, 3, N'Kakatpur', CAST(N'2023-04-13' AS Date), 0, NULL, NULL, 0, CAST(N'1989-08-11' AS Date), NULL)
INSERT [dbo].[M_PL_USER] ([UserId], [UserName], [Password], [FullName], [Email], [Mobile], [Gender], [Address], [City], [DesignationId], [DepartmentId], [HospitalID], [Address1], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag], [DOB], [Age]) VALUES (226, N'AmitKumar01', N'QW1pdEt1bWFyQDAx', N'Amit Kumar', N'amitkumar@gmail.com', N'8123456789', N'Male', N'Jajpur', N'Jajpur', 2, 9, 3, N'Jajpur', CAST(N'2023-04-13' AS Date), 0, NULL, NULL, 0, CAST(N'1999-05-11' AS Date), NULL)
INSERT [dbo].[M_PL_USER] ([UserId], [UserName], [Password], [FullName], [Email], [Mobile], [Gender], [Address], [City], [DesignationId], [DepartmentId], [HospitalID], [Address1], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag], [DOB], [Age]) VALUES (227, N'Shakti01', N'U2hha3RpQDAx', N'Shakti', N'shakti@gmail.com', N'9532456789', N'Female', N'BBSR', N'BBSR', 2, 10, 3, N'BBSR', CAST(N'2023-04-13' AS Date), 0, NULL, NULL, 0, CAST(N'1990-11-12' AS Date), NULL)
INSERT [dbo].[M_PL_USER] ([UserId], [UserName], [Password], [FullName], [Email], [Mobile], [Gender], [Address], [City], [DesignationId], [DepartmentId], [HospitalID], [Address1], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag], [DOB], [Age]) VALUES (228, N'MeeraRaj01', N'TWVlcmFSYWpAMDE=', N'Meera Raj', N'Meera@gmail.com', N'8765432876', N'Female', N'Puri', N'Puri', 2, 11, 3, N'Puri', CAST(N'2023-04-13' AS Date), 0, NULL, NULL, 0, CAST(N'1989-02-05' AS Date), NULL)
INSERT [dbo].[M_PL_USER] ([UserId], [UserName], [Password], [FullName], [Email], [Mobile], [Gender], [Address], [City], [DesignationId], [DepartmentId], [HospitalID], [Address1], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag], [DOB], [Age]) VALUES (229, N'Subrat01', N'U3VicmF0QDAx', N'Subrat Jena', N'Subrat@gmail.com', N'9876543215', N'Male', N'bbsr', N'bbsr', 2, 1, 6, N'bbsr', CAST(N'2023-04-13' AS Date), 0, NULL, NULL, 0, CAST(N'1979-07-11' AS Date), NULL)
INSERT [dbo].[M_PL_USER] ([UserId], [UserName], [Password], [FullName], [Email], [Mobile], [Gender], [Address], [City], [DesignationId], [DepartmentId], [HospitalID], [Address1], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag], [DOB], [Age]) VALUES (230, N'Raghav01', N'UmFnaGF2QDAx', N'Raghav', N'Raghav@gmail.com', N'5432167890', N'Male', N'puri', N'Puri', 2, 6, 6, N'puri', CAST(N'2023-04-13' AS Date), 0, NULL, NULL, 0, CAST(N'1993-09-07' AS Date), NULL)
INSERT [dbo].[M_PL_USER] ([UserId], [UserName], [Password], [FullName], [Email], [Mobile], [Gender], [Address], [City], [DesignationId], [DepartmentId], [HospitalID], [Address1], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag], [DOB], [Age]) VALUES (231, N'Himani01', N'SGltYW5pQDAx', N'Himani', N'Himani@gmail.com', N'9876512345', N'Female', N'bls', N'bls', 2, 7, 6, N'bls', CAST(N'2023-04-13' AS Date), 0, NULL, NULL, 0, CAST(N'1990-01-17' AS Date), NULL)
INSERT [dbo].[M_PL_USER] ([UserId], [UserName], [Password], [FullName], [Email], [Mobile], [Gender], [Address], [City], [DesignationId], [DepartmentId], [HospitalID], [Address1], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag], [DOB], [Age]) VALUES (232, N'Tapann01', N'VGFwYW5uQDAx', N'Tapan ', N'Tapan@gmail.com', N'8765432198', N'Male', N'puri', N'puri', 2, 9, 6, N'puri', CAST(N'2023-04-13' AS Date), 0, NULL, NULL, 0, CAST(N'1978-08-11' AS Date), NULL)
INSERT [dbo].[M_PL_USER] ([UserId], [UserName], [Password], [FullName], [Email], [Mobile], [Gender], [Address], [City], [DesignationId], [DepartmentId], [HospitalID], [Address1], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag], [DOB], [Age]) VALUES (233, N'PragyanJena01', N'UHJhZ3lhbkplbmFAMDE=', N'Pragyan Jena', N'pragyann@gmail.com', N'9876543218', N'Female', N'bls', N'bls', 2, 11, 6, N'bls', CAST(N'2023-04-13' AS Date), 0, NULL, NULL, 0, CAST(N'1997-11-20' AS Date), NULL)
INSERT [dbo].[M_PL_USER] ([UserId], [UserName], [Password], [FullName], [Email], [Mobile], [Gender], [Address], [City], [DesignationId], [DepartmentId], [HospitalID], [Address1], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag], [DOB], [Age]) VALUES (234, N'Bishnu01', N'QmlzaG51QDAx', N'Bishnu ', N'Bishnu@gmail.com', N'7685948432', N'Male', N'ctc', N'ctc', 2, 12, 6, N'ctc', CAST(N'2023-04-13' AS Date), 0, NULL, NULL, 0, CAST(N'1984-06-04' AS Date), NULL)
INSERT [dbo].[M_PL_USER] ([UserId], [UserName], [Password], [FullName], [Email], [Mobile], [Gender], [Address], [City], [DesignationId], [DepartmentId], [HospitalID], [Address1], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag], [DOB], [Age]) VALUES (235, N'DiptiDebasmita01', N'RGlwdGlEZWJhc21pdGFAMDE=', N'Dipti Debasmita', N'Diptidebasmita@gmail.com', N'8765432197', N'Female', N'konark', N'konark', 2, 29, 6, N'konark', CAST(N'2023-04-13' AS Date), 0, NULL, NULL, 0, CAST(N'1970-03-17' AS Date), NULL)
INSERT [dbo].[M_PL_USER] ([UserId], [UserName], [Password], [FullName], [Email], [Mobile], [Gender], [Address], [City], [DesignationId], [DepartmentId], [HospitalID], [Address1], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag], [DOB], [Age]) VALUES (236, N'Prayag01', N'UHJheWFnQDAx', N'Prayag', N'Prayag@gmail.com', N'7654321897', N'Male', N'bls', N'bls', 2, 5, 4, N'bls', CAST(N'2023-04-13' AS Date), 0, NULL, NULL, 0, CAST(N'1990-12-10' AS Date), NULL)
INSERT [dbo].[M_PL_USER] ([UserId], [UserName], [Password], [FullName], [Email], [Mobile], [Gender], [Address], [City], [DesignationId], [DepartmentId], [HospitalID], [Address1], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag], [DOB], [Age]) VALUES (237, N'Dijbijaya01', N'RGlqYmlqYXlhQDAx', N'Dijbijaya', N'Dijbijaya@gmail.com', N'9876545632', N'Male', N'bbsr', N'bbsr', 2, 6, 4, N'bbsr', CAST(N'2023-04-13' AS Date), 0, NULL, NULL, 0, CAST(N'1983-08-17' AS Date), NULL)
INSERT [dbo].[M_PL_USER] ([UserId], [UserName], [Password], [FullName], [Email], [Mobile], [Gender], [Address], [City], [DesignationId], [DepartmentId], [HospitalID], [Address1], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag], [DOB], [Age]) VALUES (238, N'SubhaN01', N'U3ViaGFOQDAx', N'Subhasmita Nayak', N'Subhasmita@gmail.com', N'9876549876', N'Female', N'bbsr', N'bbsr', 2, 7, 4, N'bbsr', CAST(N'2023-04-13' AS Date), 0, NULL, NULL, 0, CAST(N'1993-08-10' AS Date), NULL)
INSERT [dbo].[M_PL_USER] ([UserId], [UserName], [Password], [FullName], [Email], [Mobile], [Gender], [Address], [City], [DesignationId], [DepartmentId], [HospitalID], [Address1], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag], [DOB], [Age]) VALUES (239, N'SusantaB01', N'U3VzYW50YUJAMDE=', N'Susanta Barik', N'Susantabarik@gmail.com', N'8465328796', N'Male', N'ctc', N'ctc', 2, 8, 4, N'ctc', CAST(N'2023-04-13' AS Date), 0, NULL, NULL, 0, CAST(N'1991-04-17' AS Date), NULL)
INSERT [dbo].[M_PL_USER] ([UserId], [UserName], [Password], [FullName], [Email], [Mobile], [Gender], [Address], [City], [DesignationId], [DepartmentId], [HospitalID], [Address1], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag], [DOB], [Age]) VALUES (240, N'AayanJ01', N'QWF5YW5KQDAx', N'Aayan  Jena', N'aayan@gmail.com', N'7456894308', N'Male', N'ctc', N'ctc', 2, 10, 4, N'ctc', CAST(N'2023-04-13' AS Date), 0, NULL, NULL, 0, CAST(N'1970-06-12' AS Date), NULL)
INSERT [dbo].[M_PL_USER] ([UserId], [UserName], [Password], [FullName], [Email], [Mobile], [Gender], [Address], [City], [DesignationId], [DepartmentId], [HospitalID], [Address1], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag], [DOB], [Age]) VALUES (241, N'Maisha01', N'TWFpc2hhQDAx', N'Maisha', N'maisha@gmail.com', N'7685943456', N'Female', N'mayurbhanj', N'mayurbhanj', 2, 11, 4, N'mayurbhanj', CAST(N'2023-04-13' AS Date), 0, NULL, NULL, 0, CAST(N'1983-01-18' AS Date), NULL)
INSERT [dbo].[M_PL_USER] ([UserId], [UserName], [Password], [FullName], [Email], [Mobile], [Gender], [Address], [City], [DesignationId], [DepartmentId], [HospitalID], [Address1], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag], [DOB], [Age]) VALUES (242, N'Aviyukt01', N'QXZpeXVrdEAwMQ==', N'Aviyukt', N'Aviyukt@gmail.com', N'8767896576', N'Male', N'puri', N'puri', 2, 12, 4, N'puri', CAST(N'2023-04-13' AS Date), 0, NULL, NULL, 0, CAST(N'1982-10-15' AS Date), NULL)
INSERT [dbo].[M_PL_USER] ([UserId], [UserName], [Password], [FullName], [Email], [Mobile], [Gender], [Address], [City], [DesignationId], [DepartmentId], [HospitalID], [Address1], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag], [DOB], [Age]) VALUES (243, N'AmanRana01', N'QW1hblJhbmFAMDE=', N'Aman ', N'aman@gmail.com', N'7867675645', N'Male', N'bbsr', N'bbsr', 2, 29, 4, N'bbsr', CAST(N'2023-04-13' AS Date), 0, NULL, NULL, 0, CAST(N'1980-10-29' AS Date), NULL)
INSERT [dbo].[M_PL_USER] ([UserId], [UserName], [Password], [FullName], [Email], [Mobile], [Gender], [Address], [City], [DesignationId], [DepartmentId], [HospitalID], [Address1], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag], [DOB], [Age]) VALUES (244, N'DivyaA01', N'RGl2eWFBQDAx', N'Divya Aggarwal', N'divya@gmail.com', N'8632345678', N'Female', N'ctc', N'ctc', 2, 1, 10, N'ctc', CAST(N'2023-04-13' AS Date), 0, NULL, NULL, 0, CAST(N'1999-12-25' AS Date), NULL)
INSERT [dbo].[M_PL_USER] ([UserId], [UserName], [Password], [FullName], [Email], [Mobile], [Gender], [Address], [City], [DesignationId], [DepartmentId], [HospitalID], [Address1], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag], [DOB], [Age]) VALUES (245, N'Susmita01', N'U3VzbWl0YUAwMQ==', N'Susmita', N'susmita@gmail.com', N'7865432456', N'Female', N'baripada', N'baripada', 2, 5, 10, N'baripada', CAST(N'2023-04-13' AS Date), 0, NULL, NULL, 0, CAST(N'1993-07-08' AS Date), NULL)
INSERT [dbo].[M_PL_USER] ([UserId], [UserName], [Password], [FullName], [Email], [Mobile], [Gender], [Address], [City], [DesignationId], [DepartmentId], [HospitalID], [Address1], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag], [DOB], [Age]) VALUES (246, N'Ranjit01', N'UmFuaml0QDAx', N'Ranjit', N'ranjit@gmail.com', N'7685453423', N'Male', N'bls', N'bls', 2, 6, 10, N'bls', CAST(N'2023-04-13' AS Date), 0, 246, CAST(N'2023-04-14' AS Date), 0, CAST(N'1983-08-05' AS Date), NULL)
INSERT [dbo].[M_PL_USER] ([UserId], [UserName], [Password], [FullName], [Email], [Mobile], [Gender], [Address], [City], [DesignationId], [DepartmentId], [HospitalID], [Address1], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag], [DOB], [Age]) VALUES (247, N'badal@gmail.com', N'UGFzc3dvcmQ=', N'Badal', N'badal@gmail.com', N'9876543219', N'Male', N'BBSR', N'BBSR', 3, 1, 2, NULL, CAST(N'2023-04-13' AS Date), 0, NULL, NULL, 0, NULL, 32)
INSERT [dbo].[M_PL_USER] ([UserId], [UserName], [Password], [FullName], [Email], [Mobile], [Gender], [Address], [City], [DesignationId], [DepartmentId], [HospitalID], [Address1], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag], [DOB], [Age]) VALUES (248, N'sush@gmail.copm', N'UGFzc3dvcmQ=', N'sush', N'sush@gmail.copm', N'9876543218', N'Male', N'bbsr', N'bbsr', 3, 29, 11, NULL, CAST(N'2023-04-13' AS Date), 0, NULL, NULL, 0, NULL, 33)
INSERT [dbo].[M_PL_USER] ([UserId], [UserName], [Password], [FullName], [Email], [Mobile], [Gender], [Address], [City], [DesignationId], [DepartmentId], [HospitalID], [Address1], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag], [DOB], [Age]) VALUES (249, N'priti@gmail.com', N'UGFzc3dvcmQ=', N'priti', N'priti@gmail.com', N'7654321876', N'Female', N'bls', N'bls', 3, 29, 11, NULL, CAST(N'2023-04-13' AS Date), 0, NULL, NULL, 0, NULL, 32)
INSERT [dbo].[M_PL_USER] ([UserId], [UserName], [Password], [FullName], [Email], [Mobile], [Gender], [Address], [City], [DesignationId], [DepartmentId], [HospitalID], [Address1], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag], [DOB], [Age]) VALUES (250, N'subha@gmail.com', N'UGFzc3dvcmQ=', N'Subha', N'subha@gmail.com', N'7568493321', N'Female', N'ctc', N'ctc', 3, 1, 13, NULL, CAST(N'2023-04-13' AS Date), 0, NULL, NULL, 0, NULL, 28)
INSERT [dbo].[M_PL_USER] ([UserId], [UserName], [Password], [FullName], [Email], [Mobile], [Gender], [Address], [City], [DesignationId], [DepartmentId], [HospitalID], [Address1], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag], [DOB], [Age]) VALUES (251, N'niki@gmail.com', N'UGFzc3dvcmQ=', N'Niki', N'niki@gmail.com', N'9675463245', N'Female', N'puri', N'Puri', 3, 1, 13, NULL, CAST(N'2023-04-14' AS Date), 0, NULL, NULL, 0, NULL, 27)
INSERT [dbo].[M_PL_USER] ([UserId], [UserName], [Password], [FullName], [Email], [Mobile], [Gender], [Address], [City], [DesignationId], [DepartmentId], [HospitalID], [Address1], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag], [DOB], [Age]) VALUES (252, N'rajesh@gmail.com', N'UGFzc3dvcmQ=', N'Rajesh', N'rajesh@gmail.com', N'4567832134', N'Male', N'bbsr', N'bbsr', 3, 29, 11, NULL, CAST(N'2023-04-14' AS Date), 0, NULL, NULL, 0, NULL, 32)
INSERT [dbo].[M_PL_USER] ([UserId], [UserName], [Password], [FullName], [Email], [Mobile], [Gender], [Address], [City], [DesignationId], [DepartmentId], [HospitalID], [Address1], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag], [DOB], [Age]) VALUES (253, N'sush@gmail.com', N'UGFzc3dvcmQ=', N'sush', N'sush@gmail.com', N'7654321876', N'Male', N'bls', N'bls', 3, 1, 2, NULL, CAST(N'2023-04-14' AS Date), 0, NULL, NULL, 0, NULL, 25)
INSERT [dbo].[M_PL_USER] ([UserId], [UserName], [Password], [FullName], [Email], [Mobile], [Gender], [Address], [City], [DesignationId], [DepartmentId], [HospitalID], [Address1], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag], [DOB], [Age]) VALUES (254, N'sita@gmail.com', N'UGFzc3dvcmQ=', N'sita', N'sita@gmail.com', N'9876543210', N'Female', N'ctc', N'ctc', 3, 9, 3, NULL, CAST(N'2023-04-14' AS Date), 0, NULL, NULL, 0, NULL, 33)
INSERT [dbo].[M_PL_USER] ([UserId], [UserName], [Password], [FullName], [Email], [Mobile], [Gender], [Address], [City], [DesignationId], [DepartmentId], [HospitalID], [Address1], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag], [DOB], [Age]) VALUES (255, N'ram@gmail.com', N'UGFzc3dvcmQ=', N'Ram', N'ram@gmail.com', N'7654876543', N'Male', N'bbsr', N'bbsr', 3, 1, 3, NULL, CAST(N'2023-04-14' AS Date), 0, NULL, NULL, 0, NULL, 26)
INSERT [dbo].[M_PL_USER] ([UserId], [UserName], [Password], [FullName], [Email], [Mobile], [Gender], [Address], [City], [DesignationId], [DepartmentId], [HospitalID], [Address1], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag], [DOB], [Age]) VALUES (256, N'laksh@gmail.com', N'UGFzc3dvcmQ=', N'Laksh', N'laksh@gmail.com', N'8765432456', N'Male', N'ctc', N'ctc', 3, 5, 6, NULL, CAST(N'2023-04-14' AS Date), 0, NULL, NULL, 0, NULL, 18)
INSERT [dbo].[M_PL_USER] ([UserId], [UserName], [Password], [FullName], [Email], [Mobile], [Gender], [Address], [City], [DesignationId], [DepartmentId], [HospitalID], [Address1], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag], [DOB], [Age]) VALUES (257, N'pragyan@gmail.com', N'UGFzc3dvcmQ=', N'pragyan nayak', N'pragyan@gmail.com', N'8976543456', N'Female', N'balasore', N'balasore', 3, 1, 2, NULL, CAST(N'2023-04-17' AS Date), 0, NULL, NULL, 0, NULL, 26)
INSERT [dbo].[M_PL_USER] ([UserId], [UserName], [Password], [FullName], [Email], [Mobile], [Gender], [Address], [City], [DesignationId], [DepartmentId], [HospitalID], [Address1], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn], [DeletedFlag], [DOB], [Age]) VALUES (258, N'FrontOffice123', N'RnJvbnRPZmZpY2UxMjNA', N'Sushanta kumar senapati', N'sushantasenapati718@gmail.com', N'8658193889', N'Male', N'AT/po-kuliana,block-Badasahi,dist-MBJ,odisha,pin-757025', N'Mayurbhanj', 5, 1, 3, N'cwedw', CAST(N'2023-04-18' AS Date), 0, NULL, NULL, 0, CAST(N'2005-04-13' AS Date), NULL)
SET IDENTITY_INSERT [dbo].[M_PL_USER] OFF
GO
SET IDENTITY_INSERT [dbo].[T_PL_DignosisConfiguration] ON 

INSERT [dbo].[T_PL_DignosisConfiguration] ([DignosisConfigId], [LabTestId], [DignosisID], [InvestigationName], [MinimumPercentage], [MaximumPercentage], [Unit], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (12, 2, 3, N'sdfghjk', CAST(2345.00 AS Decimal(16, 2)), CAST(2345.00 AS Decimal(16, 2)), N'62', 0, CAST(N'2023-02-23' AS Date), NULL, CAST(N'2023-02-23' AS Date), 1)
INSERT [dbo].[T_PL_DignosisConfiguration] ([DignosisConfigId], [LabTestId], [DignosisID], [InvestigationName], [MinimumPercentage], [MaximumPercentage], [Unit], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (13, 7, 4, N'sdfghj', CAST(12345.00 AS Decimal(16, 2)), CAST(12345.00 AS Decimal(16, 2)), N'1234', 0, CAST(N'2023-02-23' AS Date), NULL, CAST(N'2023-02-23' AS Date), 0)
INSERT [dbo].[T_PL_DignosisConfiguration] ([DignosisConfigId], [LabTestId], [DignosisID], [InvestigationName], [MinimumPercentage], [MaximumPercentage], [Unit], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (14, 7, 4, N'sxdcfvgbnm,', CAST(23456.00 AS Decimal(16, 2)), CAST(23456.00 AS Decimal(16, 2)), N'23456', 0, CAST(N'2023-02-23' AS Date), NULL, CAST(N'2023-02-23' AS Date), 0)
INSERT [dbo].[T_PL_DignosisConfiguration] ([DignosisConfigId], [LabTestId], [DignosisID], [InvestigationName], [MinimumPercentage], [MaximumPercentage], [Unit], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (31, 21, 5, N'asdfgh', CAST(123.00 AS Decimal(16, 2)), CAST(2134.00 AS Decimal(16, 2)), N'cg', 0, CAST(N'2023-02-23' AS Date), NULL, CAST(N'2023-02-23' AS Date), 0)
INSERT [dbo].[T_PL_DignosisConfiguration] ([DignosisConfigId], [LabTestId], [DignosisID], [InvestigationName], [MinimumPercentage], [MaximumPercentage], [Unit], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (32, 4, 4, N'wertyhj', CAST(12.00 AS Decimal(16, 2)), CAST(12.00 AS Decimal(16, 2)), N'qwert', 0, CAST(N'2023-02-23' AS Date), NULL, CAST(N'2023-02-23' AS Date), 0)
INSERT [dbo].[T_PL_DignosisConfiguration] ([DignosisConfigId], [LabTestId], [DignosisID], [InvestigationName], [MinimumPercentage], [MaximumPercentage], [Unit], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (33, 4, 4, N'sdfgh', CAST(1234.00 AS Decimal(16, 2)), CAST(123.00 AS Decimal(16, 2)), N'xcvb', 0, CAST(N'2023-02-23' AS Date), NULL, CAST(N'2023-02-23' AS Date), 0)
INSERT [dbo].[T_PL_DignosisConfiguration] ([DignosisConfigId], [LabTestId], [DignosisID], [InvestigationName], [MinimumPercentage], [MaximumPercentage], [Unit], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (42, 1, 6, N'Haemoglobin (Hb)', CAST(12.50 AS Decimal(16, 2)), CAST(16.30 AS Decimal(16, 2)), N'gm/dl', 0, CAST(N'2023-02-27' AS Date), NULL, CAST(N'2023-02-27' AS Date), 0)
INSERT [dbo].[T_PL_DignosisConfiguration] ([DignosisConfigId], [LabTestId], [DignosisID], [InvestigationName], [MinimumPercentage], [MaximumPercentage], [Unit], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (43, 1, 6, N'Hematocrit(HCT)', CAST(36.70 AS Decimal(16, 2)), CAST(47.10 AS Decimal(16, 2)), N'%', 0, CAST(N'2023-02-27' AS Date), NULL, CAST(N'2023-02-27' AS Date), 0)
INSERT [dbo].[T_PL_DignosisConfiguration] ([DignosisConfigId], [LabTestId], [DignosisID], [InvestigationName], [MinimumPercentage], [MaximumPercentage], [Unit], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (44, 1, 6, N'RBC Count', CAST(4.06 AS Decimal(16, 2)), CAST(5.63 AS Decimal(16, 2)), N'x106/uL', 0, CAST(N'2023-02-27' AS Date), NULL, CAST(N'2023-02-27' AS Date), 0)
INSERT [dbo].[T_PL_DignosisConfiguration] ([DignosisConfigId], [LabTestId], [DignosisID], [InvestigationName], [MinimumPercentage], [MaximumPercentage], [Unit], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (45, 1, 6, N'MCV', CAST(73.00 AS Decimal(16, 2)), CAST(96.20 AS Decimal(16, 2)), N'fL', 0, CAST(N'2023-02-27' AS Date), NULL, CAST(N'2023-02-27' AS Date), 0)
INSERT [dbo].[T_PL_DignosisConfiguration] ([DignosisConfigId], [LabTestId], [DignosisID], [InvestigationName], [MinimumPercentage], [MaximumPercentage], [Unit], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (46, 1, 6, N'MCH', CAST(23.90 AS Decimal(16, 2)), CAST(33.40 AS Decimal(16, 2)), N'pg', 0, CAST(N'2023-02-27' AS Date), NULL, CAST(N'2023-02-27' AS Date), 0)
INSERT [dbo].[T_PL_DignosisConfiguration] ([DignosisConfigId], [LabTestId], [DignosisID], [InvestigationName], [MinimumPercentage], [MaximumPercentage], [Unit], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (47, 1, 6, N'MCHC', CAST(32.50 AS Decimal(16, 2)), CAST(36.10 AS Decimal(16, 2)), N'g/dL', 0, CAST(N'2023-02-27' AS Date), NULL, CAST(N'2023-02-27' AS Date), 0)
INSERT [dbo].[T_PL_DignosisConfiguration] ([DignosisConfigId], [LabTestId], [DignosisID], [InvestigationName], [MinimumPercentage], [MaximumPercentage], [Unit], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (48, 1, 6, N'RDW', CAST(12.10 AS Decimal(16, 2)), CAST(16.20 AS Decimal(16, 2)), N'%', 0, CAST(N'2023-02-27' AS Date), NULL, CAST(N'2023-02-27' AS Date), 0)
INSERT [dbo].[T_PL_DignosisConfiguration] ([DignosisConfigId], [LabTestId], [DignosisID], [InvestigationName], [MinimumPercentage], [MaximumPercentage], [Unit], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (49, 1, 6, N'WBC Count', CAST(4000.00 AS Decimal(16, 2)), CAST(10000.00 AS Decimal(16, 2)), N'/Cu mm', 0, CAST(N'2023-02-27' AS Date), NULL, CAST(N'2023-02-27' AS Date), 0)
SET IDENTITY_INSERT [dbo].[T_PL_DignosisConfiguration] OFF
GO
SET IDENTITY_INSERT [dbo].[T_PL_PathoBill] ON 

INSERT [dbo].[T_PL_PathoBill] ([PathoBillId], [CollectionId], [Barcode], [Price], [PayMode], [Mobile], [Age], [Email], [PatientId], [Gender], [FullName], [DateOfAppointment], [DoctorName], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag], [CollectionFlag]) VALUES (1, N'0', N'123456789012', N'0', N'Cash', N'8754367823', 25, N'sita@gmail.com', NULL, N'Female', N'Sita', CAST(N'2023-03-01' AS Date), N'57', 0, CAST(N'2023-03-01' AS Date), NULL, CAST(N'2023-03-01' AS Date), 0, NULL)
INSERT [dbo].[T_PL_PathoBill] ([PathoBillId], [CollectionId], [Barcode], [Price], [PayMode], [Mobile], [Age], [Email], [PatientId], [Gender], [FullName], [DateOfAppointment], [DoctorName], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag], [CollectionFlag]) VALUES (2, N'1087399065', N'123456789012', NULL, N'Cash', N'8754367823', 25, N'sita@gmail.com', NULL, N'Female', N'Sita', CAST(N'2023-03-01' AS Date), N'66', 0, CAST(N'2023-03-01' AS Date), NULL, CAST(N'2023-03-01' AS Date), 1, NULL)
INSERT [dbo].[T_PL_PathoBill] ([PathoBillId], [CollectionId], [Barcode], [Price], [PayMode], [Mobile], [Age], [Email], [PatientId], [Gender], [FullName], [DateOfAppointment], [DoctorName], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag], [CollectionFlag]) VALUES (3, N'2055301633', N'123456789012', NULL, N'Cash', N'8754367823', 25, N'sita@gmail.com', NULL, N'Female', N'Sita', CAST(N'2023-03-01' AS Date), N'56', 0, CAST(N'2023-03-01' AS Date), NULL, CAST(N'2023-03-01' AS Date), 1, NULL)
INSERT [dbo].[T_PL_PathoBill] ([PathoBillId], [CollectionId], [Barcode], [Price], [PayMode], [Mobile], [Age], [Email], [PatientId], [Gender], [FullName], [DateOfAppointment], [DoctorName], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag], [CollectionFlag]) VALUES (4, N'5201239823', N'123456789012', NULL, N'CreditCard', N'9954367325', 25, N'Dipti@gmail.com', NULL, N'Female', N'Dipti', CAST(N'2023-03-01' AS Date), N'66', 0, CAST(N'2023-03-01' AS Date), NULL, CAST(N'2023-03-01' AS Date), 0, NULL)
INSERT [dbo].[T_PL_PathoBill] ([PathoBillId], [CollectionId], [Barcode], [Price], [PayMode], [Mobile], [Age], [Email], [PatientId], [Gender], [FullName], [DateOfAppointment], [DoctorName], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag], [CollectionFlag]) VALUES (5, N'0387611292', N'123456789012', NULL, N'Cash', N'9876543214', 27, N'subha@gmail.com', NULL, N'Female', N'Subha', CAST(N'2023-03-01' AS Date), N'40', 0, CAST(N'2023-03-01' AS Date), NULL, CAST(N'2023-03-01' AS Date), 0, NULL)
INSERT [dbo].[T_PL_PathoBill] ([PathoBillId], [CollectionId], [Barcode], [Price], [PayMode], [Mobile], [Age], [Email], [PatientId], [Gender], [FullName], [DateOfAppointment], [DoctorName], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag], [CollectionFlag]) VALUES (6, N'1647328292', N'123456789012', NULL, N'Cash', N'6543217890', 28, N'Isabella@gmail.com', NULL, N'Female', N'Isabella Ferrari', CAST(N'2023-03-01' AS Date), N'123', 0, CAST(N'2023-03-01' AS Date), NULL, CAST(N'2023-03-01' AS Date), 0, NULL)
INSERT [dbo].[T_PL_PathoBill] ([PathoBillId], [CollectionId], [Barcode], [Price], [PayMode], [Mobile], [Age], [Email], [PatientId], [Gender], [FullName], [DateOfAppointment], [DoctorName], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag], [CollectionFlag]) VALUES (7, N'6090578716', N'123456789012', NULL, N'Cash', N'9876543218', 25, N'mankada@gmail.com', NULL, N'Male', N'Susanat', CAST(N'2023-03-01' AS Date), N'57', 0, CAST(N'2023-03-01' AS Date), NULL, CAST(N'2023-03-01' AS Date), 1, NULL)
INSERT [dbo].[T_PL_PathoBill] ([PathoBillId], [CollectionId], [Barcode], [Price], [PayMode], [Mobile], [Age], [Email], [PatientId], [Gender], [FullName], [DateOfAppointment], [DoctorName], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag], [CollectionFlag]) VALUES (8, N'5321130795', N'123456789012', NULL, N'CreditCard', N'8754367823', 25, N'sita@gmail.com', NULL, N'Female', N'Sita', CAST(N'2023-03-01' AS Date), N'57', 0, CAST(N'2023-03-01' AS Date), NULL, CAST(N'2023-03-01' AS Date), 1, NULL)
INSERT [dbo].[T_PL_PathoBill] ([PathoBillId], [CollectionId], [Barcode], [Price], [PayMode], [Mobile], [Age], [Email], [PatientId], [Gender], [FullName], [DateOfAppointment], [DoctorName], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag], [CollectionFlag]) VALUES (9, N'132317486', N'123456789012', NULL, N'Cash', N'8765432190', 67, N'dustasusu@gmail.com', NULL, N'Male', N'Shusanta Dusta', CAST(N'2023-03-01' AS Date), N'56', 0, CAST(N'2023-03-01' AS Date), NULL, CAST(N'2023-03-01' AS Date), 1, NULL)
INSERT [dbo].[T_PL_PathoBill] ([PathoBillId], [CollectionId], [Barcode], [Price], [PayMode], [Mobile], [Age], [Email], [PatientId], [Gender], [FullName], [DateOfAppointment], [DoctorName], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag], [CollectionFlag]) VALUES (10, N'2323113657', N'123456789012', NULL, N'Cash', N'7654321890', 45, N'rajpit@gmail.com', NULL, N'Male', N'Shusant Singh Rajput', CAST(N'2023-03-02' AS Date), N'56', 0, CAST(N'2023-03-02' AS Date), NULL, CAST(N'2023-03-02' AS Date), 1, NULL)
INSERT [dbo].[T_PL_PathoBill] ([PathoBillId], [CollectionId], [Barcode], [Price], [PayMode], [Mobile], [Age], [Email], [PatientId], [Gender], [FullName], [DateOfAppointment], [DoctorName], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag], [CollectionFlag]) VALUES (11, N'2323152825', N'123456789012', NULL, N'CreditCard', N'7654321890', 45, N'rajpit@gmail.com', NULL, N'Male', N'Shusant Singh Rajput', CAST(N'2023-03-02' AS Date), N'56', 0, CAST(N'2023-03-02' AS Date), NULL, CAST(N'2023-03-02' AS Date), 1, NULL)
INSERT [dbo].[T_PL_PathoBill] ([PathoBillId], [CollectionId], [Barcode], [Price], [PayMode], [Mobile], [Age], [Email], [PatientId], [Gender], [FullName], [DateOfAppointment], [DoctorName], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag], [CollectionFlag]) VALUES (12, N'232316336', N'123456789012', NULL, N'UPI', N'8754367823', 25, N'sita@gmail.com', NULL, N'Female', N'Sita', CAST(N'2023-03-02' AS Date), N'57', 0, CAST(N'2023-03-02' AS Date), NULL, CAST(N'2023-03-02' AS Date), 1, NULL)
INSERT [dbo].[T_PL_PathoBill] ([PathoBillId], [CollectionId], [Barcode], [Price], [PayMode], [Mobile], [Age], [Email], [PatientId], [Gender], [FullName], [DateOfAppointment], [DoctorName], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag], [CollectionFlag]) VALUES (13, N'232316537', N'123456789012', NULL, N'UPI', N'8765432190', 67, N'dustasusu@gmail.com', NULL, N'Male', N'Shusanta Dusta', CAST(N'2023-03-02' AS Date), N'57', 0, CAST(N'2023-03-02' AS Date), NULL, CAST(N'2023-03-02' AS Date), 1, NULL)
INSERT [dbo].[T_PL_PathoBill] ([PathoBillId], [CollectionId], [Barcode], [Price], [PayMode], [Mobile], [Age], [Email], [PatientId], [Gender], [FullName], [DateOfAppointment], [DoctorName], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag], [CollectionFlag]) VALUES (14, N'232316445', N'123456789012', NULL, N'UPI', N'8765432190', 67, N'dustasusu@gmail.com', NULL, N'Male', N'Shusanta Dusta', CAST(N'2023-03-02' AS Date), N'57', 0, CAST(N'2023-03-02' AS Date), NULL, CAST(N'2023-03-02' AS Date), 1, NULL)
INSERT [dbo].[T_PL_PathoBill] ([PathoBillId], [CollectionId], [Barcode], [Price], [PayMode], [Mobile], [Age], [Email], [PatientId], [Gender], [FullName], [DateOfAppointment], [DoctorName], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag], [CollectionFlag]) VALUES (15, N'2323183812', N'123456789012', NULL, N'UPI', N'8765432190', 67, N'dustasusu@gmail.com', NULL, N'Male', N'Shusanta Dusta', CAST(N'2023-03-02' AS Date), N'56', 0, CAST(N'2023-03-02' AS Date), NULL, CAST(N'2023-03-02' AS Date), 1, NULL)
INSERT [dbo].[T_PL_PathoBill] ([PathoBillId], [CollectionId], [Barcode], [Price], [PayMode], [Mobile], [Age], [Email], [PatientId], [Gender], [FullName], [DateOfAppointment], [DoctorName], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag], [CollectionFlag]) VALUES (16, N'3323105217', N'123456789012', NULL, N'UPI', N'9876678990', 25, N'senapati@gmail.com', NULL, N'Male', N'Shusanta Kumar Senapati', CAST(N'2023-03-03' AS Date), N'66', 0, CAST(N'2023-03-03' AS Date), NULL, CAST(N'2023-03-03' AS Date), 1, NULL)
INSERT [dbo].[T_PL_PathoBill] ([PathoBillId], [CollectionId], [Barcode], [Price], [PayMode], [Mobile], [Age], [Email], [PatientId], [Gender], [FullName], [DateOfAppointment], [DoctorName], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag], [CollectionFlag]) VALUES (17, N'6323163740', N'123456789012', NULL, N'UPI', N'8754367823', 25, N'sita@gmail.com', NULL, N'Female', N'Sita', CAST(N'2023-03-06' AS Date), N'57', 0, CAST(N'2023-03-06' AS Date), NULL, CAST(N'2023-03-06' AS Date), 1, NULL)
INSERT [dbo].[T_PL_PathoBill] ([PathoBillId], [CollectionId], [Barcode], [Price], [PayMode], [Mobile], [Age], [Email], [PatientId], [Gender], [FullName], [DateOfAppointment], [DoctorName], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag], [CollectionFlag]) VALUES (18, N'9323113559', N'123456789012', NULL, N'Cash', N'87543678', 0, NULL, NULL, N'0', NULL, CAST(N'2023-03-09' AS Date), N'56', 0, CAST(N'2023-03-09' AS Date), NULL, CAST(N'2023-03-09' AS Date), 0, NULL)
INSERT [dbo].[T_PL_PathoBill] ([PathoBillId], [CollectionId], [Barcode], [Price], [PayMode], [Mobile], [Age], [Email], [PatientId], [Gender], [FullName], [DateOfAppointment], [DoctorName], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag], [CollectionFlag]) VALUES (19, N'9323114049', N'123456789012', NULL, N'UPI', N'1234567812', 26, N'pragyan@gmail.com', NULL, N'Female', N'Pragyan', CAST(N'2023-03-09' AS Date), N'56', 0, CAST(N'2023-03-09' AS Date), NULL, CAST(N'2023-03-09' AS Date), 1, NULL)
INSERT [dbo].[T_PL_PathoBill] ([PathoBillId], [CollectionId], [Barcode], [Price], [PayMode], [Mobile], [Age], [Email], [PatientId], [Gender], [FullName], [DateOfAppointment], [DoctorName], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag], [CollectionFlag]) VALUES (20, N'9323114319', N'123456789012', NULL, N'Cash', N'8754367824', 56, N'qwert@gmail.com', NULL, N'0', N'qwer', CAST(N'2023-03-09' AS Date), N'0', 0, CAST(N'2023-03-09' AS Date), NULL, CAST(N'2023-03-09' AS Date), 0, NULL)
INSERT [dbo].[T_PL_PathoBill] ([PathoBillId], [CollectionId], [Barcode], [Price], [PayMode], [Mobile], [Age], [Email], [PatientId], [Gender], [FullName], [DateOfAppointment], [DoctorName], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag], [CollectionFlag]) VALUES (21, N'932311572', N'123456789012', NULL, N'Cash', N'8754367823', 25, N'sita@gmail.com', NULL, N'Female', N'Sita', CAST(N'2023-03-09' AS Date), N'123', 0, CAST(N'2023-03-09' AS Date), NULL, CAST(N'2023-03-09' AS Date), 1, NULL)
INSERT [dbo].[T_PL_PathoBill] ([PathoBillId], [CollectionId], [Barcode], [Price], [PayMode], [Mobile], [Age], [Email], [PatientId], [Gender], [FullName], [DateOfAppointment], [DoctorName], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag], [CollectionFlag]) VALUES (22, N'9323115857', N'123456789012', NULL, N'UPI', N'9957643988', 26, N'subha@gmail.com', NULL, N'Female', N'Subha', CAST(N'2023-03-09' AS Date), N'66', 0, CAST(N'2023-03-09' AS Date), NULL, CAST(N'2023-03-09' AS Date), 1, NULL)
INSERT [dbo].[T_PL_PathoBill] ([PathoBillId], [CollectionId], [Barcode], [Price], [PayMode], [Mobile], [Age], [Email], [PatientId], [Gender], [FullName], [DateOfAppointment], [DoctorName], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag], [CollectionFlag]) VALUES (23, N'932312045', N'123456789012', NULL, N'UPI', N'8754367823', 25, N'sita@gmail.com', NULL, N'Female', N'Sita', CAST(N'2023-03-09' AS Date), N'66', 0, CAST(N'2023-03-09' AS Date), NULL, CAST(N'2023-03-09' AS Date), 1, NULL)
INSERT [dbo].[T_PL_PathoBill] ([PathoBillId], [CollectionId], [Barcode], [Price], [PayMode], [Mobile], [Age], [Email], [PatientId], [Gender], [FullName], [DateOfAppointment], [DoctorName], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag], [CollectionFlag]) VALUES (24, N'932312138', N'123456789012', NULL, N'Cash', NULL, 0, NULL, NULL, N'0', NULL, CAST(N'2023-03-09' AS Date), N'0', 0, CAST(N'2023-03-09' AS Date), NULL, CAST(N'2023-03-09' AS Date), 0, NULL)
INSERT [dbo].[T_PL_PathoBill] ([PathoBillId], [CollectionId], [Barcode], [Price], [PayMode], [Mobile], [Age], [Email], [PatientId], [Gender], [FullName], [DateOfAppointment], [DoctorName], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag], [CollectionFlag]) VALUES (25, N'932312512', N'123456789012', NULL, N'Cash', NULL, 0, NULL, NULL, N'0', NULL, CAST(N'2023-03-09' AS Date), N'0', 0, CAST(N'2023-03-09' AS Date), NULL, CAST(N'2023-03-09' AS Date), 0, NULL)
INSERT [dbo].[T_PL_PathoBill] ([PathoBillId], [CollectionId], [Barcode], [Price], [PayMode], [Mobile], [Age], [Email], [PatientId], [Gender], [FullName], [DateOfAppointment], [DoctorName], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag], [CollectionFlag]) VALUES (26, N'20323114824', N'123456789012', NULL, N'Cash', N'8765432190', 67, N'dustasusu@gmail.com', NULL, N'Male', N'Shusanta Dusta', CAST(N'2023-03-20' AS Date), N'40', 0, CAST(N'2023-03-20' AS Date), NULL, CAST(N'2023-03-20' AS Date), 1, NULL)
INSERT [dbo].[T_PL_PathoBill] ([PathoBillId], [CollectionId], [Barcode], [Price], [PayMode], [Mobile], [Age], [Email], [PatientId], [Gender], [FullName], [DateOfAppointment], [DoctorName], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag], [CollectionFlag]) VALUES (27, N'2032312102', N'123456789012', NULL, N'UPI', N'9876543218', 25, N'mankada@gmail.com', NULL, N'Male', N'Susanat', CAST(N'2023-03-20' AS Date), N'66', 0, CAST(N'2023-03-20' AS Date), NULL, CAST(N'2023-03-20' AS Date), 0, NULL)
INSERT [dbo].[T_PL_PathoBill] ([PathoBillId], [CollectionId], [Barcode], [Price], [PayMode], [Mobile], [Age], [Email], [PatientId], [Gender], [FullName], [DateOfAppointment], [DoctorName], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag], [CollectionFlag]) VALUES (28, N'2132317559', N'123456789012', NULL, N'UPI', N'9987654321', 26, N'subha@gmail.com', NULL, N'Female', N'Subha', CAST(N'2023-03-21' AS Date), N'161', 0, CAST(N'2023-03-21' AS Date), NULL, CAST(N'2023-03-21' AS Date), 0, 1)
INSERT [dbo].[T_PL_PathoBill] ([PathoBillId], [CollectionId], [Barcode], [Price], [PayMode], [Mobile], [Age], [Email], [PatientId], [Gender], [FullName], [DateOfAppointment], [DoctorName], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag], [CollectionFlag]) VALUES (29, N'23323102445', N'758471886981', NULL, N'UPI', N'8754367823', 0, N'sita@gmail.com', NULL, N'Female', N'Sita', CAST(N'2023-03-23' AS Date), N'57', 0, CAST(N'2023-03-23' AS Date), NULL, CAST(N'2023-03-23' AS Date), 1, NULL)
INSERT [dbo].[T_PL_PathoBill] ([PathoBillId], [CollectionId], [Barcode], [Price], [PayMode], [Mobile], [Age], [Email], [PatientId], [Gender], [FullName], [DateOfAppointment], [DoctorName], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag], [CollectionFlag]) VALUES (30, N'2332314403', N'505319735948', NULL, N'Cash', N'8754367823', 0, N'sita@gmail.com', NULL, N'Female', N'Shusanta Senapatixxxxxx', CAST(N'2023-03-23' AS Date), N'57', 0, CAST(N'2023-03-23' AS Date), NULL, CAST(N'2023-03-23' AS Date), 0, NULL)
INSERT [dbo].[T_PL_PathoBill] ([PathoBillId], [CollectionId], [Barcode], [Price], [PayMode], [Mobile], [Age], [Email], [PatientId], [Gender], [FullName], [DateOfAppointment], [DoctorName], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag], [CollectionFlag]) VALUES (31, N'23323144123', N'892738256511', NULL, N'Cash', N'8754367823', 34, N'sita@gmail.com', NULL, N'Male', N'Shusanta Senapatixxxx', CAST(N'2023-03-23' AS Date), N'57', 0, CAST(N'2023-03-23' AS Date), NULL, CAST(N'2023-03-23' AS Date), 0, NULL)
INSERT [dbo].[T_PL_PathoBill] ([PathoBillId], [CollectionId], [Barcode], [Price], [PayMode], [Mobile], [Age], [Email], [PatientId], [Gender], [FullName], [DateOfAppointment], [DoctorName], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag], [CollectionFlag]) VALUES (32, N'2332315143', N'751478194175', NULL, N'Cash', N'9937643088', 0, N'Pragyan@gmail.com', NULL, N'Female', N'Pragyan', CAST(N'2023-03-23' AS Date), N'66', 0, CAST(N'2023-03-23' AS Date), NULL, CAST(N'2023-03-23' AS Date), 1, NULL)
INSERT [dbo].[T_PL_PathoBill] ([PathoBillId], [CollectionId], [Barcode], [Price], [PayMode], [Mobile], [Age], [Email], [PatientId], [Gender], [FullName], [DateOfAppointment], [DoctorName], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag], [CollectionFlag]) VALUES (33, N'233231549', N'792174524070', NULL, N'Cash', N'9937861938', 25, N'smita@gmail.com', NULL, N'Female', N'Smita', CAST(N'2023-03-23' AS Date), N'56', 0, CAST(N'2023-03-23' AS Date), NULL, CAST(N'2023-03-23' AS Date), 1, NULL)
INSERT [dbo].[T_PL_PathoBill] ([PathoBillId], [CollectionId], [Barcode], [Price], [PayMode], [Mobile], [Age], [Email], [PatientId], [Gender], [FullName], [DateOfAppointment], [DoctorName], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag], [CollectionFlag]) VALUES (34, N'23323175044', N'826002048004', NULL, N'UPI', N'9937643088', 0, N'Pragyan@gmail.com', NULL, N'Female', N'Pragyan', CAST(N'2023-03-23' AS Date), N'161', 0, CAST(N'2023-03-23' AS Date), NULL, CAST(N'2023-03-23' AS Date), 1, NULL)
INSERT [dbo].[T_PL_PathoBill] ([PathoBillId], [CollectionId], [Barcode], [Price], [PayMode], [Mobile], [Age], [Email], [PatientId], [Gender], [FullName], [DateOfAppointment], [DoctorName], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag], [CollectionFlag]) VALUES (35, N'23323175150', N'780460841928', NULL, N'UPI', N'9937643088', 27, N'Pragyan@gmail.com', NULL, N'Female', N'Pragyan', CAST(N'2023-03-23' AS Date), N'161', 0, CAST(N'2023-03-23' AS Date), NULL, CAST(N'2023-03-23' AS Date), 1, NULL)
INSERT [dbo].[T_PL_PathoBill] ([PathoBillId], [CollectionId], [Barcode], [Price], [PayMode], [Mobile], [Age], [Email], [PatientId], [Gender], [FullName], [DateOfAppointment], [DoctorName], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag], [CollectionFlag]) VALUES (36, N'2332318222', N'397251405349', NULL, N'CreditCard', N'8754367823', 27, N'sita@gmail.com', NULL, N'Female', N'Sita', CAST(N'2023-03-23' AS Date), N'66', 0, CAST(N'2023-03-23' AS Date), NULL, CAST(N'2023-03-23' AS Date), 1, NULL)
INSERT [dbo].[T_PL_PathoBill] ([PathoBillId], [CollectionId], [Barcode], [Price], [PayMode], [Mobile], [Age], [Email], [PatientId], [Gender], [FullName], [DateOfAppointment], [DoctorName], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag], [CollectionFlag]) VALUES (37, N'24323165221', N'429064606689', NULL, N'UPI', N'8754367823', 27, N'sita@gmail.com', NULL, N'Female', N'Sita', CAST(N'2023-03-24' AS Date), N'161', 0, CAST(N'2023-03-24' AS Date), NULL, CAST(N'2023-03-24' AS Date), 1, 1)
INSERT [dbo].[T_PL_PathoBill] ([PathoBillId], [CollectionId], [Barcode], [Price], [PayMode], [Mobile], [Age], [Email], [PatientId], [Gender], [FullName], [DateOfAppointment], [DoctorName], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag], [CollectionFlag]) VALUES (38, N'2732316927', N'065964120847', NULL, N'Cash', N'7205828588', 54, N'arpita@gmail.com', NULL, N'Female', N'Arpita Sahu', CAST(N'2023-03-27' AS Date), N'56', 0, CAST(N'2023-03-27' AS Date), NULL, CAST(N'2023-03-27' AS Date), 1, NULL)
INSERT [dbo].[T_PL_PathoBill] ([PathoBillId], [CollectionId], [Barcode], [Price], [PayMode], [Mobile], [Age], [Email], [PatientId], [Gender], [FullName], [DateOfAppointment], [DoctorName], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag], [CollectionFlag]) VALUES (39, N'28323153219', NULL, NULL, N'Cash', N'6789018989', 67, N'mohan@gmail.com', NULL, N'Male', N'Ram Mohan Das', CAST(N'2023-03-28' AS Date), N'56', 0, CAST(N'2023-03-28' AS Date), NULL, CAST(N'2023-03-28' AS Date), 1, NULL)
INSERT [dbo].[T_PL_PathoBill] ([PathoBillId], [CollectionId], [Barcode], [Price], [PayMode], [Mobile], [Age], [Email], [PatientId], [Gender], [FullName], [DateOfAppointment], [DoctorName], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag], [CollectionFlag]) VALUES (40, N'28323154439', NULL, NULL, N'Cash', N'6789018989', 67, N'mohan@gmail.com', NULL, N'Male', N'Ram Mohan Das', CAST(N'2023-03-28' AS Date), N'56', 0, CAST(N'2023-03-28' AS Date), NULL, CAST(N'2023-03-28' AS Date), 1, NULL)
INSERT [dbo].[T_PL_PathoBill] ([PathoBillId], [CollectionId], [Barcode], [Price], [PayMode], [Mobile], [Age], [Email], [PatientId], [Gender], [FullName], [DateOfAppointment], [DoctorName], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag], [CollectionFlag]) VALUES (41, N'28323155015', NULL, NULL, N'CreditCard', N'1234567890', 0, N'Subhasmita@gmail.com', NULL, N'Female', N'Subhasmita', CAST(N'2023-03-28' AS Date), N'56', 0, CAST(N'2023-03-28' AS Date), NULL, CAST(N'2023-03-28' AS Date), 1, NULL)
INSERT [dbo].[T_PL_PathoBill] ([PathoBillId], [CollectionId], [Barcode], [Price], [PayMode], [Mobile], [Age], [Email], [PatientId], [Gender], [FullName], [DateOfAppointment], [DoctorName], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag], [CollectionFlag]) VALUES (42, N'28323155423', NULL, NULL, N'UPI', N'1234567890', 0, N'Subhasmita@gmail.com', NULL, N'Female', N'Subhasmita', CAST(N'2023-03-28' AS Date), N'40', 0, CAST(N'2023-03-28' AS Date), NULL, CAST(N'2023-03-28' AS Date), 1, NULL)
INSERT [dbo].[T_PL_PathoBill] ([PathoBillId], [CollectionId], [Barcode], [Price], [PayMode], [Mobile], [Age], [Email], [PatientId], [Gender], [FullName], [DateOfAppointment], [DoctorName], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag], [CollectionFlag]) VALUES (43, N'28323155726', NULL, NULL, N'DebitCard', N'1234567890', 0, N'Subhasmita@gmail.com', NULL, N'Female', N'Subhasmita', CAST(N'2023-03-28' AS Date), N'56', 0, CAST(N'2023-03-28' AS Date), NULL, CAST(N'2023-03-28' AS Date), 1, NULL)
INSERT [dbo].[T_PL_PathoBill] ([PathoBillId], [CollectionId], [Barcode], [Price], [PayMode], [Mobile], [Age], [Email], [PatientId], [Gender], [FullName], [DateOfAppointment], [DoctorName], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag], [CollectionFlag]) VALUES (44, N'2832316013', NULL, NULL, N'UPI', N'1234567890', 0, N'Subhasmita@gmail.com', NULL, N'Female', N'Subhasmita', CAST(N'2023-03-28' AS Date), N'56', 0, CAST(N'2023-03-28' AS Date), NULL, CAST(N'2023-03-28' AS Date), 1, NULL)
INSERT [dbo].[T_PL_PathoBill] ([PathoBillId], [CollectionId], [Barcode], [Price], [PayMode], [Mobile], [Age], [Email], [PatientId], [Gender], [FullName], [DateOfAppointment], [DoctorName], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag], [CollectionFlag]) VALUES (45, N'2832316152', NULL, NULL, N'UPI', N'6543217890', 0, N'Isabella@gmail.com', NULL, N'Female', N'Isabella Ferrari', CAST(N'2023-03-28' AS Date), N'56', 0, CAST(N'2023-03-28' AS Date), NULL, CAST(N'2023-03-28' AS Date), 1, NULL)
INSERT [dbo].[T_PL_PathoBill] ([PathoBillId], [CollectionId], [Barcode], [Price], [PayMode], [Mobile], [Age], [Email], [PatientId], [Gender], [FullName], [DateOfAppointment], [DoctorName], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag], [CollectionFlag]) VALUES (46, N'28323164032', NULL, NULL, N'Cash', N'8763252420', 45, N'roshnisaha@gmail.com', NULL, N'Female', N'Roshani Saha', CAST(N'2023-03-28' AS Date), N'56', 0, CAST(N'2023-03-28' AS Date), NULL, CAST(N'2023-03-28' AS Date), 1, NULL)
INSERT [dbo].[T_PL_PathoBill] ([PathoBillId], [CollectionId], [Barcode], [Price], [PayMode], [Mobile], [Age], [Email], [PatientId], [Gender], [FullName], [DateOfAppointment], [DoctorName], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag], [CollectionFlag]) VALUES (47, N'28323164239', NULL, NULL, N'CreditCard', N'8763252420', 45, N'roshnisaha@gmail.com', NULL, N'Female', N'Roshani Saha', CAST(N'2023-03-28' AS Date), N'56', 0, CAST(N'2023-03-28' AS Date), NULL, CAST(N'2023-03-28' AS Date), 1, NULL)
INSERT [dbo].[T_PL_PathoBill] ([PathoBillId], [CollectionId], [Barcode], [Price], [PayMode], [Mobile], [Age], [Email], [PatientId], [Gender], [FullName], [DateOfAppointment], [DoctorName], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag], [CollectionFlag]) VALUES (48, N'28323171723', NULL, NULL, N'UPI', N'8763252420', 45, N'roshnisaha@gmail.com', NULL, N'Female', N'Roshani Saha', CAST(N'2023-03-28' AS Date), N'56', 0, CAST(N'2023-03-28' AS Date), NULL, CAST(N'2023-03-28' AS Date), 1, NULL)
INSERT [dbo].[T_PL_PathoBill] ([PathoBillId], [CollectionId], [Barcode], [Price], [PayMode], [Mobile], [Age], [Email], [PatientId], [Gender], [FullName], [DateOfAppointment], [DoctorName], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag], [CollectionFlag]) VALUES (49, N'28323181954', NULL, NULL, N'Cash', N'8763252420', 45, N'roshnisaha@gmail.com', NULL, N'Female', N'Roshani Saha', CAST(N'2023-03-28' AS Date), N'40', 0, CAST(N'2023-03-28' AS Date), NULL, CAST(N'2023-03-28' AS Date), 1, NULL)
INSERT [dbo].[T_PL_PathoBill] ([PathoBillId], [CollectionId], [Barcode], [Price], [PayMode], [Mobile], [Age], [Email], [PatientId], [Gender], [FullName], [DateOfAppointment], [DoctorName], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag], [CollectionFlag]) VALUES (50, N'28323182653', NULL, NULL, N'Cash', N'8763252420', 45, N'roshnisaha@gmail.com', NULL, N'Female', N'Roshani Saha', CAST(N'2023-03-28' AS Date), N'56', 0, CAST(N'2023-03-28' AS Date), NULL, CAST(N'2023-03-28' AS Date), 1, 1)
INSERT [dbo].[T_PL_PathoBill] ([PathoBillId], [CollectionId], [Barcode], [Price], [PayMode], [Mobile], [Age], [Email], [PatientId], [Gender], [FullName], [DateOfAppointment], [DoctorName], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag], [CollectionFlag]) VALUES (51, N'29323162338', NULL, NULL, N'UPI', N'9937252420', 30, N'dipti12@gmail.com', NULL, N'Female', N'Dipti Debasmita', CAST(N'2023-03-29' AS Date), N'56', 0, CAST(N'2023-03-29' AS Date), NULL, CAST(N'2023-03-29' AS Date), 0, 1)
SET IDENTITY_INSERT [dbo].[T_PL_PathoBill] OFF
GO
SET IDENTITY_INSERT [dbo].[T_PL_PathoReportCollection] ON 

INSERT [dbo].[T_PL_PathoReportCollection] ([ReportId], [PathoBillId], [LabTestId], [DignosisConfigId], [Value], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (73, 16, 0, 42, NULL, NULL, CAST(N'2023-03-06' AS Date), NULL, CAST(N'2023-03-06' AS Date), 0)
INSERT [dbo].[T_PL_PathoReportCollection] ([ReportId], [PathoBillId], [LabTestId], [DignosisConfigId], [Value], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (74, 16, 0, 43, NULL, NULL, CAST(N'2023-03-06' AS Date), NULL, CAST(N'2023-03-06' AS Date), 0)
INSERT [dbo].[T_PL_PathoReportCollection] ([ReportId], [PathoBillId], [LabTestId], [DignosisConfigId], [Value], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (75, 16, 0, 44, NULL, NULL, CAST(N'2023-03-06' AS Date), NULL, CAST(N'2023-03-06' AS Date), 0)
INSERT [dbo].[T_PL_PathoReportCollection] ([ReportId], [PathoBillId], [LabTestId], [DignosisConfigId], [Value], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (76, 16, 0, 45, NULL, NULL, CAST(N'2023-03-06' AS Date), NULL, CAST(N'2023-03-06' AS Date), 0)
INSERT [dbo].[T_PL_PathoReportCollection] ([ReportId], [PathoBillId], [LabTestId], [DignosisConfigId], [Value], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (77, 16, 0, 46, NULL, NULL, CAST(N'2023-03-06' AS Date), NULL, CAST(N'2023-03-06' AS Date), 0)
INSERT [dbo].[T_PL_PathoReportCollection] ([ReportId], [PathoBillId], [LabTestId], [DignosisConfigId], [Value], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (78, 16, 0, 47, NULL, NULL, CAST(N'2023-03-06' AS Date), NULL, CAST(N'2023-03-06' AS Date), 0)
INSERT [dbo].[T_PL_PathoReportCollection] ([ReportId], [PathoBillId], [LabTestId], [DignosisConfigId], [Value], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (79, 16, 0, 48, NULL, NULL, CAST(N'2023-03-06' AS Date), NULL, CAST(N'2023-03-06' AS Date), 0)
INSERT [dbo].[T_PL_PathoReportCollection] ([ReportId], [PathoBillId], [LabTestId], [DignosisConfigId], [Value], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (80, 16, 0, 49, NULL, NULL, CAST(N'2023-03-06' AS Date), NULL, CAST(N'2023-03-06' AS Date), 0)
INSERT [dbo].[T_PL_PathoReportCollection] ([ReportId], [PathoBillId], [LabTestId], [DignosisConfigId], [Value], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (89, 9, 0, 12, N'23', NULL, CAST(N'2023-03-06' AS Date), NULL, CAST(N'2023-03-06' AS Date), 0)
INSERT [dbo].[T_PL_PathoReportCollection] ([ReportId], [PathoBillId], [LabTestId], [DignosisConfigId], [Value], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (90, 9, 0, 42, N'23', NULL, CAST(N'2023-03-06' AS Date), NULL, CAST(N'2023-03-06' AS Date), 0)
INSERT [dbo].[T_PL_PathoReportCollection] ([ReportId], [PathoBillId], [LabTestId], [DignosisConfigId], [Value], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (91, 9, 0, 43, N'23', NULL, CAST(N'2023-03-06' AS Date), NULL, CAST(N'2023-03-06' AS Date), 0)
INSERT [dbo].[T_PL_PathoReportCollection] ([ReportId], [PathoBillId], [LabTestId], [DignosisConfigId], [Value], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (92, 9, 0, 44, N'23', NULL, CAST(N'2023-03-06' AS Date), NULL, CAST(N'2023-03-06' AS Date), 0)
INSERT [dbo].[T_PL_PathoReportCollection] ([ReportId], [PathoBillId], [LabTestId], [DignosisConfigId], [Value], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (93, 9, 0, 45, N'232', NULL, CAST(N'2023-03-06' AS Date), NULL, CAST(N'2023-03-06' AS Date), 0)
INSERT [dbo].[T_PL_PathoReportCollection] ([ReportId], [PathoBillId], [LabTestId], [DignosisConfigId], [Value], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (94, 9, 0, 46, N'23', NULL, CAST(N'2023-03-06' AS Date), NULL, CAST(N'2023-03-06' AS Date), 0)
INSERT [dbo].[T_PL_PathoReportCollection] ([ReportId], [PathoBillId], [LabTestId], [DignosisConfigId], [Value], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (95, 9, 0, 47, N'23', NULL, CAST(N'2023-03-06' AS Date), NULL, CAST(N'2023-03-06' AS Date), 0)
INSERT [dbo].[T_PL_PathoReportCollection] ([ReportId], [PathoBillId], [LabTestId], [DignosisConfigId], [Value], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (96, 9, 0, 48, N'23', NULL, CAST(N'2023-03-06' AS Date), NULL, CAST(N'2023-03-06' AS Date), 0)
INSERT [dbo].[T_PL_PathoReportCollection] ([ReportId], [PathoBillId], [LabTestId], [DignosisConfigId], [Value], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (97, 9, 0, 49, N'23', NULL, CAST(N'2023-03-06' AS Date), NULL, CAST(N'2023-03-06' AS Date), 0)
INSERT [dbo].[T_PL_PathoReportCollection] ([ReportId], [PathoBillId], [LabTestId], [DignosisConfigId], [Value], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (114, 12, 0, 42, N'15', NULL, CAST(N'2023-03-06' AS Date), NULL, CAST(N'2023-03-06' AS Date), 0)
INSERT [dbo].[T_PL_PathoReportCollection] ([ReportId], [PathoBillId], [LabTestId], [DignosisConfigId], [Value], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (115, 12, 0, 43, N'15', NULL, CAST(N'2023-03-06' AS Date), NULL, CAST(N'2023-03-06' AS Date), 0)
INSERT [dbo].[T_PL_PathoReportCollection] ([ReportId], [PathoBillId], [LabTestId], [DignosisConfigId], [Value], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (116, 12, 0, 44, N'15', NULL, CAST(N'2023-03-06' AS Date), NULL, CAST(N'2023-03-06' AS Date), 0)
INSERT [dbo].[T_PL_PathoReportCollection] ([ReportId], [PathoBillId], [LabTestId], [DignosisConfigId], [Value], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (117, 12, 0, 45, N'15', NULL, CAST(N'2023-03-06' AS Date), NULL, CAST(N'2023-03-06' AS Date), 0)
INSERT [dbo].[T_PL_PathoReportCollection] ([ReportId], [PathoBillId], [LabTestId], [DignosisConfigId], [Value], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (118, 12, 0, 46, N'15', NULL, CAST(N'2023-03-06' AS Date), NULL, CAST(N'2023-03-06' AS Date), 0)
INSERT [dbo].[T_PL_PathoReportCollection] ([ReportId], [PathoBillId], [LabTestId], [DignosisConfigId], [Value], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (119, 12, 0, 47, N'15', NULL, CAST(N'2023-03-06' AS Date), NULL, CAST(N'2023-03-06' AS Date), 0)
INSERT [dbo].[T_PL_PathoReportCollection] ([ReportId], [PathoBillId], [LabTestId], [DignosisConfigId], [Value], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (120, 12, 0, 48, N'15', NULL, CAST(N'2023-03-06' AS Date), NULL, CAST(N'2023-03-06' AS Date), 0)
INSERT [dbo].[T_PL_PathoReportCollection] ([ReportId], [PathoBillId], [LabTestId], [DignosisConfigId], [Value], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (121, 12, 0, 49, N'15', NULL, CAST(N'2023-03-06' AS Date), NULL, CAST(N'2023-03-06' AS Date), 0)
INSERT [dbo].[T_PL_PathoReportCollection] ([ReportId], [PathoBillId], [LabTestId], [DignosisConfigId], [Value], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (130, 6, 0, 42, N'14', NULL, CAST(N'2023-03-06' AS Date), NULL, CAST(N'2023-03-06' AS Date), 0)
INSERT [dbo].[T_PL_PathoReportCollection] ([ReportId], [PathoBillId], [LabTestId], [DignosisConfigId], [Value], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (131, 6, 0, 43, N'14', NULL, CAST(N'2023-03-06' AS Date), NULL, CAST(N'2023-03-06' AS Date), 0)
INSERT [dbo].[T_PL_PathoReportCollection] ([ReportId], [PathoBillId], [LabTestId], [DignosisConfigId], [Value], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (132, 6, 0, 44, N'14', NULL, CAST(N'2023-03-06' AS Date), NULL, CAST(N'2023-03-06' AS Date), 0)
INSERT [dbo].[T_PL_PathoReportCollection] ([ReportId], [PathoBillId], [LabTestId], [DignosisConfigId], [Value], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (133, 6, 0, 45, N'14', NULL, CAST(N'2023-03-06' AS Date), NULL, CAST(N'2023-03-06' AS Date), 0)
INSERT [dbo].[T_PL_PathoReportCollection] ([ReportId], [PathoBillId], [LabTestId], [DignosisConfigId], [Value], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (134, 6, 0, 46, N'14', NULL, CAST(N'2023-03-06' AS Date), NULL, CAST(N'2023-03-06' AS Date), 0)
INSERT [dbo].[T_PL_PathoReportCollection] ([ReportId], [PathoBillId], [LabTestId], [DignosisConfigId], [Value], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (135, 6, 0, 47, N'14', NULL, CAST(N'2023-03-06' AS Date), NULL, CAST(N'2023-03-06' AS Date), 0)
INSERT [dbo].[T_PL_PathoReportCollection] ([ReportId], [PathoBillId], [LabTestId], [DignosisConfigId], [Value], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (136, 6, 0, 48, N'14', NULL, CAST(N'2023-03-06' AS Date), NULL, CAST(N'2023-03-06' AS Date), 0)
INSERT [dbo].[T_PL_PathoReportCollection] ([ReportId], [PathoBillId], [LabTestId], [DignosisConfigId], [Value], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (137, 6, 0, 49, N'14', NULL, CAST(N'2023-03-06' AS Date), NULL, CAST(N'2023-03-06' AS Date), 0)
INSERT [dbo].[T_PL_PathoReportCollection] ([ReportId], [PathoBillId], [LabTestId], [DignosisConfigId], [Value], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (162, 17, 0, 42, N'11', NULL, CAST(N'2023-03-09' AS Date), NULL, CAST(N'2023-03-09' AS Date), 0)
INSERT [dbo].[T_PL_PathoReportCollection] ([ReportId], [PathoBillId], [LabTestId], [DignosisConfigId], [Value], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (163, 17, 0, 43, N'37', NULL, CAST(N'2023-03-09' AS Date), NULL, CAST(N'2023-03-09' AS Date), 0)
INSERT [dbo].[T_PL_PathoReportCollection] ([ReportId], [PathoBillId], [LabTestId], [DignosisConfigId], [Value], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (164, 17, 0, 44, N'4', NULL, CAST(N'2023-03-09' AS Date), NULL, CAST(N'2023-03-09' AS Date), 0)
INSERT [dbo].[T_PL_PathoReportCollection] ([ReportId], [PathoBillId], [LabTestId], [DignosisConfigId], [Value], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (165, 17, 0, 45, N'77', NULL, CAST(N'2023-03-09' AS Date), NULL, CAST(N'2023-03-09' AS Date), 0)
INSERT [dbo].[T_PL_PathoReportCollection] ([ReportId], [PathoBillId], [LabTestId], [DignosisConfigId], [Value], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (166, 17, 0, 46, N'22', NULL, CAST(N'2023-03-09' AS Date), NULL, CAST(N'2023-03-09' AS Date), 0)
INSERT [dbo].[T_PL_PathoReportCollection] ([ReportId], [PathoBillId], [LabTestId], [DignosisConfigId], [Value], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (167, 17, 0, 47, N'34', NULL, CAST(N'2023-03-09' AS Date), NULL, CAST(N'2023-03-09' AS Date), 0)
INSERT [dbo].[T_PL_PathoReportCollection] ([ReportId], [PathoBillId], [LabTestId], [DignosisConfigId], [Value], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (168, 17, 0, 48, N'11', NULL, CAST(N'2023-03-09' AS Date), NULL, CAST(N'2023-03-09' AS Date), 0)
INSERT [dbo].[T_PL_PathoReportCollection] ([ReportId], [PathoBillId], [LabTestId], [DignosisConfigId], [Value], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (169, 17, 0, 49, N'3000', NULL, CAST(N'2023-03-09' AS Date), NULL, CAST(N'2023-03-09' AS Date), 0)
INSERT [dbo].[T_PL_PathoReportCollection] ([ReportId], [PathoBillId], [LabTestId], [DignosisConfigId], [Value], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (178, 19, 0, 42, N'11', NULL, CAST(N'2023-03-09' AS Date), NULL, CAST(N'2023-03-09' AS Date), 0)
INSERT [dbo].[T_PL_PathoReportCollection] ([ReportId], [PathoBillId], [LabTestId], [DignosisConfigId], [Value], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (179, 19, 0, 43, N'33', NULL, CAST(N'2023-03-09' AS Date), NULL, CAST(N'2023-03-09' AS Date), 0)
INSERT [dbo].[T_PL_PathoReportCollection] ([ReportId], [PathoBillId], [LabTestId], [DignosisConfigId], [Value], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (180, 19, 0, 44, N'3', NULL, CAST(N'2023-03-09' AS Date), NULL, CAST(N'2023-03-09' AS Date), 0)
INSERT [dbo].[T_PL_PathoReportCollection] ([ReportId], [PathoBillId], [LabTestId], [DignosisConfigId], [Value], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (181, 19, 0, 45, N'39', NULL, CAST(N'2023-03-09' AS Date), NULL, CAST(N'2023-03-09' AS Date), 0)
INSERT [dbo].[T_PL_PathoReportCollection] ([ReportId], [PathoBillId], [LabTestId], [DignosisConfigId], [Value], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (182, 19, 0, 46, N'31', NULL, CAST(N'2023-03-09' AS Date), NULL, CAST(N'2023-03-09' AS Date), 0)
INSERT [dbo].[T_PL_PathoReportCollection] ([ReportId], [PathoBillId], [LabTestId], [DignosisConfigId], [Value], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (183, 19, 0, 47, N'35', NULL, CAST(N'2023-03-09' AS Date), NULL, CAST(N'2023-03-09' AS Date), 0)
INSERT [dbo].[T_PL_PathoReportCollection] ([ReportId], [PathoBillId], [LabTestId], [DignosisConfigId], [Value], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (184, 19, 0, 48, N'13', NULL, CAST(N'2023-03-09' AS Date), NULL, CAST(N'2023-03-09' AS Date), 0)
INSERT [dbo].[T_PL_PathoReportCollection] ([ReportId], [PathoBillId], [LabTestId], [DignosisConfigId], [Value], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (185, 19, 0, 49, N'3000', NULL, CAST(N'2023-03-09' AS Date), NULL, CAST(N'2023-03-09' AS Date), 0)
INSERT [dbo].[T_PL_PathoReportCollection] ([ReportId], [PathoBillId], [LabTestId], [DignosisConfigId], [Value], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (186, 27, 0, 42, N'14', NULL, CAST(N'2023-03-20' AS Date), NULL, CAST(N'2023-03-20' AS Date), 0)
INSERT [dbo].[T_PL_PathoReportCollection] ([ReportId], [PathoBillId], [LabTestId], [DignosisConfigId], [Value], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (187, 27, 0, 43, N'33', NULL, CAST(N'2023-03-20' AS Date), NULL, CAST(N'2023-03-20' AS Date), 0)
INSERT [dbo].[T_PL_PathoReportCollection] ([ReportId], [PathoBillId], [LabTestId], [DignosisConfigId], [Value], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (188, 27, 0, 44, N'4.08', NULL, CAST(N'2023-03-20' AS Date), NULL, CAST(N'2023-03-20' AS Date), 0)
INSERT [dbo].[T_PL_PathoReportCollection] ([ReportId], [PathoBillId], [LabTestId], [DignosisConfigId], [Value], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (189, 27, 0, 45, N'77', NULL, CAST(N'2023-03-20' AS Date), NULL, CAST(N'2023-03-20' AS Date), 0)
INSERT [dbo].[T_PL_PathoReportCollection] ([ReportId], [PathoBillId], [LabTestId], [DignosisConfigId], [Value], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (190, 27, 0, 46, N'22', NULL, CAST(N'2023-03-20' AS Date), NULL, CAST(N'2023-03-20' AS Date), 0)
INSERT [dbo].[T_PL_PathoReportCollection] ([ReportId], [PathoBillId], [LabTestId], [DignosisConfigId], [Value], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (191, 27, 0, 47, N'34', NULL, CAST(N'2023-03-20' AS Date), NULL, CAST(N'2023-03-20' AS Date), 0)
INSERT [dbo].[T_PL_PathoReportCollection] ([ReportId], [PathoBillId], [LabTestId], [DignosisConfigId], [Value], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (192, 27, 0, 48, N'14', NULL, CAST(N'2023-03-20' AS Date), NULL, CAST(N'2023-03-20' AS Date), 0)
INSERT [dbo].[T_PL_PathoReportCollection] ([ReportId], [PathoBillId], [LabTestId], [DignosisConfigId], [Value], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (193, 27, 0, 49, N'3000', NULL, CAST(N'2023-03-20' AS Date), NULL, CAST(N'2023-03-20' AS Date), 0)
INSERT [dbo].[T_PL_PathoReportCollection] ([ReportId], [PathoBillId], [LabTestId], [DignosisConfigId], [Value], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (194, 28, 0, 42, N'11', NULL, CAST(N'2023-03-21' AS Date), NULL, CAST(N'2023-03-21' AS Date), 0)
INSERT [dbo].[T_PL_PathoReportCollection] ([ReportId], [PathoBillId], [LabTestId], [DignosisConfigId], [Value], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (195, 28, 0, 43, N'37', NULL, CAST(N'2023-03-21' AS Date), NULL, CAST(N'2023-03-21' AS Date), 0)
INSERT [dbo].[T_PL_PathoReportCollection] ([ReportId], [PathoBillId], [LabTestId], [DignosisConfigId], [Value], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (196, 28, 0, 44, N'3', NULL, CAST(N'2023-03-21' AS Date), NULL, CAST(N'2023-03-21' AS Date), 0)
INSERT [dbo].[T_PL_PathoReportCollection] ([ReportId], [PathoBillId], [LabTestId], [DignosisConfigId], [Value], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (197, 28, 0, 45, N'88', NULL, CAST(N'2023-03-21' AS Date), NULL, CAST(N'2023-03-21' AS Date), 0)
INSERT [dbo].[T_PL_PathoReportCollection] ([ReportId], [PathoBillId], [LabTestId], [DignosisConfigId], [Value], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (198, 28, 0, 46, N'25', NULL, CAST(N'2023-03-21' AS Date), NULL, CAST(N'2023-03-21' AS Date), 0)
INSERT [dbo].[T_PL_PathoReportCollection] ([ReportId], [PathoBillId], [LabTestId], [DignosisConfigId], [Value], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (199, 28, 0, 47, N'34', NULL, CAST(N'2023-03-21' AS Date), NULL, CAST(N'2023-03-21' AS Date), 0)
INSERT [dbo].[T_PL_PathoReportCollection] ([ReportId], [PathoBillId], [LabTestId], [DignosisConfigId], [Value], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (200, 28, 0, 48, N'13', NULL, CAST(N'2023-03-21' AS Date), NULL, CAST(N'2023-03-21' AS Date), 0)
INSERT [dbo].[T_PL_PathoReportCollection] ([ReportId], [PathoBillId], [LabTestId], [DignosisConfigId], [Value], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (201, 28, 0, 49, N'3000', NULL, CAST(N'2023-03-21' AS Date), NULL, CAST(N'2023-03-21' AS Date), 0)
INSERT [dbo].[T_PL_PathoReportCollection] ([ReportId], [PathoBillId], [LabTestId], [DignosisConfigId], [Value], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (210, 51, 0, 42, N'11', NULL, CAST(N'2023-04-11' AS Date), NULL, CAST(N'2023-04-11' AS Date), 0)
INSERT [dbo].[T_PL_PathoReportCollection] ([ReportId], [PathoBillId], [LabTestId], [DignosisConfigId], [Value], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (211, 51, 0, 43, N'34', NULL, CAST(N'2023-04-11' AS Date), NULL, CAST(N'2023-04-11' AS Date), 0)
INSERT [dbo].[T_PL_PathoReportCollection] ([ReportId], [PathoBillId], [LabTestId], [DignosisConfigId], [Value], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (212, 51, 0, 44, N'5', NULL, CAST(N'2023-04-11' AS Date), NULL, CAST(N'2023-04-11' AS Date), 0)
INSERT [dbo].[T_PL_PathoReportCollection] ([ReportId], [PathoBillId], [LabTestId], [DignosisConfigId], [Value], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (213, 51, 0, 45, N'77', NULL, CAST(N'2023-04-11' AS Date), NULL, CAST(N'2023-04-11' AS Date), 0)
INSERT [dbo].[T_PL_PathoReportCollection] ([ReportId], [PathoBillId], [LabTestId], [DignosisConfigId], [Value], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (214, 51, 0, 46, N'30', NULL, CAST(N'2023-04-11' AS Date), NULL, CAST(N'2023-04-11' AS Date), 0)
INSERT [dbo].[T_PL_PathoReportCollection] ([ReportId], [PathoBillId], [LabTestId], [DignosisConfigId], [Value], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (215, 51, 0, 47, N'34', NULL, CAST(N'2023-04-11' AS Date), NULL, CAST(N'2023-04-11' AS Date), 0)
INSERT [dbo].[T_PL_PathoReportCollection] ([ReportId], [PathoBillId], [LabTestId], [DignosisConfigId], [Value], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (216, 51, 0, 48, N'15', NULL, CAST(N'2023-04-11' AS Date), NULL, CAST(N'2023-04-11' AS Date), 0)
INSERT [dbo].[T_PL_PathoReportCollection] ([ReportId], [PathoBillId], [LabTestId], [DignosisConfigId], [Value], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (217, 51, 0, 49, N'7000', NULL, CAST(N'2023-04-11' AS Date), NULL, CAST(N'2023-04-11' AS Date), 0)
SET IDENTITY_INSERT [dbo].[T_PL_PathoReportCollection] OFF
GO
SET IDENTITY_INSERT [dbo].[T_PL_PatientAppointment] ON 

INSERT [dbo].[T_PL_PatientAppointment] ([AppointmentId], [RegdNo], [DateOfAppointment], [HospitalID], [DepartmentId], [DoctorId], [SlotID], [PatientID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (87, 67, CAST(N'2023-04-13' AS Date), 2, 5, 56, 26, 205, 0, CAST(N'2023-04-13' AS Date), NULL, CAST(N'2023-04-13' AS Date), 0)
INSERT [dbo].[T_PL_PatientAppointment] ([AppointmentId], [RegdNo], [DateOfAppointment], [HospitalID], [DepartmentId], [DoctorId], [SlotID], [PatientID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (88, 68, CAST(N'2023-04-13' AS Date), 2, 5, 56, 26, 206, 0, CAST(N'2023-04-13' AS Date), NULL, CAST(N'2023-04-13' AS Date), 0)
INSERT [dbo].[T_PL_PatientAppointment] ([AppointmentId], [RegdNo], [DateOfAppointment], [HospitalID], [DepartmentId], [DoctorId], [SlotID], [PatientID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (89, 2, CAST(N'2023-04-13' AS Date), 2, 1, 57, 21, 247, 0, CAST(N'2023-04-13' AS Date), NULL, CAST(N'2023-04-13' AS Date), 0)
INSERT [dbo].[T_PL_PatientAppointment] ([AppointmentId], [RegdNo], [DateOfAppointment], [HospitalID], [DepartmentId], [DoctorId], [SlotID], [PatientID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (90, 1, CAST(N'2023-04-13' AS Date), 11, 29, 207, 41, 248, 0, CAST(N'2023-04-13' AS Date), NULL, CAST(N'2023-04-13' AS Date), 0)
INSERT [dbo].[T_PL_PatientAppointment] ([AppointmentId], [RegdNo], [DateOfAppointment], [HospitalID], [DepartmentId], [DoctorId], [SlotID], [PatientID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (91, 1, CAST(N'2023-04-13' AS Date), 11, 29, 207, 42, 249, 0, CAST(N'2023-04-13' AS Date), NULL, CAST(N'2023-04-13' AS Date), 0)
INSERT [dbo].[T_PL_PatientAppointment] ([AppointmentId], [RegdNo], [DateOfAppointment], [HospitalID], [DepartmentId], [DoctorId], [SlotID], [PatientID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (92, 1, CAST(N'2023-04-13' AS Date), 13, 1, 209, 44, 250, 0, CAST(N'2023-04-13' AS Date), NULL, CAST(N'2023-04-13' AS Date), 0)
INSERT [dbo].[T_PL_PatientAppointment] ([AppointmentId], [RegdNo], [DateOfAppointment], [HospitalID], [DepartmentId], [DoctorId], [SlotID], [PatientID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (93, 2, CAST(N'2023-04-14' AS Date), 13, 1, 209, 44, 251, 0, CAST(N'2023-04-14' AS Date), NULL, CAST(N'2023-04-14' AS Date), 0)
INSERT [dbo].[T_PL_PatientAppointment] ([AppointmentId], [RegdNo], [DateOfAppointment], [HospitalID], [DepartmentId], [DoctorId], [SlotID], [PatientID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (94, 2, CAST(N'2023-04-14' AS Date), 11, 29, 207, 41, 252, 0, CAST(N'2023-04-14' AS Date), NULL, CAST(N'2023-04-14' AS Date), 0)
INSERT [dbo].[T_PL_PatientAppointment] ([AppointmentId], [RegdNo], [DateOfAppointment], [HospitalID], [DepartmentId], [DoctorId], [SlotID], [PatientID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (95, 1, CAST(N'2023-04-14' AS Date), 2, 1, 57, 26, 253, 0, CAST(N'2023-04-14' AS Date), NULL, CAST(N'2023-04-14' AS Date), 0)
INSERT [dbo].[T_PL_PatientAppointment] ([AppointmentId], [RegdNo], [DateOfAppointment], [HospitalID], [DepartmentId], [DoctorId], [SlotID], [PatientID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (96, 1, CAST(N'2023-04-14' AS Date), 3, 9, 210, 46, 254, 0, CAST(N'2023-04-14' AS Date), NULL, CAST(N'2023-04-14' AS Date), 0)
INSERT [dbo].[T_PL_PatientAppointment] ([AppointmentId], [RegdNo], [DateOfAppointment], [HospitalID], [DepartmentId], [DoctorId], [SlotID], [PatientID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (97, 1, CAST(N'2023-04-14' AS Date), 3, 1, 57, 43, 255, 0, CAST(N'2023-04-14' AS Date), NULL, CAST(N'2023-04-14' AS Date), 0)
INSERT [dbo].[T_PL_PatientAppointment] ([AppointmentId], [RegdNo], [DateOfAppointment], [HospitalID], [DepartmentId], [DoctorId], [SlotID], [PatientID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (98, 1, CAST(N'2023-04-14' AS Date), 6, 5, 56, 38, 256, 0, CAST(N'2023-04-14' AS Date), NULL, CAST(N'2023-04-14' AS Date), 0)
INSERT [dbo].[T_PL_PatientAppointment] ([AppointmentId], [RegdNo], [DateOfAppointment], [HospitalID], [DepartmentId], [DoctorId], [SlotID], [PatientID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (99, 2, CAST(N'2023-04-17' AS Date), 2, 1, 57, 26, 257, 0, CAST(N'2023-04-17' AS Date), NULL, CAST(N'2023-04-17' AS Date), 0)
SET IDENTITY_INSERT [dbo].[T_PL_PatientAppointment] OFF
GO
SET IDENTITY_INSERT [dbo].[T_PL_PrescribedDignosis] ON 

INSERT [dbo].[T_PL_PrescribedDignosis] ([PresDignosisId], [PrescriptionId], [DignosisID], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (1, 1, 2, CAST(N'2023-02-06' AS Date), 0, NULL, NULL, 0)
INSERT [dbo].[T_PL_PrescribedDignosis] ([PresDignosisId], [PrescriptionId], [DignosisID], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (2, 1, 3, CAST(N'2023-02-06' AS Date), 0, NULL, NULL, 0)
INSERT [dbo].[T_PL_PrescribedDignosis] ([PresDignosisId], [PrescriptionId], [DignosisID], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (3, 1, 2, CAST(N'2023-02-06' AS Date), 0, NULL, NULL, 0)
INSERT [dbo].[T_PL_PrescribedDignosis] ([PresDignosisId], [PrescriptionId], [DignosisID], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (4, 1, 3, CAST(N'2023-02-06' AS Date), 0, NULL, NULL, 0)
INSERT [dbo].[T_PL_PrescribedDignosis] ([PresDignosisId], [PrescriptionId], [DignosisID], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (5, 2, 3, CAST(N'2023-02-06' AS Date), 0, NULL, NULL, 0)
INSERT [dbo].[T_PL_PrescribedDignosis] ([PresDignosisId], [PrescriptionId], [DignosisID], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (6, 2, 4, CAST(N'2023-02-06' AS Date), 0, NULL, NULL, 0)
INSERT [dbo].[T_PL_PrescribedDignosis] ([PresDignosisId], [PrescriptionId], [DignosisID], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (7, 2, 5, CAST(N'2023-02-06' AS Date), 0, NULL, NULL, 0)
INSERT [dbo].[T_PL_PrescribedDignosis] ([PresDignosisId], [PrescriptionId], [DignosisID], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (12, 3, 5, CAST(N'2023-02-06' AS Date), 0, NULL, NULL, 0)
INSERT [dbo].[T_PL_PrescribedDignosis] ([PresDignosisId], [PrescriptionId], [DignosisID], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (13, 3, 3, CAST(N'2023-02-06' AS Date), 0, NULL, NULL, 0)
INSERT [dbo].[T_PL_PrescribedDignosis] ([PresDignosisId], [PrescriptionId], [DignosisID], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (14, 3, 2, CAST(N'2023-02-06' AS Date), 0, NULL, NULL, 0)
INSERT [dbo].[T_PL_PrescribedDignosis] ([PresDignosisId], [PrescriptionId], [DignosisID], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (15, 4, 3, CAST(N'2023-02-06' AS Date), 0, NULL, NULL, 0)
INSERT [dbo].[T_PL_PrescribedDignosis] ([PresDignosisId], [PrescriptionId], [DignosisID], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (16, 4, 4, CAST(N'2023-02-06' AS Date), 0, NULL, NULL, 0)
INSERT [dbo].[T_PL_PrescribedDignosis] ([PresDignosisId], [PrescriptionId], [DignosisID], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (17, 5, 3, CAST(N'2023-02-06' AS Date), 0, NULL, NULL, 0)
INSERT [dbo].[T_PL_PrescribedDignosis] ([PresDignosisId], [PrescriptionId], [DignosisID], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (18, 5, 5, CAST(N'2023-02-06' AS Date), 0, NULL, NULL, 0)
INSERT [dbo].[T_PL_PrescribedDignosis] ([PresDignosisId], [PrescriptionId], [DignosisID], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (19, 8, 2, CAST(N'2023-02-06' AS Date), 0, NULL, NULL, 0)
INSERT [dbo].[T_PL_PrescribedDignosis] ([PresDignosisId], [PrescriptionId], [DignosisID], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (21, 9, 3, CAST(N'2023-02-06' AS Date), 0, NULL, NULL, 0)
INSERT [dbo].[T_PL_PrescribedDignosis] ([PresDignosisId], [PrescriptionId], [DignosisID], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (22, 9, 2, CAST(N'2023-02-06' AS Date), 0, NULL, NULL, 0)
INSERT [dbo].[T_PL_PrescribedDignosis] ([PresDignosisId], [PrescriptionId], [DignosisID], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (23, 10, 3, CAST(N'2023-02-06' AS Date), 0, NULL, NULL, 0)
INSERT [dbo].[T_PL_PrescribedDignosis] ([PresDignosisId], [PrescriptionId], [DignosisID], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (24, 11, 3, CAST(N'2023-02-06' AS Date), 0, NULL, NULL, 0)
INSERT [dbo].[T_PL_PrescribedDignosis] ([PresDignosisId], [PrescriptionId], [DignosisID], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (25, 12, 2, CAST(N'2023-02-06' AS Date), 0, NULL, NULL, 0)
INSERT [dbo].[T_PL_PrescribedDignosis] ([PresDignosisId], [PrescriptionId], [DignosisID], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (26, 12, 3, CAST(N'2023-02-06' AS Date), 0, NULL, NULL, 0)
INSERT [dbo].[T_PL_PrescribedDignosis] ([PresDignosisId], [PrescriptionId], [DignosisID], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (27, 13, 3, CAST(N'2023-02-07' AS Date), 0, NULL, NULL, 0)
INSERT [dbo].[T_PL_PrescribedDignosis] ([PresDignosisId], [PrescriptionId], [DignosisID], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (28, 14, 2, CAST(N'2023-02-07' AS Date), 0, NULL, NULL, 0)
INSERT [dbo].[T_PL_PrescribedDignosis] ([PresDignosisId], [PrescriptionId], [DignosisID], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (29, 14, 3, CAST(N'2023-02-07' AS Date), 0, NULL, NULL, 0)
INSERT [dbo].[T_PL_PrescribedDignosis] ([PresDignosisId], [PrescriptionId], [DignosisID], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (30, 15, 2, CAST(N'2023-02-07' AS Date), 0, NULL, NULL, 0)
INSERT [dbo].[T_PL_PrescribedDignosis] ([PresDignosisId], [PrescriptionId], [DignosisID], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (31, 16, 6, CAST(N'2023-02-07' AS Date), 0, NULL, NULL, 0)
INSERT [dbo].[T_PL_PrescribedDignosis] ([PresDignosisId], [PrescriptionId], [DignosisID], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (37, 18, 3, CAST(N'2023-02-07' AS Date), 0, NULL, NULL, 0)
INSERT [dbo].[T_PL_PrescribedDignosis] ([PresDignosisId], [PrescriptionId], [DignosisID], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (38, 18, 5, CAST(N'2023-02-07' AS Date), 0, NULL, NULL, 0)
INSERT [dbo].[T_PL_PrescribedDignosis] ([PresDignosisId], [PrescriptionId], [DignosisID], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (39, 19, 2, CAST(N'2023-02-07' AS Date), 0, NULL, NULL, 0)
INSERT [dbo].[T_PL_PrescribedDignosis] ([PresDignosisId], [PrescriptionId], [DignosisID], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (40, 19, 3, CAST(N'2023-02-07' AS Date), 0, NULL, NULL, 0)
INSERT [dbo].[T_PL_PrescribedDignosis] ([PresDignosisId], [PrescriptionId], [DignosisID], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (41, 23, 2, CAST(N'2023-02-13' AS Date), 0, NULL, NULL, 0)
INSERT [dbo].[T_PL_PrescribedDignosis] ([PresDignosisId], [PrescriptionId], [DignosisID], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (50, 26, 3, CAST(N'2023-02-15' AS Date), 0, NULL, NULL, 0)
INSERT [dbo].[T_PL_PrescribedDignosis] ([PresDignosisId], [PrescriptionId], [DignosisID], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (53, 27, 2, CAST(N'2023-02-16' AS Date), 0, NULL, NULL, 0)
INSERT [dbo].[T_PL_PrescribedDignosis] ([PresDignosisId], [PrescriptionId], [DignosisID], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (54, 27, 3, CAST(N'2023-02-16' AS Date), 0, NULL, NULL, 0)
INSERT [dbo].[T_PL_PrescribedDignosis] ([PresDignosisId], [PrescriptionId], [DignosisID], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (55, 27, 0, CAST(N'2023-02-16' AS Date), 0, NULL, NULL, 0)
INSERT [dbo].[T_PL_PrescribedDignosis] ([PresDignosisId], [PrescriptionId], [DignosisID], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (56, 28, 2, CAST(N'2023-02-16' AS Date), 0, NULL, NULL, 0)
INSERT [dbo].[T_PL_PrescribedDignosis] ([PresDignosisId], [PrescriptionId], [DignosisID], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (57, 28, 3, CAST(N'2023-02-16' AS Date), 0, NULL, NULL, 0)
INSERT [dbo].[T_PL_PrescribedDignosis] ([PresDignosisId], [PrescriptionId], [DignosisID], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (58, 29, 2, CAST(N'2023-02-16' AS Date), 0, NULL, NULL, 0)
INSERT [dbo].[T_PL_PrescribedDignosis] ([PresDignosisId], [PrescriptionId], [DignosisID], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (59, 30, 2, CAST(N'2023-02-16' AS Date), 0, NULL, NULL, 0)
INSERT [dbo].[T_PL_PrescribedDignosis] ([PresDignosisId], [PrescriptionId], [DignosisID], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (61, 31, 3, CAST(N'2023-02-16' AS Date), 0, NULL, NULL, 0)
INSERT [dbo].[T_PL_PrescribedDignosis] ([PresDignosisId], [PrescriptionId], [DignosisID], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (63, 32, 2, CAST(N'2023-02-16' AS Date), 0, NULL, NULL, 0)
INSERT [dbo].[T_PL_PrescribedDignosis] ([PresDignosisId], [PrescriptionId], [DignosisID], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (91, 24, 2, CAST(N'2023-02-20' AS Date), 0, NULL, NULL, 0)
INSERT [dbo].[T_PL_PrescribedDignosis] ([PresDignosisId], [PrescriptionId], [DignosisID], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (92, 24, 3, CAST(N'2023-02-20' AS Date), 0, NULL, NULL, 0)
INSERT [dbo].[T_PL_PrescribedDignosis] ([PresDignosisId], [PrescriptionId], [DignosisID], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (110, 33, 4, CAST(N'2023-02-21' AS Date), 0, NULL, NULL, 0)
INSERT [dbo].[T_PL_PrescribedDignosis] ([PresDignosisId], [PrescriptionId], [DignosisID], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (111, 37, 12, CAST(N'2023-03-20' AS Date), 0, NULL, NULL, 0)
INSERT [dbo].[T_PL_PrescribedDignosis] ([PresDignosisId], [PrescriptionId], [DignosisID], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (114, 36, 3, CAST(N'2023-03-21' AS Date), 0, NULL, NULL, 0)
INSERT [dbo].[T_PL_PrescribedDignosis] ([PresDignosisId], [PrescriptionId], [DignosisID], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (115, 38, 12, CAST(N'2023-03-21' AS Date), 0, NULL, NULL, 0)
INSERT [dbo].[T_PL_PrescribedDignosis] ([PresDignosisId], [PrescriptionId], [DignosisID], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (116, 38, 11, CAST(N'2023-03-21' AS Date), 0, NULL, NULL, 0)
INSERT [dbo].[T_PL_PrescribedDignosis] ([PresDignosisId], [PrescriptionId], [DignosisID], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (119, 40, 2, CAST(N'2023-03-24' AS Date), 0, NULL, NULL, 0)
INSERT [dbo].[T_PL_PrescribedDignosis] ([PresDignosisId], [PrescriptionId], [DignosisID], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (122, 42, 2, CAST(N'2023-03-27' AS Date), 0, NULL, NULL, 0)
INSERT [dbo].[T_PL_PrescribedDignosis] ([PresDignosisId], [PrescriptionId], [DignosisID], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (126, 35, 2, CAST(N'2023-03-27' AS Date), 0, NULL, NULL, 0)
INSERT [dbo].[T_PL_PrescribedDignosis] ([PresDignosisId], [PrescriptionId], [DignosisID], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (127, 35, 3, CAST(N'2023-03-27' AS Date), 0, NULL, NULL, 0)
INSERT [dbo].[T_PL_PrescribedDignosis] ([PresDignosisId], [PrescriptionId], [DignosisID], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (132, 34, 4, CAST(N'2023-03-27' AS Date), 0, NULL, NULL, 0)
INSERT [dbo].[T_PL_PrescribedDignosis] ([PresDignosisId], [PrescriptionId], [DignosisID], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (133, 34, 3, CAST(N'2023-03-27' AS Date), 0, NULL, NULL, 0)
INSERT [dbo].[T_PL_PrescribedDignosis] ([PresDignosisId], [PrescriptionId], [DignosisID], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (134, 41, 14, CAST(N'2023-03-27' AS Date), 0, NULL, NULL, 0)
INSERT [dbo].[T_PL_PrescribedDignosis] ([PresDignosisId], [PrescriptionId], [DignosisID], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (135, 41, 3, CAST(N'2023-03-27' AS Date), 0, NULL, NULL, 0)
INSERT [dbo].[T_PL_PrescribedDignosis] ([PresDignosisId], [PrescriptionId], [DignosisID], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (136, 43, 3, CAST(N'2023-03-27' AS Date), 0, NULL, NULL, 0)
INSERT [dbo].[T_PL_PrescribedDignosis] ([PresDignosisId], [PrescriptionId], [DignosisID], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (137, 44, 11, CAST(N'2023-03-28' AS Date), 0, NULL, NULL, 0)
INSERT [dbo].[T_PL_PrescribedDignosis] ([PresDignosisId], [PrescriptionId], [DignosisID], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (138, 45, 3, CAST(N'2023-04-10' AS Date), 0, NULL, NULL, 0)
INSERT [dbo].[T_PL_PrescribedDignosis] ([PresDignosisId], [PrescriptionId], [DignosisID], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (139, 45, 6, CAST(N'2023-04-10' AS Date), 0, NULL, NULL, 0)
INSERT [dbo].[T_PL_PrescribedDignosis] ([PresDignosisId], [PrescriptionId], [DignosisID], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (150, 46, 3, CAST(N'2023-04-11' AS Date), 0, NULL, NULL, 0)
INSERT [dbo].[T_PL_PrescribedDignosis] ([PresDignosisId], [PrescriptionId], [DignosisID], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (151, 46, 2, CAST(N'2023-04-11' AS Date), 0, NULL, NULL, 0)
INSERT [dbo].[T_PL_PrescribedDignosis] ([PresDignosisId], [PrescriptionId], [DignosisID], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [DeletedFlag]) VALUES (152, 46, 5, CAST(N'2023-04-11' AS Date), 0, NULL, NULL, 0)
SET IDENTITY_INSERT [dbo].[T_PL_PrescribedDignosis] OFF
GO
SET IDENTITY_INSERT [dbo].[T_PL_PrescribedMedicine] ON 

INSERT [dbo].[T_PL_PrescribedMedicine] ([PrdMedId], [Id], [MorningAfterMeal], [MorningBeforeMeal], [AfternoonAfterMeal], [AfternoonBeforeMeal], [NightAfterMeal], [NightBeforeMeal], [PrescriptionId], [DoseId], [DeletedFlag], [PatientID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [MedicineName], [Duration]) VALUES (1, 2, N'1tb', NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, 0, 0, CAST(N'2023-02-06' AS Date), NULL, CAST(N'2023-02-06' AS Date), NULL, NULL)
INSERT [dbo].[T_PL_PrescribedMedicine] ([PrdMedId], [Id], [MorningAfterMeal], [MorningBeforeMeal], [AfternoonAfterMeal], [AfternoonBeforeMeal], [NightAfterMeal], [NightBeforeMeal], [PrescriptionId], [DoseId], [DeletedFlag], [PatientID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [MedicineName], [Duration]) VALUES (2, 2, N'1tab', NULL, N'1tab', NULL, N'1tab', NULL, 1, NULL, 0, 0, 0, CAST(N'2023-02-06' AS Date), NULL, CAST(N'2023-02-06' AS Date), NULL, NULL)
INSERT [dbo].[T_PL_PrescribedMedicine] ([PrdMedId], [Id], [MorningAfterMeal], [MorningBeforeMeal], [AfternoonAfterMeal], [AfternoonBeforeMeal], [NightAfterMeal], [NightBeforeMeal], [PrescriptionId], [DoseId], [DeletedFlag], [PatientID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [MedicineName], [Duration]) VALUES (3, 2, N'1tab', NULL, NULL, NULL, NULL, NULL, 2, NULL, 0, 0, 0, CAST(N'2023-02-06' AS Date), NULL, CAST(N'2023-02-06' AS Date), NULL, NULL)
INSERT [dbo].[T_PL_PrescribedMedicine] ([PrdMedId], [Id], [MorningAfterMeal], [MorningBeforeMeal], [AfternoonAfterMeal], [AfternoonBeforeMeal], [NightAfterMeal], [NightBeforeMeal], [PrescriptionId], [DoseId], [DeletedFlag], [PatientID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [MedicineName], [Duration]) VALUES (4, 9, NULL, N'1tab', NULL, NULL, NULL, NULL, 2, NULL, 0, 0, 0, CAST(N'2023-02-06' AS Date), NULL, CAST(N'2023-02-06' AS Date), NULL, NULL)
INSERT [dbo].[T_PL_PrescribedMedicine] ([PrdMedId], [Id], [MorningAfterMeal], [MorningBeforeMeal], [AfternoonAfterMeal], [AfternoonBeforeMeal], [NightAfterMeal], [NightBeforeMeal], [PrescriptionId], [DoseId], [DeletedFlag], [PatientID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [MedicineName], [Duration]) VALUES (5, 2, N'1tab', NULL, NULL, NULL, NULL, NULL, 10, NULL, 0, NULL, 0, CAST(N'2023-02-06' AS Date), NULL, CAST(N'2023-02-06' AS Date), NULL, NULL)
INSERT [dbo].[T_PL_PrescribedMedicine] ([PrdMedId], [Id], [MorningAfterMeal], [MorningBeforeMeal], [AfternoonAfterMeal], [AfternoonBeforeMeal], [NightAfterMeal], [NightBeforeMeal], [PrescriptionId], [DoseId], [DeletedFlag], [PatientID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [MedicineName], [Duration]) VALUES (6, 2, N'1tab', NULL, NULL, NULL, NULL, NULL, 11, NULL, 0, NULL, 0, CAST(N'2023-02-06' AS Date), NULL, CAST(N'2023-02-06' AS Date), NULL, NULL)
INSERT [dbo].[T_PL_PrescribedMedicine] ([PrdMedId], [Id], [MorningAfterMeal], [MorningBeforeMeal], [AfternoonAfterMeal], [AfternoonBeforeMeal], [NightAfterMeal], [NightBeforeMeal], [PrescriptionId], [DoseId], [DeletedFlag], [PatientID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [MedicineName], [Duration]) VALUES (7, 2, N'1tab', NULL, NULL, NULL, NULL, NULL, 12, NULL, 0, NULL, 0, CAST(N'2023-02-06' AS Date), NULL, CAST(N'2023-02-06' AS Date), NULL, NULL)
INSERT [dbo].[T_PL_PrescribedMedicine] ([PrdMedId], [Id], [MorningAfterMeal], [MorningBeforeMeal], [AfternoonAfterMeal], [AfternoonBeforeMeal], [NightAfterMeal], [NightBeforeMeal], [PrescriptionId], [DoseId], [DeletedFlag], [PatientID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [MedicineName], [Duration]) VALUES (8, 9, NULL, N'1tab', NULL, NULL, NULL, NULL, 12, NULL, 0, NULL, 0, CAST(N'2023-02-06' AS Date), NULL, CAST(N'2023-02-06' AS Date), NULL, NULL)
INSERT [dbo].[T_PL_PrescribedMedicine] ([PrdMedId], [Id], [MorningAfterMeal], [MorningBeforeMeal], [AfternoonAfterMeal], [AfternoonBeforeMeal], [NightAfterMeal], [NightBeforeMeal], [PrescriptionId], [DoseId], [DeletedFlag], [PatientID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [MedicineName], [Duration]) VALUES (9, 2, N'1 tablet', NULL, NULL, NULL, NULL, NULL, 14, NULL, 0, NULL, 0, CAST(N'2023-02-07' AS Date), NULL, CAST(N'2023-02-07' AS Date), NULL, NULL)
INSERT [dbo].[T_PL_PrescribedMedicine] ([PrdMedId], [Id], [MorningAfterMeal], [MorningBeforeMeal], [AfternoonAfterMeal], [AfternoonBeforeMeal], [NightAfterMeal], [NightBeforeMeal], [PrescriptionId], [DoseId], [DeletedFlag], [PatientID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [MedicineName], [Duration]) VALUES (10, 2, N'1 tablet', NULL, NULL, NULL, NULL, NULL, 15, NULL, 0, NULL, 0, CAST(N'2023-02-07' AS Date), NULL, CAST(N'2023-02-07' AS Date), NULL, NULL)
INSERT [dbo].[T_PL_PrescribedMedicine] ([PrdMedId], [Id], [MorningAfterMeal], [MorningBeforeMeal], [AfternoonAfterMeal], [AfternoonBeforeMeal], [NightAfterMeal], [NightBeforeMeal], [PrescriptionId], [DoseId], [DeletedFlag], [PatientID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [MedicineName], [Duration]) VALUES (12, 2, N'1', N'5 ml', NULL, NULL, NULL, NULL, 19, NULL, 0, 0, 0, CAST(N'2023-02-07' AS Date), NULL, CAST(N'2023-02-07' AS Date), NULL, NULL)
INSERT [dbo].[T_PL_PrescribedMedicine] ([PrdMedId], [Id], [MorningAfterMeal], [MorningBeforeMeal], [AfternoonAfterMeal], [AfternoonBeforeMeal], [NightAfterMeal], [NightBeforeMeal], [PrescriptionId], [DoseId], [DeletedFlag], [PatientID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [MedicineName], [Duration]) VALUES (13, 9, N'110ml', NULL, N'5 ml', NULL, NULL, NULL, 19, NULL, 0, 0, 0, CAST(N'2023-02-07' AS Date), NULL, CAST(N'2023-02-07' AS Date), NULL, NULL)
INSERT [dbo].[T_PL_PrescribedMedicine] ([PrdMedId], [Id], [MorningAfterMeal], [MorningBeforeMeal], [AfternoonAfterMeal], [AfternoonBeforeMeal], [NightAfterMeal], [NightBeforeMeal], [PrescriptionId], [DoseId], [DeletedFlag], [PatientID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [MedicineName], [Duration]) VALUES (14, 2, N'1 tablet', NULL, NULL, NULL, NULL, NULL, 23, NULL, 0, 0, 0, CAST(N'2023-02-13' AS Date), NULL, CAST(N'2023-02-13' AS Date), NULL, NULL)
INSERT [dbo].[T_PL_PrescribedMedicine] ([PrdMedId], [Id], [MorningAfterMeal], [MorningBeforeMeal], [AfternoonAfterMeal], [AfternoonBeforeMeal], [NightAfterMeal], [NightBeforeMeal], [PrescriptionId], [DoseId], [DeletedFlag], [PatientID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [MedicineName], [Duration]) VALUES (20, 2, NULL, N'1 tablet', NULL, NULL, NULL, NULL, 26, NULL, 0, 0, 0, CAST(N'2023-02-15' AS Date), NULL, CAST(N'2023-02-15' AS Date), NULL, NULL)
INSERT [dbo].[T_PL_PrescribedMedicine] ([PrdMedId], [Id], [MorningAfterMeal], [MorningBeforeMeal], [AfternoonAfterMeal], [AfternoonBeforeMeal], [NightAfterMeal], [NightBeforeMeal], [PrescriptionId], [DoseId], [DeletedFlag], [PatientID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [MedicineName], [Duration]) VALUES (22, 2, N'1 tablet', NULL, NULL, NULL, NULL, NULL, 27, NULL, 0, 0, 0, CAST(N'2023-02-16' AS Date), NULL, CAST(N'2023-02-16' AS Date), NULL, NULL)
INSERT [dbo].[T_PL_PrescribedMedicine] ([PrdMedId], [Id], [MorningAfterMeal], [MorningBeforeMeal], [AfternoonAfterMeal], [AfternoonBeforeMeal], [NightAfterMeal], [NightBeforeMeal], [PrescriptionId], [DoseId], [DeletedFlag], [PatientID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [MedicineName], [Duration]) VALUES (23, 2, N'1 tablet', NULL, NULL, NULL, NULL, NULL, 28, NULL, 0, 0, 0, CAST(N'2023-02-16' AS Date), NULL, CAST(N'2023-02-16' AS Date), NULL, NULL)
INSERT [dbo].[T_PL_PrescribedMedicine] ([PrdMedId], [Id], [MorningAfterMeal], [MorningBeforeMeal], [AfternoonAfterMeal], [AfternoonBeforeMeal], [NightAfterMeal], [NightBeforeMeal], [PrescriptionId], [DoseId], [DeletedFlag], [PatientID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [MedicineName], [Duration]) VALUES (24, 2, NULL, N'1 tablet', NULL, NULL, NULL, NULL, 29, NULL, 0, 0, 0, CAST(N'2023-02-16' AS Date), NULL, CAST(N'2023-02-16' AS Date), NULL, NULL)
INSERT [dbo].[T_PL_PrescribedMedicine] ([PrdMedId], [Id], [MorningAfterMeal], [MorningBeforeMeal], [AfternoonAfterMeal], [AfternoonBeforeMeal], [NightAfterMeal], [NightBeforeMeal], [PrescriptionId], [DoseId], [DeletedFlag], [PatientID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [MedicineName], [Duration]) VALUES (25, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 29, NULL, 0, 0, 0, CAST(N'2023-02-16' AS Date), NULL, CAST(N'2023-02-16' AS Date), NULL, NULL)
INSERT [dbo].[T_PL_PrescribedMedicine] ([PrdMedId], [Id], [MorningAfterMeal], [MorningBeforeMeal], [AfternoonAfterMeal], [AfternoonBeforeMeal], [NightAfterMeal], [NightBeforeMeal], [PrescriptionId], [DoseId], [DeletedFlag], [PatientID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [MedicineName], [Duration]) VALUES (26, 2, N'1 tablet', NULL, NULL, NULL, NULL, NULL, 31, NULL, 0, 0, 0, CAST(N'2023-02-16' AS Date), NULL, CAST(N'2023-02-16' AS Date), NULL, NULL)
INSERT [dbo].[T_PL_PrescribedMedicine] ([PrdMedId], [Id], [MorningAfterMeal], [MorningBeforeMeal], [AfternoonAfterMeal], [AfternoonBeforeMeal], [NightAfterMeal], [NightBeforeMeal], [PrescriptionId], [DoseId], [DeletedFlag], [PatientID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [MedicineName], [Duration]) VALUES (27, 2, N'1 tablet', NULL, NULL, NULL, NULL, NULL, 32, NULL, 0, 0, 0, CAST(N'2023-02-16' AS Date), NULL, CAST(N'2023-02-16' AS Date), NULL, NULL)
INSERT [dbo].[T_PL_PrescribedMedicine] ([PrdMedId], [Id], [MorningAfterMeal], [MorningBeforeMeal], [AfternoonAfterMeal], [AfternoonBeforeMeal], [NightAfterMeal], [NightBeforeMeal], [PrescriptionId], [DoseId], [DeletedFlag], [PatientID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [MedicineName], [Duration]) VALUES (50, 2, NULL, NULL, NULL, NULL, NULL, NULL, 24, 3, 0, 0, 0, CAST(N'2023-02-20' AS Date), NULL, CAST(N'2023-02-20' AS Date), NULL, N'30 tabs(1Months)')
INSERT [dbo].[T_PL_PrescribedMedicine] ([PrdMedId], [Id], [MorningAfterMeal], [MorningBeforeMeal], [AfternoonAfterMeal], [AfternoonBeforeMeal], [NightAfterMeal], [NightBeforeMeal], [PrescriptionId], [DoseId], [DeletedFlag], [PatientID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [MedicineName], [Duration]) VALUES (51, 9, NULL, NULL, NULL, NULL, NULL, NULL, 24, 3, 0, 0, 0, CAST(N'2023-02-20' AS Date), NULL, CAST(N'2023-02-20' AS Date), NULL, N'20 tabs(20 Days)')
INSERT [dbo].[T_PL_PrescribedMedicine] ([PrdMedId], [Id], [MorningAfterMeal], [MorningBeforeMeal], [AfternoonAfterMeal], [AfternoonBeforeMeal], [NightAfterMeal], [NightBeforeMeal], [PrescriptionId], [DoseId], [DeletedFlag], [PatientID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [MedicineName], [Duration]) VALUES (73, 12, NULL, NULL, NULL, NULL, NULL, NULL, 33, 3, 0, 0, 0, CAST(N'2023-02-21' AS Date), NULL, CAST(N'2023-02-21' AS Date), NULL, N'100 tabs(10 Days)')
INSERT [dbo].[T_PL_PrescribedMedicine] ([PrdMedId], [Id], [MorningAfterMeal], [MorningBeforeMeal], [AfternoonAfterMeal], [AfternoonBeforeMeal], [NightAfterMeal], [NightBeforeMeal], [PrescriptionId], [DoseId], [DeletedFlag], [PatientID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [MedicineName], [Duration]) VALUES (74, 11, NULL, NULL, NULL, NULL, NULL, NULL, 33, 13, 0, 0, 0, CAST(N'2023-02-21' AS Date), NULL, CAST(N'2023-02-21' AS Date), NULL, N'200tabs(100Day)')
INSERT [dbo].[T_PL_PrescribedMedicine] ([PrdMedId], [Id], [MorningAfterMeal], [MorningBeforeMeal], [AfternoonAfterMeal], [AfternoonBeforeMeal], [NightAfterMeal], [NightBeforeMeal], [PrescriptionId], [DoseId], [DeletedFlag], [PatientID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [MedicineName], [Duration]) VALUES (75, 2, NULL, NULL, NULL, NULL, NULL, NULL, 37, 13, 0, 0, 0, CAST(N'2023-03-20' AS Date), NULL, CAST(N'2023-03-20' AS Date), NULL, N'10 tabs')
INSERT [dbo].[T_PL_PrescribedMedicine] ([PrdMedId], [Id], [MorningAfterMeal], [MorningBeforeMeal], [AfternoonAfterMeal], [AfternoonBeforeMeal], [NightAfterMeal], [NightBeforeMeal], [PrescriptionId], [DoseId], [DeletedFlag], [PatientID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [MedicineName], [Duration]) VALUES (80, 9, NULL, NULL, NULL, NULL, NULL, NULL, 36, 20, 0, 0, 0, CAST(N'2023-03-21' AS Date), NULL, CAST(N'2023-03-21' AS Date), NULL, N'100')
INSERT [dbo].[T_PL_PrescribedMedicine] ([PrdMedId], [Id], [MorningAfterMeal], [MorningBeforeMeal], [AfternoonAfterMeal], [AfternoonBeforeMeal], [NightAfterMeal], [NightBeforeMeal], [PrescriptionId], [DoseId], [DeletedFlag], [PatientID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [MedicineName], [Duration]) VALUES (81, 3, NULL, NULL, NULL, NULL, NULL, NULL, 38, 20, 0, 0, 0, CAST(N'2023-03-21' AS Date), NULL, CAST(N'2023-03-21' AS Date), NULL, N'null')
INSERT [dbo].[T_PL_PrescribedMedicine] ([PrdMedId], [Id], [MorningAfterMeal], [MorningBeforeMeal], [AfternoonAfterMeal], [AfternoonBeforeMeal], [NightAfterMeal], [NightBeforeMeal], [PrescriptionId], [DoseId], [DeletedFlag], [PatientID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [MedicineName], [Duration]) VALUES (82, 2, NULL, NULL, NULL, NULL, NULL, NULL, 38, 13, 0, 0, 0, CAST(N'2023-03-21' AS Date), NULL, CAST(N'2023-03-21' AS Date), NULL, N'null')
INSERT [dbo].[T_PL_PrescribedMedicine] ([PrdMedId], [Id], [MorningAfterMeal], [MorningBeforeMeal], [AfternoonAfterMeal], [AfternoonBeforeMeal], [NightAfterMeal], [NightBeforeMeal], [PrescriptionId], [DoseId], [DeletedFlag], [PatientID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [MedicineName], [Duration]) VALUES (83, 15, NULL, NULL, NULL, NULL, NULL, NULL, 38, 27, 0, 0, 0, CAST(N'2023-03-21' AS Date), NULL, CAST(N'2023-03-21' AS Date), NULL, N'null')
INSERT [dbo].[T_PL_PrescribedMedicine] ([PrdMedId], [Id], [MorningAfterMeal], [MorningBeforeMeal], [AfternoonAfterMeal], [AfternoonBeforeMeal], [NightAfterMeal], [NightBeforeMeal], [PrescriptionId], [DoseId], [DeletedFlag], [PatientID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [MedicineName], [Duration]) VALUES (84, 6, NULL, NULL, NULL, NULL, NULL, NULL, 38, 11, 0, 0, 0, CAST(N'2023-03-21' AS Date), NULL, CAST(N'2023-03-21' AS Date), NULL, N'null')
INSERT [dbo].[T_PL_PrescribedMedicine] ([PrdMedId], [Id], [MorningAfterMeal], [MorningBeforeMeal], [AfternoonAfterMeal], [AfternoonBeforeMeal], [NightAfterMeal], [NightBeforeMeal], [PrescriptionId], [DoseId], [DeletedFlag], [PatientID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [MedicineName], [Duration]) VALUES (89, 2, NULL, NULL, NULL, NULL, NULL, NULL, 40, 26, 0, 0, 0, CAST(N'2023-03-24' AS Date), NULL, CAST(N'2023-03-24' AS Date), NULL, N'2days')
INSERT [dbo].[T_PL_PrescribedMedicine] ([PrdMedId], [Id], [MorningAfterMeal], [MorningBeforeMeal], [AfternoonAfterMeal], [AfternoonBeforeMeal], [NightAfterMeal], [NightBeforeMeal], [PrescriptionId], [DoseId], [DeletedFlag], [PatientID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [MedicineName], [Duration]) VALUES (92, 2, NULL, NULL, NULL, NULL, NULL, NULL, 42, 25, 0, 0, 0, CAST(N'2023-03-27' AS Date), NULL, CAST(N'2023-03-27' AS Date), NULL, N'2days')
INSERT [dbo].[T_PL_PrescribedMedicine] ([PrdMedId], [Id], [MorningAfterMeal], [MorningBeforeMeal], [AfternoonAfterMeal], [AfternoonBeforeMeal], [NightAfterMeal], [NightBeforeMeal], [PrescriptionId], [DoseId], [DeletedFlag], [PatientID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [MedicineName], [Duration]) VALUES (95, 2, NULL, NULL, NULL, NULL, NULL, NULL, 35, 25, 0, 0, 0, CAST(N'2023-03-27' AS Date), NULL, CAST(N'2023-03-27' AS Date), NULL, N'2')
INSERT [dbo].[T_PL_PrescribedMedicine] ([PrdMedId], [Id], [MorningAfterMeal], [MorningBeforeMeal], [AfternoonAfterMeal], [AfternoonBeforeMeal], [NightAfterMeal], [NightBeforeMeal], [PrescriptionId], [DoseId], [DeletedFlag], [PatientID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [MedicineName], [Duration]) VALUES (96, 9, NULL, NULL, NULL, NULL, NULL, NULL, 35, 3, 0, 0, 0, CAST(N'2023-03-27' AS Date), NULL, CAST(N'2023-03-27' AS Date), NULL, N'20 tabs')
INSERT [dbo].[T_PL_PrescribedMedicine] ([PrdMedId], [Id], [MorningAfterMeal], [MorningBeforeMeal], [AfternoonAfterMeal], [AfternoonBeforeMeal], [NightAfterMeal], [NightBeforeMeal], [PrescriptionId], [DoseId], [DeletedFlag], [PatientID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [MedicineName], [Duration]) VALUES (103, 9, NULL, NULL, NULL, NULL, NULL, NULL, 34, 21, 0, 0, 0, CAST(N'2023-03-27' AS Date), NULL, CAST(N'2023-03-27' AS Date), NULL, N'30 tabs(1 Month)')
INSERT [dbo].[T_PL_PrescribedMedicine] ([PrdMedId], [Id], [MorningAfterMeal], [MorningBeforeMeal], [AfternoonAfterMeal], [AfternoonBeforeMeal], [NightAfterMeal], [NightBeforeMeal], [PrescriptionId], [DoseId], [DeletedFlag], [PatientID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [MedicineName], [Duration]) VALUES (104, 2, NULL, NULL, NULL, NULL, NULL, NULL, 34, 13, 0, 0, 0, CAST(N'2023-03-27' AS Date), NULL, CAST(N'2023-03-27' AS Date), NULL, N'10 tabs(10 Days)')
INSERT [dbo].[T_PL_PrescribedMedicine] ([PrdMedId], [Id], [MorningAfterMeal], [MorningBeforeMeal], [AfternoonAfterMeal], [AfternoonBeforeMeal], [NightAfterMeal], [NightBeforeMeal], [PrescriptionId], [DoseId], [DeletedFlag], [PatientID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [MedicineName], [Duration]) VALUES (105, 9, NULL, NULL, NULL, NULL, NULL, NULL, 34, 22, 0, 0, 0, CAST(N'2023-03-27' AS Date), NULL, CAST(N'2023-03-27' AS Date), NULL, N'30 tabs(1 Month)')
INSERT [dbo].[T_PL_PrescribedMedicine] ([PrdMedId], [Id], [MorningAfterMeal], [MorningBeforeMeal], [AfternoonAfterMeal], [AfternoonBeforeMeal], [NightAfterMeal], [NightBeforeMeal], [PrescriptionId], [DoseId], [DeletedFlag], [PatientID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [MedicineName], [Duration]) VALUES (106, 11, NULL, NULL, NULL, NULL, NULL, NULL, 34, 3, 0, 0, 0, CAST(N'2023-03-27' AS Date), NULL, CAST(N'2023-03-27' AS Date), NULL, N'30 tabs(1 Month)')
INSERT [dbo].[T_PL_PrescribedMedicine] ([PrdMedId], [Id], [MorningAfterMeal], [MorningBeforeMeal], [AfternoonAfterMeal], [AfternoonBeforeMeal], [NightAfterMeal], [NightBeforeMeal], [PrescriptionId], [DoseId], [DeletedFlag], [PatientID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [MedicineName], [Duration]) VALUES (107, 2, NULL, NULL, NULL, NULL, NULL, NULL, 41, 25, 0, 0, 0, CAST(N'2023-03-27' AS Date), NULL, CAST(N'2023-03-27' AS Date), NULL, NULL)
INSERT [dbo].[T_PL_PrescribedMedicine] ([PrdMedId], [Id], [MorningAfterMeal], [MorningBeforeMeal], [AfternoonAfterMeal], [AfternoonBeforeMeal], [NightAfterMeal], [NightBeforeMeal], [PrescriptionId], [DoseId], [DeletedFlag], [PatientID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [MedicineName], [Duration]) VALUES (108, 6, NULL, NULL, NULL, NULL, NULL, NULL, 41, 5, 0, 0, 0, CAST(N'2023-03-27' AS Date), NULL, CAST(N'2023-03-27' AS Date), NULL, NULL)
INSERT [dbo].[T_PL_PrescribedMedicine] ([PrdMedId], [Id], [MorningAfterMeal], [MorningBeforeMeal], [AfternoonAfterMeal], [AfternoonBeforeMeal], [NightAfterMeal], [NightBeforeMeal], [PrescriptionId], [DoseId], [DeletedFlag], [PatientID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [MedicineName], [Duration]) VALUES (109, 15, NULL, NULL, NULL, NULL, NULL, NULL, 41, 27, 0, 0, 0, CAST(N'2023-03-27' AS Date), NULL, CAST(N'2023-03-27' AS Date), NULL, NULL)
INSERT [dbo].[T_PL_PrescribedMedicine] ([PrdMedId], [Id], [MorningAfterMeal], [MorningBeforeMeal], [AfternoonAfterMeal], [AfternoonBeforeMeal], [NightAfterMeal], [NightBeforeMeal], [PrescriptionId], [DoseId], [DeletedFlag], [PatientID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [MedicineName], [Duration]) VALUES (110, 2, NULL, NULL, NULL, NULL, NULL, NULL, 43, 3, 0, 0, 0, CAST(N'2023-03-27' AS Date), NULL, CAST(N'2023-03-27' AS Date), NULL, N'3days')
INSERT [dbo].[T_PL_PrescribedMedicine] ([PrdMedId], [Id], [MorningAfterMeal], [MorningBeforeMeal], [AfternoonAfterMeal], [AfternoonBeforeMeal], [NightAfterMeal], [NightBeforeMeal], [PrescriptionId], [DoseId], [DeletedFlag], [PatientID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [MedicineName], [Duration]) VALUES (111, 2, NULL, NULL, NULL, NULL, NULL, NULL, 44, 3, 0, 0, 0, CAST(N'2023-03-28' AS Date), NULL, CAST(N'2023-03-28' AS Date), NULL, N'30days')
INSERT [dbo].[T_PL_PrescribedMedicine] ([PrdMedId], [Id], [MorningAfterMeal], [MorningBeforeMeal], [AfternoonAfterMeal], [AfternoonBeforeMeal], [NightAfterMeal], [NightBeforeMeal], [PrescriptionId], [DoseId], [DeletedFlag], [PatientID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [MedicineName], [Duration]) VALUES (112, 6, NULL, NULL, NULL, NULL, NULL, NULL, 44, 5, 0, 0, 0, CAST(N'2023-03-28' AS Date), NULL, CAST(N'2023-03-28' AS Date), NULL, N'10days')
INSERT [dbo].[T_PL_PrescribedMedicine] ([PrdMedId], [Id], [MorningAfterMeal], [MorningBeforeMeal], [AfternoonAfterMeal], [AfternoonBeforeMeal], [NightAfterMeal], [NightBeforeMeal], [PrescriptionId], [DoseId], [DeletedFlag], [PatientID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [MedicineName], [Duration]) VALUES (113, 15, NULL, NULL, NULL, NULL, NULL, NULL, 44, 12, 0, 0, 0, CAST(N'2023-03-28' AS Date), NULL, CAST(N'2023-03-28' AS Date), NULL, N'1day')
INSERT [dbo].[T_PL_PrescribedMedicine] ([PrdMedId], [Id], [MorningAfterMeal], [MorningBeforeMeal], [AfternoonAfterMeal], [AfternoonBeforeMeal], [NightAfterMeal], [NightBeforeMeal], [PrescriptionId], [DoseId], [DeletedFlag], [PatientID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [MedicineName], [Duration]) VALUES (114, 2, NULL, NULL, NULL, NULL, NULL, NULL, 45, 14, 0, 0, 0, CAST(N'2023-04-10' AS Date), NULL, CAST(N'2023-04-10' AS Date), NULL, N'1')
INSERT [dbo].[T_PL_PrescribedMedicine] ([PrdMedId], [Id], [MorningAfterMeal], [MorningBeforeMeal], [AfternoonAfterMeal], [AfternoonBeforeMeal], [NightAfterMeal], [NightBeforeMeal], [PrescriptionId], [DoseId], [DeletedFlag], [PatientID], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [MedicineName], [Duration]) VALUES (115, 12, NULL, NULL, NULL, NULL, NULL, NULL, 45, 21, 0, 0, 0, CAST(N'2023-04-10' AS Date), NULL, CAST(N'2023-04-10' AS Date), NULL, N'6')
SET IDENTITY_INSERT [dbo].[T_PL_PrescribedMedicine] OFF
GO
SET IDENTITY_INSERT [dbo].[T_PL_PrescriptionDetails] ON 

INSERT [dbo].[T_PL_PrescriptionDetails] ([PrescriptionId], [HospitalID], [PatientID], [Height], [BloodPressure], [Weight], [Pulse], [Temperature], [OxygenLevel], [Symptoms], [PatientHistory], [OtherAdvice], [DeletedFlag], [CreateBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [GuardianName]) VALUES (1, NULL, 126, CAST(168.00 AS Numeric(8, 2)), N'110.00', CAST(67.00 AS Numeric(8, 2)), NULL, NULL, N'90', N'asdfg', N'asdfghj', N'asdfgh', 1, 0, NULL, NULL, NULL, N'Shyama')
INSERT [dbo].[T_PL_PrescriptionDetails] ([PrescriptionId], [HospitalID], [PatientID], [Height], [BloodPressure], [Weight], [Pulse], [Temperature], [OxygenLevel], [Symptoms], [PatientHistory], [OtherAdvice], [DeletedFlag], [CreateBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [GuardianName]) VALUES (2, NULL, 126, CAST(168.00 AS Numeric(8, 2)), N'112.00', CAST(67.00 AS Numeric(8, 2)), NULL, NULL, N'90', N'ghjkl', N'fghjkl', N'sdfghjkl', 1, 0, NULL, NULL, NULL, N'Vikram')
INSERT [dbo].[T_PL_PrescriptionDetails] ([PrescriptionId], [HospitalID], [PatientID], [Height], [BloodPressure], [Weight], [Pulse], [Temperature], [OxygenLevel], [Symptoms], [PatientHistory], [OtherAdvice], [DeletedFlag], [CreateBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [GuardianName]) VALUES (3, NULL, 126, CAST(154.00 AS Numeric(8, 2)), N'112.00', CAST(56.00 AS Numeric(8, 2)), NULL, NULL, N'100', N'EYE SIGHT ISSUE', N'NONE', N'NONE', 1, 0, NULL, 0, CAST(N'2023-02-06' AS Date), N'Senapati')
INSERT [dbo].[T_PL_PrescriptionDetails] ([PrescriptionId], [HospitalID], [PatientID], [Height], [BloodPressure], [Weight], [Pulse], [Temperature], [OxygenLevel], [Symptoms], [PatientHistory], [OtherAdvice], [DeletedFlag], [CreateBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [GuardianName]) VALUES (4, NULL, 130, CAST(165.00 AS Numeric(8, 2)), N'116.00', CAST(55.00 AS Numeric(8, 2)), NULL, NULL, N'105', N'qwertyui', N'wertyui', N'qwertyuiop', 1, 0, NULL, NULL, NULL, N'Raman')
INSERT [dbo].[T_PL_PrescriptionDetails] ([PrescriptionId], [HospitalID], [PatientID], [Height], [BloodPressure], [Weight], [Pulse], [Temperature], [OxygenLevel], [Symptoms], [PatientHistory], [OtherAdvice], [DeletedFlag], [CreateBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [GuardianName]) VALUES (5, NULL, 128, CAST(176.00 AS Numeric(8, 2)), N'114.00', CAST(66.00 AS Numeric(8, 2)), NULL, NULL, N'100', N'qwertyuio', N'wertyuio', N'qwertyuiopdfghjk', 1, 0, NULL, NULL, NULL, N'sushmita')
INSERT [dbo].[T_PL_PrescriptionDetails] ([PrescriptionId], [HospitalID], [PatientID], [Height], [BloodPressure], [Weight], [Pulse], [Temperature], [OxygenLevel], [Symptoms], [PatientHistory], [OtherAdvice], [DeletedFlag], [CreateBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [GuardianName]) VALUES (6, NULL, 126, CAST(0.00 AS Numeric(8, 2)), N'0.00', CAST(0.00 AS Numeric(8, 2)), NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[T_PL_PrescriptionDetails] ([PrescriptionId], [HospitalID], [PatientID], [Height], [BloodPressure], [Weight], [Pulse], [Temperature], [OxygenLevel], [Symptoms], [PatientHistory], [OtherAdvice], [DeletedFlag], [CreateBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [GuardianName]) VALUES (7, NULL, 126, CAST(168.00 AS Numeric(8, 2)), N'110.00', CAST(67.00 AS Numeric(8, 2)), NULL, NULL, N'90', N'asdfgh', N'sdfghjk', N'sdfghj', 1, 0, NULL, NULL, NULL, N'asdfg')
INSERT [dbo].[T_PL_PrescriptionDetails] ([PrescriptionId], [HospitalID], [PatientID], [Height], [BloodPressure], [Weight], [Pulse], [Temperature], [OxygenLevel], [Symptoms], [PatientHistory], [OtherAdvice], [DeletedFlag], [CreateBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [GuardianName]) VALUES (8, NULL, 126, CAST(168.00 AS Numeric(8, 2)), N'110.00', CAST(67.00 AS Numeric(8, 2)), NULL, NULL, N'90', N'sdfghj', N'dfghjk', N'sdfgh', 1, 0, NULL, NULL, NULL, N'asdfgh')
INSERT [dbo].[T_PL_PrescriptionDetails] ([PrescriptionId], [HospitalID], [PatientID], [Height], [BloodPressure], [Weight], [Pulse], [Temperature], [OxygenLevel], [Symptoms], [PatientHistory], [OtherAdvice], [DeletedFlag], [CreateBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [GuardianName]) VALUES (9, NULL, 126, CAST(168.00 AS Numeric(8, 2)), N'110.00', CAST(67.00 AS Numeric(8, 2)), NULL, NULL, N'90', N'werty', N'werty', N'asdfg', 1, 0, NULL, 0, CAST(N'2023-02-06' AS Date), N'sedrty')
INSERT [dbo].[T_PL_PrescriptionDetails] ([PrescriptionId], [HospitalID], [PatientID], [Height], [BloodPressure], [Weight], [Pulse], [Temperature], [OxygenLevel], [Symptoms], [PatientHistory], [OtherAdvice], [DeletedFlag], [CreateBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [GuardianName]) VALUES (10, NULL, 126, CAST(168.00 AS Numeric(8, 2)), N'110.00', CAST(67.00 AS Numeric(8, 2)), NULL, NULL, N'90', N'werty', N'werty', N'asdfg', 1, 0, NULL, NULL, NULL, N'sedrty')
INSERT [dbo].[T_PL_PrescriptionDetails] ([PrescriptionId], [HospitalID], [PatientID], [Height], [BloodPressure], [Weight], [Pulse], [Temperature], [OxygenLevel], [Symptoms], [PatientHistory], [OtherAdvice], [DeletedFlag], [CreateBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [GuardianName]) VALUES (11, NULL, 126, CAST(168.00 AS Numeric(8, 2)), N'110.00', CAST(67.00 AS Numeric(8, 2)), NULL, NULL, N'90', N'werty', N'werty', N'asdfg', 1, 0, NULL, NULL, NULL, N'sedrty')
INSERT [dbo].[T_PL_PrescriptionDetails] ([PrescriptionId], [HospitalID], [PatientID], [Height], [BloodPressure], [Weight], [Pulse], [Temperature], [OxygenLevel], [Symptoms], [PatientHistory], [OtherAdvice], [DeletedFlag], [CreateBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [GuardianName]) VALUES (12, NULL, 128, CAST(168.00 AS Numeric(8, 2)), N'110.00', CAST(67.00 AS Numeric(8, 2)), NULL, NULL, N'90', N'fghjkl', N'dfghjkl', N'sdfghjkl', 1, 0, NULL, NULL, NULL, N'dfghjk')
INSERT [dbo].[T_PL_PrescriptionDetails] ([PrescriptionId], [HospitalID], [PatientID], [Height], [BloodPressure], [Weight], [Pulse], [Temperature], [OxygenLevel], [Symptoms], [PatientHistory], [OtherAdvice], [DeletedFlag], [CreateBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [GuardianName]) VALUES (13, NULL, 129, CAST(1234.00 AS Numeric(8, 2)), N'11234.00', CAST(2345.00 AS Numeric(8, 2)), NULL, NULL, N'1234', N'qwertyuio', N'qwertyuio', N'ASDFGHJKL', 1, 0, NULL, NULL, NULL, N'sdfghjk')
INSERT [dbo].[T_PL_PrescriptionDetails] ([PrescriptionId], [HospitalID], [PatientID], [Height], [BloodPressure], [Weight], [Pulse], [Temperature], [OxygenLevel], [Symptoms], [PatientHistory], [OtherAdvice], [DeletedFlag], [CreateBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [GuardianName]) VALUES (14, NULL, 129, CAST(168.00 AS Numeric(8, 2)), N'110.00', CAST(67.00 AS Numeric(8, 2)), NULL, NULL, N'90', N'asdfg', N'sdfg', N'asdf', 1, 0, NULL, NULL, NULL, N'Shyama')
INSERT [dbo].[T_PL_PrescriptionDetails] ([PrescriptionId], [HospitalID], [PatientID], [Height], [BloodPressure], [Weight], [Pulse], [Temperature], [OxygenLevel], [Symptoms], [PatientHistory], [OtherAdvice], [DeletedFlag], [CreateBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [GuardianName]) VALUES (15, NULL, 129, CAST(168.00 AS Numeric(8, 2)), N'110.00', CAST(67.00 AS Numeric(8, 2)), NULL, NULL, N'90', N'asdfg', N'asdfg', N'asdfg', 1, 0, NULL, NULL, NULL, N'Shyama')
INSERT [dbo].[T_PL_PrescriptionDetails] ([PrescriptionId], [HospitalID], [PatientID], [Height], [BloodPressure], [Weight], [Pulse], [Temperature], [OxygenLevel], [Symptoms], [PatientHistory], [OtherAdvice], [DeletedFlag], [CreateBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [GuardianName]) VALUES (16, NULL, 129, CAST(165.00 AS Numeric(8, 2)), N'110.00', CAST(45.00 AS Numeric(8, 2)), NULL, NULL, N'89', N'qwertyuio', N'wertyuik', N'asdfghjk', 1, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[T_PL_PrescriptionDetails] ([PrescriptionId], [HospitalID], [PatientID], [Height], [BloodPressure], [Weight], [Pulse], [Temperature], [OxygenLevel], [Symptoms], [PatientHistory], [OtherAdvice], [DeletedFlag], [CreateBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [GuardianName]) VALUES (17, NULL, 129, CAST(165.00 AS Numeric(8, 2)), N'110.00', CAST(45.00 AS Numeric(8, 2)), NULL, NULL, N'89', N'qawsdfghjkler', N'tystderfgtyhjk', N'jijjnjk', 1, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[T_PL_PrescriptionDetails] ([PrescriptionId], [HospitalID], [PatientID], [Height], [BloodPressure], [Weight], [Pulse], [Temperature], [OxygenLevel], [Symptoms], [PatientHistory], [OtherAdvice], [DeletedFlag], [CreateBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [GuardianName]) VALUES (18, NULL, 129, CAST(12345.00 AS Numeric(8, 2)), N'12345.00', CAST(12345.00 AS Numeric(8, 2)), NULL, NULL, N'123', N'45SDFGHJKXC VBNM', N'ZXCFVGBHNJKXCVBNM', N'QWEDRFTGHYUJKL', 1, 0, NULL, 0, CAST(N'2023-02-07' AS Date), N'dfghjk')
INSERT [dbo].[T_PL_PrescriptionDetails] ([PrescriptionId], [HospitalID], [PatientID], [Height], [BloodPressure], [Weight], [Pulse], [Temperature], [OxygenLevel], [Symptoms], [PatientHistory], [OtherAdvice], [DeletedFlag], [CreateBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [GuardianName]) VALUES (19, NULL, 129, CAST(168.00 AS Numeric(8, 2)), N'110.00', CAST(67.00 AS Numeric(8, 2)), NULL, NULL, N'90', N'asdfghj', N'asdfghj', N'asdfghjk', 1, 0, NULL, NULL, NULL, N'Shyama')
INSERT [dbo].[T_PL_PrescriptionDetails] ([PrescriptionId], [HospitalID], [PatientID], [Height], [BloodPressure], [Weight], [Pulse], [Temperature], [OxygenLevel], [Symptoms], [PatientHistory], [OtherAdvice], [DeletedFlag], [CreateBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [GuardianName]) VALUES (20, NULL, 136, CAST(168.00 AS Numeric(8, 2)), N'110.00', CAST(67.00 AS Numeric(8, 2)), NULL, NULL, N'90', N'WERTYU', N'DFGHJ', N'DFGHJ', 1, 0, NULL, NULL, NULL, N'Shyama')
INSERT [dbo].[T_PL_PrescriptionDetails] ([PrescriptionId], [HospitalID], [PatientID], [Height], [BloodPressure], [Weight], [Pulse], [Temperature], [OxygenLevel], [Symptoms], [PatientHistory], [OtherAdvice], [DeletedFlag], [CreateBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [GuardianName]) VALUES (21, NULL, 136, CAST(168.00 AS Numeric(8, 2)), N'110.00', CAST(67.00 AS Numeric(8, 2)), NULL, NULL, N'90', N'sdasdf', N'asd', NULL, 1, 0, NULL, NULL, NULL, N'Shyama')
INSERT [dbo].[T_PL_PrescriptionDetails] ([PrescriptionId], [HospitalID], [PatientID], [Height], [BloodPressure], [Weight], [Pulse], [Temperature], [OxygenLevel], [Symptoms], [PatientHistory], [OtherAdvice], [DeletedFlag], [CreateBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [GuardianName]) VALUES (22, NULL, 136, CAST(168.00 AS Numeric(8, 2)), N'110.00', CAST(67.00 AS Numeric(8, 2)), NULL, NULL, N'90', N'asdfgh', N'asdfgh', N'asdfgh', 1, 0, NULL, NULL, NULL, N'Shyama')
INSERT [dbo].[T_PL_PrescriptionDetails] ([PrescriptionId], [HospitalID], [PatientID], [Height], [BloodPressure], [Weight], [Pulse], [Temperature], [OxygenLevel], [Symptoms], [PatientHistory], [OtherAdvice], [DeletedFlag], [CreateBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [GuardianName]) VALUES (23, NULL, 136, CAST(168.00 AS Numeric(8, 2)), N'110.00', CAST(67.00 AS Numeric(8, 2)), NULL, NULL, N'90', N'sdf', N'dfg', N'sdfg', 1, 0, NULL, NULL, NULL, N'Shyama')
INSERT [dbo].[T_PL_PrescriptionDetails] ([PrescriptionId], [HospitalID], [PatientID], [Height], [BloodPressure], [Weight], [Pulse], [Temperature], [OxygenLevel], [Symptoms], [PatientHistory], [OtherAdvice], [DeletedFlag], [CreateBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [GuardianName]) VALUES (24, NULL, 138, CAST(168.00 AS Numeric(8, 2)), N'110.00', CAST(67.00 AS Numeric(8, 2)), NULL, NULL, N'90', N'Fever,low bp', N'Diebatics', N'No food', 1, 0, NULL, 0, CAST(N'2023-02-20' AS Date), N'Shyama')
INSERT [dbo].[T_PL_PrescriptionDetails] ([PrescriptionId], [HospitalID], [PatientID], [Height], [BloodPressure], [Weight], [Pulse], [Temperature], [OxygenLevel], [Symptoms], [PatientHistory], [OtherAdvice], [DeletedFlag], [CreateBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [GuardianName]) VALUES (26, NULL, 138, CAST(123.00 AS Numeric(8, 2)), N'111.00', CAST(45.00 AS Numeric(8, 2)), NULL, NULL, N'90', N'asdfg', N'asdfg', N'asdfgh', 1, 0, NULL, NULL, NULL, N'Shyamapadhi')
INSERT [dbo].[T_PL_PrescriptionDetails] ([PrescriptionId], [HospitalID], [PatientID], [Height], [BloodPressure], [Weight], [Pulse], [Temperature], [OxygenLevel], [Symptoms], [PatientHistory], [OtherAdvice], [DeletedFlag], [CreateBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [GuardianName]) VALUES (27, NULL, 139, CAST(168.00 AS Numeric(8, 2)), N'110.00', CAST(67.00 AS Numeric(8, 2)), NULL, NULL, N'90', N'fever', N'eye sight trouble', N'no food', 1, 0, NULL, 0, CAST(N'2023-02-16' AS Date), N'Shyama')
INSERT [dbo].[T_PL_PrescriptionDetails] ([PrescriptionId], [HospitalID], [PatientID], [Height], [BloodPressure], [Weight], [Pulse], [Temperature], [OxygenLevel], [Symptoms], [PatientHistory], [OtherAdvice], [DeletedFlag], [CreateBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [GuardianName]) VALUES (28, NULL, 139, CAST(168.00 AS Numeric(8, 2)), N'110.00', CAST(67.00 AS Numeric(8, 2)), NULL, NULL, N'90', N'dfghjkl', N'sdfghjkl', N'asdfghj', 1, 0, NULL, NULL, NULL, N'Shyama')
INSERT [dbo].[T_PL_PrescriptionDetails] ([PrescriptionId], [HospitalID], [PatientID], [Height], [BloodPressure], [Weight], [Pulse], [Temperature], [OxygenLevel], [Symptoms], [PatientHistory], [OtherAdvice], [DeletedFlag], [CreateBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [GuardianName]) VALUES (29, NULL, 139, CAST(168.00 AS Numeric(8, 2)), N'110.00', CAST(67.00 AS Numeric(8, 2)), NULL, NULL, N'90', N'sdfg', N'asdfg', N'sdfgh', 1, 0, NULL, NULL, NULL, N'Shyama')
INSERT [dbo].[T_PL_PrescriptionDetails] ([PrescriptionId], [HospitalID], [PatientID], [Height], [BloodPressure], [Weight], [Pulse], [Temperature], [OxygenLevel], [Symptoms], [PatientHistory], [OtherAdvice], [DeletedFlag], [CreateBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [GuardianName]) VALUES (30, NULL, 139, CAST(168.00 AS Numeric(8, 2)), N'110.00', CAST(67.00 AS Numeric(8, 2)), NULL, NULL, N'90', N'asdfg', N'asdfgh', N'asdfg', 1, 0, NULL, NULL, NULL, N'Shyama')
INSERT [dbo].[T_PL_PrescriptionDetails] ([PrescriptionId], [HospitalID], [PatientID], [Height], [BloodPressure], [Weight], [Pulse], [Temperature], [OxygenLevel], [Symptoms], [PatientHistory], [OtherAdvice], [DeletedFlag], [CreateBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [GuardianName]) VALUES (31, NULL, 139, CAST(168.00 AS Numeric(8, 2)), N'110.00', CAST(67.00 AS Numeric(8, 2)), NULL, NULL, N'90', N'asdfg', N'asdfgh', N'asdfg', 1, 0, NULL, 0, CAST(N'2023-02-16' AS Date), N'Shyama')
INSERT [dbo].[T_PL_PrescriptionDetails] ([PrescriptionId], [HospitalID], [PatientID], [Height], [BloodPressure], [Weight], [Pulse], [Temperature], [OxygenLevel], [Symptoms], [PatientHistory], [OtherAdvice], [DeletedFlag], [CreateBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [GuardianName]) VALUES (32, NULL, 139, CAST(168.00 AS Numeric(8, 2)), N'110/80', CAST(67.00 AS Numeric(8, 2)), NULL, NULL, N'90', N'asdfgh', N'asdf', N'vbmdfghj', 1, 0, NULL, 0, CAST(N'2023-02-16' AS Date), N'Shyama')
INSERT [dbo].[T_PL_PrescriptionDetails] ([PrescriptionId], [HospitalID], [PatientID], [Height], [BloodPressure], [Weight], [Pulse], [Temperature], [OxygenLevel], [Symptoms], [PatientHistory], [OtherAdvice], [DeletedFlag], [CreateBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [GuardianName]) VALUES (33, NULL, 141, CAST(165.00 AS Numeric(8, 2)), N'110', CAST(45.00 AS Numeric(8, 2)), N'103', N'100', N'89', N'sdfghjkl', N'fghjk', N'sdfgh', 0, 0, NULL, 0, CAST(N'2023-02-21' AS Date), N'asdfg')
INSERT [dbo].[T_PL_PrescriptionDetails] ([PrescriptionId], [HospitalID], [PatientID], [Height], [BloodPressure], [Weight], [Pulse], [Temperature], [OxygenLevel], [Symptoms], [PatientHistory], [OtherAdvice], [DeletedFlag], [CreateBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [GuardianName]) VALUES (34, NULL, 141, CAST(165.00 AS Numeric(8, 2)), N'110', CAST(45.00 AS Numeric(8, 2)), N'102', N'98', N'89', N'Fever,
Cough,
Weakness,
BodyPain', N'Diabetic,
High BloodPressure
', N'* Dont drink cold water.
*Dont eat outside food.
*Sleep atlest 7hrs.
*Do some exercise.
*Eat green vegetables.', 0, 0, NULL, 0, CAST(N'2023-03-27' AS Date), N'asdfg')
INSERT [dbo].[T_PL_PrescriptionDetails] ([PrescriptionId], [HospitalID], [PatientID], [Height], [BloodPressure], [Weight], [Pulse], [Temperature], [OxygenLevel], [Symptoms], [PatientHistory], [OtherAdvice], [DeletedFlag], [CreateBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [GuardianName]) VALUES (35, NULL, 142, CAST(168.00 AS Numeric(8, 2)), N'110/80', CAST(67.00 AS Numeric(8, 2)), NULL, NULL, N'99', N'asdfghj', N'sdfghjkfghfghj', N'asdfghjklsdfghj', 0, 0, NULL, 0, CAST(N'2023-03-27' AS Date), N'Shyama Sundar')
INSERT [dbo].[T_PL_PrescriptionDetails] ([PrescriptionId], [HospitalID], [PatientID], [Height], [BloodPressure], [Weight], [Pulse], [Temperature], [OxygenLevel], [Symptoms], [PatientHistory], [OtherAdvice], [DeletedFlag], [CreateBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [GuardianName]) VALUES (36, NULL, 142, CAST(165.00 AS Numeric(8, 2)), N'110', CAST(45.00 AS Numeric(8, 2)), N'102', N'97', N'89', N'dfghjkl
asdfgh
asdfghjk
sdfghjk', N'sdfghjkl;', N'sdfghjk', 0, 0, NULL, 0, CAST(N'2023-03-21' AS Date), N'asdfg')
INSERT [dbo].[T_PL_PrescriptionDetails] ([PrescriptionId], [HospitalID], [PatientID], [Height], [BloodPressure], [Weight], [Pulse], [Temperature], [OxygenLevel], [Symptoms], [PatientHistory], [OtherAdvice], [DeletedFlag], [CreateBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [GuardianName]) VALUES (37, NULL, 154, CAST(165.00 AS Numeric(8, 2)), N'110', CAST(45.00 AS Numeric(8, 2)), N'110', N'100.1', N'89', NULL, N'None', N'Use warm water to drink ,
Don''t  eat fastfood ', 0, 0, NULL, NULL, NULL, N'Ramesh')
INSERT [dbo].[T_PL_PrescriptionDetails] ([PrescriptionId], [HospitalID], [PatientID], [Height], [BloodPressure], [Weight], [Pulse], [Temperature], [OxygenLevel], [Symptoms], [PatientHistory], [OtherAdvice], [DeletedFlag], [CreateBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [GuardianName]) VALUES (38, NULL, 159, CAST(167.00 AS Numeric(8, 2)), N'110/90', CAST(67.00 AS Numeric(8, 2)), N'101', N'100', N'100', N'Fever', N'No History', N'Eat healthy
Drink  4-7 lit water', 0, 0, NULL, 0, CAST(N'2023-03-21' AS Date), N'Shyama')
INSERT [dbo].[T_PL_PrescriptionDetails] ([PrescriptionId], [HospitalID], [PatientID], [Height], [BloodPressure], [Weight], [Pulse], [Temperature], [OxygenLevel], [Symptoms], [PatientHistory], [OtherAdvice], [DeletedFlag], [CreateBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [GuardianName]) VALUES (39, NULL, 164, CAST(165.00 AS Numeric(8, 2)), N'110/65', CAST(45.00 AS Numeric(8, 2)), N'110', N'100', N'89', N'none', N'none', N'Avoid fast food', 0, 0, NULL, 0, CAST(N'2023-03-27' AS Date), N'asdfg')
INSERT [dbo].[T_PL_PrescriptionDetails] ([PrescriptionId], [HospitalID], [PatientID], [Height], [BloodPressure], [Weight], [Pulse], [Temperature], [OxygenLevel], [Symptoms], [PatientHistory], [OtherAdvice], [DeletedFlag], [CreateBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [GuardianName]) VALUES (40, NULL, 168, CAST(123.00 AS Numeric(8, 2)), N'110/80', CAST(67.00 AS Numeric(8, 2)), N'101', N'100', N'100', NULL, N'asdfgh', N'asd', 1, 0, NULL, 0, CAST(N'2023-03-24' AS Date), N'Shyama')
INSERT [dbo].[T_PL_PrescriptionDetails] ([PrescriptionId], [HospitalID], [PatientID], [Height], [BloodPressure], [Weight], [Pulse], [Temperature], [OxygenLevel], [Symptoms], [PatientHistory], [OtherAdvice], [DeletedFlag], [CreateBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [GuardianName]) VALUES (41, 2, 168, CAST(123.00 AS Numeric(8, 2)), N'110/11', CAST(34.00 AS Numeric(8, 2)), N'103', N'100', N'100', N'szxcvb', N'wexcvbn', N'awser', 0, 0, NULL, 0, CAST(N'2023-03-27' AS Date), N'Shyama')
INSERT [dbo].[T_PL_PrescriptionDetails] ([PrescriptionId], [HospitalID], [PatientID], [Height], [BloodPressure], [Weight], [Pulse], [Temperature], [OxygenLevel], [Symptoms], [PatientHistory], [OtherAdvice], [DeletedFlag], [CreateBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [GuardianName]) VALUES (42, 2, 169, CAST(134.00 AS Numeric(8, 2)), N'112/80', CAST(67.00 AS Numeric(8, 2)), N'101', N'101', N'100', N'asdfghj', N'dfgfghjk', N'dfghjk', 0, 0, NULL, 0, CAST(N'2023-03-27' AS Date), N'Shyama')
INSERT [dbo].[T_PL_PrescriptionDetails] ([PrescriptionId], [HospitalID], [PatientID], [Height], [BloodPressure], [Weight], [Pulse], [Temperature], [OxygenLevel], [Symptoms], [PatientHistory], [OtherAdvice], [DeletedFlag], [CreateBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [GuardianName]) VALUES (43, 2, 169, CAST(168.00 AS Numeric(8, 2)), N'120/99', CAST(67.00 AS Numeric(8, 2)), N'103', N'100', N'90', NULL, N'sdfghjklsdfgh', N'asdfghjkldfghj', 0, 0, CAST(N'2023-03-27' AS Date), NULL, NULL, N'Shyama')
INSERT [dbo].[T_PL_PrescriptionDetails] ([PrescriptionId], [HospitalID], [PatientID], [Height], [BloodPressure], [Weight], [Pulse], [Temperature], [OxygenLevel], [Symptoms], [PatientHistory], [OtherAdvice], [DeletedFlag], [CreateBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [GuardianName]) VALUES (44, 2, 170, CAST(145.00 AS Numeric(8, 2)), N'140/70', CAST(56.00 AS Numeric(8, 2)), N'100', N'100', N'100', NULL, N'HighBloodPressure', N'Drink lot of Water', 0, 0, CAST(N'2023-03-28' AS Date), NULL, NULL, N'Haria Das')
INSERT [dbo].[T_PL_PrescriptionDetails] ([PrescriptionId], [HospitalID], [PatientID], [Height], [BloodPressure], [Weight], [Pulse], [Temperature], [OxygenLevel], [Symptoms], [PatientHistory], [OtherAdvice], [DeletedFlag], [CreateBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [GuardianName]) VALUES (45, 3, 196, CAST(5.50 AS Numeric(8, 2)), N'120', CAST(45.00 AS Numeric(8, 2)), N'43', N'23', N'43', NULL, N'3erw', N'r2rw2r', 0, 0, CAST(N'2023-04-10' AS Date), NULL, NULL, N'fwd')
INSERT [dbo].[T_PL_PrescriptionDetails] ([PrescriptionId], [HospitalID], [PatientID], [Height], [BloodPressure], [Weight], [Pulse], [Temperature], [OxygenLevel], [Symptoms], [PatientHistory], [OtherAdvice], [DeletedFlag], [CreateBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [GuardianName]) VALUES (46, 2, 197, CAST(6.00 AS Numeric(8, 2)), N'120', CAST(67.00 AS Numeric(8, 2)), N'67', N'46', N'67', NULL, N'yhyth', N'hytyt', 0, 0, CAST(N'2023-04-11' AS Date), 0, CAST(N'2023-04-11' AS Date), N'caa')
SET IDENTITY_INSERT [dbo].[T_PL_PrescriptionDetails] OFF
GO
SET IDENTITY_INSERT [dbo].[T_PL_SampleCollection] ON 

INSERT [dbo].[T_PL_SampleCollection] ([Sid], [SampleColNo], [LabTestId], [BarCode], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (1, 4, 1, N'1234', 0, CAST(N'2023-03-28' AS Date), NULL, CAST(N'2023-03-28' AS Date), 0)
INSERT [dbo].[T_PL_SampleCollection] ([Sid], [SampleColNo], [LabTestId], [BarCode], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (2, 5, 1, N'123456', 0, CAST(N'2023-03-28' AS Date), NULL, CAST(N'2023-03-28' AS Date), 0)
INSERT [dbo].[T_PL_SampleCollection] ([Sid], [SampleColNo], [LabTestId], [BarCode], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (3, 6, 1, N'1234567', 0, CAST(N'2023-03-28' AS Date), NULL, CAST(N'2023-03-28' AS Date), 0)
INSERT [dbo].[T_PL_SampleCollection] ([Sid], [SampleColNo], [LabTestId], [BarCode], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (4, 7, 20, N'7654321', 0, CAST(N'2023-03-28' AS Date), NULL, CAST(N'2023-03-28' AS Date), 0)
INSERT [dbo].[T_PL_SampleCollection] ([Sid], [SampleColNo], [LabTestId], [BarCode], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (5, 4, 20, N'789065', 0, CAST(N'2023-03-28' AS Date), NULL, CAST(N'2023-03-28' AS Date), 0)
INSERT [dbo].[T_PL_SampleCollection] ([Sid], [SampleColNo], [LabTestId], [BarCode], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (6, 8, 1, N'123456789', 0, CAST(N'2023-03-29' AS Date), NULL, CAST(N'2023-03-29' AS Date), 0)
INSERT [dbo].[T_PL_SampleCollection] ([Sid], [SampleColNo], [LabTestId], [BarCode], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (7, 8, 2, N'987654321', 0, CAST(N'2023-03-29' AS Date), NULL, CAST(N'2023-03-29' AS Date), 0)
INSERT [dbo].[T_PL_SampleCollection] ([Sid], [SampleColNo], [LabTestId], [BarCode], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (8, 4, 1, NULL, 0, CAST(N'2023-03-29' AS Date), NULL, CAST(N'2023-03-29' AS Date), 0)
INSERT [dbo].[T_PL_SampleCollection] ([Sid], [SampleColNo], [LabTestId], [BarCode], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (9, 4, 2, NULL, 0, CAST(N'2023-03-29' AS Date), NULL, CAST(N'2023-03-29' AS Date), 0)
INSERT [dbo].[T_PL_SampleCollection] ([Sid], [SampleColNo], [LabTestId], [BarCode], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (10, 4, 1, NULL, 0, CAST(N'2023-03-29' AS Date), NULL, CAST(N'2023-03-29' AS Date), 0)
INSERT [dbo].[T_PL_SampleCollection] ([Sid], [SampleColNo], [LabTestId], [BarCode], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (11, 4, 2, NULL, 0, CAST(N'2023-03-29' AS Date), NULL, CAST(N'2023-03-29' AS Date), 0)
INSERT [dbo].[T_PL_SampleCollection] ([Sid], [SampleColNo], [LabTestId], [BarCode], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (12, 4, 1, N'123456789', 0, CAST(N'2023-03-29' AS Date), NULL, CAST(N'2023-03-29' AS Date), 0)
INSERT [dbo].[T_PL_SampleCollection] ([Sid], [SampleColNo], [LabTestId], [BarCode], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (13, 4, 2, N'987654321', 0, CAST(N'2023-03-29' AS Date), NULL, CAST(N'2023-03-29' AS Date), 0)
INSERT [dbo].[T_PL_SampleCollection] ([Sid], [SampleColNo], [LabTestId], [BarCode], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (14, 4, 1, N'111111', 0, CAST(N'2023-03-29' AS Date), NULL, CAST(N'2023-03-29' AS Date), 0)
INSERT [dbo].[T_PL_SampleCollection] ([Sid], [SampleColNo], [LabTestId], [BarCode], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (15, 4, 1, N'89898', 0, CAST(N'2023-03-29' AS Date), NULL, CAST(N'2023-03-29' AS Date), 0)
INSERT [dbo].[T_PL_SampleCollection] ([Sid], [SampleColNo], [LabTestId], [BarCode], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (16, 4, 2, N'090909', 0, CAST(N'2023-03-29' AS Date), NULL, CAST(N'2023-03-29' AS Date), 0)
INSERT [dbo].[T_PL_SampleCollection] ([Sid], [SampleColNo], [LabTestId], [BarCode], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (17, 4, 1, N'898989', 0, CAST(N'2023-03-29' AS Date), NULL, CAST(N'2023-03-29' AS Date), 0)
INSERT [dbo].[T_PL_SampleCollection] ([Sid], [SampleColNo], [LabTestId], [BarCode], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (18, 4, 2, N'9989', 0, CAST(N'2023-03-29' AS Date), NULL, CAST(N'2023-03-29' AS Date), 0)
INSERT [dbo].[T_PL_SampleCollection] ([Sid], [SampleColNo], [LabTestId], [BarCode], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (19, 4, 1, N'9990', 0, CAST(N'2023-03-29' AS Date), NULL, CAST(N'2023-03-29' AS Date), 0)
INSERT [dbo].[T_PL_SampleCollection] ([Sid], [SampleColNo], [LabTestId], [BarCode], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (20, 4, 2, N'9999', 0, CAST(N'2023-03-29' AS Date), NULL, CAST(N'2023-03-29' AS Date), 0)
INSERT [dbo].[T_PL_SampleCollection] ([Sid], [SampleColNo], [LabTestId], [BarCode], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (21, 4, 1, N'12345678', 0, CAST(N'2023-03-29' AS Date), NULL, CAST(N'2023-03-29' AS Date), 0)
INSERT [dbo].[T_PL_SampleCollection] ([Sid], [SampleColNo], [LabTestId], [BarCode], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (22, 4, 2, N'987654321', 0, CAST(N'2023-03-29' AS Date), NULL, CAST(N'2023-03-29' AS Date), 0)
INSERT [dbo].[T_PL_SampleCollection] ([Sid], [SampleColNo], [LabTestId], [BarCode], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (23, 4, 1, N'12345678', 0, CAST(N'2023-03-29' AS Date), NULL, CAST(N'2023-03-29' AS Date), 0)
INSERT [dbo].[T_PL_SampleCollection] ([Sid], [SampleColNo], [LabTestId], [BarCode], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (24, 4, 2, N'987654321', 0, CAST(N'2023-03-29' AS Date), NULL, CAST(N'2023-03-29' AS Date), 0)
INSERT [dbo].[T_PL_SampleCollection] ([Sid], [SampleColNo], [LabTestId], [BarCode], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (25, 4, 1, N'123456789', 0, CAST(N'2023-03-29' AS Date), NULL, CAST(N'2023-03-29' AS Date), 0)
INSERT [dbo].[T_PL_SampleCollection] ([Sid], [SampleColNo], [LabTestId], [BarCode], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (26, 4, 2, N'987654321', 0, CAST(N'2023-03-29' AS Date), NULL, CAST(N'2023-03-29' AS Date), 0)
INSERT [dbo].[T_PL_SampleCollection] ([Sid], [SampleColNo], [LabTestId], [BarCode], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (27, 4, 1, N'123456789', 0, CAST(N'2023-03-29' AS Date), NULL, CAST(N'2023-03-29' AS Date), 0)
INSERT [dbo].[T_PL_SampleCollection] ([Sid], [SampleColNo], [LabTestId], [BarCode], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (28, 4, 2, N'987654321', 0, CAST(N'2023-03-29' AS Date), NULL, CAST(N'2023-03-29' AS Date), 0)
INSERT [dbo].[T_PL_SampleCollection] ([Sid], [SampleColNo], [LabTestId], [BarCode], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (29, 4, 1, N'123456789', 0, CAST(N'2023-03-29' AS Date), NULL, CAST(N'2023-03-29' AS Date), 0)
INSERT [dbo].[T_PL_SampleCollection] ([Sid], [SampleColNo], [LabTestId], [BarCode], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (30, 4, 2, N'987654321', 0, CAST(N'2023-03-29' AS Date), NULL, CAST(N'2023-03-29' AS Date), 0)
INSERT [dbo].[T_PL_SampleCollection] ([Sid], [SampleColNo], [LabTestId], [BarCode], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (31, 4, 1, N'123456789', 0, CAST(N'2023-03-29' AS Date), NULL, CAST(N'2023-03-29' AS Date), 0)
INSERT [dbo].[T_PL_SampleCollection] ([Sid], [SampleColNo], [LabTestId], [BarCode], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (32, 4, 2, N'987654321', 0, CAST(N'2023-03-29' AS Date), NULL, CAST(N'2023-03-29' AS Date), 0)
INSERT [dbo].[T_PL_SampleCollection] ([Sid], [SampleColNo], [LabTestId], [BarCode], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (33, 9, 20, N'1234', 0, CAST(N'2023-03-29' AS Date), NULL, CAST(N'2023-03-29' AS Date), 0)
INSERT [dbo].[T_PL_SampleCollection] ([Sid], [SampleColNo], [LabTestId], [BarCode], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (34, 9, 1, N'4321', 0, CAST(N'2023-03-29' AS Date), NULL, CAST(N'2023-03-29' AS Date), 0)
INSERT [dbo].[T_PL_SampleCollection] ([Sid], [SampleColNo], [LabTestId], [BarCode], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (35, 4, 20, N'88998', 0, CAST(N'2023-03-29' AS Date), NULL, CAST(N'2023-03-29' AS Date), 0)
INSERT [dbo].[T_PL_SampleCollection] ([Sid], [SampleColNo], [LabTestId], [BarCode], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (36, 4, 1, N'988989', 0, CAST(N'2023-03-29' AS Date), NULL, CAST(N'2023-03-29' AS Date), 0)
INSERT [dbo].[T_PL_SampleCollection] ([Sid], [SampleColNo], [LabTestId], [BarCode], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (37, 4, 20, N'12345678', 0, CAST(N'2023-03-29' AS Date), NULL, CAST(N'2023-03-29' AS Date), 0)
INSERT [dbo].[T_PL_SampleCollection] ([Sid], [SampleColNo], [LabTestId], [BarCode], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (38, 4, 1, N'123456789', 0, CAST(N'2023-03-29' AS Date), NULL, CAST(N'2023-03-29' AS Date), 0)
INSERT [dbo].[T_PL_SampleCollection] ([Sid], [SampleColNo], [LabTestId], [BarCode], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (39, 4, 20, N'12345', 0, CAST(N'2023-03-29' AS Date), NULL, CAST(N'2023-03-29' AS Date), 0)
INSERT [dbo].[T_PL_SampleCollection] ([Sid], [SampleColNo], [LabTestId], [BarCode], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (40, 4, 1, N'12345', 0, CAST(N'2023-03-29' AS Date), NULL, CAST(N'2023-03-29' AS Date), 0)
INSERT [dbo].[T_PL_SampleCollection] ([Sid], [SampleColNo], [LabTestId], [BarCode], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (41, 4, 1, N'1234555', 0, CAST(N'2023-03-29' AS Date), NULL, CAST(N'2023-03-29' AS Date), 0)
SET IDENTITY_INSERT [dbo].[T_PL_SampleCollection] OFF
GO
SET IDENTITY_INSERT [dbo].[T_PL_TestTable] ON 

INSERT [dbo].[T_PL_TestTable] ([TesttblId], [PathoBillId], [Price], [CGST], [SGST], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag], [LabTestId], [LabTestName], [ReportFile]) VALUES (1, 2, NULL, NULL, NULL, NULL, CAST(N'2023-03-01' AS Date), NULL, CAST(N'2023-03-01' AS Date), 0, NULL, NULL, NULL)
INSERT [dbo].[T_PL_TestTable] ([TesttblId], [PathoBillId], [Price], [CGST], [SGST], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag], [LabTestId], [LabTestName], [ReportFile]) VALUES (2, 2, N'350', CAST(0 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), NULL, CAST(N'2023-03-01' AS Date), NULL, CAST(N'2023-03-01' AS Date), 0, 1, NULL, NULL)
INSERT [dbo].[T_PL_TestTable] ([TesttblId], [PathoBillId], [Price], [CGST], [SGST], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag], [LabTestId], [LabTestName], [ReportFile]) VALUES (3, 3, N'350', CAST(0 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), NULL, CAST(N'2023-03-01' AS Date), NULL, CAST(N'2023-03-01' AS Date), 0, 1, NULL, NULL)
INSERT [dbo].[T_PL_TestTable] ([TesttblId], [PathoBillId], [Price], [CGST], [SGST], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag], [LabTestId], [LabTestName], [ReportFile]) VALUES (4, 6, N'350', CAST(0 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), NULL, CAST(N'2023-03-01' AS Date), NULL, CAST(N'2023-03-01' AS Date), 0, 1, NULL, NULL)
INSERT [dbo].[T_PL_TestTable] ([TesttblId], [PathoBillId], [Price], [CGST], [SGST], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag], [LabTestId], [LabTestName], [ReportFile]) VALUES (5, 7, N'350', CAST(0 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), NULL, CAST(N'2023-03-01' AS Date), NULL, CAST(N'2023-03-01' AS Date), 0, 1, NULL, NULL)
INSERT [dbo].[T_PL_TestTable] ([TesttblId], [PathoBillId], [Price], [CGST], [SGST], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag], [LabTestId], [LabTestName], [ReportFile]) VALUES (6, 7, N'300', CAST(0 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), NULL, CAST(N'2023-03-01' AS Date), NULL, CAST(N'2023-03-01' AS Date), 0, 2, NULL, NULL)
INSERT [dbo].[T_PL_TestTable] ([TesttblId], [PathoBillId], [Price], [CGST], [SGST], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag], [LabTestId], [LabTestName], [ReportFile]) VALUES (7, 8, N'350', CAST(0 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), NULL, CAST(N'2023-03-01' AS Date), NULL, CAST(N'2023-03-01' AS Date), 0, 1, NULL, NULL)
INSERT [dbo].[T_PL_TestTable] ([TesttblId], [PathoBillId], [Price], [CGST], [SGST], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag], [LabTestId], [LabTestName], [ReportFile]) VALUES (8, 8, N'300', CAST(0 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), NULL, CAST(N'2023-03-01' AS Date), NULL, CAST(N'2023-03-01' AS Date), 0, 2, NULL, NULL)
INSERT [dbo].[T_PL_TestTable] ([TesttblId], [PathoBillId], [Price], [CGST], [SGST], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag], [LabTestId], [LabTestName], [ReportFile]) VALUES (9, 9, N'350', CAST(0 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), NULL, CAST(N'2023-03-01' AS Date), NULL, CAST(N'2023-03-01' AS Date), 0, 1, NULL, NULL)
INSERT [dbo].[T_PL_TestTable] ([TesttblId], [PathoBillId], [Price], [CGST], [SGST], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag], [LabTestId], [LabTestName], [ReportFile]) VALUES (10, 9, N'300', CAST(0 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), NULL, CAST(N'2023-03-01' AS Date), NULL, CAST(N'2023-03-01' AS Date), 0, 2, NULL, NULL)
INSERT [dbo].[T_PL_TestTable] ([TesttblId], [PathoBillId], [Price], [CGST], [SGST], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag], [LabTestId], [LabTestName], [ReportFile]) VALUES (11, 10, N'350', CAST(0 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), NULL, CAST(N'2023-03-02' AS Date), NULL, CAST(N'2023-03-02' AS Date), 0, 1, NULL, NULL)
INSERT [dbo].[T_PL_TestTable] ([TesttblId], [PathoBillId], [Price], [CGST], [SGST], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag], [LabTestId], [LabTestName], [ReportFile]) VALUES (12, 11, N'320', CAST(0 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), NULL, CAST(N'2023-03-02' AS Date), NULL, CAST(N'2023-03-02' AS Date), 0, 20, NULL, NULL)
INSERT [dbo].[T_PL_TestTable] ([TesttblId], [PathoBillId], [Price], [CGST], [SGST], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag], [LabTestId], [LabTestName], [ReportFile]) VALUES (13, 12, N'350', CAST(0 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), NULL, CAST(N'2023-03-02' AS Date), NULL, CAST(N'2023-03-02' AS Date), 0, 1, NULL, NULL)
INSERT [dbo].[T_PL_TestTable] ([TesttblId], [PathoBillId], [Price], [CGST], [SGST], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag], [LabTestId], [LabTestName], [ReportFile]) VALUES (14, 13, N'350', CAST(0 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), NULL, CAST(N'2023-03-02' AS Date), NULL, CAST(N'2023-03-02' AS Date), 0, 1, NULL, NULL)
INSERT [dbo].[T_PL_TestTable] ([TesttblId], [PathoBillId], [Price], [CGST], [SGST], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag], [LabTestId], [LabTestName], [ReportFile]) VALUES (15, 14, N'320', CAST(0 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), NULL, CAST(N'2023-03-02' AS Date), NULL, CAST(N'2023-03-02' AS Date), 0, 20, NULL, NULL)
INSERT [dbo].[T_PL_TestTable] ([TesttblId], [PathoBillId], [Price], [CGST], [SGST], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag], [LabTestId], [LabTestName], [ReportFile]) VALUES (16, 15, N'350', CAST(0 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), NULL, CAST(N'2023-03-02' AS Date), NULL, CAST(N'2023-03-02' AS Date), 0, 1, NULL, NULL)
INSERT [dbo].[T_PL_TestTable] ([TesttblId], [PathoBillId], [Price], [CGST], [SGST], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag], [LabTestId], [LabTestName], [ReportFile]) VALUES (17, 16, N'350', CAST(0 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), NULL, CAST(N'2023-03-03' AS Date), NULL, CAST(N'2023-03-03' AS Date), 0, 1, NULL, NULL)
INSERT [dbo].[T_PL_TestTable] ([TesttblId], [PathoBillId], [Price], [CGST], [SGST], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag], [LabTestId], [LabTestName], [ReportFile]) VALUES (18, 17, N'350', CAST(0 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), NULL, CAST(N'2023-03-06' AS Date), NULL, CAST(N'2023-03-06' AS Date), 0, 1, NULL, NULL)
INSERT [dbo].[T_PL_TestTable] ([TesttblId], [PathoBillId], [Price], [CGST], [SGST], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag], [LabTestId], [LabTestName], [ReportFile]) VALUES (19, 19, N'350', CAST(0 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), NULL, CAST(N'2023-03-09' AS Date), NULL, CAST(N'2023-03-09' AS Date), 0, 1, NULL, NULL)
INSERT [dbo].[T_PL_TestTable] ([TesttblId], [PathoBillId], [Price], [CGST], [SGST], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag], [LabTestId], [LabTestName], [ReportFile]) VALUES (20, 21, N'350', CAST(0 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), NULL, CAST(N'2023-03-09' AS Date), NULL, CAST(N'2023-03-09' AS Date), 0, 1, NULL, NULL)
INSERT [dbo].[T_PL_TestTable] ([TesttblId], [PathoBillId], [Price], [CGST], [SGST], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag], [LabTestId], [LabTestName], [ReportFile]) VALUES (21, 22, N'350', CAST(0 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), NULL, CAST(N'2023-03-09' AS Date), NULL, CAST(N'2023-03-09' AS Date), 0, 1, NULL, NULL)
INSERT [dbo].[T_PL_TestTable] ([TesttblId], [PathoBillId], [Price], [CGST], [SGST], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag], [LabTestId], [LabTestName], [ReportFile]) VALUES (22, 23, N'350', CAST(0 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), NULL, CAST(N'2023-03-09' AS Date), NULL, CAST(N'2023-03-09' AS Date), 0, 1, NULL, NULL)
INSERT [dbo].[T_PL_TestTable] ([TesttblId], [PathoBillId], [Price], [CGST], [SGST], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag], [LabTestId], [LabTestName], [ReportFile]) VALUES (23, 26, N'350', CAST(0 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), NULL, CAST(N'2023-03-20' AS Date), NULL, CAST(N'2023-03-20' AS Date), 0, 1, NULL, NULL)
INSERT [dbo].[T_PL_TestTable] ([TesttblId], [PathoBillId], [Price], [CGST], [SGST], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag], [LabTestId], [LabTestName], [ReportFile]) VALUES (24, 27, N'350', CAST(0 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), NULL, CAST(N'2023-03-20' AS Date), NULL, CAST(N'2023-03-20' AS Date), 0, 1, NULL, NULL)
INSERT [dbo].[T_PL_TestTable] ([TesttblId], [PathoBillId], [Price], [CGST], [SGST], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag], [LabTestId], [LabTestName], [ReportFile]) VALUES (25, 28, N'350', CAST(0 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), NULL, CAST(N'2023-03-21' AS Date), NULL, CAST(N'2023-03-21' AS Date), 0, 1, NULL, NULL)
INSERT [dbo].[T_PL_TestTable] ([TesttblId], [PathoBillId], [Price], [CGST], [SGST], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag], [LabTestId], [LabTestName], [ReportFile]) VALUES (26, 29, N'350', CAST(0 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), NULL, CAST(N'2023-03-23' AS Date), NULL, CAST(N'2023-03-23' AS Date), 0, 1, NULL, NULL)
INSERT [dbo].[T_PL_TestTable] ([TesttblId], [PathoBillId], [Price], [CGST], [SGST], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag], [LabTestId], [LabTestName], [ReportFile]) VALUES (27, 29, N'300', CAST(0 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), NULL, CAST(N'2023-03-23' AS Date), NULL, CAST(N'2023-03-23' AS Date), 0, 2, NULL, NULL)
INSERT [dbo].[T_PL_TestTable] ([TesttblId], [PathoBillId], [Price], [CGST], [SGST], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag], [LabTestId], [LabTestName], [ReportFile]) VALUES (28, 32, N'350', CAST(0 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), NULL, CAST(N'2023-03-23' AS Date), NULL, CAST(N'2023-03-23' AS Date), 0, 1, NULL, NULL)
INSERT [dbo].[T_PL_TestTable] ([TesttblId], [PathoBillId], [Price], [CGST], [SGST], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag], [LabTestId], [LabTestName], [ReportFile]) VALUES (29, 32, N'300', CAST(0 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), NULL, CAST(N'2023-03-23' AS Date), NULL, CAST(N'2023-03-23' AS Date), 0, 2, NULL, NULL)
INSERT [dbo].[T_PL_TestTable] ([TesttblId], [PathoBillId], [Price], [CGST], [SGST], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag], [LabTestId], [LabTestName], [ReportFile]) VALUES (30, 33, N'300', CAST(0 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), NULL, CAST(N'2023-03-23' AS Date), NULL, CAST(N'2023-03-23' AS Date), 0, 2, NULL, NULL)
INSERT [dbo].[T_PL_TestTable] ([TesttblId], [PathoBillId], [Price], [CGST], [SGST], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag], [LabTestId], [LabTestName], [ReportFile]) VALUES (31, 34, N'350', CAST(0 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), NULL, CAST(N'2023-03-23' AS Date), NULL, CAST(N'2023-03-23' AS Date), 0, 1, NULL, NULL)
INSERT [dbo].[T_PL_TestTable] ([TesttblId], [PathoBillId], [Price], [CGST], [SGST], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag], [LabTestId], [LabTestName], [ReportFile]) VALUES (32, 34, N'300', CAST(0 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), NULL, CAST(N'2023-03-23' AS Date), NULL, CAST(N'2023-03-23' AS Date), 0, 2, NULL, NULL)
INSERT [dbo].[T_PL_TestTable] ([TesttblId], [PathoBillId], [Price], [CGST], [SGST], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag], [LabTestId], [LabTestName], [ReportFile]) VALUES (33, 34, N'320', CAST(0 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), NULL, CAST(N'2023-03-23' AS Date), NULL, CAST(N'2023-03-23' AS Date), 0, 20, NULL, NULL)
INSERT [dbo].[T_PL_TestTable] ([TesttblId], [PathoBillId], [Price], [CGST], [SGST], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag], [LabTestId], [LabTestName], [ReportFile]) VALUES (34, 35, N'350', CAST(0 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), NULL, CAST(N'2023-03-23' AS Date), NULL, CAST(N'2023-03-23' AS Date), 0, 1, NULL, NULL)
INSERT [dbo].[T_PL_TestTable] ([TesttblId], [PathoBillId], [Price], [CGST], [SGST], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag], [LabTestId], [LabTestName], [ReportFile]) VALUES (35, 35, N'320', CAST(0 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), NULL, CAST(N'2023-03-23' AS Date), NULL, CAST(N'2023-03-23' AS Date), 0, 20, NULL, NULL)
INSERT [dbo].[T_PL_TestTable] ([TesttblId], [PathoBillId], [Price], [CGST], [SGST], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag], [LabTestId], [LabTestName], [ReportFile]) VALUES (36, 35, N'300', CAST(0 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), NULL, CAST(N'2023-03-23' AS Date), NULL, CAST(N'2023-03-23' AS Date), 0, 2, NULL, NULL)
INSERT [dbo].[T_PL_TestTable] ([TesttblId], [PathoBillId], [Price], [CGST], [SGST], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag], [LabTestId], [LabTestName], [ReportFile]) VALUES (37, 36, N'300', CAST(0 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), NULL, CAST(N'2023-03-23' AS Date), NULL, CAST(N'2023-03-23' AS Date), 0, 2, NULL, NULL)
INSERT [dbo].[T_PL_TestTable] ([TesttblId], [PathoBillId], [Price], [CGST], [SGST], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag], [LabTestId], [LabTestName], [ReportFile]) VALUES (38, 36, N'350', CAST(0 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), NULL, CAST(N'2023-03-23' AS Date), NULL, CAST(N'2023-03-23' AS Date), 0, 1, NULL, NULL)
INSERT [dbo].[T_PL_TestTable] ([TesttblId], [PathoBillId], [Price], [CGST], [SGST], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag], [LabTestId], [LabTestName], [ReportFile]) VALUES (39, 36, N'320', CAST(0 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), NULL, CAST(N'2023-03-23' AS Date), NULL, CAST(N'2023-03-23' AS Date), 0, 20, NULL, NULL)
INSERT [dbo].[T_PL_TestTable] ([TesttblId], [PathoBillId], [Price], [CGST], [SGST], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag], [LabTestId], [LabTestName], [ReportFile]) VALUES (40, 37, N'350', CAST(0 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), NULL, CAST(N'2023-03-24' AS Date), NULL, CAST(N'2023-03-24' AS Date), 0, 1, NULL, NULL)
INSERT [dbo].[T_PL_TestTable] ([TesttblId], [PathoBillId], [Price], [CGST], [SGST], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag], [LabTestId], [LabTestName], [ReportFile]) VALUES (41, 37, N'300', CAST(0 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), NULL, CAST(N'2023-03-24' AS Date), NULL, CAST(N'2023-03-24' AS Date), 0, 2, NULL, NULL)
INSERT [dbo].[T_PL_TestTable] ([TesttblId], [PathoBillId], [Price], [CGST], [SGST], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag], [LabTestId], [LabTestName], [ReportFile]) VALUES (42, 38, N'350', CAST(0 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), NULL, CAST(N'2023-03-27' AS Date), NULL, CAST(N'2023-03-27' AS Date), 0, 1, NULL, NULL)
INSERT [dbo].[T_PL_TestTable] ([TesttblId], [PathoBillId], [Price], [CGST], [SGST], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag], [LabTestId], [LabTestName], [ReportFile]) VALUES (43, 39, N'350', CAST(0 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), NULL, CAST(N'2023-03-28' AS Date), NULL, CAST(N'2023-03-28' AS Date), 0, 1, NULL, NULL)
INSERT [dbo].[T_PL_TestTable] ([TesttblId], [PathoBillId], [Price], [CGST], [SGST], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag], [LabTestId], [LabTestName], [ReportFile]) VALUES (44, 40, N'350', CAST(0 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), NULL, CAST(N'2023-03-28' AS Date), NULL, CAST(N'2023-03-28' AS Date), 0, 1, NULL, NULL)
INSERT [dbo].[T_PL_TestTable] ([TesttblId], [PathoBillId], [Price], [CGST], [SGST], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag], [LabTestId], [LabTestName], [ReportFile]) VALUES (45, 41, N'300', CAST(0 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), NULL, CAST(N'2023-03-28' AS Date), NULL, CAST(N'2023-03-28' AS Date), 0, 2, NULL, NULL)
INSERT [dbo].[T_PL_TestTable] ([TesttblId], [PathoBillId], [Price], [CGST], [SGST], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag], [LabTestId], [LabTestName], [ReportFile]) VALUES (46, 42, N'300', CAST(0 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), NULL, CAST(N'2023-03-28' AS Date), NULL, CAST(N'2023-03-28' AS Date), 0, 2, NULL, NULL)
INSERT [dbo].[T_PL_TestTable] ([TesttblId], [PathoBillId], [Price], [CGST], [SGST], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag], [LabTestId], [LabTestName], [ReportFile]) VALUES (47, 43, N'320', CAST(0 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), NULL, CAST(N'2023-03-28' AS Date), NULL, CAST(N'2023-03-28' AS Date), 0, 20, NULL, NULL)
INSERT [dbo].[T_PL_TestTable] ([TesttblId], [PathoBillId], [Price], [CGST], [SGST], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag], [LabTestId], [LabTestName], [ReportFile]) VALUES (48, 44, N'320', CAST(0 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), NULL, CAST(N'2023-03-28' AS Date), NULL, CAST(N'2023-03-28' AS Date), 0, 20, NULL, NULL)
INSERT [dbo].[T_PL_TestTable] ([TesttblId], [PathoBillId], [Price], [CGST], [SGST], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag], [LabTestId], [LabTestName], [ReportFile]) VALUES (49, 45, N'350', CAST(0 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), NULL, CAST(N'2023-03-28' AS Date), NULL, CAST(N'2023-03-28' AS Date), 0, 1, NULL, NULL)
INSERT [dbo].[T_PL_TestTable] ([TesttblId], [PathoBillId], [Price], [CGST], [SGST], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag], [LabTestId], [LabTestName], [ReportFile]) VALUES (50, 46, N'350', CAST(0 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), NULL, CAST(N'2023-03-28' AS Date), NULL, CAST(N'2023-03-28' AS Date), 0, 1, NULL, NULL)
INSERT [dbo].[T_PL_TestTable] ([TesttblId], [PathoBillId], [Price], [CGST], [SGST], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag], [LabTestId], [LabTestName], [ReportFile]) VALUES (51, 47, N'320', CAST(0 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), NULL, CAST(N'2023-03-28' AS Date), NULL, CAST(N'2023-03-28' AS Date), 0, 20, NULL, NULL)
INSERT [dbo].[T_PL_TestTable] ([TesttblId], [PathoBillId], [Price], [CGST], [SGST], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag], [LabTestId], [LabTestName], [ReportFile]) VALUES (52, 48, N'320', CAST(0 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), NULL, CAST(N'2023-03-28' AS Date), NULL, CAST(N'2023-03-28' AS Date), 0, 20, NULL, NULL)
INSERT [dbo].[T_PL_TestTable] ([TesttblId], [PathoBillId], [Price], [CGST], [SGST], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag], [LabTestId], [LabTestName], [ReportFile]) VALUES (53, 49, N'350', CAST(0 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), NULL, CAST(N'2023-03-28' AS Date), NULL, CAST(N'2023-03-28' AS Date), 0, 1, NULL, NULL)
INSERT [dbo].[T_PL_TestTable] ([TesttblId], [PathoBillId], [Price], [CGST], [SGST], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag], [LabTestId], [LabTestName], [ReportFile]) VALUES (54, 49, N'300', CAST(0 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), NULL, CAST(N'2023-03-28' AS Date), NULL, CAST(N'2023-03-28' AS Date), 0, 2, NULL, NULL)
INSERT [dbo].[T_PL_TestTable] ([TesttblId], [PathoBillId], [Price], [CGST], [SGST], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag], [LabTestId], [LabTestName], [ReportFile]) VALUES (55, 50, N'350', CAST(0 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), NULL, CAST(N'2023-03-28' AS Date), NULL, CAST(N'2023-03-28' AS Date), 0, 1, NULL, NULL)
INSERT [dbo].[T_PL_TestTable] ([TesttblId], [PathoBillId], [Price], [CGST], [SGST], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag], [LabTestId], [LabTestName], [ReportFile]) VALUES (56, 50, N'300', CAST(0 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), NULL, CAST(N'2023-03-28' AS Date), NULL, CAST(N'2023-03-28' AS Date), 0, 2, NULL, NULL)
INSERT [dbo].[T_PL_TestTable] ([TesttblId], [PathoBillId], [Price], [CGST], [SGST], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag], [LabTestId], [LabTestName], [ReportFile]) VALUES (57, 51, N'320', CAST(0 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), NULL, CAST(N'2023-03-29' AS Date), NULL, CAST(N'2023-03-29' AS Date), 0, 20, NULL, NULL)
INSERT [dbo].[T_PL_TestTable] ([TesttblId], [PathoBillId], [Price], [CGST], [SGST], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag], [LabTestId], [LabTestName], [ReportFile]) VALUES (58, 51, N'350', CAST(0 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), NULL, CAST(N'2023-03-29' AS Date), NULL, CAST(N'2023-03-29' AS Date), 0, 1, NULL, NULL)
SET IDENTITY_INSERT [dbo].[T_PL_TestTable] OFF
GO
SET IDENTITY_INSERT [dbo].[TBL_CollectionNo] ON 

INSERT [dbo].[TBL_CollectionNo] ([SampleColNo], [PathoBillId], [CollectionId], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (1, 0, NULL, 0, CAST(N'2023-03-28' AS Date), NULL, CAST(N'2023-03-28' AS Date), 0)
INSERT [dbo].[TBL_CollectionNo] ([SampleColNo], [PathoBillId], [CollectionId], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (2, 37, N'24323165221', 0, CAST(N'2023-03-28' AS Date), NULL, CAST(N'2023-03-28' AS Date), 0)
INSERT [dbo].[TBL_CollectionNo] ([SampleColNo], [PathoBillId], [CollectionId], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (3, 28, N'2132317559', 0, CAST(N'2023-03-28' AS Date), NULL, CAST(N'2023-03-28' AS Date), 0)
INSERT [dbo].[TBL_CollectionNo] ([SampleColNo], [PathoBillId], [CollectionId], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (4, 6, N'1647328292', 0, CAST(N'2023-03-28' AS Date), NULL, CAST(N'2023-03-28' AS Date), 0)
INSERT [dbo].[TBL_CollectionNo] ([SampleColNo], [PathoBillId], [CollectionId], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (5, 39, N'28323153219', 0, CAST(N'2023-03-28' AS Date), NULL, CAST(N'2023-03-28' AS Date), 0)
INSERT [dbo].[TBL_CollectionNo] ([SampleColNo], [PathoBillId], [CollectionId], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (6, 40, N'28323154439', 0, CAST(N'2023-03-28' AS Date), NULL, CAST(N'2023-03-28' AS Date), 0)
INSERT [dbo].[TBL_CollectionNo] ([SampleColNo], [PathoBillId], [CollectionId], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (7, 47, N'28323164239', 0, CAST(N'2023-03-28' AS Date), NULL, CAST(N'2023-03-28' AS Date), 0)
INSERT [dbo].[TBL_CollectionNo] ([SampleColNo], [PathoBillId], [CollectionId], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (8, 50, N'28323182653', 0, CAST(N'2023-03-29' AS Date), NULL, CAST(N'2023-03-29' AS Date), 0)
INSERT [dbo].[TBL_CollectionNo] ([SampleColNo], [PathoBillId], [CollectionId], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [DeletedFlag]) VALUES (9, 51, N'29323162338', 0, CAST(N'2023-03-29' AS Date), NULL, CAST(N'2023-03-29' AS Date), 0)
SET IDENTITY_INSERT [dbo].[TBL_CollectionNo] OFF
GO
ALTER TABLE [dbo].[M_PL_BrandName] ADD  CONSTRAINT [DF_M_PL_BrandName_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[M_PL_BrandName] ADD  CONSTRAINT [DF_M_PL_BrandName_UpdatedOn]  DEFAULT (getdate()) FOR [UpdatedOn]
GO
ALTER TABLE [dbo].[M_PL_BrandName] ADD  CONSTRAINT [DF_M_PL_BrandName_DeletedFlag]  DEFAULT ((0)) FOR [DeletedFlag]
GO
ALTER TABLE [dbo].[M_PL_ClientMaster] ADD  CONSTRAINT [DF_ClientMast_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[M_PL_ClientMaster] ADD  CONSTRAINT [DF_ClientMast_DeletedFlag]  DEFAULT ((0)) FOR [DeletedFlag]
GO
ALTER TABLE [dbo].[M_PL_Configure_tbl] ADD  CONSTRAINT [DF_M_PL_Configure_tbl_DeletedFlag]  DEFAULT ((0)) FOR [DeletedFlag]
GO
ALTER TABLE [dbo].[M_PL_DepartmentMaster] ADD  CONSTRAINT [DF_M_PL_DepartmentMaster_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[M_PL_DepartmentMaster] ADD  CONSTRAINT [DF_M_PL_DepartmentMaster_DeletedFlag]  DEFAULT ((0)) FOR [DeletedFlag]
GO
ALTER TABLE [dbo].[M_PL_DesignationMaster] ADD  CONSTRAINT [DF_M_PL_DesignationMaster_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[M_PL_DesignationMaster] ADD  CONSTRAINT [DF_M_PL_DesignationMaster_DeletedFlag]  DEFAULT ((0)) FOR [DeletedFlag]
GO
ALTER TABLE [dbo].[M_PL_DignosisCatagory] ADD  CONSTRAINT [DF_M_PL_DignosisCatagory_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[M_PL_DignosisCatagory] ADD  CONSTRAINT [DF_M_PL_DignosisCatagory_UpdatedOn]  DEFAULT (getdate()) FOR [UpdatedOn]
GO
ALTER TABLE [dbo].[M_PL_DignosisCatagory] ADD  CONSTRAINT [DF_M_PL_DignosisCatagory_DeletedFlag]  DEFAULT ((0)) FOR [DeletedFlag]
GO
ALTER TABLE [dbo].[M_PL_DignosisMaster] ADD  CONSTRAINT [DF_M_PL_DignosisMaster_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[M_PL_DignosisMaster] ADD  CONSTRAINT [DF_M_PL_DignosisMaster_DeletedFlag]  DEFAULT ((0)) FOR [DeletedFlag]
GO
ALTER TABLE [dbo].[M_PL_DoctorMaster] ADD  CONSTRAINT [DF_M_PL_DoctorMaster_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[M_PL_DoctorMaster] ADD  CONSTRAINT [DF_M_PL_DoctorMaster_DeletedFlag]  DEFAULT ((0)) FOR [DeletedFlag]
GO
ALTER TABLE [dbo].[M_PL_DoseMaster] ADD  CONSTRAINT [DF_M_PL_DoseMaster_DeletedFlag]  DEFAULT ((0)) FOR [DeletedFlag]
GO
ALTER TABLE [dbo].[M_PL_Doses] ADD  CONSTRAINT [DF_M_PL_Doses_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[M_PL_Doses] ADD  CONSTRAINT [DF_M_PL_Doses_UpdatedOn]  DEFAULT (getdate()) FOR [UpdatedOn]
GO
ALTER TABLE [dbo].[M_PL_Doses] ADD  CONSTRAINT [DF_M_PL_Doses_DeletedFlag]  DEFAULT ((0)) FOR [DeletedFlag]
GO
ALTER TABLE [dbo].[M_PL_HospitalMaster] ADD  CONSTRAINT [DF_M_PL_HospitalMaster_DeletedFlag]  DEFAULT ((0)) FOR [DeletedFlag]
GO
ALTER TABLE [dbo].[M_PL_HsnCode] ADD  CONSTRAINT [DF_M_PL_HsnCode_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[M_PL_HsnCode] ADD  CONSTRAINT [DF_M_PL_HsnCode_UpdatedOn]  DEFAULT (getdate()) FOR [UpdatedOn]
GO
ALTER TABLE [dbo].[M_PL_HsnCode] ADD  CONSTRAINT [DF_M_PL_HsnCode_DeletedFlag]  DEFAULT ((0)) FOR [DeletedFlag]
GO
ALTER TABLE [dbo].[M_PL_LABTEST] ADD  CONSTRAINT [DF_M_PL_LABTEST_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[M_PL_LABTEST] ADD  CONSTRAINT [DF_M_PL_LABTEST_UpdatedOn]  DEFAULT (getdate()) FOR [UpdatedOn]
GO
ALTER TABLE [dbo].[M_PL_LABTEST] ADD  CONSTRAINT [DF_M_PL_LABTEST_DeletedFlag]  DEFAULT ((0)) FOR [DeletedFlag]
GO
ALTER TABLE [dbo].[M_PL_MadicineCatagory] ADD  CONSTRAINT [DF_M_PL_MadicineCatagory_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[M_PL_MadicineCatagory] ADD  CONSTRAINT [DF_M_PL_MadicineCatagory_UpdatedOn]  DEFAULT (getdate()) FOR [UpdatedOn]
GO
ALTER TABLE [dbo].[M_PL_MadicineCatagory] ADD  CONSTRAINT [DF_M_PL_MadicineCatagory_DeletedFlag]  DEFAULT ((0)) FOR [DeletedFlag]
GO
ALTER TABLE [dbo].[M_PL_MadicineSubCatagory] ADD  CONSTRAINT [DF_M_PL_MadicineSubCatagory_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[M_PL_MadicineSubCatagory] ADD  CONSTRAINT [DF_M_PL_MadicineSubCatagory_UpdatedOn]  DEFAULT (getdate()) FOR [UpdatedOn]
GO
ALTER TABLE [dbo].[M_PL_MadicineSubCatagory] ADD  CONSTRAINT [DF_M_PL_MadicineSubCatagory_DeletedFlag]  DEFAULT ((0)) FOR [DeletedFlag]
GO
ALTER TABLE [dbo].[M_PL_MedicineMaster] ADD  CONSTRAINT [DF_M_PL_MedicineMaster_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[M_PL_MedicineMaster] ADD  CONSTRAINT [DF_M_PL_MedicineMaster_DeletedFlag]  DEFAULT ((0)) FOR [DeletedFlag]
GO
ALTER TABLE [dbo].[M_PL_MenuTable] ADD  CONSTRAINT [DF_M_PL_MenuTable_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[M_PL_MenuTable] ADD  CONSTRAINT [DF_M_PL_MenuTable_UpdatedOn]  DEFAULT (getdate()) FOR [UpdatedOn]
GO
ALTER TABLE [dbo].[M_PL_MenuTable] ADD  CONSTRAINT [DF_M_PL_MenuTable_DeletedFlag]  DEFAULT ((0)) FOR [DeletedFlag]
GO
ALTER TABLE [dbo].[M_PL_PatientMaster] ADD  CONSTRAINT [DF_tbl_PatientMaster_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[M_PL_PatientMaster] ADD  CONSTRAINT [DF_tbl_PatientMaster_DeletedFlag]  DEFAULT ((0)) FOR [DeletedFlag]
GO
ALTER TABLE [dbo].[M_PL_PatientMasterNew] ADD  CONSTRAINT [DF_M_PL_PatientMasterNew_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[M_PL_PatientMasterNew] ADD  CONSTRAINT [DF_M_PL_PatientMasterNew_UpdatedOn]  DEFAULT (getdate()) FOR [UpdatedOn]
GO
ALTER TABLE [dbo].[M_PL_PatientMasterNew] ADD  CONSTRAINT [DF_M_PL_PatientMasterNew_DeletedFlag]  DEFAULT ((0)) FOR [DeletedFlag]
GO
ALTER TABLE [dbo].[M_PL_PermissionTable] ADD  CONSTRAINT [DF_M_PL_PermissionTable_IsChecked]  DEFAULT ((0)) FOR [IsChecked]
GO
ALTER TABLE [dbo].[M_PL_PermissionTable] ADD  CONSTRAINT [DF_M_PL_PermissionTable_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[M_PL_PermissionTable] ADD  CONSTRAINT [DF_M_PL_PermissionTable_UpdatedOn]  DEFAULT (getdate()) FOR [UpdatedOn]
GO
ALTER TABLE [dbo].[M_PL_PermissionTable] ADD  CONSTRAINT [DF_M_PL_PermissionTable_DeletedFlag]  DEFAULT ((0)) FOR [DeletedFlag]
GO
ALTER TABLE [dbo].[M_PL_RoleMaster] ADD  CONSTRAINT [DF_tbl_RoleMaster_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[M_PL_RoleMaster] ADD  CONSTRAINT [DF_tbl_RoleMaster_UpdatedOn]  DEFAULT (getdate()) FOR [UpdatedOn]
GO
ALTER TABLE [dbo].[M_PL_RoleMaster] ADD  CONSTRAINT [DF_tbl_RoleMaster_DeletedFlag]  DEFAULT ((0)) FOR [DeletedFlag]
GO
ALTER TABLE [dbo].[M_PL_Slot_Master] ADD  CONSTRAINT [DF_M_PL_Slot_Master_DeletedFlag]  DEFAULT ((0)) FOR [DeletedFlag]
GO
ALTER TABLE [dbo].[M_PL_SlotMapping] ADD  CONSTRAINT [DF_M_PL_SlotMapping_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[M_PL_SlotMapping] ADD  CONSTRAINT [DF_M_PL_SlotMapping_UpdatedOn]  DEFAULT (getdate()) FOR [UpdatedOn]
GO
ALTER TABLE [dbo].[M_PL_SlotMapping] ADD  CONSTRAINT [DF_M_PL_SlotMapping_DeletedFlag]  DEFAULT ((0)) FOR [DeletedFlag]
GO
ALTER TABLE [dbo].[M_PL_SubMenuTable] ADD  CONSTRAINT [DF_M_PL_SubMenuTable_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[M_PL_SubMenuTable] ADD  CONSTRAINT [DF_M_PL_SubMenuTable_UpdatedOn]  DEFAULT (getdate()) FOR [UpdatedOn]
GO
ALTER TABLE [dbo].[M_PL_SubMenuTable] ADD  CONSTRAINT [DF_M_PL_SubMenuTable_DeletedFlag]  DEFAULT ((0)) FOR [DeletedFlag]
GO
ALTER TABLE [dbo].[M_PL_TestMast] ADD  CONSTRAINT [DF_M_PL_TestMast_DeletedFlag]  DEFAULT ((0)) FOR [DeletedFlag]
GO
ALTER TABLE [dbo].[M_PL_TestType] ADD  CONSTRAINT [DF_TestType_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[M_PL_TestType] ADD  CONSTRAINT [DF_TestType_DeletedFlag]  DEFAULT ((0)) FOR [DeletedFlag]
GO
ALTER TABLE [dbo].[M_PL_Unit] ADD  CONSTRAINT [DF_M_PL_Unit_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[M_PL_Unit] ADD  CONSTRAINT [DF_M_PL_Unit_UpdatedOn]  DEFAULT (getdate()) FOR [UpdatedOn]
GO
ALTER TABLE [dbo].[M_PL_Unit] ADD  CONSTRAINT [DF_M_PL_Unit_DeletedFlag]  DEFAULT ((0)) FOR [DeletedFlag]
GO
ALTER TABLE [dbo].[M_PL_USER] ADD  CONSTRAINT [DF_M_PL_USER_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[M_PL_USER] ADD  CONSTRAINT [DF_M_PL_USER_DeletedFlag]  DEFAULT ((0)) FOR [DeletedFlag]
GO
ALTER TABLE [dbo].[T_PL_DignosisConfiguration] ADD  CONSTRAINT [DF_T_PL_DignosisConfiguration_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[T_PL_DignosisConfiguration] ADD  CONSTRAINT [DF_T_PL_DignosisConfiguration_UpdatedOn]  DEFAULT (getdate()) FOR [UpdatedOn]
GO
ALTER TABLE [dbo].[T_PL_DignosisConfiguration] ADD  CONSTRAINT [DF_T_PL_DignosisConfiguration_DeletedFlag]  DEFAULT ((0)) FOR [DeletedFlag]
GO
ALTER TABLE [dbo].[T_PL_PathoBill] ADD  CONSTRAINT [DF_T_PL_PathoBill_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[T_PL_PathoBill] ADD  CONSTRAINT [DF_T_PL_PathoBill_UpdatedOn]  DEFAULT (getdate()) FOR [UpdatedOn]
GO
ALTER TABLE [dbo].[T_PL_PathoBill] ADD  CONSTRAINT [DF_T_PL_PathoBill_DeletedFlag]  DEFAULT ((0)) FOR [DeletedFlag]
GO
ALTER TABLE [dbo].[T_PL_PathoBill] ADD  CONSTRAINT [DF_T_PL_PathoBill_CollectionFlag]  DEFAULT ((0)) FOR [CollectionFlag]
GO
ALTER TABLE [dbo].[T_PL_PathoReportCollection] ADD  CONSTRAINT [DF_T_PL_PathoReportCollection_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[T_PL_PathoReportCollection] ADD  CONSTRAINT [DF_T_PL_PathoReportCollection_UpdatedOn]  DEFAULT (getdate()) FOR [UpdatedOn]
GO
ALTER TABLE [dbo].[T_PL_PathoReportCollection] ADD  CONSTRAINT [DF_T_PL_PathoReportCollection_DeletedFlag]  DEFAULT ((0)) FOR [DeletedFlag]
GO
ALTER TABLE [dbo].[T_PL_PatientAppointment] ADD  CONSTRAINT [DF_T_PL_PatientAppointment_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[T_PL_PatientAppointment] ADD  CONSTRAINT [DF_T_PL_PatientAppointment_UpdatedOn]  DEFAULT (getdate()) FOR [UpdatedOn]
GO
ALTER TABLE [dbo].[T_PL_PatientAppointment] ADD  CONSTRAINT [DF_T_PL_PatientAppointment_DeletedFlag]  DEFAULT ((0)) FOR [DeletedFlag]
GO
ALTER TABLE [dbo].[T_PL_PrescribedDignosis] ADD  CONSTRAINT [DF_T_PL_PrescribedDignosis_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[T_PL_PrescribedDignosis] ADD  CONSTRAINT [DF_T_PL_PrescribedDignosis_DeletedFlag]  DEFAULT ((0)) FOR [DeletedFlag]
GO
ALTER TABLE [dbo].[T_PL_PrescribedMedicine] ADD  CONSTRAINT [DF_T_PL_PrescribedMedicine_DeletedFlag]  DEFAULT ((0)) FOR [DeletedFlag]
GO
ALTER TABLE [dbo].[T_PL_PrescribedMedicine] ADD  CONSTRAINT [DF_T_PL_PrescribedMedicine_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[T_PL_PrescribedMedicine] ADD  CONSTRAINT [DF_T_PL_PrescribedMedicine_UpdatedOn]  DEFAULT (getdate()) FOR [UpdatedOn]
GO
ALTER TABLE [dbo].[T_PL_PrescriptionDetails] ADD  CONSTRAINT [DF_T_PL_PrescriptionDetails_DeletedFlag]  DEFAULT ((0)) FOR [DeletedFlag]
GO
ALTER TABLE [dbo].[T_PL_SampleCollection] ADD  CONSTRAINT [DF_T_PL_SampleCollection_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[T_PL_SampleCollection] ADD  CONSTRAINT [DF_T_PL_SampleCollection_UpdatedOn]  DEFAULT (getdate()) FOR [UpdatedOn]
GO
ALTER TABLE [dbo].[T_PL_SampleCollection] ADD  CONSTRAINT [DF_T_PL_SampleCollection_DeletedFlag]  DEFAULT ((0)) FOR [DeletedFlag]
GO
ALTER TABLE [dbo].[T_PL_TestTable] ADD  CONSTRAINT [DF_T_PL_TestTable_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[T_PL_TestTable] ADD  CONSTRAINT [DF_T_PL_TestTable_UpdatedOn]  DEFAULT (getdate()) FOR [UpdatedOn]
GO
ALTER TABLE [dbo].[T_PL_TestTable] ADD  CONSTRAINT [DF_T_PL_TestTable_DeletedFlag]  DEFAULT ((0)) FOR [DeletedFlag]
GO
ALTER TABLE [dbo].[TBL_CollectionNo] ADD  CONSTRAINT [DF_TBL_CollectionNo_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[TBL_CollectionNo] ADD  CONSTRAINT [DF_TBL_CollectionNo_UpdatedOn]  DEFAULT (getdate()) FOR [UpdatedOn]
GO
ALTER TABLE [dbo].[TBL_CollectionNo] ADD  CONSTRAINT [DF_TBL_CollectionNo_DeletedFlag]  DEFAULT ((0)) FOR [DeletedFlag]
GO
/****** Object:  StoredProcedure [dbo].[TSP_PL_PatientAppointment]    Script Date: 20-04-2023 17:50:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[TSP_PL_PatientAppointment]
    ( 
@AppointmentId int=0,
@RegdNo int=0,
@DateOfAppointment date=null,
@HospitalID int=0,
@DepartmentId int=0,
@DoctorId int=0,
@SlotID int=0,
@PatientID int=0,
@PatientName varchar(50)=null,
@MobileNo  varchar(50)=null,
@Gender varchar(50)=null,
@Email  varchar(50)=null,
@Age int=0,
@DOB date=null,
@Address  varchar(50)=null,
@City varchar(50)=null,
@CreatedBy int =0,
@action varchar(100),
@loggedinuser int=0,
@Password varchar(100)=null,
@PMSGOUT varchar(100) output
)
as
begin
if (@action='Insert')
Begin
      IF Exists (Select 1 from T_PL_PatientAppointment where DeletedFlag=0 AND HospitalID=@HospitalID AND DepartmentId=@DepartmentId AND DoctorId=@DoctorId AND SlotID=@SlotID  AND PatientID=@PatientID)
BEGIN
SET @PMSGOUT='4'; 
END
--ELSE IF Exists ((Select count(1) from T_PL_PatientAppointment where DeletedFlag=0 and  SlotID=@SlotID) (select sum(Capacity) from M_PL_Slot_Master where DeletedFlag=0 and SlotID=@SlotID))

--BEGIN
-- SET @PMSGOUT='3'; 
--END
ELSE
BEGIN
    insert into M_PL_USER(UserName, Password, FullName, Email, Mobile, Gender, Address,Age,City,DesignationId,DepartmentId,HospitalID,CreatedOn, CreatedBy)
    values(@Email,@Password,@PatientName,@Email,@MobileNo,@Gender,@Address,@Age,@City,3,@DepartmentId,@HospitalID,getdate(),@loggedinuser)
                --after inserting the patient in the user table sceduling appointment below
               insert into T_PL_PatientAppointment(DateOfAppointment,HospitalID,DepartmentId,SlotID,DoctorId,PatientID,RegdNo,CreatedBy)values(@DateOfAppointment,@HospitalID,@DepartmentId,@SlotID,@DoctorId,SCOPE_IDENTITY(),-- return the last IDENTITY value in a table under the current scope
   (isnull((select count(1) from T_PL_PatientAppointment where  HospitalID=@HospitalID and DepartmentId=@DepartmentId and DoctorId=@DoctorId and SlotID=@SlotID),0) + 1) ,@CreatedBy)
           set @PMSGOUT='1';
END 
End
    else if(@action='InsertAndUpdate')
Begin
    IF Exists (Select 1 from T_PL_PatientAppointment where DeletedFlag=0 AND HospitalID=@HospitalID AND  DepartmentId=@DepartmentId AND DoctorId=@DoctorId AND SlotID=@SlotID AND PatientID=@PatientID AND AppointmentId !=@AppointmentId )
BEGIN
SET @PMSGOUT='4'; 
END
ELSE
BEGIN
     insert into T_PL_PatientAppointment(DateOfAppointment,HospitalID ,DepartmentId,DoctorId,SlotID,PatientID, CreatedBy)values(@DateOfAppointment,@HospitalID,@DepartmentId,@DoctorId,@SlotID,@PatientID,@CreatedBy)
              set @PMSGOUT='2';
END 

   
End
    else if(@action='SelectAll')
Begin
    select pa.RegdNo,pa.AppointmentId,pa.HospitalID, pa.DepartmentId,pa.DoctorId,pa.SlotID,pa.PatientID,s.Slot_TimeFrom,s.Slot_TimeTo,ud.FullName,pa.DateOfAppointment,
h.HospitalName,s.SlotName,ud.UserName as PatientName ,up.UserName as DoctorName
from  T_PL_PatientAppointment pa
inner join M_PL_HospitalMaster h on h.HospitalID=pa.HospitalID
inner join M_PL_DepartmentMaster d on d.DepartmentId=pa.DepartmentId
inner join M_PL_User ud on ud.UserId=pa.PatientID
inner join M_PL_Slot_Master s on s.SlotID=pa.SlotID
inner join M_PL_User up on up.UserId=pa.DoctorId
    where  pa.DeletedFlag=0 and  s.DeletedFlag=0 and  h.DeletedFlag=0  and DateOfAppointment = cast(getdate() as Date) 
End
    else if(@action='SelectOne')
Begin
   select AppointmentId,DateOfAppointment,HospitalID,DepartmentId ,DoctorId,SlotID,PatientID  from  T_PL_PatientAppointment  
where  DeletedFlag=0  and AppointmentId=@AppointmentId
End
    else if(@action='Delete')
Begin
update T_PL_PatientAppointment set DeletedFlag=1  where AppointmentId=@AppointmentId set @PMSGOUT='3';
End
else if(@action='DoctorByDeptId')
Begin
select  UserId,UserName from M_PL_USER where DeletedFlag=0 and DesignationId=2 and DepartmentId=@DepartmentId;
End
else if(@action='SlotByHostnDocId')
Begin
select sm.SlotID,s.SlotName,s.Slot_TimeFrom,s.Slot_TimeTo
from  M_PL_SlotMapping sm
inner join M_PL_Slot_Master s on s.SlotID=sm.SlotID
    where  sm.DeletedFlag=0 and  s.DeletedFlag=0 and (s.Capacity-isnull((select count(1)from T_PL_PatientAppointment where SlotID=sm.SlotID and DateOfAppointment= @DateOfAppointment),0))>0
and sm.DoctorId=@DoctorId and sm.HospitalID=@HospitalID and sm.DaysId=DATEPART(WEEKDAY, @DateOfAppointment)
End
else if(@action='AvlCaptBySIdNDOA')
Begin
select (s.Capacity-isnull((select count(1)from T_PL_PatientAppointment where SlotID=@SlotID and DateOfAppointment=@DateOfAppointment),0)) as AvailableCapacity 
from  M_PL_SlotMapping sm
inner join M_PL_Slot_Master s on s.SlotID=sm.SlotID
    where  sm.DeletedFlag=0 and  s.DeletedFlag=0 and (s.Capacity-isnull((select count(1)from T_PL_PatientAppointment where SlotID=SlotID and DateOfAppointment=@DateOfAppointment),0))>0
and sm.DaysId=DATEPART(WEEKDAY, @DateOfAppointment)
End
else if (@action='DoctorNameByHAndDId')
	begin
select h. HospitalID,h.HospitalName,u.DepartmentId,d.Department,u.UserId ,u.UserName ,up.UserName as DoctorName
	from M_PL_USER u
	inner join M_PL_HospitalMaster h on h.HospitalID=u.HospitalID
	inner join M_PL_DepartmentMaster d on d.DepartmentId=u.DepartmentId
	inner join M_PL_User up on up.UserId=u.UserId
	where u.HospitalID=@HospitalID and u.DepartmentId=@DepartmentId  and u.DeletedFlag=0 and h.DeletedFlag=0
	and d.DeletedFlag=0 
	end
end
GO
/****** Object:  StoredProcedure [dbo].[Usp_DoseMaster]    Script Date: 20-04-2023 17:50:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[Usp_DoseMaster]( 
@DoseId int=0,
@SubCatagoryId int=0,
@CatagoryId int=0,
@DoseName varchar(50)=null,
@MedicineId int=0,
@MedicineName varchar(50)=null,
@UserId int=0,
@action varchar(100),
@PMSGOUT varchar(100) output
)
as
begin
--insert into M_PL_DoseMaster(SubCatagoryId,MedicineId,DoseName,CreatedBy,CreatedOn) 
--		values(@SubCatagoryId,@MedicineId,@DoseName,@UserId,getdate())
if(@action='InsertDose')
	begin
		if(@DoseId=0)
				begin
						 IF Exists (Select 1 from M_PL_DoseMaster where DeletedFlag=0 AND DoseName=@DoseName)
											begin
											   SET @PMSGOUT='4'; 
											end
						 else
							 begin
									--insert into M_PL_DoseMaster(SubCatagoryId,MedicineId,DoseName,CreatedBy,CreatedOn)
									--values(@SubCatagoryId,@MedicineId,@DoseName,@UserId,getdate())
									insert into M_PL_DoseMaster(CatagoryId,DoseName,CreatedBy,CreatedOn)
									values(@CatagoryId,@DoseName,@UserId,getdate())
									set @PMSGOUT='1';
							 end		
				end
		else		
		      begin
		                IF Exists (Select 1 from M_PL_DoseMaster where DeletedFlag=0 AND DoseName=@DoseName and DoseId!=@DoseId)
											begin
											   SET @PMSGOUT='4'; 
											end
			   else
		    
			   begin
						--update M_PL_DoseMaster set MedicineId=@MedicineId,DoseName=@DoseName,UpdatedBy=@UserId,UpdatedOn=getDate() where DoseId=@DoseId
						update M_PL_DoseMaster set @CatagoryId=@CatagoryId,DoseName=@DoseName,UpdatedBy=@UserId,UpdatedOn=getDate() where DoseId=@DoseId
						set @PMSGOUT='2';
			   end
		    end				
						  
	end
else if(@action='GetSubCatagoryNameByMedicineId')
begin
    declare @od int
    select @od=SubCatagoryId from [M_PL_MedicineMaster] where id=@MedicineId----id:Medicine ID
	SELECT top 1 M_PL_MadicineSubCatagory.SubCatagoryName
    FROM  M_PL_MadicineSubCatagory INNER JOIN M_PL_MedicineMaster ON 
    M_PL_MadicineSubCatagory.SubCatagoryId = M_PL_MedicineMaster.SubCatagoryId where M_PL_MedicineMaster.SubCatagoryId=@od
    
end
else if(@action='BindDoseName')
begin
    declare @odo int
    select @od=SubCatagoryId from [M_PL_MedicineMaster] where Name=@MedicineName
    select DoseName from  M_PL_DoseMaster where SubCatagoryId=@odo
end
 else if(@action='D')
		 begin
		 update M_PL_DoseMaster set DeletedFlag=1  where DoseId=@DoseId
		 set @PMSGOUT='3';
		 end
    else if(@action='S')
		begin
			   select *  from M_PL_DoseMaster where DoseId=@DoseId
		end
    else if(@action='A')
	begin

   --      SELECT    DoseId,M_PL_DoseMaster.MedicineId, M_PL_MedicineMaster.Name, M_PL_DoseMaster.DoseName
   --      FROM   M_PL_DoseMaster INNER JOIN
   --      M_PL_MedicineMaster ON M_PL_DoseMaster.MedicineId = M_PL_MedicineMaster.Id and M_PL_DoseMaster.DeletedFlag=0
		 --and
		 --case when ISNULL(@MedicineId,'0') ='0'then ISNULL(@MedicineId,'0') else M_PL_DoseMaster.MedicineId end=ISNULL(@MedicineId,'0')
		 
         SELECT    DoseId,M_PL_DoseMaster.CatagoryId, M_PL_MadicineCatagory.CatagoryName, M_PL_DoseMaster.DoseName
         FROM   M_PL_DoseMaster INNER JOIN
         M_PL_MadicineCatagory ON M_PL_DoseMaster.CatagoryId = M_PL_MadicineCatagory.CatagoryId and M_PL_DoseMaster.DeletedFlag=0
		 and case when ISNULL(@CatagoryId,'0') ='0' then ISNULL(@CatagoryId,'0') else M_PL_DoseMaster.CatagoryId end=ISNULL(@CatagoryId,'0')
    end
    else if(@action='Bind_Medicine')
          select id,Name  from M_PL_MedicineMaster where DeletedFlag=0 
    else if(@action='Bind_DosesByMed')
          select M_PL_DoseMaster.DoseId,M_PL_DoseMaster.DoseName from M_PL_DoseMaster 
		  join M_PL_MedicineMaster on M_PL_DoseMaster.CatagoryId =M_PL_MedicineMaster.CatagoryId 
		  where M_PL_DoseMaster.DeletedFlag=0 and M_PL_MedicineMaster.Id=@MedicineId

end

GO
/****** Object:  StoredProcedure [dbo].[Usp_LabTest]    Script Date: 20-04-2023 17:50:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[Usp_LabTest](
@LabTestId int=0,
@LabTestName varchar(100)=null,
@DignosisID int=0,
@UserId int =0,
@Price varchar(100)=null,
@action varchar(100),
@PMSGOUT varchar(100) output)
as begin
if(@action='I')
begin
 IF Exists (Select 1 from M_PL_LABTEST where DeletedFlag=0 AND LabTestName=@LabTestName )
			BEGIN
				SET @PMSGOUT='4';			
			END
  ELSE
begin
insert into M_PL_LABTEST(LabTestName,Price,CreatedBy,DignosisID) values(@LabTestName,@Price,@UserId,@DignosisID)
set @PMSGOUT='1';
end
end
else if(@action='U')

Begin
	IF Exists (Select 1 from M_PL_LABTEST where DeletedFlag=0 and LabTestName=@LabTestName and LabTestId!=@LabTestId )
			BEGIN
				SET @PMSGOUT='4';			
			END
  ELSE
begin
Update M_PL_LABTEST set LabTestName=@LabTestName,
DignosisID=@DignosisID,Price=@Price
where LabTestId=@LabTestId
set @PMSGOUT='2';
end
end

else if(@action='SelectAll')
select a.LabTestId,a.LabTestName,b.Name ,a.Price
from M_PL_LABTEST a  inner join M_PL_DignosisMaster b on a.DignosisID=b.DignosisID
where a.DeletedFlag=0 and b.DeletedFlag=0 
else if(@action='SelectOne')
select LabTestId,LabTestName,DignosisID,Price  from  M_PL_LABTEST where DeletedFlag=0  and LabTestId=@LabTestId 
else if(@action='D')
begin
update M_PL_LABTEST set DeletedFlag=1 where LabTestId=@LabTestId
set @PMSGOUT='3';
end
end
GO
/****** Object:  StoredProcedure [dbo].[USP_MPL_USER]    Script Date: 20-04-2023 17:50:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[USP_MPL_USER]
(
@UserId int=0,
@DOB date=null,
@UserName varchar(50)=NULL,
@Password varchar(50)=NULL,
@FullName varchar(50)='',
@Email varchar(50)=NULL,
@Mobile varchar(50)=NULL,
@City varchar(40)=null,
@DesignationId int=0,
@Designation varchar(40)=null,
@DepartmentId int=0,
@HospitalID int=0,
@Address1 varchar(300)=null,
@Gender varchar(50)=NULL,
@Address varchar(500)=NULL,
@mode varchar(10),
@PMSGOUT varchar(100) output
)
as
begin
if(@mode='IU')
begin
   if(@UserId=0)
       begin
	        IF Exists (Select 1 from M_PL_USER where DeletedFlag=0 AND UserName=@UserName)
				begin
				   SET @PMSGOUT='4'; 
				end
			else
			begin
			   insert into M_PL_USER(UserName, Password, FullName, Email, Mobile, Gender, Address,DOB,City,DesignationId,DepartmentId,HospitalID,Address1,CreatedOn, CreatedBy)
			   values(@UserName,@Password,@FullName,@Email,@Mobile,@Gender,@Address,@DOB,@city,@DesignationId,@DepartmentId,@HospitalID,@Address1,getdate(),@UserId)
			   set @PMSGOUT='1';
		    end
	   end
   else
	   begin
	   IF Exists (Select 1 from M_PL_USER where DeletedFlag=0 AND UserName=@UserName and UserId!=@UserId)
				begin
				   SET @PMSGOUT='4'; 
				end
		   else
		   begin
			   update M_PL_USER set
			   UserName=@UserName,
			   Password=@Password,FullName=@FullName,Email=@Email,Mobile=@Mobile,Gender=@Gender,
			   Address=@Address,DOB=@DOB,City=@City,DesignationId=@DesignationId,HospitalID=@HospitalID,
			   Address1=@Address1,UpdatedOn=getdate(),UpdatedBy=@UserId where UserId=@UserId
			   set @PMSGOUT='2';
		   end
		end
end
 else if(@mode='D')
 begin
 update M_PL_USER set DeletedFlag=1  where UserId=@UserId
 set @PMSGOUT='3';
 end
else if(@mode='S')
 select UserId,UserName,Password,FullName,Email,Mobile,Gender,Address,City,DesignationId,DepartmentId,HospitalID,Address1
 ,convert(varchar,DOB,103) as DOB from M_PL_USER where UserId=@UserId
 else if(@mode='A')
 begin
	   select UserId,UserName,FullName,Email,Mobile,Gender,DATEDIFF(year,DOB, getdate())as DOB,d.Designation  from M_PL_USER u,M_PL_DesignationMaster d where u.DeletedFlag=0 and UserName!='Admin' and
	    u.DesignationId=d.DesignationId and
		case when ISNULL(@FullName,'') = '' then ISNULL(@FullName,'') else FullName end=ISNULL(@FullName,'')
		and case when ISNULL(@DesignationId,'0') ='0'then ISNULL(@DesignationId,'0') else d.DesignationId end=ISNULL(@DesignationId,'0')
		 order by UserId desc;
 end
 else if(@mode='Bind')
   begin
   select RoleId, RoleName  from M_PL_RoleMaster where DeletedFlag=0
   end

 
 end




 
	
GO
/****** Object:  StoredProcedure [dbo].[USP_PatientMaster]    Script Date: 20-04-2023 17:50:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[USP_PatientMaster]
	(
@UserId int=0,
@Age int=0,
@UserName varchar(50)=NULL,
@Password varchar(50)=NULL,
@FullName varchar(50)='',
@Email varchar(50)=NULL,
@Mobile varchar(50)=NULL,
@City varchar(40)=null,
@DesignationId int=0,
@Designation varchar(40)=null,
@DepartmentId int=0,
@HospitalID int=0,
@Address1 varchar(300)=null,
@Gender varchar(50)=NULL,
@Address varchar(500)=NULL,
@PatientHistory varchar(500)=null,
@pname varchar(20)='',

@mode varchar(10),
@PMSGOUT varchar(100) output
	)
	as
	begin
	if(@mode='IU')
		begin
			  if(@UserId=0)
					begin
						 IF Exists (Select 1 from M_PL_USER where DeletedFlag=0 AND UserName=@UserName and DesignationId=3)
							begin
							   SET @PMSGOUT='4'; 
							end
						else
							begin
							
							   declare @uid int
							   select top 1 @uid=USERID from M_PL_USER order by USERID desc

							   insert into M_PL_USER(UserName, Password, FullName, Email, Mobile, Gender, Address,Age,City,DesignationId,DepartmentId,HospitalID,Address1,CreatedOn, CreatedBy)
							   values(@UserName,@Password,@FullName,@Email,@Mobile,@Gender,@Address,@Age,@city,3,@DepartmentId,@HospitalID,@Address1,getdate(),@UserId)
							   insert into M_PL_PatientMasterNew(UserId, PatientHistory,CreatedBy,UpdatedBy)
							   values(@uid+1,@PatientHistory,@uid+1,0)
			                
						
			                 set @PMSGOUT='1';
							end
					end
			  else 
			        begin
					   IF Exists (Select 1 from M_PL_USER where DeletedFlag=0 AND UserName=@UserName and UserId!=@UserId and DesignationId=3)
								begin
								   SET @PMSGOUT='4'; 
								end
							else
					
							begin
							   update M_PL_USER set UserName=@UserName,Password=@Password,FullName=@FullName,Email=@Email,Mobile=@Mobile,Gender=@Gender,Address=@Address,Age=@Age,City=@City,DesignationId=3,HospitalID=@HospitalID,Address1=@Address1,UpdatedOn=getdate(),UpdatedBy=@UserId where UserId=@UserId
							   update M_PL_PatientMasterNew set PatientHistory=@PatientHistory,UpdatedOn=getdate(),UpdatedBy=@UserId where UserId=@UserId
							   set @PMSGOUT='2';
								
							end
				   end

		end
			
	else if(@mode='A')
	begin
           if(@pname!='')

		        select l.UserId,l.UserName, l.Password, l.FullName, l.Email, l.Mobile, l.Gender, l.Address, l.Age, l.City, l.DesignationId, l.DepartmentId, l.HospitalID, l.Address1,d.PatientHistory 
				from  M_PL_USER l,M_PL_PatientMasterNew d  where l.UserId=d.UserId and FullName  like '%'+@pname+'%' and l.DeletedFlag=0  and l.DesignationId=3 order by UserId desc

                         else
                select l.UserId,l.UserName, l.Password, l.FullName, l.Email, l.Mobile, l.Gender, l.Address, l.Age, l.City, l.DesignationId, l.DepartmentId, l.HospitalID, l.Address1,d.PatientHistory 
				from  M_PL_USER l,M_PL_PatientMasterNew d  where l.UserId=d.UserId and l.DeletedFlag=0  and l.DesignationId=3 order by UserId desc

		
				
    end
	else if(@mode='S')
	 select l.UserId,l.UserName, l.Password, l.FullName, l.Email, l.Mobile, l.Gender, l.Address, l.Age, l.City, l.DesignationId, l.DepartmentId, l.HospitalID, l.Address1,d.PatientHistory 
				from  M_PL_USER l,M_PL_PatientMasterNew d  where l.UserId=d.UserId and l.DeletedFlag=0  and l.UserId=@UserId and l.DesignationId=3 order by UserId desc

	
	else if(@mode='D')
	begin
	    update M_PL_USER set DeletedFlag=1  where  UserId=@UserId
		 update M_PL_PatientMasterNew set DeletedFlag=1  where  UserId=@UserId
	    set @PMSGOUT='3';
	 end

	end



	

	


	



	
GO
/****** Object:  StoredProcedure [dbo].[USP_PL_ClientMast]    Script Date: 20-04-2023 17:50:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[USP_PL_ClientMast](
@ClintID int=0,
@Name varchar(100)=null ,
@Address varchar(100)=null,
@City varchar(50)=null,
@phoneno varchar(50)=null,
@WhatsAppNo varchar(50)=null,
@ReferByClientId int=0,
@UserId int=0,
@action varchar(10),
@PMSGOUT varchar(100) output)

as
begin
if(@action='I')
begin
 IF Exists (Select 1 from M_PL_ClientMaster where DeletedFlag=0 AND phoneno=@phoneno )
			BEGIN
				SET @PMSGOUT='4';			
			END
      else 
begin
insert into M_PL_ClientMaster(Name,Address,City,phoneno,WhatsAppNo,ReferByClientId,CreatedOn,CreatedBy) values(@Name,@Address,@City,@phoneno,@WhatsAppNo,@ReferByClientId,getdate(),@UserId)
set @PMSGOUT='1';
end
end

else if(@action='U')

Begin
	IF Exists (Select 1 from M_PL_ClientMaster where DeletedFlag=0 AND phoneno=@phoneno and @ClintID!=@ClintID )
			BEGIN
				SET @PMSGOUT='4';			
			END
		ELSE
begin

Update M_PL_ClientMaster set Name=@Name,Address=@Address,City=@City,phoneno=@phoneno,WhatsAppNo=@WhatsAppNo,ReferByClientId=@ReferByClientId,UpdatedOn=getdate(),UpdatedBy=@UserId where ClintID=@ClintID
set @PMSGOUT='2';
end
end
else if(@action='SelectAll')
select ClintID,Name,Address,City,phoneno,WhatsAppNo,ReferByClientId from M_PL_ClientMaster where DeletedFlag=0 
else if(@action='SelectOne')
select ClintID,Name,Address,City,phoneno,WhatsAppNo,ReferByClientId from M_PL_ClientMaster where DeletedFlag=0  and ClintID=@ClintID
else if(@action='D')
begin
update M_PL_ClientMaster set DeletedFlag=1 where ClintID=@ClintID
set @PMSGOUT='3';
end
end
GO
/****** Object:  StoredProcedure [dbo].[USP_PL_DDL]    Script Date: 20-04-2023 17:50:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[USP_PL_DDL]
   (	
    @HospitalID int=0,
	@Name varchar(50)=null,
	@action varchar(100)
	)
	as
	begin
	if (@action='GetAllDesg')
		Begin
		  Select DesignationId,Designation from M_PL_DesignationMaster where DeletedFlag=0;
		End
    else if(@action='GetAllDept')
		Begin
		  Select DepartmentId,Department from M_PL_DepartmentMaster where DeletedFlag=0;
		End
    else if(@action='GetAllHospital')
		Begin
		  Select HospitalID,HospitalName from M_PL_HospitalMaster where DeletedFlag=0;
		End
    else if(@action='GetAllSlotByHospital')
		Begin
		  Select SlotID,SlotName from M_PL_Slot_Master where DeletedFlag=0 and HospitalID=@HospitalID;
		End
    else if(@action='GetAllDoctor')
		Begin
		  Select UserId,UserName from M_PL_USER where DeletedFlag=0 and DesignationId=2;
		End
	else if(@action='GetAllDignosis')
	    begin
		SELECT  DignosisID, Name from M_PL_DignosisMaster where DeletedFlag=0
	    end
		else if(@action='GetAllMenu')
	    begin
		SELECT  MenuId, MenuName from M_PL_MenuTable where DeletedFlag=0
	    end
		else if(@action='GetAllLabTest')
	    begin
		SELECT  LabTestId, LabTestName from M_PL_LABTEST where DeletedFlag=0
	    end
    else if(@action='AutoFillMedicine')
	begin
		select Id,Name from M_PL_MedicineMaster 		
		where DeletedFlag=0 
   	end
	 else if(@action='AutoFillDoseMaster')
	begin
	--declare @od int
	--			select @od=Id from M_PL_MedicineMaster where Name=@Name
	--			select * from M_PL_DoseMaster where DeletedFlag=0 
		select   DoseId ,DoseName from M_PL_DoseMaster 		
		where DeletedFlag=0 
   	end
	end

	
GO
/****** Object:  StoredProcedure [dbo].[USP_PL_DepartmentMaster]    Script Date: 20-04-2023 17:50:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[USP_PL_DepartmentMaster]
(
@DepartmentId int=0,
@Department varchar (100) =NULL,
@CreatedBy int=0 ,
@action varchar(100),
@PMSGOUT varchar(100) output
)
as 
begin
	if (@action='DepartmentInsert')
	Begin
	    IF Exists (Select 1 from M_PL_DepartmentMaster where DeletedFlag=0 AND Department=@Department)
			BEGIN
				SET @PMSGOUT='4';			
			END
		ELSE
			BEGIN
                insert into M_PL_DepartmentMaster (Department,  CreatedBy)values(@Department,@CreatedBy)
	            set @PMSGOUT='1';
			END
	
	End
    else if(@action='DepartmentUpdate')
	Begin
	    IF Exists (Select 1 from M_PL_DepartmentMaster where DeletedFlag=0 AND Department=@Department AND DepartmentId !=@DepartmentId )
			BEGIN
				SET @PMSGOUT='4';			
			END
		ELSE
			BEGIN
			     update  M_PL_DepartmentMaster set Department=@Department,UpdatedOn=getdate(),UpdatedBy=@CreatedBy where DepartmentId=@DepartmentId;
	             set @PMSGOUT='2';
			END 
     
	 End
     else if(@action='DepartmentSelectAll')
	 Begin
     select DepartmentId,Department from  M_PL_DepartmentMaster 
	 where  DeletedFlag=0
	 and
	   case when ISNULL(@Department,'') = '' then ISNULL(@Department,'') else @Department end=ISNULL(@Department,'')
	 End
     else if(@action='DepartmentSelectOneById')
	 Begin
     select DepartmentId,Department from  M_PL_DepartmentMaster 
	 where  DeletedFlag=0 and DepartmentId=@DepartmentId
	 End
     else if(@action='DepartmentDelete')
	 Begin
     update M_PL_DepartmentMaster set DeletedFlag=1  where DepartmentId=@DepartmentId 
	  set @PMSGOUT='3';
	  End
end

SELECT * FROM M_PL_DepartmentMaster
--TRUNCATE TABLE M_PL_DepartmentMaster
GO
/****** Object:  StoredProcedure [dbo].[USP_PL_DesignationMaster]    Script Date: 20-04-2023 17:50:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[USP_PL_DesignationMaster]
(
@DesignationId  int =0,
@Designation  varchar (100)= NULL,
@CreatedBy int=0,
@action varchar(100),
@PMSGOUT varchar(100) output
)
as
begin
     if (@action='DesignationInsert')
	Begin
	     	  IF Exists (Select 1 from M_PL_DesignationMaster where DeletedFlag=0 AND Designation=@Designation)
			BEGIN
				SET @PMSGOUT='4';			
			END
		ELSE
			BEGIN
			   insert into M_PL_DesignationMaster (Designation, CreatedBy)values(@Designation,@CreatedBy)
	           set @PMSGOUT='1';
			END
	End
    else if(@action='DesignationUpdate')
	Begin
	     IF Exists (Select 1 from M_PL_DesignationMaster where DeletedFlag=0 AND Designation=@Designation AND DesignationId=@DesignationId )
			BEGIN
				SET @PMSGOUT='4';			
			END
		ELSE
			BEGIN
			     update  M_PL_DesignationMaster set Designation=@Designation,UpdatedOn=getdate(),UpdatedBy=@CreatedBy where DesignationId=@DesignationId;
	             set @PMSGOUT='2';
			END     
	 End
     else if(@action='DesignationSelectAll')
	 Begin
     select DesignationId,Designation from  M_PL_DesignationMaster 
	 where  DeletedFlag=0;
	 End
     else if(@action='DesignationSelectOneById')
	 Begin
     select DesignationId,Designation from  M_PL_DesignationMaster 
	 where  DeletedFlag=0 and DesignationId=@DesignationId
	 End
     else if(@action='DesignationDelete')
	 Begin
     update M_PL_DesignationMaster set DeletedFlag=1  where DesignationId=@DesignationId 
	  set @PMSGOUT='3';
	  End
	 end
GO
/****** Object:  StoredProcedure [dbo].[USP_PL_DignosisConfiguration]    Script Date: 20-04-2023 17:50:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[USP_PL_DignosisConfiguration](
    @UserId int=0,
	@DignosisConfigId int=0,
	@LabTestId int=0,
    @DignosisID int=0,
	@InvestigationName varchar(100)=null,
	@MinimumPercentage decimal(16,2)=0.0,
	@MaximumPercentage decimal(16,2)=0.0,
	@Unit varchar(50)=null,
	@action varchar(100),
	@PMSGOUT varchar(100) output
	)
	as
	begin
	if(@action='Insert')
	begin
	IF Exists (Select 1 from T_PL_DignosisConfiguration where DeletedFlag=0 AND DignosisConfigId=@DignosisConfigId)
	BEGIN
	SET @PMSGOUT='4'; 
	END
	ELSE
	begin
	insert into T_PL_DignosisConfiguration (LabTestId, DignosisID,InvestigationName, MinimumPercentage, MaximumPercentage,Unit, CreatedBy) 
	values(@LabTestId,@DignosisID,@InvestigationName,@MinimumPercentage,@MaximumPercentage,@Unit,@UserId)
	set @PMSGOUT=SCOPE_IDENTITY();
	end
	end
	else if(@action='Update')
	Begin
	update  T_PL_DignosisConfiguration set  LabTestId=@LabTestId, DignosisID=@DignosisID, InvestigationName=@InvestigationName,
	MinimumPercentage=@MinimumPercentage,MaximumPercentage=@MaximumPercentage, Unit=@Unit,UpdatedOn=getdate(),
	UpdatedBy=@UserId
		   set @PMSGOUT='2';  
	End
	else if(@action='GetAllDignosisConfiguration')
	begin
	SELECT  lt.LabTestId,lt.LabTestName,d.DignosisID,d.Name,dc.CreatedOn
	--dc.InvestigationName,dc.MinimumPercentage,dc.MaximumPercentage,dc.Unit 
	FROM  T_PL_DignosisConfiguration  dc 
	INNER JOIN M_PL_LABTEST lt ON lt.LabTestId = dc.LabTestId 
	INNER JOIN M_PL_DignosisMaster d on d.DignosisID= dc.DignosisID
	where lt.DeletedFlag=0 and d.DeletedFlag=0 and dc.DeletedFlag=0
	group by lt.LabTestId,lt.LabTestName,d.DignosisID,d.Name,dc.CreatedOn
	order by dc.CreatedOn desc
	end
	else if(@action='GetDignosisConfigurationById')
	begin
	SELECT  dct.DignosisConfigId, lt.LabTestId,lt.LabTestName,d.DignosisID,d.Name,dct.InvestigationName,dct.MinimumPercentage,dct.MaximumPercentage,
	dct.Unit FROM  T_PL_DignosisConfiguration  dct 
	INNER JOIN M_PL_LABTEST lt ON lt.LabTestId = dct.LabTestId 
	INNER JOIN M_PL_DignosisMaster d on d.DignosisID= dct.DignosisID
	and lt.DeletedFlag=0 and d.DeletedFlag=0 and dct.DeletedFlag=0 where d.DignosisID =@DignosisID and lt.LabTestId=@LabTestId;
	end
	else if(@action='DeleteToUpdateDignosisConfiguration')
	Begin
	delete from T_PL_DignosisConfiguration where DignosisID =@DignosisID and LabTestId=@LabTestId;
	set @PMSGOUT='2';
	End
	else if(@action='DeleteDignosisConfiguration')
	Begin
		 update T_PL_DignosisConfiguration set DeletedFlag=1 where DignosisID =@DignosisID and LabTestId=@LabTestId;
	  set @PMSGOUT='3';
	  End
	
	end
GO
/****** Object:  StoredProcedure [dbo].[USP_PL_DignosisMaster]    Script Date: 20-04-2023 17:50:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[USP_PL_DignosisMaster]
    (	
	@DignosisID int=0,
	@Name varchar(100)= '',
	@DignosisCatagoryID varchar(100)= NULL,
	
	
	@CreatedBy int =0,
	@action varchar(100),
    @PMSGOUT varchar(100) output
	)
	as
	begin
	if (@action='Insert')
	Begin
	    	    IF Exists (Select 1 from M_PL_DignosisMaster where DeletedFlag=0 AND Name=@Name)
			BEGIN
				SET @PMSGOUT='4';			
			END
		ELSE
			BEGIN
                insert into M_PL_DignosisMaster (Name ,DignosisCatagoryID, CreatedBy)values(@Name,@DignosisCatagoryID,@CreatedBy)
	            set @PMSGOUT='1';
			END
	
	End
    else if(@action='Update')
	Begin
	     	    IF Exists (Select 1 from M_PL_DignosisMaster  where DeletedFlag=0 AND Name=@Name AND DignosisID!=@DignosisID)
			BEGIN
				SET @PMSGOUT='4';			
			END
		ELSE
			BEGIN
             update  M_PL_DignosisMaster set Name=@Name,DignosisCatagoryID=@DignosisCatagoryID,UpdatedOn=getdate(),UpdatedBy=@CreatedBy
             where DignosisID=@DignosisID
	         set @PMSGOUT='2';
			END     
	End

    else if(@action='SelectAll')
	Begin
	if(@Name='')
		begin
			 SELECT  M_PL_DignosisMaster.DignosisID, M_PL_DignosisMaster.Name, M_PL_DignosisCatagory.DignosisCategoryName
		FROM  M_PL_DignosisCatagory INNER JOIN M_PL_DignosisMaster ON M_PL_DignosisCatagory.DignosisCatagoryID = M_PL_DignosisMaster.DignosisCatagoryID
		and  M_PL_DignosisMaster.DeletedFlag=0  and  M_PL_DignosisCatagory.DeletedFlag=0  
		and
		--case when ISNULL(@Name,'') = '' then ISNULL(@Name,'') else Name end=ISNULL(@Name,'')
	
		--case when ISNULL(@Name,'') = '' then ISNULL(@Name,'') else Name end=ISNULL(@Name,'') 
	
		--case when ISNULL(@Name,'') = '' then ISNULL(@Name,'') else  [Name] Like '%'+@Name+'%' 
		 --and
		 case when ISNULL(@DignosisCatagoryID,'0') ='0' then ISNULL(@DignosisCatagoryID,'0') else M_PL_DignosisCatagory.DignosisCatagoryID end=ISNULL(@DignosisCatagoryID,'0') order by DignosisID desc;
	
		end
    else
	  begin
	      begin
			 SELECT  M_PL_DignosisMaster.DignosisID, M_PL_DignosisMaster.Name, M_PL_DignosisCatagory.DignosisCategoryName
		FROM  M_PL_DignosisCatagory INNER JOIN M_PL_DignosisMaster ON M_PL_DignosisCatagory.DignosisCatagoryID = M_PL_DignosisMaster.DignosisCatagoryID
		and  M_PL_DignosisMaster.DeletedFlag=0  and  M_PL_DignosisCatagory.DeletedFlag=0 where Name  like '%'+@Name+'%' 
		and
		--case when ISNULL(@Name,'') = '' then ISNULL(@Name,'') else Name end=ISNULL(@Name,'')
	
		--case when ISNULL(@Name,'') = '' then ISNULL(@Name,'') else Name end=ISNULL(@Name,'') 
	
		--case when ISNULL(@Name,'') = '' then ISNULL(@Name,'') else  [Name] Like '%'+@Name+'%' 
		 --and
		 case when ISNULL(@DignosisCatagoryID,'0') ='0' then ISNULL(@DignosisCatagoryID,'0') else M_PL_DignosisCatagory.DignosisCatagoryID end=ISNULL(@DignosisCatagoryID,'0') order by DignosisID desc;
	
		end

	  end
   
	End

    else if(@action='SelectOne')
	Begin
     SELECT  M_PL_DignosisMaster.DignosisID, M_PL_DignosisMaster.Name, M_PL_DignosisCatagory.DignosisCatagoryID
     FROM  M_PL_DignosisCatagory INNER JOIN M_PL_DignosisMaster ON M_PL_DignosisCatagory.DignosisCatagoryID = M_PL_DignosisMaster.DignosisCatagoryID
	and  M_PL_DignosisMaster.DeletedFlag=0  and  M_PL_DignosisCatagory.DeletedFlag=0  and  DignosisID=@DignosisID
	
	End
		

    else if(@action='Delete')
	Begin
	update M_PL_DignosisMaster set DeletedFlag=1  where DignosisID=@DignosisID 
	set @PMSGOUT='3';
	End
	else if(@action='BindDignosisCatagoryName')
begin
select [DignosisCatagoryID],DignosisCategoryName,DeletedFlag from  [M_PL_DignosisCatagory] where DeletedFlag=0  
end
	End





	
GO
/****** Object:  StoredProcedure [dbo].[USP_PL_DoctorDashboard]    Script Date: 20-04-2023 17:50:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[USP_PL_DoctorDashboard](
    @AppointmentId int=0,
	@RegdNo int=0,
	@HospitalID int=0,
	@DepartmentId int=0,
	@DoctorId int=0,
	@SlotID int=0,
	@PatientID int=0,
	@DateOfAppointment date=null,
	@CreatedBy int =0,
	@UserId int=0,
	@action varchar(100))
	as
	begin
	if(@action='DoctorSchedule')
	select pa.AppointmentId,pa.RegdNo,h.HospitalName,s.SlotName,s.Slot_TimeFrom,s.Slot_TimeTo,pa.PatientID,ud.FullName,pa.DateOfAppointment,
	h.HEmail,h.HWebsite,h.Address,h.City,h.PinCode,h.GSTNo,h.State,h.RegstrationNo,h.GSTNo,h.LandlineNo,
	h.MobielNo
	from  T_PL_PatientAppointment pa
	inner join M_PL_HospitalMaster h on h.HospitalID=pa.HospitalID
	inner join M_PL_User ud on ud.UserId=pa.PatientID
	inner join M_PL_Slot_Master s on s.SlotID=pa.SlotID
	inner join M_PL_User up on up.UserId=pa.PatientID
    where  pa.DeletedFlag=0 and  s.DeletedFlag=0  and  DateOfAppointment = cast(getdate() as Date) and  h.DeletedFlag=0 and DoctorId=@UserId 
	end
GO
/****** Object:  StoredProcedure [dbo].[USP_PL_DoctorMaster]    Script Date: 20-04-2023 17:50:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[USP_PL_DoctorMaster]
   (	
	@DoctorID int =0,
	@Prefix varchar(10) =NULL,
	@DoctorName varchar(100) ='',
	@Designation varchar(100) =NULL,
	@Department varchar(100) =NULL,
	@HospitalName varchar(100)= NULL,
	@RegnNo varchar(100)= NULL,
	@Mobile varchar(50)= NULL,
	@Fees decimal(16, 2)= 0,
	@CreatedBy int=0 ,
	@action varchar(100),
	@PMSGOUT varchar(100) output
	)
	as
	begin
	if (@action='Insert')
	Begin
	  IF Exists (Select 1 from M_PL_DoctorMaster where DeletedFlag=0 AND RegnNo=@RegnNo)
			BEGIN
				SET @PMSGOUT='4';			
			END
		ELSE
			BEGIN
			   insert into M_PL_DoctorMaster 
				(Prefix, DoctorName, Designation, Department, HospitalName, RegnNo, Mobile, Fees, CreatedBy)
				 values(@Prefix,@DoctorName,@Designation,@Department,@HospitalName,@RegnNo,@Mobile,@Fees,@CreatedBy)
				 set @PMSGOUT='1';
			END
	End
    else if(@action='Update')
	Begin
	IF Exists (Select 1 from M_PL_DoctorMaster where DeletedFlag=0 AND RegnNo=@RegnNo and DoctorID!=@DoctorID)
			BEGIN
				SET @PMSGOUT='4';			
			END
		ELSE
			BEGIN
			        update  M_PL_DoctorMaster set Prefix=@Prefix,DoctorName=@DoctorName,Designation=@Designation,Department=@Department,HospitalName=@HospitalName,
					 RegnNo=@RegnNo,Mobile=@Mobile,Fees=@Fees,UpdatedOn=getdate(),UpdatedBy=@CreatedBy where DoctorID=@DoctorID;
					 set @PMSGOUT='2';
			END
	 End
     else if(@action='SelectAll')
	 Begin
	    select DoctorId,Prefix, DoctorName, Designation, Department, HospitalName, RegnNo, Mobile, Fees from  M_PL_DoctorMaster 
	 where  DeletedFlag=0 
	 and
		 case when ISNULL(@DoctorName,'') = '' then ISNULL(@DoctorName,'') else DoctorName end=ISNULL(@DoctorName,'')
	 and case when ISNULL(@Designation,'Select') ='Select' then ISNULL(@Designation,'Select') else Designation end=ISNULL(@Designation,'Select')
	 	 and case when ISNULL(@Department,'Select') ='Select' then ISNULL(@Department,'Select') else Department end=ISNULL(@Department,'Select');
	 End
     else if(@action='SelectOne')
	 Begin
     select DoctorId,Prefix, DoctorName, Designation, Department, HospitalName, RegnNo, Mobile, Fees from  M_PL_DoctorMaster 
	 where  DeletedFlag=0 and DoctorID=@DoctorID
	 End
     else if(@action='Delete')
	 Begin
     update M_PL_DoctorMaster set DeletedFlag=1  where DoctorID=@DoctorID 
	  set @PMSGOUT='3';
	  End
	 End
GO
/****** Object:  StoredProcedure [dbo].[USP_PL_Hospital]    Script Date: 20-04-2023 17:50:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[USP_PL_Hospital](
@HospitalID int =0,
@HospitalName varchar (100)= NULL,
@RegstrationNo varchar(50)= NULL,
@LandlineNo varchar(50) =NULL,
@Address varchar(100)= NULL,
@City varchar(50)= NULL,
@State varchar(50)= NULL,
@PinCode int=0,
@ContactPerson varchar(50)= NULL,
@MobielNo varchar(50) =NULL,
@GSTNo varchar(50) =NULL,
@UserId  int=0,
@HEmail varchar(50)=null,
@HWebsite varchar(50)=null,
@action varchar(100),
@PMSGOUT varchar(100) output)
as 
begin
if(@action='I')
begin
 IF Exists (Select 1 from M_PL_HospitalMaster where DeletedFlag=0 AND RegstrationNo=@RegstrationNo )
			BEGIN
				SET @PMSGOUT='4';			
			END
      else 
begin
insert into M_PL_HospitalMaster(HospitalName,RegstrationNo,LandlineNo,Address,City,State,PinCode,ContactPerson,MobielNo,GSTNo,HEmail,HWebsite,CreatedOn,CreatedBy) values(@HospitalName,@RegstrationNo,@LandlineNo,@Address,@City,@State,@PinCode,@ContactPerson,@MobielNo,@GSTNo,@HEmail,@HWebsite,getdate(),@UserId)
set @PMSGOUT='1';
end
end

else if(@action='U')

Begin
	IF Exists (Select 1 from M_PL_HospitalMaster  where DeletedFlag=0 AND  RegstrationNo=@RegstrationNo and HospitalID!=@HospitalID )
			BEGIN
				SET @PMSGOUT='4';			
			END
		ELSE
begin

Update M_PL_HospitalMaster set HospitalName=@HospitalName,RegstrationNo=@RegstrationNo,
LandlineNo=@LandlineNo,Address=@Address,City=@City,
State=@State,PinCode=@PinCode,ContactPerson=@ContactPerson,HEmail=@HEmail,HWebsite=@HWebsite,
MobielNo=@MobielNo,GSTNo=@GSTNo,UpdatedOn=getdate(),UpdatedBy=@UserId where HospitalID=@HospitalID
set @PMSGOUT='2';
end
end
else if(@action='SelectAll')
Begin
select HospitalID,HospitalName,RegstrationNo,LandlineNo,Address,City,State,PinCode,ContactPerson,MobielNo,GSTNo,HEmail,HWebsite from M_PL_HospitalMaster where DeletedFlag=0 

 and case when ISNULL(@HospitalName,'') = '' then ISNULL(@HospitalName,'') else HospitalName end=ISNULL(@HospitalName,'')
	 and 
	 case when ISNULL(@City,'') ='' then ISNULL(@City,'') else City end=ISNULL(@City,'')
	 and
	 case when ISNULL(@State,'0') ='0' then ISNULL(@State,'0') else State end=ISNULL(@State,'0');
End

else if(@action='SelectOne')
begin
select HospitalID,HospitalName,RegstrationNo,LandlineNo,Address,City,State,PinCode,ContactPerson,MobielNo,GSTNo,HEmail,HWebsite from M_PL_HospitalMaster where DeletedFlag=0  and HospitalID=@HospitalID

end
else if(@action='D')
begin
update M_PL_HospitalMaster set DeletedFlag=1 where HospitalID=@HospitalID
set @PMSGOUT='3';
end


end
GO
/****** Object:  StoredProcedure [dbo].[USP_PL_MedicineMaster]    Script Date: 20-04-2023 17:50:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[USP_PL_MedicineMaster]
(
@Id  int=0,
@SubCatagoryId  int=0,
@CatagoryId   int=0,
@Name varchar(50)=NULL,
@ShortName  varchar(50)=NULL,
@ProductCode  varchar(50)=NULL,
@MRP  numeric(8, 2)=0.0,
@HsnId  int=0,
@HsnCode  varchar(40)=null,
@Expiry  datetime=null,
@Manufacture  datetime=null,
@Description  varchar(40)=null,
@UnitId  int=0,
@BrandId  int=0,
@pname varchar(20)='',

@mode varchar(15),
@PMSGOUT varchar(100) output
)
as
begin
if(@mode='IU')
begin
   if(@Id=0)
       begin
	        IF Exists (Select 1 from M_PL_MedicineMaster where DeletedFlag=0 AND Name =@Name )
				begin
				   SET @PMSGOUT='4'; 
				end
			else
			begin
			   insert into M_PL_MedicineMaster(SubCatagoryId, CatagoryId, Name, ShortName, ProductCode, MRP, HsnId, Expiry, Manufacture, Description, UnitId, BrandId, CreatedBy)
			   values(@SubCatagoryId,@CatagoryId,@Name,@ShortName,@ProductCode,@MRP,@HsnId,@Expiry,@Manufacture ,@Description,@UnitId,@BrandId,@Id)
			   set @PMSGOUT='1';
		    end
	   end
   else
	   begin
	   IF Exists (Select 1 from M_PL_MedicineMaster where DeletedFlag=0 AND Name =@Name  and Id!=@Id)
				begin
				   SET @PMSGOUT='4'; 
				end
		   else
		   begin
			   update M_PL_MedicineMaster set SubCatagoryId =@SubCatagoryId,CatagoryId =@CatagoryId, Name=@Name,ShortName=@ShortName,ProductCode=@ProductCode,MRP=@MRP,HsnId=@HsnId,Expiry=@Expiry,Manufacture=@Manufacture,Description=@Description,UnitId=@UnitId,BrandId=@BrandId,UpdatedOn=getdate(),UpdatedBy=@Id where Id=@Id
			   set @PMSGOUT='2';
		   end
		end
end


 else if(@mode='D')
 begin
 update M_PL_MedicineMaster set DeletedFlag=1  where Id=@Id
 set @PMSGOUT='3';
 end
else if(@mode='S')
begin
  SELECT       
		M_PL_MadicineCatagory.CatagoryName, M_PL_MadicineCatagory.CatagoryId,M_PL_BrandName.BrandId,M_PL_Unit.UnitId,M_PL_HsnCode.HsnId, M_PL_MadicineSubCatagory.SubCatagoryId, M_PL_Unit.UnitName, M_PL_BrandName.BrandName, M_PL_HsnCode.HsnCode, M_PL_MadicineSubCatagory.SubCatagoryName, M_PL_MedicineMaster.Name AS Expr1, 
		 M_PL_MedicineMaster.ShortName, M_PL_MedicineMaster.ProductCode, M_PL_MedicineMaster.MRP, convert(varchar, M_PL_MedicineMaster.Expiry, 23) as Expiry, convert(varchar, M_PL_MedicineMaster.Manufacture, 23) as Manufacture, 
		 M_PL_MedicineMaster.Description,M_PL_MedicineMaster.Name,M_PL_MedicineMaster.Id
		FROM            
		M_PL_MedicineMaster INNER JOIN
		M_PL_HsnCode ON M_PL_MedicineMaster.HsnId = M_PL_HsnCode.HsnId INNER JOIN
		M_PL_BrandName ON M_PL_MedicineMaster.BrandId = M_PL_BrandName.BrandId INNER JOIN
		M_PL_Unit ON M_PL_MedicineMaster.UnitId = M_PL_Unit.UnitId INNER JOIN
		M_PL_MadicineCatagory ON M_PL_MedicineMaster.CatagoryId = M_PL_MadicineCatagory.CatagoryId INNER JOIN
		M_PL_MadicineSubCatagory ON M_PL_MedicineMaster.SubCatagoryId = M_PL_MadicineSubCatagory.SubCatagoryId 
       where Id=@Id
		 end
 else if(@mode='A')

 begin

	  begin
	     select M_PL_MadicineCatagory.CatagoryName,M_PL_MadicineCatagory.CatagoryId, M_PL_Unit.UnitName, M_PL_BrandName.BrandName, M_PL_HsnCode.HsnCode, M_PL_MadicineSubCatagory.SubCatagoryName, M_PL_MedicineMaster.Name AS Expr1, 
		 M_PL_MedicineMaster.ShortName, M_PL_MedicineMaster.ProductCode, M_PL_MedicineMaster.MRP,convert(varchar, M_PL_MedicineMaster.Expiry, 103) as Expiry ,convert(varchar, M_PL_MedicineMaster.Manufacture, 103) as Manufacture, 
		 M_PL_MedicineMaster.Description,M_PL_MedicineMaster.Name,M_PL_MedicineMaster.Id
		FROM            
		M_PL_MedicineMaster INNER JOIN
		M_PL_HsnCode ON M_PL_MedicineMaster.HsnId = M_PL_HsnCode.HsnId INNER JOIN
		M_PL_BrandName ON M_PL_MedicineMaster.BrandId = M_PL_BrandName.BrandId INNER JOIN
		M_PL_Unit ON M_PL_MedicineMaster.UnitId = M_PL_Unit.UnitId INNER JOIN
		M_PL_MadicineCatagory ON M_PL_MedicineMaster.CatagoryId = M_PL_MadicineCatagory.CatagoryId INNER JOIN
		M_PL_MadicineSubCatagory ON M_PL_MedicineMaster.SubCatagoryId = M_PL_MadicineSubCatagory.SubCatagoryId 
		and M_PL_MedicineMaster.DeletedFlag=0 
		
		and case when ISNULL(@CatagoryId,'0') ='0'then ISNULL(@CatagoryId,'0') else M_PL_MadicineCatagory.CatagoryId end=ISNULL(@CatagoryId,'0')
		and
		case when ISNULL(@SubCatagoryId,'0') = '0' then ISNULL(@SubCatagoryId,'0') else M_PL_MadicineSubCatagory.SubCatagoryId end=ISNULL(@SubCatagoryId,'0')
		and
		case when ISNULL(@Name,'') = '' then ISNULL(@Name,'') else M_PL_MedicineMaster.Name end=ISNULL(@Name,'')  order by Id desc
	;
		

	
	  end



end
 else if(@mode='UnitBind')
   begin
   select [UnitId] , [UnitName]   from [M_PL_Unit] where DeletedFlag=0
   end
    else if(@mode='BrandBind')
   begin
   select [BrandId]  , [BrandName]    from [M_PL_BrandName] where DeletedFlag=0
   end
    else if(@mode='HsnCodeBind')
   begin
   select [HsnId]  , [HsnCode] as ddlHSnCode ,[Gst]    from [M_PL_HsnCode] where DeletedFlag=0
   end

   else if(@mode='CatagoryBind')
   begin
   select [CatagoryId]  , [CatagoryName]    from [M_PL_MadicineCatagory] where DeletedFlag=0
   end

    else if(@mode='SubCatagoryBind')
   begin
   select [SubCatagoryId] , [CatagoryId] , SubCatagoryName     from [M_PL_MadicineSubCatagory] where DeletedFlag=0 and [CatagoryId]=@CatagoryId
   end

 
 end




 
 



	
GO
/****** Object:  StoredProcedure [dbo].[USP_PL_MenuTable]    Script Date: 20-04-2023 17:50:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[USP_PL_MenuTable]
(
@MenuId int=0,
@MenuName varchar (100) =NULL,
@SlNo int=0,
@IconName varchar(100)=null,
@CreatedBy int=0 ,
@action varchar(100),
@PMSGOUT varchar(100) output
)
as 
begin
	if (@action='MenuInsert')
	Begin
	    IF Exists (Select 1 from M_PL_MenuTable where DeletedFlag=0 AND MenuName=@MenuName)
			BEGIN
				SET @PMSGOUT='4';			
			END
		ELSE
			BEGIN
                insert into M_PL_MenuTable (MenuName,SlNo,IconName,CreatedBy)values(@MenuName,@SlNo,@IconName,@CreatedBy)
	            set @PMSGOUT='1';
			END
	
	End
    else if(@action='MenuUpdate')
	Begin
	    IF Exists (Select 1 from M_PL_MenuTable where DeletedFlag=0 AND MenuName=@MenuName AND MenuId !=@MenuId )
			BEGIN
				SET @PMSGOUT='4';			
			END
		ELSE
			BEGIN
			     update  M_PL_MenuTable set MenuName=@MenuName,SlNo=@SlNo,IconName=@IconName,UpdatedOn=getdate(),UpdatedBy=@CreatedBy where MenuId =@MenuId;
	             set @PMSGOUT='2';
			END 
     
	 End
     else if(@action='MenuSelectAll')
	 Begin
     select MenuId,MenuName,SlNo,IconName from  M_PL_MenuTable 
	 where  DeletedFlag=0
	 End
	 else if(@action='MenuSelectOne')
	 Begin
     select MenuId,MenuName,SlNo,IconName  from  M_PL_MenuTable 
	 where  DeletedFlag=0 and MenuId=@MenuId
	 End
     else if(@action='MenuDelete')
	 Begin
     update M_PL_MenuTable set DeletedFlag=1  where MenuId=@MenuId 
	  set @PMSGOUT='3';
	  End
end
GO
/****** Object:  StoredProcedure [dbo].[USP_PL_PathoBill]    Script Date: 20-04-2023 17:50:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[USP_PL_PathoBill]
(
@UserId int=0,
@Barcode varchar(100)=null,
@PathoBillId int=0,
@PatientId int=0,
@CollectionId  varchar(100)=null,
@LabTestId int=0,
@LabTestName varchar(100)=null,
@Price varchar(100)=null,
@SGST decimal(8,2)=0.0,
@CGST decimal(8,2)=0.0,
@PayMode  varchar(100)=null,
@Mobile varchar(100)=null,
@Age int=0,
@DateOfAppointment date=null,
@Gender varchar(100)=null,
@Email varchar(100)=null,
@FullName varchar(100)=null,
@DoctorName varchar(100)=null,
@DignosisConfigId int=0,
@Value varchar(100)=null,
@HospitalID int=0,
@action varchar(100),
@PMSGOUT varchar(100) output
)
as
begin
if(@action='InsertPathoBill')
	begin
	  IF Exists (Select 1 from T_PL_PathoBill where DeletedFlag=0 AND PathoBillId=@PathoBillId)
	    BEGIN
	      SET @PMSGOUT='4'; 
	    END
	 ELSE
	 BEGIN
	   insert into T_PL_PathoBill (PatientId,CollectionId,Barcode,PayMode,Mobile,Age,Email ,FullName,Gender,
	   DateOfAppointment ,DoctorName , CreatedBy) 
	   values(@PatientId,@CollectionId,@Barcode,@PayMode,@Mobile,@Age,@Email,@FullName,@Gender,getdate(),
	   @DoctorName ,@UserId)
	   set @PMSGOUT=SCOPE_IDENTITY();
	END
	end
	else if(@action='UpdatePathoBill')
	Begin
	update  T_PL_PathoBill set  CollectionId=@CollectionId,PayMode=@PayMode,Mobile=@Mobile,Age=@Age,Email=@Email,FullName=@FullName,Gender=@Gender,DateOfAppointment=getdate(),
	DoctorName=@DoctorName ,UpdatedOn=getdate(),
	UpdatedBy=@UserId
		   set @PMSGOUT='2';  
	End
	else if(@action='DeletePathoBill')
	Begin
		 update T_PL_PathoBill set DeletedFlag=1 where PathoBillId =@PathoBillId 
	  set @PMSGOUT='3';
	  End
	else if(@action='GetPatientByMobile')
	Begin
	select  Mobile,Age,Email,FullName,Gender from  M_PL_USER where Mobile= @Mobile and DeletedFlag=0
	  End
	  else if(@action='InsertingTestFields')
	  begin
	  insert into T_PL_TestTable (PathoBillId,LabTestId,LabTestName,Price,CGST,SGST) values(@PathoBillId,@LabTestId,@LabTestName,@Price,@CGST,@SGST)
	  set @PMSGOUT='9';
	  end
	  else if(@action='AutoFillTestName')
	  begin
	  select LabTestName,LabTestId from M_PL_LABTEST where DeletedFlag=0
	   set @PMSGOUT='8';
	  end
	   else if(@action='AutoFillPrice')
	  begin
	  select Price from M_PL_LABTEST where DeletedFlag=0 and LabTestId=@LabTestId
	   set @PMSGOUT='7';
	  end
	  else if(@action='GetAllPathoBill')
	Begin
	SELECT  pb.PathoBillId,pb.FullName,pb.Mobile,pb.Email, pb.Age,pb.Gender,sum(Convert(decimal,tt.Price)) as Price,
	--tt.LabTestId,
	--LabTestName=
    STUFF((SELECT ', ' + lt.LabTestName
           FROM T_PL_PathoBill  p	
	       INNER JOIN T_PL_TestTable tt ON tt.PathoBillId = p.PathoBillId  
           INNER JOIN M_PL_LABTEST lt ON lt.LabTestId = tt.LabTestId 
           WHERE p.PathoBillId =  pb.PathoBillId  
          FOR XML PATH('')), 1, 2, '') as LabTestName,
	convert(varchar,pb.CreatedOn,103)  as DateOfAppointment,pb.CollectionId,pb.CollectionFlag 
	FROM  T_PL_PathoBill  pb 	
	INNER JOIN T_PL_TestTable tt ON tt.PathoBillId = pb.PathoBillId  
    INNER JOIN M_PL_LABTEST lt ON lt.LabTestId = tt.LabTestId 	
	where lt.DeletedFlag=0 and pb.DeletedFlag=0 and tt.DeletedFlag=0
	group by pb.PathoBillId, pb.FullName,pb.Mobile,pb.Email, pb.Age,pb.Gender,
	--tt.Price,
	--tt.LabTestId,lt.LabTestName,
	pb.CreatedOn,pb.CollectionId,pb.CollectionFlag 
	order by pb.CreatedOn desc
	  End
	  else if(@action='GetPatientDetailsByPathoBillId')
	begin
	select pb.CollectionId,pb.Barcode,h.HospitalID,  pb.PathoBillId,pb.FullName,pb.Gender,pb.Age,pb.Mobile,pb.Email,convert(varchar,DateOfAppointment,103)as DateOfAppointment ,tt.LabTestId,lt.LabTestName,tt.Price
	from T_PL_PathoBill pb
	INNER JOIN T_PL_TestTable tt ON tt.PathoBillId = pb.PathoBillId  
    INNER JOIN M_PL_LABTEST lt ON lt.LabTestId = tt.LabTestId 	
	INNER JOIN M_PL_USER u ON u.Mobile = pb.Mobile
	INNER JOIN M_PL_HospitalMaster h ON h.HospitalID = u.HospitalID 	
	where pb.DeletedFlag=0  and pb.PathoBillId=@PathoBillId
	and case when @LabTestId =0 then 0 else lt.LabTestId end =@LabTestId
	end
	 else if(@action='BindingTestConfig')
    select dc.DignosisConfigId,dc.InvestigationName,MinimumPercentage,MaximumPercentage,Unit,Value
	--isnull((select top 1 value from T_PL_PathoReportCollection prc where 
	--prc.PathoBillId=tt.PathoBillId and prc.DignosisConfigId=dc.DignosisConfigId),0) as Value
	from T_PL_PathoBill pb
	left JOIN T_PL_TestTable tt ON tt.PathoBillId = pb.PathoBillId  
	inner join T_PL_DignosisConfiguration dc on tt.LabTestId=dc.LabTestId
	left join T_PL_PathoReportCollection prc on prc.PathoBillId=pb.PathoBillId and prc.DignosisConfigId=dc.DignosisConfigId
	where pb.DeletedFlag=0 and  pb.PathoBillId =@PathoBillId
	else if(@action='BindCollection')
	    SELECT CAST(DATEPART(DD,GETDATE()) AS VARCHAR)+
		+CAST(DATEPART(MM,GETDATE()) AS VARCHAR)
		+CAST(DATEPART(YY,GETDATE())%100 AS VARCHAR)
		+CAST(DATEPART(HH,GETDATE()) AS VARCHAR)
		+CAST(DATEPART(MI,GETDATE()) AS VARCHAR)
		+CAST(DATEPART(SS,GETDATE()) AS VARCHAR)
		as CollectionId
   else if(@action='BindDate')--bind current date
		select convert(varchar,GETDATE(),103) as ReportedOn

		else if(@action='InsertPathoReportCollection')
		begin
		delete from T_PL_PathoReportCollection where PathoBillId=@PathoBillId and LabTestId=@LabTestId and DignosisConfigId=@DignosisConfigId;
		insert into T_PL_PathoReportCollection (PathoBillId,LabTestId,DignosisConfigId,Value) 
		values (@PathoBillId,@LabTestId,@DignosisConfigId,@Value)
		set @PMSGOUT='5' 
		end
		else if(@action='DeleteToUpdateReportCollection')
		begin
		delete from T_PL_PathoReportCollection where PathoBillId=@PathoBillId and LabTestId=@LabTestId;
		set @PMSGOUT='3' 
		end
		 else if(@action='BindingTest')
		 begin
    	select  pb.PathoBillId ,tt.LabTestId,lt.LabTestName,tt.Price,pb.PayMode
	from T_PL_PathoBill pb
	INNER JOIN T_PL_TestTable tt ON tt.PathoBillId = pb.PathoBillId  
    INNER JOIN M_PL_LABTEST lt ON lt.LabTestId = tt.LabTestId 	
	where pb.DeletedFlag=0  and pb.PathoBillId=@PathoBillId
	end
	else if(@action='GetHospitalDetails')
	begin
	select h.HospitalID,h.HospitalName,h.HEmail,h.HWebsite,
	h.Address,h.City,h.PinCode,h.GSTNo,h.State,h.RegstrationNo,h.LandlineNo,
	h.MobielNo from  M_PL_HospitalMaster h
    where   h.DeletedFlag=0 and HospitalID=@HospitalID
	end
	else if(@action='GetAllPathoBillRecord')
	SELECT  pb.PathoBillId,pb.FullName,pb.Mobile,pb.Email, pb.Age,pb.Gender,tt.LabTestId,tt.Price,lt.LabTestName,
	convert(varchar,pb.CreatedOn,103)  as DateOfAppointment,pb.CollectionId,pb.CollectionFlag 
	FROM  T_PL_PathoBill  pb 	
	INNER JOIN T_PL_TestTable tt ON tt.PathoBillId = pb.PathoBillId  
    INNER JOIN M_PL_LABTEST lt ON lt.LabTestId = tt.LabTestId 	
	where lt.DeletedFlag=0 and pb.DeletedFlag=0 and tt.DeletedFlag=0 
	group by pb.PathoBillId, pb.FullName,pb.Mobile,pb.Email, pb.Age,pb.Gender,tt.LabTestId,tt.Price,lt.LabTestName,pb.CreatedOn,pb.CollectionId,pb.CollectionFlag 
	order by pb.CreatedOn desc
end
GO
/****** Object:  StoredProcedure [dbo].[USP_PL_PatientDashboard]    Script Date: 20-04-2023 17:50:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

	create Procedure [dbo].[USP_PL_PatientDashboard](
    @AppointmentId int=0,
	@RegdNo int=0,
	@HospitalID int=0,
	@DepartmentId int=0,
	@DoctorId int=0,
	@SlotID int=0,
	@PatientID int=0,
	@DateOfAppointment date=null,
	@CreatedBy int =0,
	@UserId int=0,
	@action varchar(100))
	as
	begin
	if(@action='PatientBooking')
	select pa.AppointmentId,pa.RegdNo,h.HospitalName,s.SlotName,s.Slot_TimeFrom,s.Slot_TimeTo,pa.PatientID,ud.FullName,pa.DateOfAppointment
	from  T_PL_PatientAppointment pa
	inner join M_PL_HospitalMaster h on h.HospitalID=pa.HospitalID
	inner join M_PL_User ud on ud.UserId=pa.PatientID
	inner join M_PL_Slot_Master s on s.SlotID=pa.SlotID
    where  pa.DeletedFlag=0 and  s.DeletedFlag=0 and  h.DeletedFlag=0 and DoctorId=@UserId and  DateOfAppointment = cast(getdate() as Date)
	end
GO
/****** Object:  StoredProcedure [dbo].[USP_PL_PermissionTable]    Script Date: 20-04-2023 17:50:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[USP_PL_PermissionTable]
(
@PermissionId int=0,
@SubMenuId int=0,
@DesignationId int=0,
@UserId int=0,
@IsChecked bit=0,
@CreatedBy int=0 ,
@action varchar(100),
@PMSGOUT varchar(100) output
)
as 
begin
	if (@action='PermissionInsert')	   
			BEGIN
                insert into M_PL_PermissionTable (SubMenuId,DesignationId,UserId,IsChecked,CreatedBy)
				values(@SubMenuId,@DesignationId,@UserId,@IsChecked,@CreatedBy)
	            set @PMSGOUT='1';
			END	
    else if(@action='PermissionUpdateToDelete')
	Begin
	 delete from M_PL_PermissionTable where DesignationId=@DesignationId ;
	 --and case when @UserId=0 then 0 else UserId END=@UserId
		set @PMSGOUT='3'
	 End
	 else if(@action='GetSelectedSubMenus')
	 Begin
     select s.SubMenuId,s.SubMenuName,s.SubMenuURL,m.MenuId,m.MenuName,s.SlNo,
	 case when p.IsChecked is null or p.IsChecked=0 then 0 else 1 end as IsChecked 
	 from  M_PL_SubMenuTable s
	 INNER JOIN M_PL_MenuTable m ON m.MenuId = s.MenuId  
	 LEFT join M_PL_PermissionTable p on p.SubMenuId=s.SubMenuId and p.DesignationId=@DesignationId
	 where  s.DeletedFlag=0 and m.DeletedFlag=0 ;
	 End 
	 else if(@action='GetSelectedSubMenuByDesig')
	 Begin
     select s.SubMenuId,s.SubMenuName,s.SubMenuURL,m.MenuId,m.MenuName,s.SlNo
	 from  M_PL_SubMenuTable s
	 INNER JOIN M_PL_MenuTable m ON m.MenuId = s.MenuId  
	 INNER join M_PL_PermissionTable p on p.SubMenuId=s.SubMenuId and p.DesignationId=@DesignationId and p.IsChecked=1
	 where  s.DeletedFlag=0 and m.DeletedFlag=0 ;
	 End 
	 else if(@action='GetSelectedMenuByDesig')
	 Begin
select m.MenuId,m.MenuName,m.IconName,m.SlNo
	 from  M_PL_MenuTable m
	 INNER JOIN M_PL_SubMenuTable s ON m.MenuId = s.MenuId  
	 INNER join M_PL_PermissionTable p on p.SubMenuId=s.SubMenuId and p.DesignationId=@DesignationId  and p.IsChecked=1
	 where  s.DeletedFlag=0 and m.DeletedFlag=0 
	 group by m.MenuId,m.MenuName,m.IconName,m.SlNo
	 End 

end
GO
/****** Object:  StoredProcedure [dbo].[USP_PL_Report]    Script Date: 20-04-2023 17:50:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[USP_PL_Report]
(
@HospitalID int=0,
@FromDate varchar(100)=null,
@ToDate   varchar(100)=null,
@action varchar(100)
)
as
begin
if(@action='DailyDateWiseAppointment')
select h.HospitalName,p.HospitalID,count(1) as AppointmentCount
from T_PL_PatientAppointment p
inner join M_PL_HospitalMaster h on p.HospitalID=h.HospitalID 
where p.DeletedFlag=0 and h.DeletedFlag=0 and case when @HospitalID=0 then 0 else p.HospitalID end=@HospitalID
group by  h.HospitalName,p.HospitalID
else if (@action='HospitalWiseAppointment')
if (@FromDate is not null and @ToDate is not null)
begin
select h.HospitalName,p.HospitalID,p.DateOfAppointment,p.RegdNo,p.DoctorId,p.DepartmentId,
p.PatientID,p.SlotID,s.SlotName,d.Department,u.FullName as PatientName,
u1.FullName as DoctorName
from T_PL_PatientAppointment p
inner join M_PL_HospitalMaster h on p.HospitalID=h.HospitalID 
inner join M_PL_USER u on u.UserId=p.PatientID 
inner join M_PL_USER u1 on u1.UserId=p.DoctorId 
inner join M_PL_DepartmentMaster d on d.DepartmentId=p.DepartmentId 
inner join M_PL_Slot_Master s on s.SlotID=p.SlotID 
where   case when @HospitalID=0 then 0 else p.HospitalID end=@HospitalID
 and CAST(p.DateOfAppointment as Date) between  CAST(@FromDate as Date) and CAST(@ToDate as Date)
end
else
begin
select h.HospitalName,p.HospitalID,p.DateOfAppointment,p.RegdNo,p.DoctorId,p.DepartmentId,
p.PatientID,p.SlotID,s.SlotName,d.Department,u.FullName as PatientName,
u1.FullName as DoctorName
from T_PL_PatientAppointment p
inner join M_PL_HospitalMaster h on p.HospitalID=h.HospitalID 
inner join M_PL_USER u on u.UserId=p.PatientID 
inner join M_PL_USER u1 on u1.UserId=p.DoctorId 
inner join M_PL_DepartmentMaster d on d.DepartmentId=p.DepartmentId 
inner join M_PL_Slot_Master s on s.SlotID=p.SlotID 
where   case when @HospitalID=0 then 0 else p.HospitalID end=@HospitalID
end

end
GO
/****** Object:  StoredProcedure [dbo].[USP_PL_RoleMaster]    Script Date: 20-04-2023 17:50:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[USP_PL_RoleMaster]
(@RoleId int=0,
@RoleName varchar(50)=null,
@mode varchar(10),
@PMSGOUT varchar(100) output
)
as 
begin
  if(@mode='IU')
    begin
		if(@RoleId=0)
				begin
						 IF Exists (Select 1 from M_PL_RoleMaster where DeletedFlag=0 AND RoleName=@RoleName)
											begin
											   SET @PMSGOUT='4'; 
											end
						 else
							 begin
									insert into M_PL_RoleMaster(RoleName,CreatedBy, UpdatedBy)
									values(@RoleName,@RoleId,@RoleId)
									set @PMSGOUT='1';
							 end		
				end
		else		
		      begin
		                IF Exists (Select 1 from M_PL_RoleMaster where DeletedFlag=0 AND RoleName=@RoleName and RoleId!=@RoleId)
											begin
											   SET @PMSGOUT='4'; 
											end
			   else
		    
			   begin
						update M_PL_RoleMaster set RoleName=@RoleName,UpdatedBy=@RoleId,UpdatedOn=getDate() where RoleId=@RoleId
						set @PMSGOUT='2';
			   end
		    end				
						  
		
		
	end
	 else if(@mode='D')
		 begin
		 update M_PL_RoleMaster set DeletedFlag=1  where RoleId=@RoleId
		 set @PMSGOUT='3';
		 end
    else if(@mode='S')
           select *  from M_PL_RoleMaster where RoleId=@RoleId
    else if(@mode='A')
          select *  from M_PL_RoleMaster where DeletedFlag=0 order by RoleId desc
 
end
GO
/****** Object:  StoredProcedure [dbo].[USP_PL_SlotMapping]    Script Date: 20-04-2023 17:50:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[USP_PL_SlotMapping]
    (	
	@SMId int=0,
	@HospitalID int=0,
	@SlotID int=0,
	@DoctorId int=0,
	@DaysId int=0,
	@CreatedBy int =0,
	@action varchar(100),
    @PMSGOUT varchar(100) output
	)
	as 
	begin
	if (@action='Insert')
	Begin
	  	    IF Exists (Select 1 from M_PL_SlotMapping where DeletedFlag=0 AND HospitalID=@HospitalID And SlotID=@SlotID AND DoctorId=@DoctorId and DaysId=@DaysId )
			BEGIN
				SET @PMSGOUT='4';			
			END
		ELSE
			BEGIN
               insert into M_PL_SlotMapping(HospitalID ,SlotID,DoctorId,DaysId, CreatedBy)values(@HospitalID,@SlotID,@DoctorId,@DaysId,@CreatedBy)
	           set @PMSGOUT='1';
			END
	
	End
	 else if(@action='DeleteToUpdate')
	Begin
	delete from M_PL_SlotMapping where SlotID=@SlotID and DoctorId=@DoctorId and HospitalID=@HospitalID;
		set @PMSGOUT='2';
	End
    else if(@action='Update')
	Begin
	    IF Exists (Select 1 from M_PL_SlotMapping where DeletedFlag=0 AND HospitalID=@HospitalID And SlotID=@SlotID AND DoctorId=@DoctorId and DaysId=@DaysId and SMId!=@SMId)
			BEGIN
				SET @PMSGOUT='4';			
			END
		ELSE
			BEGIN
			     insert into M_PL_SlotMapping(HospitalID ,SlotID,DoctorId,DaysId, CreatedBy)values(@HospitalID,@SlotID,@DoctorId,@DaysId,@CreatedBy)
	              set @PMSGOUT='2';
			END    
	End
    else if(@action='SelectAll')
	Begin
    select 	sm.SMId,sm.HospitalID ,sm.SlotID,sm.DoctorId,sm.DaysId,
	h.HospitalName,s.SlotName,u.UserName as DoctorName,d.Day
	from  M_PL_SlotMapping sm
	inner join M_PL_HospitalMaster h on h.HospitalID=sm.HospitalID
	inner join M_PL_Slot_Master s on s.SlotID=sm.SlotID
    inner join M_PL_User u on u.UserId=sm.DoctorId
	inner join M_PL_Day d on d.DaysId=sm.DaysId
    where  sm.DeletedFlag=0 and  s.DeletedFlag=0 and  h.DeletedFlag=0
	and
	  case when ISNULL(@HospitalID,'0') = '0' then ISNULL(@HospitalID,'0') else h.HospitalID end=ISNULL(@HospitalID,'0')
    and 
	   case when ISNULL(@SlotID,'0') ='0' then ISNULL(@SlotID,'0') else s.SlotID end=ISNULL(@SlotID,'0')
    and
	  case when ISNULL(@DoctorId,'0') ='0' then ISNULL(@DoctorId,'0') else DoctorId end=ISNULL(@DoctorId,'0');
	End
    else if(@action='SelectOne')
	Begin
    select 	SMId,HospitalID ,SlotID,DoctorId,DaysId  from  M_PL_SlotMapping  
	where  DeletedFlag=0 and DoctorId=@DoctorId and SlotID=@SlotID
	End
    else if(@action='Delete')
	Begin
	update M_PL_SlotMapping set DeletedFlag=1  where SMId=@SMId	set @PMSGOUT='3';
	End
	else if(@action='SlotTimeByHnSId')
	Begin
	select  SlotID,SlotName,HospitalID,Slot_TimeFrom,Slot_TimeTo from M_PL_Slot_Master where HospitalID=@HospitalID and SlotID=@SlotID
	End
	else if(@action='DoctorNameByHId')
	Begin
	select h. HospitalID,UserId,UserName ,h.HospitalName
	from M_PL_USER u
	inner join M_PL_HospitalMaster h on h.HospitalID=u.HospitalID
	where u.HospitalID=@HospitalID  and h.DeletedFlag=0
	End
	end
GO
/****** Object:  StoredProcedure [dbo].[USP_PL_SubMenuTable]    Script Date: 20-04-2023 17:50:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[USP_PL_SubMenuTable]
(
@SubMenuId int=0,
@SubMenuName varchar (100) =NULL,
@SubMenuURL varchar(100)=null,
@MenuId int=0,
@SlNo int=0,
@SubMenuDescription varchar(100)=null,
@CreatedBy int=0 ,
@action varchar(100),
@PMSGOUT varchar(100) output
)
as 
begin
	if (@action='SubMenuInsert')
	Begin
	    IF Exists (Select 1 from M_PL_SubMenuTable where DeletedFlag=0 AND SubMenuName=@SubMenuName)
			BEGIN
				SET @PMSGOUT='4';			
			END
		ELSE
			BEGIN
                insert into M_PL_SubMenuTable (SubMenuName,SubMenuURL,MenuId,SlNo,SubMenuDescription,CreatedBy)values(@SubMenuName,@SubMenuURL,@MenuId,@SlNo,@SubMenuDescription,@CreatedBy)
	            set @PMSGOUT='1';
			END
	
	End
    else if(@action='SubMenuUpdate')
	Begin
	    IF Exists (Select 1 from M_PL_SubMenuTable where DeletedFlag=0 AND SubMenuName=@SubMenuName AND SubMenuId !=@SubMenuId )
			BEGIN
				SET @PMSGOUT='4';			
			END
		ELSE
			BEGIN
			     update  M_PL_SubMenuTable set SubMenuName=@SubMenuName,SubMenuURL=@SubMenuURL,MenuId=@MenuId,SlNo=@SlNo,SubMenuDescription=@SubMenuDescription,UpdatedOn=getdate(),UpdatedBy=@CreatedBy where SubMenuId =@SubMenuId;
	             set @PMSGOUT='2';
			END 
     
	 End
     else if(@action='SubMenuSelectAll')
	 Begin
     select s.SubMenuId,s.SubMenuName,s.SubMenuURL,m.MenuId,m.MenuName,s.SlNo,s.SubMenuDescription
	 from  M_PL_SubMenuTable s
	 INNER JOIN M_PL_MenuTable m ON m.MenuId = s.MenuId  
	 where  s.DeletedFlag=0 
	 End
	 
	 	 else if(@action='SubMenuSelectOne')
	 Begin
     select SubMenuId,SubMenuName,SubMenuURL,MenuId,SlNo,SubMenuDescription from  M_PL_SubMenuTable 
	 where  DeletedFlag=0 and SubMenuId=@SubMenuId
	 End
     else if(@action='SubMenuDelete')
	 Begin
     update M_PL_SubMenuTable set DeletedFlag=1  where SubMenuId=@SubMenuId 
	  set @PMSGOUT='3';
	  End
end

GO
/****** Object:  StoredProcedure [dbo].[USP_PL_TestMaster]    Script Date: 20-04-2023 17:50:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[USP_PL_TestMaster](
@TestID int =0,
@TestType varchar(100)=null,
@TestName varchar(100)=null,
@UserId int=0,
@action varchar(100),
@PMSGOUT varchar(100) output)
as 
begin
if(@action='I')
begin
insert into M_PL_TestMast(TestType,TestName,CreatedOn,CreatedBy) values(@TestType,@TestName,getdate(),@UserId)
set @PMSGOUT='1';
end
else if(@action='U')
begin
Update M_PL_TestMast set TestType =@TestType,TestName=@TestName,UpdatedOn=getdate(),UpdatedBy=@UserId where TestID=@TestID
set @PMSGOUT='2';
end
else if(@action='SelectAll')
select TestID,TestName,TestType from M_PL_TestMast where DeletedFlag=0 
else if(@action='SelectOne')
select TestID,TestName,TestType from M_PL_TestMast  where DeletedFlag=0  and TestID=@TestID
else if(@action='D')
begin
update M_PL_TestMast set DeletedFlag=1 where TestID=@TestID
set @PMSGOUT='3';
end
else if(@action='dropdown')
select TestTypeID,TestType from TestType where DeletedFlag=0 
end

	


	
GO
/****** Object:  StoredProcedure [dbo].[USP_PL_TestType]    Script Date: 20-04-2023 17:50:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[USP_PL_TestType](
@TestTypeID int=0,
@TestType varchar(100)=null,
@UserId int=0,
@action varchar(10),
@PMSGOUT varchar(100) output)
as begin
if(@action='I')
begin
insert into M_PL_TestType(TestType,CreatedOn,CreatedBy) values(@TestType,getdate(),@UserId)
set @PMSGOUT='1';
end
else if(@action='U')
begin
Update M_PL_TestType set TestType=@TestType,UpdatedOn=getdate(),UpdatedBy=@UserId where TestTypeID=@TestTypeID
set @PMSGOUT='2';
end
else if(@action='SelectAll')
select TestTypeID,TestType from M_PL_TestType where DeletedFlag=0 
else if(@action='SelectOne')
select TestTypeID,TestType from M_PL_TestType where DeletedFlag=0  and TestTypeID=@TestTypeID
else if(@action='D')
update M_PL_TestType set DeletedFlag=1 where TestTypeID=@TestTypeID
set @PMSGOUT='3';
end
GO
/****** Object:  StoredProcedure [dbo].[USP_PL_USER_LOGIN_MANAGE]    Script Date: 20-04-2023 17:50:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[USP_PL_USER_LOGIN_MANAGE](
	@UserId int =0,
	@UserName varchar(50) =NULL,
	@Password varchar(50)= NULL,
	@FullName varchar(50)= NULL,
	@Email varchar(50)= NULL,
	@Mobile varchar(50)= NULL,
	@Gender varchar(50) =NULL,
	@Address varchar(500) =NULL,
	@RoleId int =0,
	@CreatedBy int =0,
	@action varchar(100),
	@PMSGOUT varchar(100) output
)
as
begin
if (@action='LoginPage')
begin
select * from M_PL_USER p
inner join M_PL_HospitalMaster h on p.HospitalID=h.HospitalID where UserName=@UserName and Password=@Password and p.DeletedFlag=0 and h.DeletedFlag=0;
end
else if(@action='changepassword')
begin
update M_PL_USER set Password=@Password where UserName=@UserName
set @PMSGOUT=1
end
--else if(@action='DoctorLogin')
--select * from M_PL_USER where UserName=@UserName and Password=@Password and DeletedFlag=0 and DesignationId=6
end
GO
/****** Object:  StoredProcedure [dbo].[Usp_Prescrption]    Script Date: 20-04-2023 17:50:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
	CREATE procedure [dbo].[Usp_Prescrption](
	@HospitalID int=0,
	@UserId int=0,
	@PatientID int=0,
	@GuardianName varchar(100)=null,
	@PrescriptionId int=0,
	@Height decimal(8,2)=0.0,
	@BloodPressure varchar(1000)=null,
	@Weight decimal(8,2)=0.0,
	@OxygenLevel varchar(50)=null,
	@Pulse varchar(100)=null,
	@Temperature varchar(100)=null,
	@Symptoms varchar(1000)=null,
	@DateOfAppointment date=null,
	@PatientHistory varchar(1000)=null,
	@DignosisID int=0,
	@Id int=0,--medicineid
	@OtherAdvice varchar(1000)=null,
	@MorningAfterMeal varchar(50)= NULL,
	@MorningBeforeMeal varchar(50)= NULL,
	@AfternoonAfterMeal varchar(50)= NULL,
	@AfternoonBeforeMeal varchar(50)= NULL,
	@NightAfterMeal varchar(50) =NULL,
	@NightBeforeMeal varchar(50) =NULL,
	@HospitalName varchar(100)=Null,
	@MedicineName varchar(50)=null,
	@DoseId int=0,
	@Duration varchar(1000)=Null,
	@action varchar(100),
	@PMSGOUT varchar(100) output)

	as
	begin
	if(@action='Insert')
	begin
	IF Exists (Select 1 from T_PL_PrescriptionDetails where DeletedFlag=0 AND PrescriptionId=@PrescriptionId)
	BEGIN
	SET @PMSGOUT='4'; 
	END
	ELSE
	begin
	insert into T_PL_PrescriptionDetails (PatientID,HospitalID,Height, BloodPressure, Weight, OxygenLevel,Pulse, Temperature,Symptoms, PatientHistory,  OtherAdvice,GuardianName,CreateBy,CreatedOn) 
	values(@PatientID,@HospitalID,@Height,@BloodPressure,@Weight,@OxygenLevel,@Pulse, @Temperature,@Symptoms,@PatientHistory,@OtherAdvice,@GuardianName,@UserId,getdate())
	--insert into T_PL_PrescribedMedicine(PrescriptionId,PatientID,Id,MorningAfterMeal,MorningBeforeMeal,AfternoonAfterMeal,AfternoonBeforeMeal,NightAfterMeal,NightBeforeMeal)values(@PrescriptionId,@PatientID,@Id,@MorningAfterMeal,@MorningBeforeMeal,@AfternoonAfterMeal,@AfternoonBeforeMeal,@NightAfterMeal,@NightBeforeMeal)
	set @PMSGOUT=SCOPE_IDENTITY();
	end
	end
	else if(@action='Update')
	Begin
	update  T_PL_PrescriptionDetails set  Height=@Height, BloodPressure=@BloodPressure, Weight=@Weight, OxygenLevel=@OxygenLevel,Pulse=@Pulse, Temperature=@Temperature ,Symptoms=@Symptoms, PatientHistory=@PatientHistory,  OtherAdvice=@OtherAdvice,GuardianName=@GuardianName,UpdatedOn=getdate(),UpdatedBy=@UserId where PatientID=@PatientID and PrescriptionId=@PrescriptionId;
		   set @PMSGOUT='2';  
	End
	else if(@action='BindPatientDetails')
	begin
	select pa.HospitalID, Pa.RegdNo,Us.FullName,Hm.HospitalName,Us.Gender,Us.Age,Us.Mobile,Us.Email,convert(varchar,Pa.DateOfAppointment,103)as DateOfAppointment ,Pa.PatientID
	from T_PL_PatientAppointment Pa 
	inner join M_PL_USER Us on Us.UserId=Pa.PatientID
	inner join M_PL_HospitalMaster Hm on Hm.HospitalID=Pa.HospitalID
	where Pa.DeletedFlag=0 and Us.DeletedFlag=0 and Hm.DeletedFlag=0 and Pa.PatientID=@UserId
		end
	else if(@action='DeleteToUpdatePresDig')
	Begin
	delete from T_PL_PrescribedDignosis where PrescriptionId=@PrescriptionId;
	set @PMSGOUT='2';
	End
	else if(@action='InsertPresDignosis')
	begin
	insert into T_PL_PrescribedDignosis (PrescriptionId,DignosisID,CreatedBy) values(@PrescriptionId,@DignosisID,@UserId)
		end
	else if(@action='DeleteToUpdatePresMed')
	Begin
	delete from T_PL_PrescribedMedicine where PrescriptionId=@PrescriptionId;
	set @PMSGOUT='2';
	End
	else if(@action='InsertPresMedicine')
	begin
	declare @od int
	select @od= Id from M_PL_MedicineMaster where Name=@MedicineName
	--insert into T_PL_PrescribedMedicine(PrescriptionId,Id,CreatedBy,MorningAfterMeal,MorningBeforeMeal,AfternoonAfterMeal,AfternoonBeforeMeal,NightAfterMeal,NightBeforeMeal,PatientID) values(@PrescriptionId,@od,@UserId,@MorningAfterMeal,@MorningBeforeMeal,@AfternoonAfterMeal,@AfternoonBeforeMeal,@NightAfterMeal,@NightBeforeMeal,@PatientID)
	insert into T_PL_PrescribedMedicine(PrescriptionId,Id,CreatedBy,DoseId,Duration,PatientID) values(@PrescriptionId,@Id,@UserId,@DoseId,@Duration,@PatientID)
	   set @PMSGOUT='9';
	   end
	else if(@action='GetAllPrescriptionDetails')
	begin
	SELECT p.HospitalID, p.PatientID, m.FullName, m.Gender,p.GuardianName, m.Email, m.Mobile, m.Age, p.Height, p.BloodPressure, p.Weight, p.OxygenLevel, p.Pulse,p.Temperature,p.Symptoms,
	p.PatientHistory, p.OtherAdvice,p.PrescriptionId,convert(varchar,pa.DateOfAppointment,103) as DateOfAppointment FROM  T_PL_PrescriptionDetails  p 
	INNER JOIN M_PL_USER m ON p.PatientID = m.UserId 
	inner join T_PL_PatientAppointment pa on pa.PatientID= p.PatientID
	where m.DeletedFlag=0 and p.DeletedFlag=0 order by PrescriptionId desc;
		end
	else if(@action='GetPrescriptionDetailsByPId')
	begin
	SELECT  p.PatientID,p.PrescriptionId, m.FullName, m.Gender,p.GuardianName, m.Email, m.Mobile, m.Age, p.Height, p.BloodPressure, p.Weight, p.OxygenLevel, p.Pulse,p.Temperature,p.Symptoms,
	p.PatientHistory, p.OtherAdvice ,pa.RegdNo,h.HospitalName,h.HospitalID,convert(varchar,pa.DateOfAppointment,103) as DateOfAppointment
	FROM T_PL_PrescriptionDetails  p 
	inner join T_PL_PatientAppointment pa on pa.PatientID= p.PatientID
	inner join M_PL_USER m ON p.PatientID = m.UserId 
	inner join M_PL_HospitalMaster h on h.HospitalID=m.HospitalID 
	and m.DeletedFlag=0 and p.DeletedFlag=0 where p.PrescriptionId=@PrescriptionId and p.PatientID=@PatientID 
		end
	else if(@action='PrintPrescriptionDetailsByPId')
	begin
	SELECT p.HospitalID,  p.PatientID, m.FullName, m.Gender,p.GuardianName, m.Email, m.Mobile, m.Age, p.Height, p.BloodPressure, p.Weight, p.OxygenLevel,p.Pulse,p.Temperature, p.Symptoms,
	p.PatientHistory, p.OtherAdvice ,pa.RegdNo,h.HospitalName,convert(varchar,pa.DateOfAppointment,103) as DateOfAppointment
	FROM T_PL_PrescriptionDetails  p 
	inner join T_PL_PatientAppointment pa on pa.PatientID= p.PatientID
	inner join M_PL_USER m ON p.PatientID = m.UserId 
	inner join M_PL_HospitalMaster h on h.HospitalID=m.HospitalID 
	where m.DeletedFlag=0 and p.DeletedFlag=0 and p.PrescriptionId=@PrescriptionId and p.PatientID=@PatientID 	
		end
	else if(@action='GetAllSelectedDignosis')
	begin
	SELECT  pd.DignosisID, d.Name
	FROM T_PL_PrescribedDignosis pd
	inner join M_PL_DignosisMaster d on pd.DignosisID= d.DignosisID 
	and pd.DeletedFlag=0 and d.DeletedFlag=0 where pd.PrescriptionId=@PrescriptionId     
	end
	else if(@action='GetAllSelectedMedicine')
	begin
	--SELECT  pm.Id,isnull(pm.MorningAfterMeal,'')as MorningAfterMeal,isnull(pm.MorningBeforeMeal,'')as MorningBeforeMeal ,isnull(pm.AfternoonAfterMeal,'')as AfternoonAfterMeal,isnull(pm.AfternoonBeforeMeal,'')as AfternoonBeforeMeal,isnull(pm.NightAfterMeal,'')as NightAfterMeal,isnull(pm.NightBeforeMeal,'')as NightBeforeMeal,isnull(mm.Name,'') as MedicineName,pm.PrescriptionId
	--FROM T_PL_PrescribedMedicine pm
	--inner join M_PL_MedicineMaster mm on pm.Id= mm.Id 
	--and pm.DeletedFlag=0 and mm.DeletedFlag=0 where pm.PrescriptionId= @PrescriptionId   
	SELECT  isnull(mm.Name,'') as MedicineName,pm.PrescriptionId,Duration,DoseId,pm.Id
	FROM T_PL_PrescribedMedicine pm
	inner join M_PL_MedicineMaster mm on pm.Id= mm.Id 
	and pm.DeletedFlag=0 and mm.DeletedFlag=0 where pm.PrescriptionId= @PrescriptionId   
	end
	else if(@action='DeletePrescription')
	Begin
		 update T_PL_PrescriptionDetails set DeletedFlag=1  where PrescriptionId=@PrescriptionId  
	  set @PMSGOUT='3';
	  End
	else if(@action='HospitalAddressbind')
	select h.HospitalID,h.HEmail,h.HWebsite,p.HospitalID,
	h.Address,h.City,h.PinCode,h.GSTNo,h.State,h.RegstrationNo,h.LandlineNo,
	h.MobielNo from  M_PL_HospitalMaster h
	inner join T_PL_PrescriptionDetails p
	on h.HospitalID=p.HospitalID
    where   h.DeletedFlag=0 and h.HospitalID= @HospitalID
	end
GO
/****** Object:  StoredProcedure [dbo].[Usp_SampleCollection]    Script Date: 20-04-2023 17:50:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[Usp_SampleCollection](
@Sid int=0,
@PathoBillId int=0,
@CollectionId varchar(100)=null,
@LabTestId int=0,
@BarCode varchar(100)=null,
@UserId int=0,
@SampleColNo int=0,
@action varchar(100),
@PMSGOUT varchar(100) output)
as 
begin
if(@action='InsertSampleCollectionInfo')
begin
 IF Exists (Select 1 from TBL_CollectionNo where DeletedFlag=0 AND PathoBillId=@PathoBillId )
			BEGIN
				SET @PMSGOUT='4';			
			END
      else 
        begin
          insert into TBL_CollectionNo(PathoBillId,CollectionId,CreatedBy) 
		  values(@PathoBillId,@CollectionId,@UserId)
          set @PMSGOUT=SCOPE_IDENTITY();
         end
   end
   else if(@action='CollectionInformation')
   begin
		   update T_PL_PathoBill set CollectionFlag=1 where PathoBillId =@PathoBillId 
          insert into T_PL_SampleCollection(SampleColNo,LabTestId,BarCode,CreatedBy) 
		  values(@SampleColNo,@LabTestId,@BarCode,@UserId)
          set @PMSGOUT='1';
         end
end
GO
/****** Object:  StoredProcedure [dbo].[USP_Slot_Master]    Script Date: 20-04-2023 17:50:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[USP_Slot_Master]
(
@SlotID int=0,
@SlotName varchar(30)=null,
@HospitalID int=0,
@Slot_TimeFrom varchar(100)=null,
@Slot_TimeTo varchar(100)=null,
@UpdatedOn date=null,
@Capacity int=20,
@UpdatedBy varchar(50)=null,
@mode varchar(30),
@PMSGOUT varchar(100) output
)
as
begin
		if(@mode='IU')
		begin
		   if(@SlotID=0)
			   begin	
			   --IF Exists (Select 1 from M_PL_Slot_Master where DeletedFlag=0 and Slot_TimeFrom=@Slot_TimeFrom and Slot_TimeTo=@Slot_TimeTo and HospitalID=@HospitalID and SlotName=@SlotName )
				
					IF Exists (Select 1 from M_PL_Slot_Master where DeletedFlag=0 and HospitalID=@HospitalID and SlotName=@SlotName )
						begin
						   SET @PMSGOUT='4'; 
						end
					else
					begin
					   insert into M_PL_Slot_Master(SlotName, HospitalID, Slot_TimeFrom,Capacity,Slot_TimeTo,CreatedBy)
					   values(@SlotName,@HospitalID,@Slot_TimeFrom,@Capacity,@Slot_TimeTo,@SlotID)
					   set @PMSGOUT='1';
					end
			   end
		   else
			   begin
			   IF Exists (Select 1 from M_PL_Slot_Master where DeletedFlag=0 AND Slot_TimeFrom=@Slot_TimeFrom and Slot_TimeTo=@Slot_TimeTo and SlotID!=@SlotID)
						begin
						   SET @PMSGOUT='4'; 
						end
				   else
				   begin
					   update M_PL_Slot_Master set SlotName=@SlotName,HospitalID=@HospitalID,Slot_TimeFrom=@Slot_TimeFrom,Capacity=@Capacity,Slot_TimeTo=@Slot_TimeTo,UpdatedOn=getdate(),UpdatedBy=@SlotID where SlotID=@SlotID
					   set @PMSGOUT='2';
				   end
				end
		end
else if(@mode='D')
	 begin
	 update M_PL_Slot_Master set DeletedFlag=1  where SlotID=@SlotID
	 set @PMSGOUT='3';
	 end
else if(@mode='S')
    select *  from M_PL_Slot_Master where SlotID=@SlotID
 else if(@mode='A')
 begin
 if(@HospitalID=0)
	  begin
			select SlotID, SlotName, HospitalName, Slot_TimeFrom, Capacity,Slot_TimeTo,s.DeletedFlag
			from M_PL_Slot_Master s,M_PL_HospitalMaster H where s.DeletedFlag=0 and s.HospitalID=h.HospitalID order by SlotID desc
	  end
else
	 begin
			select SlotID, SlotName, HospitalName, Slot_TimeFrom, Capacity,Slot_TimeTo,s.DeletedFlag
			from M_PL_Slot_Master s,M_PL_HospitalMaster H where s.DeletedFlag=0 and s.HospitalID=h.HospitalID and s.HospitalID=@HospitalID order by SlotID desc
	 end
 
 end

			
 --else if(@mode='Bind')
 --  begin
 --  select RoleId, RoleName  from M_PL_RoleMaster where DeletedFlag=0
 --  end

 
 --end

end
GO
