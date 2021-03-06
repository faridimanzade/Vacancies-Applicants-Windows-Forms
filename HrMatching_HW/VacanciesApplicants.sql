USE [HrMatching]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 28/12/2020 15:34:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CVs]    Script Date: 28/12/2020 15:34:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CVs](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Surname] [nvarchar](max) NOT NULL,
	[Gender] [nvarchar](max) NOT NULL,
	[Age] [int] NOT NULL,
	[Education] [nvarchar](max) NOT NULL,
	[Job] [nvarchar](max) NOT NULL,
	[Experience] [nvarchar](max) NOT NULL,
	[City] [nvarchar](max) NOT NULL,
	[MinSalary] [int] NOT NULL,
	[Phone] [nvarchar](max) NOT NULL,
	[UserId] [int] NOT NULL,
 CONSTRAINT [PK_dbo.CVs] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 28/12/2020 15:34:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](max) NOT NULL,
	[Email] [nvarchar](max) NOT NULL,
	[Status] [int] NOT NULL,
	[Password] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_dbo.Users] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Vacancies]    Script Date: 28/12/2020 15:34:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vacancies](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[VacancyName] [nvarchar](max) NOT NULL,
	[CompanyName] [nvarchar](max) NOT NULL,
	[Age] [int] NOT NULL,
	[Education] [nvarchar](max) NOT NULL,
	[Experience] [nvarchar](max) NOT NULL,
	[Job] [nvarchar](max) NOT NULL,
	[JobDescription] [nvarchar](max) NOT NULL,
	[City] [nvarchar](max) NOT NULL,
	[SalaryOffer] [int] NOT NULL,
	[Phone] [nvarchar](max) NOT NULL,
	[UserId] [int] NOT NULL,
 CONSTRAINT [PK_dbo.Vacancies] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VacancyCVs]    Script Date: 28/12/2020 15:34:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VacancyCVs](
	[Vacancy_id] [int] NOT NULL,
	[CV_id] [int] NOT NULL,
 CONSTRAINT [PK_dbo.VacancyCVs] PRIMARY KEY CLUSTERED 
(
	[Vacancy_id] ASC,
	[CV_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'202007131623508_createDB', N'HrMatching_HW.Migrations.Configuration', 0x1F8B0800000000000400ED5C5B6FDB36147E1FB0FF20E8691BD228495FB6C06E9139C99AADB9204EB3BD05B4443BC2244A13A9CCC6B05FB687FDA4FD8591D48D37DD2CD74ED3A240D150E4770E0F0FCF85E734FFFDF3EFE8ED320CAC2798603F4263FB70FFC0B6207223CF478BB19D92F9ABEFEDB76FBEFE6A74E6854BEBBE98F79ACDA32B111EDB8F84C4C78E83DD471802BC1FFA6E12E1684EF6DD28748017394707073F3887870EA41036C5B2ACD16D8A881F42FE03FD71122117C62405C165E4C100E7E3F4CB94A35A57208438062E1CDBEF924B40DC47CADFC3BB5FF74F67742D814B826DEB24F001E5670A83B96D0184220208E5F6F8038653924468318DE90008EE5631A4F3E620C030DFC57135BDEB860E8ED8869C6A6101E5A69844614FC0C3D7B9841C75F95A72B64B0952199E51599315DB3597E3D89EDCDB964AE67812246C8A2A607E20FB93FB3D4B1ADF2B7581AA0CFBB3674DD280A4091C23989204047BD64D3A0B7CF717B8BA8B7E87688CD22010F9A29CD16FD2001DBA49A2182664750BE739B7BE675B8EBCCE511796CB8435D96E2E10797D645B5794389805B03C7661E7531225F02788600208F46E002130A1A776E1412E388DBA428BFD5D50A37A46E5635B9760F91EA205791CDBF49FB675EE2FA1578CE41C7C403EBD677411495268E0B099EA344DD04E0853417930D93EDD93056C3BD36680332F75F31BB56DDE7F8E66DB277AB6A43FF9D498EF404926FCDE6C9BEAA58FA62000C96A98A2DC3C46680732A36E2AB968B55B0AC61578F2175CAB0D68B6750B03FE113FFA71E619A9297FC8BE9D2751781B05DC1FF0A1876994265C5B2279FC0E240B48BAD3BE072E40AE0FB19181ECEBEA61728F452684E19260C188F8AD60526466E4543EAED1F3653BEFE7FBD89A2FDEAF496B77E388CE42E0073B70BC546E291E686100C67F4689B705EE075E52D55488E3B5D75432266BDDD31CA9EF55CD977DB9AD75B47201ED26649D44610CD08E887FCAE1E32E23B99D84AE94E829C46EE2C7BB11F86EC2D72C76BD9ECFABF4EA330E607978B85EF8A8C6B1A6D072701CDDC943D671521B56D779C8138C23D7E73CC8A69CCB41DECB19F2AC06A1645A216C81EA0675877E4C1D20A53CB6BFD3A463462CDD7F85C85E961AC1468EB0936E1BE4026EE34796F646B6288738156476E032DEA1864763029830A70C8209D51B1A65F888E801844F43B018040DA495351DC30E26E9125DFD720A63F68883488310BB902D2EBC4EBAA4A0C4426D52E9A11E451E5B778C5A52DB434B8D40DB550585EA16B44011D8335380CC2CB2C77EBA02263903559C9F97010C190365324F1A70EED8D49366C8534844C753596141673415911732699896665AD2B25848C73480D288291882A854A0DC3F0A330CEE533DB566C751722C31AB1D7DB3AF104038836AB2246FA9C7763321D7EF57B715ED7E64ED1D4BF64240C93564F0A6CB373C7DBF46B3D868189B8FA4D1140ED85A11E89437BAAAF93959D1AF280E3A35D5C1D12588637AF3856A613E624DB352E1E4D5B47FF52CCC301C171B8A6825B725259A8F830554BEB25CD783E77E82C92920600658E03BF1426D9A6EBF6AAC4441AF3251FA291556A398CBFEAD9A49B966CAAC9A6EE7F3F5E7746321730FFCCD41D2127D112FD5B2FCC5F0B83189823444F53EAA7E75F65420AECF46BA2394653211A41CEC8E5354BD449862AC3B0A7F841021F840F7F5C21B8488220C77C7E289BD88C2077AF0223C4A48CC08E3DDD1B28C5BC499189EB39A1084E28F08230C77C7CA136811271FEA8E51C44622485DBCC4AC9C72EBB4884ABBDF8AA5554D4527439259ED8D981293D7E9604CCCCB3E8E39A96A15EAA1F4350779ED41D2FB6CA88769CA0B099265CAC77AA86A594A90B4B51C7D36AA5645501B51B72226EEAF71B52B3F8ED2494FEE228CF4A187A5145FD12583297EF8347DD2667DCA500FA7BE422B50D2B76D7A3AE99D58B21EE287CFD9DBC95987C90EE5F971774393CDAFB1257A44CC9226B32110736A5D309D0C5081647EF01128F763AAF6A9A913533437ECC78F9A1CEA27A9E588EA94528FCA5C51C90947797ED6DE56AA256CD914DBA2BC3FF91E4BD6A62B4C60B8CF26EC4FFF082601B548A49A7009903F8798641564FBE8E0F048E9497D3EFDA10EC65ED0DA242A1FD7160AE03E93676B89BB67594AAC37A32790B88F20F92604CB6F87F65C0E0393FB28876109C56D2EC2A1A5ED61DC0825E361407ADD7B189E58D61D86A4751AAE2376A94C3B8C1FB9F4CA99D1DEC12FA8BE2DC7F65F7CC9B175F1DB43B66ACFBA4EA8261E5B07D6DF2D84FBF5D9BD0CF3A136B80D5469B1696DA035921AD1D65240A50DAD0F3FBD5BB95E8636181AA806DA24BD29EA25F9824D9BF08DF916738BD173F12F8656A02F1EC66456D68B521B13287DBA31B569374522957E62AB56F6109D411FEFD7A0CD176DE0C41A3B968C09B05E48EDD2CA73A8A5DED7E814069040EBC4CDF2AB09C02EF07471B1D4B4850356F6D779E8D24032A401688B4D3FC60A60CF1BB38D769FB6870AA94ADDD2EDF3A254A6E3016E555B6ADF82B6A8288DCD6159F744EF4EAEB50CD486CEB9A6BEF6B14EFAB9F57FF56F001C7CC6AD76E4133BD98E9777E74D7D7AEF8C7A426AC35E4DBF5EF6843BB6BD59444F328B604C5D67A646BEDA3E3E13A8B9F9C9DCE2B76A6AF03381D7B69ED51130CA43F8564F6465924E5B9761D948D6D86C5853F230995443ADB643D35DB56BA532B3B91E43B191B179B3E6528A625BE496AAE7B1C5816D94E2CDA9DA3B3A6CADCBA96FBB51B2FF665A4F75330D917A518BDA60E137AA50CB8FFD4505C17EBF0A82AE647DCB3917681E154E40E1A898A23E7E43023C6A9A4F12E2CF814BE8671762CCFF97D13D0852FECC3983DE05BA4E499C12BA6518CE02E93C993369A2CFBB3E659E47D7FCA9066F620B944D9F6E015EA31F533FF04ABECF0DF96D0D04F352F9C3223B4BC21E1817AB12E94A2BA0D701E5E22B9DEB1D0CE38082E16B34054F701DDEA8A2BE870BE0AE8ADA643D48FB41C8621F9DFA60918010E718D57AFA23D5612F5CBEF91F4B43DC1D58480000, N'6.4.4')
GO
SET IDENTITY_INSERT [dbo].[CVs] ON 

INSERT [dbo].[CVs] ([id], [Name], [Surname], [Gender], [Age], [Education], [Job], [Experience], [City], [MinSalary], [Phone], [UserId]) VALUES (1, N'Farid', N'Imanzade', N'Male', 20, N'High', N'Developer', N'More than 5 years', N'Baku', 1500, N'+994505178454', 1)
INSERT [dbo].[CVs] ([id], [Name], [Surname], [Gender], [Age], [Education], [Job], [Experience], [City], [MinSalary], [Phone], [UserId]) VALUES (2, N'Rasim', N'Mammadov', N'Male', 19, N'Middle', N'IT Specialist', N'Less than 1 year', N'Baku', 800, N'+994506549875', 3)
INSERT [dbo].[CVs] ([id], [Name], [Surname], [Gender], [Age], [Education], [Job], [Experience], [City], [MinSalary], [Phone], [UserId]) VALUES (5, N'Fidan', N'Kilinc', N'Female', 21, N'High', N'Manager', N'3-5 years', N'Ankara', 600, N'(+994) 70-985-46-51', 13)
INSERT [dbo].[CVs] ([id], [Name], [Surname], [Gender], [Age], [Education], [Job], [Experience], [City], [MinSalary], [Phone], [UserId]) VALUES (6, N'Alena', N'Leyn', N'Female', 25, N'Low', N'Cooker', N'1-3 years', N'Amsterdam', 1200, N'(+894) 98-498-49-85', 14)
INSERT [dbo].[CVs] ([id], [Name], [Surname], [Gender], [Age], [Education], [Job], [Experience], [City], [MinSalary], [Phone], [UserId]) VALUES (7, N'Meherrem', N'Guliyev', N'Male', 26, N'Low', N'Police', N'3-5 years', N'Paris', 2100, N'(+504) 54-654-65-44', 15)
INSERT [dbo].[CVs] ([id], [Name], [Surname], [Gender], [Age], [Education], [Job], [Experience], [City], [MinSalary], [Phone], [UserId]) VALUES (8, N'Frodo', N'Baggins', N'Male', 30, N'Low', N'Electric', N'More than 5 years', N'Doha', 650, N'(+654) 65-656-56-56', 18)
INSERT [dbo].[CVs] ([id], [Name], [Surname], [Gender], [Age], [Education], [Job], [Experience], [City], [MinSalary], [Phone], [UserId]) VALUES (9, N'Pippin', N'Took', N'Male', 40, N'High', N'Farmer', N'3-5 years', N'Dublin', 550, N'(+784) 78-941-53-65', 19)
SET IDENTITY_INSERT [dbo].[CVs] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([id], [Username], [Email], [Status], [Password]) VALUES (1, N'Farid', N'farid@gmail.com', 1, N'Farid_123')
INSERT [dbo].[Users] ([id], [Username], [Email], [Status], [Password]) VALUES (2, N'Hesen', N'hesen@gmail.com', 2, N'Hesen_123')
INSERT [dbo].[Users] ([id], [Username], [Email], [Status], [Password]) VALUES (3, N'Rasim', N'rasim@gmail.com', 1, N'Rasim_123')
INSERT [dbo].[Users] ([id], [Username], [Email], [Status], [Password]) VALUES (4, N'Ismayil', N'ismayil@gmail.com', 2, N'Ismayil_123')
INSERT [dbo].[Users] ([id], [Username], [Email], [Status], [Password]) VALUES (5, N'Ahmet', N'ahmet@gmail.com', 2, N'Ahmet_123')
INSERT [dbo].[Users] ([id], [Username], [Email], [Status], [Password]) VALUES (6, N'Rahman', N'rahman@gmail.com', 2, N'Rahman_123')
INSERT [dbo].[Users] ([id], [Username], [Email], [Status], [Password]) VALUES (8, N'Mark', N'mark@gmail.com', 2, N'Mark_123')
INSERT [dbo].[Users] ([id], [Username], [Email], [Status], [Password]) VALUES (13, N'Fidan', N'fidan@gmail.com', 1, N'Fidan_123')
INSERT [dbo].[Users] ([id], [Username], [Email], [Status], [Password]) VALUES (14, N'Alena', N'alena@gmail.com', 1, N'Alena_123')
INSERT [dbo].[Users] ([id], [Username], [Email], [Status], [Password]) VALUES (15, N'Mety', N'mety@gmail.com', 1, N'Mety_123')
INSERT [dbo].[Users] ([id], [Username], [Email], [Status], [Password]) VALUES (16, N'Gendalf', N'gendalf@gmail.com', 2, N'Gendalf_123')
INSERT [dbo].[Users] ([id], [Username], [Email], [Status], [Password]) VALUES (17, N'Saruman', N'saruman@gmail.com', 2, N'Saruman_123')
INSERT [dbo].[Users] ([id], [Username], [Email], [Status], [Password]) VALUES (18, N'Frodo', N'frodo@gmail.com', 1, N'Frodo_123')
INSERT [dbo].[Users] ([id], [Username], [Email], [Status], [Password]) VALUES (19, N'Pippin', N'pippin@gmail.com', 1, N'Pippin_123')
INSERT [dbo].[Users] ([id], [Username], [Email], [Status], [Password]) VALUES (20, N'Samwise', N'samwise@gmail.com', 1, N'Samwise_123')
INSERT [dbo].[Users] ([id], [Username], [Email], [Status], [Password]) VALUES (21, N'Puste', N'puste@gmail.com', 2, N'Puste_123')
INSERT [dbo].[Users] ([id], [Username], [Email], [Status], [Password]) VALUES (22, N'Radagast', N'radagast@gmail.com', 2, N'Radagast_123')
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
SET IDENTITY_INSERT [dbo].[Vacancies] ON 

INSERT [dbo].[Vacancies] ([id], [VacancyName], [CompanyName], [Age], [Education], [Experience], [Job], [JobDescription], [City], [SalaryOffer], [Phone], [UserId]) VALUES (1, N'Hiring Developer', N'Code Academy', 20, N'High', N'1-3', N'Developer', N'Full-time', N'Baku', 1550, N'+994505545654', 2)
INSERT [dbo].[Vacancies] ([id], [VacancyName], [CompanyName], [Age], [Education], [Experience], [Job], [JobDescription], [City], [SalaryOffer], [Phone], [UserId]) VALUES (2, N'Hiring IT Specialist', N'Labrin', 20, N'High', N'5+', N'IT Specialist', N'Part-time', N'Baku', 1000, N'+994501236585', 4)
INSERT [dbo].[Vacancies] ([id], [VacancyName], [CompanyName], [Age], [Education], [Experience], [Job], [JobDescription], [City], [SalaryOffer], [Phone], [UserId]) VALUES (3, N'Hiring Cooker', N'Elvet', 24, N'Low', N'3-5 years', N'Cooker', N'Full-time', N'Helsinki', 900, N'(+654) 14-659-46-59', 5)
INSERT [dbo].[Vacancies] ([id], [VacancyName], [CompanyName], [Age], [Education], [Experience], [Job], [JobDescription], [City], [SalaryOffer], [Phone], [UserId]) VALUES (4, N'Hiring Electric', N'Steel Company', 27, N'Middle', N'More than 5 years', N'Electric', N'Free-lance', N'Doha', 300, N'(+544) 89-548-95-48', 8)
INSERT [dbo].[Vacancies] ([id], [VacancyName], [CompanyName], [Age], [Education], [Experience], [Job], [JobDescription], [City], [SalaryOffer], [Phone], [UserId]) VALUES (5, N'Hiring Journalist', N'TV8', 18, N'Low', N'Less than 1 year', N'Journalist', N'Part-time', N'Bangkok', 215, N'(+954) 84-658-94-89', 6)
INSERT [dbo].[Vacancies] ([id], [VacancyName], [CompanyName], [Age], [Education], [Experience], [Job], [JobDescription], [City], [SalaryOffer], [Phone], [UserId]) VALUES (6, N'Hiring Seller', N'Galaxy', 18, N'Low', N'Less than 1 year', N'Seller', N'Part-time', N'Tokyo', 850, N'(+884) 79-464-46-44', 2)
INSERT [dbo].[Vacancies] ([id], [VacancyName], [CompanyName], [Age], [Education], [Experience], [Job], [JobDescription], [City], [SalaryOffer], [Phone], [UserId]) VALUES (7, N'Hiring Architect', N'Mordor', 21, N'High', N'More than 5 years', N'Architect', N'Full-time', N'Amsterdam', 650, N'(+564) 56-556-56-56', 16)
INSERT [dbo].[Vacancies] ([id], [VacancyName], [CompanyName], [Age], [Education], [Experience], [Job], [JobDescription], [City], [SalaryOffer], [Phone], [UserId]) VALUES (8, N'Hiring Auditor', N'Isengard', 30, N'High', N'1-3 years', N'Auditor', N'Free-lance', N'Ankara', 5100, N'(+644) 56-565-65-65', 16)
INSERT [dbo].[Vacancies] ([id], [VacancyName], [CompanyName], [Age], [Education], [Experience], [Job], [JobDescription], [City], [SalaryOffer], [Phone], [UserId]) VALUES (9, N'Hiring Botanic', N'Haradrim', 25, N'Middle', N'3-5 years', N'Botanic', N'Part-time', N'Baku', 350, N'(+994) 70-544-54-54', 16)
INSERT [dbo].[Vacancies] ([id], [VacancyName], [CompanyName], [Age], [Education], [Experience], [Job], [JobDescription], [City], [SalaryOffer], [Phone], [UserId]) VALUES (10, N'Hiring Cooker', N'Minas-Morgul', 21, N'Low', N'Less than 1 year', N'Cooker', N'Part-time', N'Beijing', 200, N'(+844) 58-798-62-33', 17)
INSERT [dbo].[Vacancies] ([id], [VacancyName], [CompanyName], [Age], [Education], [Experience], [Job], [JobDescription], [City], [SalaryOffer], [Phone], [UserId]) VALUES (11, N'Hiring Developer', N'Helm''s Deepth', 27, N'Low', N'1-3 years', N'Developer', N'Full-time', N'Bangkok', 900, N'(+544) 65-665-58-79', 17)
INSERT [dbo].[Vacancies] ([id], [VacancyName], [CompanyName], [Age], [Education], [Experience], [Job], [JobDescription], [City], [SalaryOffer], [Phone], [UserId]) VALUES (12, N'Hiring Doctor', N'Rivendel', 24, N'High', N'More than 5 years', N'Doctor', N'Full-time', N'Berlin', 3210, N'(+794) 35-199-11-11', 17)
INSERT [dbo].[Vacancies] ([id], [VacancyName], [CompanyName], [Age], [Education], [Experience], [Job], [JobDescription], [City], [SalaryOffer], [Phone], [UserId]) VALUES (13, N'Hiring Professor', N'Fistbala MMC', 20, N'High', N'3-5 years', N'Professor', N'Full-time', N'Florence', 2500, N'(+544) 65-465-46-54', 21)
INSERT [dbo].[Vacancies] ([id], [VacancyName], [CompanyName], [Age], [Education], [Experience], [Job], [JobDescription], [City], [SalaryOffer], [Phone], [UserId]) VALUES (14, N'Hiring Police', N'SWAT', 25, N'Low', N'More than 5 years', N'Police', N'Full-time', N'London', 1350, N'(+164) 65-465-46-54', 5)
SET IDENTITY_INSERT [dbo].[Vacancies] OFF
GO
INSERT [dbo].[VacancyCVs] ([Vacancy_id], [CV_id]) VALUES (1, 1)
INSERT [dbo].[VacancyCVs] ([Vacancy_id], [CV_id]) VALUES (2, 1)
INSERT [dbo].[VacancyCVs] ([Vacancy_id], [CV_id]) VALUES (7, 1)
INSERT [dbo].[VacancyCVs] ([Vacancy_id], [CV_id]) VALUES (8, 1)
INSERT [dbo].[VacancyCVs] ([Vacancy_id], [CV_id]) VALUES (9, 1)
INSERT [dbo].[VacancyCVs] ([Vacancy_id], [CV_id]) VALUES (10, 1)
INSERT [dbo].[VacancyCVs] ([Vacancy_id], [CV_id]) VALUES (11, 1)
INSERT [dbo].[VacancyCVs] ([Vacancy_id], [CV_id]) VALUES (12, 1)
INSERT [dbo].[VacancyCVs] ([Vacancy_id], [CV_id]) VALUES (13, 1)
INSERT [dbo].[VacancyCVs] ([Vacancy_id], [CV_id]) VALUES (1, 2)
INSERT [dbo].[VacancyCVs] ([Vacancy_id], [CV_id]) VALUES (2, 2)
INSERT [dbo].[VacancyCVs] ([Vacancy_id], [CV_id]) VALUES (7, 5)
INSERT [dbo].[VacancyCVs] ([Vacancy_id], [CV_id]) VALUES (9, 5)
INSERT [dbo].[VacancyCVs] ([Vacancy_id], [CV_id]) VALUES (3, 6)
INSERT [dbo].[VacancyCVs] ([Vacancy_id], [CV_id]) VALUES (5, 6)
INSERT [dbo].[VacancyCVs] ([Vacancy_id], [CV_id]) VALUES (6, 6)
INSERT [dbo].[VacancyCVs] ([Vacancy_id], [CV_id]) VALUES (3, 7)
INSERT [dbo].[VacancyCVs] ([Vacancy_id], [CV_id]) VALUES (7, 8)
INSERT [dbo].[VacancyCVs] ([Vacancy_id], [CV_id]) VALUES (8, 8)
INSERT [dbo].[VacancyCVs] ([Vacancy_id], [CV_id]) VALUES (9, 8)
INSERT [dbo].[VacancyCVs] ([Vacancy_id], [CV_id]) VALUES (10, 8)
INSERT [dbo].[VacancyCVs] ([Vacancy_id], [CV_id]) VALUES (11, 8)
INSERT [dbo].[VacancyCVs] ([Vacancy_id], [CV_id]) VALUES (12, 8)
INSERT [dbo].[VacancyCVs] ([Vacancy_id], [CV_id]) VALUES (7, 9)
INSERT [dbo].[VacancyCVs] ([Vacancy_id], [CV_id]) VALUES (8, 9)
INSERT [dbo].[VacancyCVs] ([Vacancy_id], [CV_id]) VALUES (9, 9)
INSERT [dbo].[VacancyCVs] ([Vacancy_id], [CV_id]) VALUES (10, 9)
INSERT [dbo].[VacancyCVs] ([Vacancy_id], [CV_id]) VALUES (11, 9)
INSERT [dbo].[VacancyCVs] ([Vacancy_id], [CV_id]) VALUES (12, 9)
GO
ALTER TABLE [dbo].[CVs]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CVs_dbo.Users_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([id])
GO
ALTER TABLE [dbo].[CVs] CHECK CONSTRAINT [FK_dbo.CVs_dbo.Users_UserId]
GO
ALTER TABLE [dbo].[Vacancies]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Vacancies_dbo.Users_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([id])
GO
ALTER TABLE [dbo].[Vacancies] CHECK CONSTRAINT [FK_dbo.Vacancies_dbo.Users_UserId]
GO
ALTER TABLE [dbo].[VacancyCVs]  WITH CHECK ADD  CONSTRAINT [FK_dbo.VacancyCVs_dbo.CVs_CV_id] FOREIGN KEY([CV_id])
REFERENCES [dbo].[CVs] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[VacancyCVs] CHECK CONSTRAINT [FK_dbo.VacancyCVs_dbo.CVs_CV_id]
GO
ALTER TABLE [dbo].[VacancyCVs]  WITH CHECK ADD  CONSTRAINT [FK_dbo.VacancyCVs_dbo.Vacancies_Vacancy_id] FOREIGN KEY([Vacancy_id])
REFERENCES [dbo].[Vacancies] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[VacancyCVs] CHECK CONSTRAINT [FK_dbo.VacancyCVs_dbo.Vacancies_Vacancy_id]
GO
