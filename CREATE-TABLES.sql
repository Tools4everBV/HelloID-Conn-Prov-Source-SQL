/******* REPLACE 'HRManagemenDemo' WITH YOUR OWN DATABASE-NAME*********/
USE [HRManagementDemo]
GO
/****** Object:  Table [dbo].[T4E_IAM_Contracts]    Script Date: 20-10-2023 10:16:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T4E_IAM_Contracts](
	[Medewerker] [nvarchar](50) NOT NULL,
	[Volgnummer_contract] [int] NOT NULL,
	[Soort_medewerker] [nvarchar](50) NULL,
	[Aantal_FTE] [float] NULL,
	[Begindatum_contract] [date] NOT NULL,
	[Einddatum_contract] [date] NULL,
	[Leidinggevende] [nvarchar](50) NULL,
	[Vervangende_leidinggevende] [nvarchar](50) NULL,
	[Werkgever] [int] NULL,
	[Organisatorische_eenheid] [nvarchar](50) NOT NULL,
	[Functie] [nvarchar](50) NOT NULL,
	[Kostenplaats] [nvarchar](50) NULL,
	[lang_id] [int] NULL,
 CONSTRAINT [PK_T4E_IAM_Contracts_1] PRIMARY KEY CLUSTERED 
(
	[Medewerker] ASC,
	[Volgnummer_contract] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T4E_IAM_CostBearer]    Script Date: 20-10-2023 10:16:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T4E_IAM_CostBearer](
	[Kostendrager] [nvarchar](50) NOT NULL,
	[Omschrijving] [nvarchar](50) NULL,
	[Geblokkeerd] [bit] NULL,
 CONSTRAINT [PK_T4E_IAM_CostBearer] PRIMARY KEY CLUSTERED 
(
	[Kostendrager] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T4E_IAM_CostCenters]    Script Date: 20-10-2023 10:16:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T4E_IAM_CostCenters](
	[Kostenplaats] [nvarchar](50) NOT NULL,
	[Omschrijving] [nvarchar](50) NULL,
	[Geblokkeerd] [bit] NULL,
 CONSTRAINT [PK_T4E_IAM_CostCenters] PRIMARY KEY CLUSTERED 
(
	[Kostenplaats] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T4E_IAM_OrganizationalFunctions]    Script Date: 20-10-2023 10:16:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T4E_IAM_OrganizationalFunctions](
	[Functie] [nvarchar](50) NOT NULL,
	[Omschrijving] [nvarchar](50) NULL,
	[lang_id] [int] NULL,
 CONSTRAINT [PK_T4E_IAM_OrganizationalFunctions] PRIMARY KEY CLUSTERED 
(
	[Functie] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T4E_IAM_OrganizationalUnits]    Script Date: 20-10-2023 10:16:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T4E_IAM_OrganizationalUnits](
	[Organisatorische_eenheid] [nvarchar](50) NOT NULL,
	[Omschrijving] [nvarchar](50) NULL,
	[Leidinggevende] [nvarchar](50) NULL,
	[Parent] [nvarchar](50) NULL,
	[lang_id] [int] NULL,
 CONSTRAINT [PK_T4E_IAM_OrganizationalUnits] PRIMARY KEY CLUSTERED 
(
	[Organisatorische_eenheid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T4E_IAM_Organizations]    Script Date: 20-10-2023 10:16:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T4E_IAM_Organizations](
	[Werkgever] [int] NOT NULL,
	[Naam_werkgever] [nvarchar](50) NULL,
 CONSTRAINT [PK_T4E_IAM_Organizations] PRIMARY KEY CLUSTERED 
(
	[Werkgever] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T4E_IAM_Persons]    Script Date: 20-10-2023 10:16:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T4E_IAM_Persons](
	[Medewerker] [nvarchar](50) NOT NULL,
	[Nummer] [int] NULL,
	[BSN] [int] NULL,
	[Initials] [nvarchar](50) NULL,
	[Nickname] [nvarchar](50) NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[NamePrefix] [nvarchar](50) NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[Geboortedatum] [date] NULL,
	[Geslacht_code] [nvarchar](50) NULL,
	[Burgelijke_staat] [nvarchar](50) NULL,
	[PartnerNamePrefix] [nvarchar](50) NULL,
	[PartnerName] [nvarchar](50) NULL,
	[Naamgebruik_code] [int] NULL,
	[Straat] [nvarchar](50) NULL,
	[Straat_toevoeging] [nvarchar](50) NULL,
	[Huisnummer] [int] NULL,
	[Huisnummer_toevoeging] [nvarchar](50) NULL,
	[Postcode] [nvarchar](50) NULL,
	[Woonplaats] [nvarchar](50) NULL,
	[Land] [nvarchar](50) NULL,
	[Mobiel_prive] [nvarchar](50) NULL,
	[Mobiel_werk] [nvarchar](50) NULL,
	[Telefoonnr_prive] [nvarchar](50) NULL,
	[Telefoonnr_werk] [nvarchar](50) NULL,
	[E-mail_prive] [nvarchar](50) NULL,
	[E-mail_werk] [nvarchar](50) NULL,
	[Geblokkeerd] [bit] NULL,
	[Datum_in_dienst] [date] NULL,
	[Datum_uit_dienst] [date] NULL,
	[MultipleContracts] [bit] NULL,
	[lang_id] [int] NULL,
 CONSTRAINT [PK_T4E_IAM_Persons] PRIMARY KEY CLUSTERED 
(
	[Medewerker] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T4E_IAM_Placements]    Script Date: 20-10-2023 10:16:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T4E_IAM_Placements](
	[Medewerker] [nvarchar](50) NOT NULL,
	[Dienstverband] [int] NOT NULL,
	[Status_dienstverband_code] [nvarchar](50) NULL,
	[Dienstverband_is_hoofddienstverband] [bit] NULL,
	[Aantal_FTE] [float] NULL,
	[Begindatum] [date] NULL,
	[Einddatum] [date] NULL,
	[Leidinggevende] [nvarchar](50) NULL,
	[Vervangende_leidinggevende] [nvarchar](50) NULL,
	[Werkgever] [int] NULL,
	[Organisatorische_eenheid] [nvarchar](50) NOT NULL,
	[Functie] [nvarchar](50) NOT NULL,
	[Kostenplaats] [nvarchar](50) NULL,
	[Kostendrager] [nvarchar](50) NULL,
	[lang_id] [int] NULL,
 CONSTRAINT [PK_T4E_IAM_Placements] PRIMARY KEY CLUSTERED 
(
	[Medewerker] ASC,
	[Organisatorische_eenheid] ASC,
	[Functie] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T4E_IAM_Positions]    Script Date: 20-10-2023 10:16:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T4E_IAM_Positions](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Medewerker] [nvarchar](50) NULL,
	[Werkgever] [nvarchar](50) NULL,
	[Organisatorische_eenheid] [nvarchar](50) NULL,
	[Functie] [nvarchar](50) NULL,
	[Percentage] [nvarchar](50) NULL,
	[Kostenplaats] [nvarchar](50) NULL,
	[Kostendrager] [nvarchar](50) NULL,
	[Omschrijving] [nvarchar](50) NULL,
	[Begindatum] [date] NULL,
	[Einddatum] [date] NULL,
	[Koppeling_contract] [nchar](10) NULL,
	[Volgnummer_diensverband] [nchar](10) NULL,
	[Volgnummer_formatieverdeling] [nchar](10) NULL,
	[GUID] [nchar](10) NULL,
	[lang_id] [int] NULL,
 CONSTRAINT [PK_T4E_IAM_Positions] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
