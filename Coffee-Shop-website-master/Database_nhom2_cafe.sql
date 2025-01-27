
USE [cafe]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 18/06/2024 09:54:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Email] [nvarchar](250) NULL,
	[PassWord] [nvarchar](250) NULL,
	[Role] [int] NULL,
	[FullName] [nvarchar](250) NULL,
	[Gender] [int] NULL,
	[PhoneNumber] [nvarchar](250) NULL,
	[Address] [nvarchar](250) NULL,
	[IsActive] [int] NULL,
 CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AccountImage]    Script Date: 18/06/2024 09:54:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AccountImage](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[AccountID] [int] NULL,
	[ImageID2] [int] NULL,
	[IsAvatar] [bit] NULL,
 CONSTRAINT [PK_AccountImage] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cart]    Script Date: 18/06/2024 09:54:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cart](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[AccountId] [int] NULL,
	[ProductDetailId] [int] NULL,
	[Quantity] [int] NULL,
 CONSTRAINT [PK_Cart] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Image]    Script Date: 18/06/2024 09:54:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Image](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ImageUrl] [nvarchar](250) NULL,
	[ImageName] [nvarchar](250) NULL,
 CONSTRAINT [PK_Image] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 18/06/2024 09:54:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[OrderCode] [nvarchar](250) NULL,
	[CustomerName] [nvarchar](250) NULL,
	[PhoneNumber] [nvarchar](250) NULL,
	[Address] [nvarchar](250) NULL,
	[Status] [int] NULL,
	[CreateDate] [datetime] NULL,
	[CreateBy] [nvarchar](250) NULL,
	[AccountID] [int] NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetails]    Script Date: 18/06/2024 09:54:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetails](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Quantity] [int] NULL,
	[TotalMoney] [decimal](18, 2) NULL,
	[OrderID] [int] NULL,
	[ProductDetailID] [int] NULL,
 CONSTRAINT [PK_OrderDetails] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 18/06/2024 09:54:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](250) NULL,
	[Name] [nvarchar](250) NULL,
	[IsActive] [bit] NULL,
	[Description] [nvarchar](250) NULL,
	[ProductTypeID] [int] NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductDetails]    Script Date: 18/06/2024 09:54:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductDetails](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ProductID] [int] NULL,
	[ProductSizeID] [int] NULL,
	[Price] [decimal](18, 2) NULL,
 CONSTRAINT [PK_ProductDetails] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductImage]    Script Date: 18/06/2024 09:54:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductImage](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ProductID] [int] NULL,
	[ImageUrl] [nvarchar](max) NULL,
	[FileName] [nvarchar](max) NULL,
 CONSTRAINT [PK_ProductImage] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductSize]    Script Date: 18/06/2024 09:54:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductSize](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](250) NULL,
	[Name] [nvarchar](250) NULL,
	[Description] [nvarchar](250) NULL,
 CONSTRAINT [PK_ProductSize] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductType]    Script Date: 18/06/2024 09:54:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductType](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](250) NULL,
	[Name] [nvarchar](250) NULL,
	[GroupType] [int] NULL,
	[Description] [nvarchar](250) NULL,
 CONSTRAINT [PK_ProductType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Account] ON 

INSERT [dbo].[Account] ([ID], [Email], [PassWord], [Role], [FullName], [Gender], [PhoneNumber], [Address], [IsActive]) VALUES (1, N'admin', N'1', 2, N'Admin', 0, N'0328104515', N'Hà Nội', 1)
INSERT [dbo].[Account] ([ID], [Email], [PassWord], [Role], [FullName], [Gender], [PhoneNumber], [Address], [IsActive]) VALUES (2, N'lekhoi200503@gmail.com', N'1', 2, N'Lê Minh Khôi', 0, N'0328104516', N'Quảng Ninh', 1)
INSERT [dbo].[Account] ([ID], [Email], [PassWord], [Role], [FullName], [Gender], [PhoneNumber], [Address], [IsActive]) VALUES (3, N'huyen@gmail.com', N'1', 2, N'Thanh Huyền', 1, N'0335149758', N'Hà Nội', 1)
INSERT [dbo].[Account] ([ID], [Email], [PassWord], [Role], [FullName], [Gender], [PhoneNumber], [Address], [IsActive]) VALUES (4, N'giang@gmail.com', N'1', 2, N'Hương Giang', 1, N'0376149756', N'Hưng Yên', 1)
INSERT [dbo].[Account] ([ID], [Email], [PassWord], [Role], [FullName], [Gender], [PhoneNumber], [Address], [IsActive]) VALUES (5, N'hung@gmail.com', N'1', 2, N'Đình Hùng', 0, N'03761496842', N'Hưng Yên', 1)
INSERT [dbo].[Account] ([ID], [Email], [PassWord], [Role], [FullName], [Gender], [PhoneNumber], [Address], [IsActive]) VALUES (6, N'lam@gmail.com', N'1', 1, N'Hoàng Lâm', 0, N'0251497581', N'Bắc Giang', 1)
INSERT [dbo].[Account] ([ID], [Email], [PassWord], [Role], [FullName], [Gender], [PhoneNumber], [Address], [IsActive]) VALUES (7, N'quy@gmail.com', N'1', 1, N'Văn Quý', 0, N'0376179255', N'Vĩnh Phúc', 1)
INSERT [dbo].[Account] ([ID], [Email], [PassWord], [Role], [FullName], [Gender], [PhoneNumber], [Address], [IsActive]) VALUES (8, N'khanh@gmail.com', N'1', 1, N'Phan Khánh', 0, N'0376149734', N'Vĩnh Phúc', 1)
INSERT [dbo].[Account] ([ID], [Email], [PassWord], [Role], [FullName], [Gender], [PhoneNumber], [Address], [IsActive]) VALUES (9, N'hue@gmail.com', N'1', 1, N'Trần Huệ', 1, N'0376149745', N'Hà Nội', 1)
INSERT [dbo].[Account] ([ID], [Email], [PassWord], [Role], [FullName], [Gender], [PhoneNumber], [Address], [IsActive]) VALUES (10, N'anh@gmail.com', N'1', 1, N'Việt Anh', 0, N'0451497683', N'Hưng Yên', 1)
INSERT [dbo].[Account] ([ID], [Email], [PassWord], [Role], [FullName], [Gender], [PhoneNumber], [Address], [IsActive]) VALUES (11, N'tuyet@gmail.com', N'1', 1, N'Ánh Tuyết', 1, N'0451497521', N'Bắc Giang', 1)
INSERT [dbo].[Account] ([ID], [Email], [PassWord], [Role], [FullName], [Gender], [PhoneNumber], [Address], [IsActive]) VALUES (12, N'quynh@gmail.com', N'1', 1, N'Như Quỳnh', 1, N'0335149734', N'Hà Nội', 1)
INSERT [dbo].[Account] ([ID], [Email], [PassWord], [Role], [FullName], [Gender], [PhoneNumber], [Address], [IsActive]) VALUES (13, N'huong@gmail.com', N'1', 1, N'Thúy Hường', 1, N'0351497332', N'Hà Nội', 1)
INSERT [dbo].[Account] ([ID], [Email], [PassWord], [Role], [FullName], [Gender], [PhoneNumber], [Address], [IsActive]) VALUES (14, N'trang@gmail.com', N'1', 1, N'Mai Trang', 1, N'0351497585', N'Bắc Giang', 1)
INSERT [dbo].[Account] ([ID], [Email], [PassWord], [Role], [FullName], [Gender], [PhoneNumber], [Address], [IsActive]) VALUES (15, N'hong@gmail.com', N'1', 1, N'Trần Hồng', 1, N'0376147326', N'Bắc Giang', 1)
INSERT [dbo].[Account] ([ID], [Email], [PassWord], [Role], [FullName], [Gender], [PhoneNumber], [Address], [IsActive]) VALUES (16, N'phuong@gmail.com', N'1', 1, N'Chúc Phương', 1, N'0869084265', N'Hồ Chí Minh', 1)
SET IDENTITY_INSERT [dbo].[Account] OFF
GO
SET IDENTITY_INSERT [dbo].[Cart] ON 

INSERT [dbo].[Cart] ([ID], [AccountId], [ProductDetailId], [Quantity]) VALUES (22, 4, 37, 2)
INSERT [dbo].[Cart] ([ID], [AccountId], [ProductDetailId], [Quantity]) VALUES (23, 4, 28, 1)
INSERT [dbo].[Cart] ([ID], [AccountId], [ProductDetailId], [Quantity]) VALUES (29, 10, 52, 1)
INSERT [dbo].[Cart] ([ID], [AccountId], [ProductDetailId], [Quantity]) VALUES (30, 10, 51, 1)
INSERT [dbo].[Cart] ([ID], [AccountId], [ProductDetailId], [Quantity]) VALUES (41, 8, 45, 1)
INSERT [dbo].[Cart] ([ID], [AccountId], [ProductDetailId], [Quantity]) VALUES (42, 7, 52, 1)
INSERT [dbo].[Cart] ([ID], [AccountId], [ProductDetailId], [Quantity]) VALUES (43, 7, 39, 1)
INSERT [dbo].[Cart] ([ID], [AccountId], [ProductDetailId], [Quantity]) VALUES (49, 12, 24, 1)
INSERT [dbo].[Cart] ([ID], [AccountId], [ProductDetailId], [Quantity]) VALUES (50, 16, 37, 1)
INSERT [dbo].[Cart] ([ID], [AccountId], [ProductDetailId], [Quantity]) VALUES (54, 15, 37, 1)
INSERT [dbo].[Cart] ([ID], [AccountId], [ProductDetailId], [Quantity]) VALUES (55, 14, 45, 1)
INSERT [dbo].[Cart] ([ID], [AccountId], [ProductDetailId], [Quantity]) VALUES (56, 14, 47, 1)
INSERT [dbo].[Cart] ([ID], [AccountId], [ProductDetailId], [Quantity]) VALUES (59, 3, 86, 1)
SET IDENTITY_INSERT [dbo].[Cart] OFF
GO
SET IDENTITY_INSERT [dbo].[Order] ON 

INSERT [dbo].[Order] ([ID], [OrderCode], [CustomerName], [PhoneNumber], [Address], [Status], [CreateDate], [CreateBy], [AccountID]) VALUES (7, N'MHĐ2024CFS1', N'Thanh Huyền', N'0376149756', N'Hà Nội', 1, CAST(N'2024-05-15T12:16:32.867' AS DateTime), N'Thanh Huyền', 3)
INSERT [dbo].[Order] ([ID], [OrderCode], [CustomerName], [PhoneNumber], [Address], [Status], [CreateDate], [CreateBy], [AccountID]) VALUES (8, N'MHĐ2024CFS2', N'Dương Giang', N'0376149834', N'Hưng Yên', 2, CAST(N'2024-05-01T12:16:32.867' AS DateTime), N'Hương Giang', 4)
INSERT [dbo].[Order] ([ID], [OrderCode], [CustomerName], [PhoneNumber], [Address], [Status], [CreateDate], [CreateBy], [AccountID]) VALUES (9, N'MHĐ2024CFS3', N'Hương Giang', N'0376149756', N'Hưng Yên', 2, CAST(N'2024-05-02T12:16:32.867' AS DateTime), N'Hương Giang', 4)
INSERT [dbo].[Order] ([ID], [OrderCode], [CustomerName], [PhoneNumber], [Address], [Status], [CreateDate], [CreateBy], [AccountID]) VALUES (10, N'MHĐ2024CFS4', N'Nguyễn Hùng', N'0869084206', N'Hưng Yên', 2, CAST(N'2024-05-03T12:16:32.867' AS DateTime), N'Đình Hùng', 5)
INSERT [dbo].[Order] ([ID], [OrderCode], [CustomerName], [PhoneNumber], [Address], [Status], [CreateDate], [CreateBy], [AccountID]) VALUES (11, N'MHĐ2024CFS5', N'Đình Hùng', N'0869084206', N'Hà Nội', 3, CAST(N'2024-05-04T12:16:32.867' AS DateTime), N'Đình Hùng', 5)
INSERT [dbo].[Order] ([ID], [OrderCode], [CustomerName], [PhoneNumber], [Address], [Status], [CreateDate], [CreateBy], [AccountID]) VALUES (12, N'MHĐ2024CFS6', N'Minh Khôi', N'0869084254', N'Hà Nội', 2, CAST(N'2024-05-05T12:16:32.867' AS DateTime), N'Lê Minh Khôi', 2)
INSERT [dbo].[Order] ([ID], [OrderCode], [CustomerName], [PhoneNumber], [Address], [Status], [CreateDate], [CreateBy], [AccountID]) VALUES (13, N'MHĐ2024CFS7', N'Lê Minh Khôi', N'0869084678', N'Quảng Ninh', 3, CAST(N'2024-05-06T12:16:32.867' AS DateTime), N'Lê Minh Khôi', 2)
INSERT [dbo].[Order] ([ID], [OrderCode], [CustomerName], [PhoneNumber], [Address], [Status], [CreateDate], [CreateBy], [AccountID]) VALUES (14, N'MHĐ2024CFS8', N'Việt Anh', N'0869084321', N'Hà Nội', 2, CAST(N'2024-05-07T12:16:32.867' AS DateTime), N'Việt Anh', 10)
INSERT [dbo].[Order] ([ID], [OrderCode], [CustomerName], [PhoneNumber], [Address], [Status], [CreateDate], [CreateBy], [AccountID]) VALUES (15, N'MHĐ2024CFS9', N'Thúy Hường', N'0374212204', N'Thái Bình', 3, CAST(N'2024-05-08T12:16:32.867' AS DateTime), N'Việt Anh', 10)
INSERT [dbo].[Order] ([ID], [OrderCode], [CustomerName], [PhoneNumber], [Address], [Status], [CreateDate], [CreateBy], [AccountID]) VALUES (16, N'MHĐ2024CFS10', N'Hồng Liễu', N'0869084270', N'Lào Cai', 2, CAST(N'2024-05-09T12:16:32.867' AS DateTime), N'Thúy Hường', 13)
INSERT [dbo].[Order] ([ID], [OrderCode], [CustomerName], [PhoneNumber], [Address], [Status], [CreateDate], [CreateBy], [AccountID]) VALUES (17, N'MHĐ2024CFS11', N'Ngọc Huyền', N'0374212294', N'Hà Nội', 2, CAST(N'2024-05-10T12:16:32.867' AS DateTime), N'Thúy Hường', 13)
INSERT [dbo].[Order] ([ID], [OrderCode], [CustomerName], [PhoneNumber], [Address], [Status], [CreateDate], [CreateBy], [AccountID]) VALUES (18, N'MHĐ2024CFS12', N'Ngọc My', N'0389217233', N'Hà Nội', 2, CAST(N'2024-05-11T12:16:32.867' AS DateTime), N'Trần Hồng', 15)
INSERT [dbo].[Order] ([ID], [OrderCode], [CustomerName], [PhoneNumber], [Address], [Status], [CreateDate], [CreateBy], [AccountID]) VALUES (19, N'MHĐ2024CFS13', N'Hồng Nhung', N'0378273127', N'Thanh Hóa', 1, CAST(N'2024-05-12T12:16:32.867' AS DateTime), N'Trần Hồng', 15)
INSERT [dbo].[Order] ([ID], [OrderCode], [CustomerName], [PhoneNumber], [Address], [Status], [CreateDate], [CreateBy], [AccountID]) VALUES (20, N'MHĐ2024CFS14', N'Trần Huệ', N'0869084206', N'Hà Nội', 3, CAST(N'2024-05-13T12:16:32.867' AS DateTime), N'Trần Huệ', 9)
INSERT [dbo].[Order] ([ID], [OrderCode], [CustomerName], [PhoneNumber], [Address], [Status], [CreateDate], [CreateBy], [AccountID]) VALUES (21, N'MHĐ2024CFS15', N'Nguyễn Long', N'0869084755', N'Thanh Hóa', 2, CAST(N'2024-06-15T21:39:11.907' AS DateTime), N'Trần Huệ', 9)
INSERT [dbo].[Order] ([ID], [OrderCode], [CustomerName], [PhoneNumber], [Address], [Status], [CreateDate], [CreateBy], [AccountID]) VALUES (22, N'MHĐ2024CFS16', N'Văn Khánh', N'0869084261', N'Vĩnh Phúc', 2, CAST(N'2024-06-01T21:39:55.843' AS DateTime), N'Phan Khánh', 8)
INSERT [dbo].[Order] ([ID], [OrderCode], [CustomerName], [PhoneNumber], [Address], [Status], [CreateDate], [CreateBy], [AccountID]) VALUES (23, N'MHĐ2024CFS17', N'Văn Lâm', N'086908611', N'Bắc Giang', 1, CAST(N'2024-06-02T21:40:27.720' AS DateTime), N'Phan Khánh', 8)
INSERT [dbo].[Order] ([ID], [OrderCode], [CustomerName], [PhoneNumber], [Address], [Status], [CreateDate], [CreateBy], [AccountID]) VALUES (24, N'MHĐ2024CFS18', N'Chu Quý', N'0869084789', N'Vĩnh Phúc', 2, CAST(N'2024-06-15T21:41:22.313' AS DateTime), N'Văn Quý', 7)
INSERT [dbo].[Order] ([ID], [OrderCode], [CustomerName], [PhoneNumber], [Address], [Status], [CreateDate], [CreateBy], [AccountID]) VALUES (25, N'MHĐ2024CFS19', N'Mai Trang', N'0389127234', N'Hà Nội', 2, CAST(N'2024-06-03T21:49:55.187' AS DateTime), N'Mai Trang', 14)
INSERT [dbo].[Order] ([ID], [OrderCode], [CustomerName], [PhoneNumber], [Address], [Status], [CreateDate], [CreateBy], [AccountID]) VALUES (26, N'MHĐ2024CFS20', N'Tường Vy', N'0351182949', N'Hải Phòng', 2, CAST(N'2024-06-04T21:50:33.573' AS DateTime), N'Mai Trang', 14)
INSERT [dbo].[Order] ([ID], [OrderCode], [CustomerName], [PhoneNumber], [Address], [Status], [CreateDate], [CreateBy], [AccountID]) VALUES (27, N'MHĐ2024CFS21', N'Ánh Tuyết', N'0374183712', N'Hà Nội', 3, CAST(N'2024-06-05T21:54:07.817' AS DateTime), N'Ánh Tuyết', 11)
INSERT [dbo].[Order] ([ID], [OrderCode], [CustomerName], [PhoneNumber], [Address], [Status], [CreateDate], [CreateBy], [AccountID]) VALUES (28, N'MHĐ2024CFS22', N'Như Quỳnh', N'0374213344', N'Hồ Chí Minh', 2, CAST(N'2024-06-06T21:56:38.457' AS DateTime), N'Như Quỳnh', 12)
INSERT [dbo].[Order] ([ID], [OrderCode], [CustomerName], [PhoneNumber], [Address], [Status], [CreateDate], [CreateBy], [AccountID]) VALUES (29, N'MHĐ2024CFS23', N'Thái Anh', N'0378212233', N'Hải Phòng', 2, CAST(N'2024-06-06T21:56:38.480' AS DateTime), N'Như Quỳnh', 12)
INSERT [dbo].[Order] ([ID], [OrderCode], [CustomerName], [PhoneNumber], [Address], [Status], [CreateDate], [CreateBy], [AccountID]) VALUES (30, N'MHĐ2024CFS24', N'Chúc Phương', N'0468129344', N'Đà Lạt', 2, CAST(N'2024-06-08T21:57:45.480' AS DateTime), N'Chúc Phương', 16)
INSERT [dbo].[Order] ([ID], [OrderCode], [CustomerName], [PhoneNumber], [Address], [Status], [CreateDate], [CreateBy], [AccountID]) VALUES (31, N'MHĐ2024CFS25', N'Bảo Trân', N'0465212298', N'Phú Quốc', 1, CAST(N'2024-06-09T21:58:26.653' AS DateTime), N'Chúc Phương', 16)
INSERT [dbo].[Order] ([ID], [OrderCode], [CustomerName], [PhoneNumber], [Address], [Status], [CreateDate], [CreateBy], [AccountID]) VALUES (34, N'MHĐ2024CFS28', N'Thế Duy', N'0489234479', N'Hà Nội', 2, CAST(N'2024-06-12T22:18:27.947' AS DateTime), N'Trần Hồng', 15)
INSERT [dbo].[Order] ([ID], [OrderCode], [CustomerName], [PhoneNumber], [Address], [Status], [CreateDate], [CreateBy], [AccountID]) VALUES (35, N'MHĐ2024CFS29', N'Huyền Lý ', N'0389127233', N'Ứng Hòa', 2, CAST(N'2024-06-13T22:20:57.423' AS DateTime), N'Thanh Huyền', 3)
INSERT [dbo].[Order] ([ID], [OrderCode], [CustomerName], [PhoneNumber], [Address], [Status], [CreateDate], [CreateBy], [AccountID]) VALUES (36, N'MHĐ2024CFS30', N'Thu Hoài', N'0378219942', N'Hà Nội', 2, CAST(N'2024-06-15T22:29:47.727' AS DateTime), N'Mai Trang', 14)
INSERT [dbo].[Order] ([ID], [OrderCode], [CustomerName], [PhoneNumber], [Address], [Status], [CreateDate], [CreateBy], [AccountID]) VALUES (37, N'MHĐ2024CFS31', N'Lê Minh Khôi', N'0328104515', N'Đông triều - Quảng Ninh', 3, CAST(N'2024-06-17T00:29:06.233' AS DateTime), N'Lê Minh Khôi', 2)
INSERT [dbo].[Order] ([ID], [OrderCode], [CustomerName], [PhoneNumber], [Address], [Status], [CreateDate], [CreateBy], [AccountID]) VALUES (38, N'MHĐ2024CFS32', N'Lê Minh Khôi', N'0328104515', N'Đông triều - Quảng Ninh', 2, CAST(N'2024-06-17T02:29:46.757' AS DateTime), N'Admin', 1)
INSERT [dbo].[Order] ([ID], [OrderCode], [CustomerName], [PhoneNumber], [Address], [Status], [CreateDate], [CreateBy], [AccountID]) VALUES (39, N'MHĐ2024CFS33', N'Thúy Hường', N'037422203', N'Hà Nội', 2, CAST(N'2024-06-17T12:18:30.670' AS DateTime), N'Thúy Hường', 13)
INSERT [dbo].[Order] ([ID], [OrderCode], [CustomerName], [PhoneNumber], [Address], [Status], [CreateDate], [CreateBy], [AccountID]) VALUES (40, N'MHĐ2024CFS34', N'Huyền Thanh', N'0374229854', N'Ứng Hòa', 3, CAST(N'2024-06-17T12:20:47.303' AS DateTime), N'Thanh Huyền', 3)
INSERT [dbo].[Order] ([ID], [OrderCode], [CustomerName], [PhoneNumber], [Address], [Status], [CreateDate], [CreateBy], [AccountID]) VALUES (41, N'MHĐ2024CFS33', N'Ngọc My', N'0476298843', N'Hà Nội', 0, CAST(N'2024-06-17T12:49:27.527' AS DateTime), N'Thanh Huyền', 3)
INSERT [dbo].[Order] ([ID], [OrderCode], [CustomerName], [PhoneNumber], [Address], [Status], [CreateDate], [CreateBy], [AccountID]) VALUES (42, N'MHĐ2024CFS34', N'Kim Chi', N'0375215588', N'Thái Bình', 0, CAST(N'2024-06-17T13:40:32.587' AS DateTime), N'Ánh Tuyết', 11)
INSERT [dbo].[Order] ([ID], [OrderCode], [CustomerName], [PhoneNumber], [Address], [Status], [CreateDate], [CreateBy], [AccountID]) VALUES (43, N'MHĐ2024CFS35', N'Ngọc Huyền', N'0475532286', N'Hà Nội', 2, CAST(N'2024-06-17T13:41:45.687' AS DateTime), N'Thanh Huyền', 3)
INSERT [dbo].[Order] ([ID], [OrderCode], [CustomerName], [PhoneNumber], [Address], [Status], [CreateDate], [CreateBy], [AccountID]) VALUES (44, N'MHĐ2024CFS36', N'Thanh Huyền', N'0375212234', N'Hà Nội', 2, CAST(N'2024-06-18T09:51:26.977' AS DateTime), N'Thúy Hường', 13)
SET IDENTITY_INSERT [dbo].[Order] OFF
GO
SET IDENTITY_INSERT [dbo].[OrderDetails] ON 

INSERT [dbo].[OrderDetails] ([ID], [Quantity], [TotalMoney], [OrderID], [ProductDetailID]) VALUES (23, 1, CAST(49000.00 AS Decimal(18, 2)), 7, 62)
INSERT [dbo].[OrderDetails] ([ID], [Quantity], [TotalMoney], [OrderID], [ProductDetailID]) VALUES (24, 1, CAST(49000.00 AS Decimal(18, 2)), 7, 13)
INSERT [dbo].[OrderDetails] ([ID], [Quantity], [TotalMoney], [OrderID], [ProductDetailID]) VALUES (25, 2, CAST(98000.00 AS Decimal(18, 2)), 8, 37)
INSERT [dbo].[OrderDetails] ([ID], [Quantity], [TotalMoney], [OrderID], [ProductDetailID]) VALUES (26, 2, CAST(98000.00 AS Decimal(18, 2)), 9, 37)
INSERT [dbo].[OrderDetails] ([ID], [Quantity], [TotalMoney], [OrderID], [ProductDetailID]) VALUES (27, 1, CAST(49000.00 AS Decimal(18, 2)), 9, 28)
INSERT [dbo].[OrderDetails] ([ID], [Quantity], [TotalMoney], [OrderID], [ProductDetailID]) VALUES (28, 1, CAST(19000.00 AS Decimal(18, 2)), 10, 52)
INSERT [dbo].[OrderDetails] ([ID], [Quantity], [TotalMoney], [OrderID], [ProductDetailID]) VALUES (29, 1, CAST(49000.00 AS Decimal(18, 2)), 11, 22)
INSERT [dbo].[OrderDetails] ([ID], [Quantity], [TotalMoney], [OrderID], [ProductDetailID]) VALUES (30, 1, CAST(49000.00 AS Decimal(18, 2)), 11, 19)
INSERT [dbo].[OrderDetails] ([ID], [Quantity], [TotalMoney], [OrderID], [ProductDetailID]) VALUES (31, 3, CAST(147000.00 AS Decimal(18, 2)), 12, 13)
INSERT [dbo].[OrderDetails] ([ID], [Quantity], [TotalMoney], [OrderID], [ProductDetailID]) VALUES (32, 1, CAST(69000.00 AS Decimal(18, 2)), 12, 18)
INSERT [dbo].[OrderDetails] ([ID], [Quantity], [TotalMoney], [OrderID], [ProductDetailID]) VALUES (33, 1, CAST(59000.00 AS Decimal(18, 2)), 13, 38)
INSERT [dbo].[OrderDetails] ([ID], [Quantity], [TotalMoney], [OrderID], [ProductDetailID]) VALUES (34, 1, CAST(49000.00 AS Decimal(18, 2)), 14, 13)
INSERT [dbo].[OrderDetails] ([ID], [Quantity], [TotalMoney], [OrderID], [ProductDetailID]) VALUES (35, 1, CAST(19000.00 AS Decimal(18, 2)), 14, 52)
INSERT [dbo].[OrderDetails] ([ID], [Quantity], [TotalMoney], [OrderID], [ProductDetailID]) VALUES (36, 1, CAST(19000.00 AS Decimal(18, 2)), 15, 52)
INSERT [dbo].[OrderDetails] ([ID], [Quantity], [TotalMoney], [OrderID], [ProductDetailID]) VALUES (37, 1, CAST(19000.00 AS Decimal(18, 2)), 15, 51)
INSERT [dbo].[OrderDetails] ([ID], [Quantity], [TotalMoney], [OrderID], [ProductDetailID]) VALUES (38, 1, CAST(49000.00 AS Decimal(18, 2)), 16, 37)
INSERT [dbo].[OrderDetails] ([ID], [Quantity], [TotalMoney], [OrderID], [ProductDetailID]) VALUES (39, 2, CAST(38000.00 AS Decimal(18, 2)), 16, 51)
INSERT [dbo].[OrderDetails] ([ID], [Quantity], [TotalMoney], [OrderID], [ProductDetailID]) VALUES (40, 1, CAST(49000.00 AS Decimal(18, 2)), 17, 37)
INSERT [dbo].[OrderDetails] ([ID], [Quantity], [TotalMoney], [OrderID], [ProductDetailID]) VALUES (41, 1, CAST(19000.00 AS Decimal(18, 2)), 18, 47)
INSERT [dbo].[OrderDetails] ([ID], [Quantity], [TotalMoney], [OrderID], [ProductDetailID]) VALUES (42, 2, CAST(50000.00 AS Decimal(18, 2)), 18, 48)
INSERT [dbo].[OrderDetails] ([ID], [Quantity], [TotalMoney], [OrderID], [ProductDetailID]) VALUES (43, 1, CAST(19000.00 AS Decimal(18, 2)), 19, 47)
INSERT [dbo].[OrderDetails] ([ID], [Quantity], [TotalMoney], [OrderID], [ProductDetailID]) VALUES (44, 1, CAST(59000.00 AS Decimal(18, 2)), 20, 26)
INSERT [dbo].[OrderDetails] ([ID], [Quantity], [TotalMoney], [OrderID], [ProductDetailID]) VALUES (45, 1, CAST(49000.00 AS Decimal(18, 2)), 20, 31)
INSERT [dbo].[OrderDetails] ([ID], [Quantity], [TotalMoney], [OrderID], [ProductDetailID]) VALUES (46, 1, CAST(19000.00 AS Decimal(18, 2)), 21, 51)
INSERT [dbo].[OrderDetails] ([ID], [Quantity], [TotalMoney], [OrderID], [ProductDetailID]) VALUES (47, 1, CAST(25000.00 AS Decimal(18, 2)), 22, 49)
INSERT [dbo].[OrderDetails] ([ID], [Quantity], [TotalMoney], [OrderID], [ProductDetailID]) VALUES (48, 1, CAST(49000.00 AS Decimal(18, 2)), 23, 45)
INSERT [dbo].[OrderDetails] ([ID], [Quantity], [TotalMoney], [OrderID], [ProductDetailID]) VALUES (49, 1, CAST(19000.00 AS Decimal(18, 2)), 24, 52)
INSERT [dbo].[OrderDetails] ([ID], [Quantity], [TotalMoney], [OrderID], [ProductDetailID]) VALUES (50, 1, CAST(49000.00 AS Decimal(18, 2)), 24, 39)
INSERT [dbo].[OrderDetails] ([ID], [Quantity], [TotalMoney], [OrderID], [ProductDetailID]) VALUES (51, 1, CAST(25000.00 AS Decimal(18, 2)), 25, 48)
INSERT [dbo].[OrderDetails] ([ID], [Quantity], [TotalMoney], [OrderID], [ProductDetailID]) VALUES (52, 1, CAST(59000.00 AS Decimal(18, 2)), 26, 32)
INSERT [dbo].[OrderDetails] ([ID], [Quantity], [TotalMoney], [OrderID], [ProductDetailID]) VALUES (53, 1, CAST(49000.00 AS Decimal(18, 2)), 27, 10)
INSERT [dbo].[OrderDetails] ([ID], [Quantity], [TotalMoney], [OrderID], [ProductDetailID]) VALUES (54, 2, CAST(98000.00 AS Decimal(18, 2)), 27, 19)
INSERT [dbo].[OrderDetails] ([ID], [Quantity], [TotalMoney], [OrderID], [ProductDetailID]) VALUES (55, 1, CAST(49000.00 AS Decimal(18, 2)), 28, 10)
INSERT [dbo].[OrderDetails] ([ID], [Quantity], [TotalMoney], [OrderID], [ProductDetailID]) VALUES (56, 1, CAST(69000.00 AS Decimal(18, 2)), 28, 24)
INSERT [dbo].[OrderDetails] ([ID], [Quantity], [TotalMoney], [OrderID], [ProductDetailID]) VALUES (57, 1, CAST(69000.00 AS Decimal(18, 2)), 29, 24)
INSERT [dbo].[OrderDetails] ([ID], [Quantity], [TotalMoney], [OrderID], [ProductDetailID]) VALUES (58, 1, CAST(49000.00 AS Decimal(18, 2)), 30, 37)
INSERT [dbo].[OrderDetails] ([ID], [Quantity], [TotalMoney], [OrderID], [ProductDetailID]) VALUES (59, 1, CAST(49000.00 AS Decimal(18, 2)), 31, 37)
INSERT [dbo].[OrderDetails] ([ID], [Quantity], [TotalMoney], [OrderID], [ProductDetailID]) VALUES (60, 1, CAST(45000.00 AS Decimal(18, 2)), 32, 77)
INSERT [dbo].[OrderDetails] ([ID], [Quantity], [TotalMoney], [OrderID], [ProductDetailID]) VALUES (61, 1, CAST(55000.00 AS Decimal(18, 2)), 33, 71)
INSERT [dbo].[OrderDetails] ([ID], [Quantity], [TotalMoney], [OrderID], [ProductDetailID]) VALUES (62, 1, CAST(49000.00 AS Decimal(18, 2)), 34, 37)
INSERT [dbo].[OrderDetails] ([ID], [Quantity], [TotalMoney], [OrderID], [ProductDetailID]) VALUES (63, 2, CAST(98000.00 AS Decimal(18, 2)), 35, 62)
INSERT [dbo].[OrderDetails] ([ID], [Quantity], [TotalMoney], [OrderID], [ProductDetailID]) VALUES (64, 1, CAST(49000.00 AS Decimal(18, 2)), 36, 45)
INSERT [dbo].[OrderDetails] ([ID], [Quantity], [TotalMoney], [OrderID], [ProductDetailID]) VALUES (65, 1, CAST(19000.00 AS Decimal(18, 2)), 36, 47)
INSERT [dbo].[OrderDetails] ([ID], [Quantity], [TotalMoney], [OrderID], [ProductDetailID]) VALUES (66, 1, CAST(59000.00 AS Decimal(18, 2)), 37, 38)
INSERT [dbo].[OrderDetails] ([ID], [Quantity], [TotalMoney], [OrderID], [ProductDetailID]) VALUES (67, 15, CAST(735000.00 AS Decimal(18, 2)), 38, 31)
INSERT [dbo].[OrderDetails] ([ID], [Quantity], [TotalMoney], [OrderID], [ProductDetailID]) VALUES (68, 14, CAST(686000.00 AS Decimal(18, 2)), 38, 28)
INSERT [dbo].[OrderDetails] ([ID], [Quantity], [TotalMoney], [OrderID], [ProductDetailID]) VALUES (69, 14, CAST(686000.00 AS Decimal(18, 2)), 38, 25)
INSERT [dbo].[OrderDetails] ([ID], [Quantity], [TotalMoney], [OrderID], [ProductDetailID]) VALUES (70, 15, CAST(735000.00 AS Decimal(18, 2)), 38, 39)
INSERT [dbo].[OrderDetails] ([ID], [Quantity], [TotalMoney], [OrderID], [ProductDetailID]) VALUES (71, 1, CAST(59000.00 AS Decimal(18, 2)), 39, 90)
INSERT [dbo].[OrderDetails] ([ID], [Quantity], [TotalMoney], [OrderID], [ProductDetailID]) VALUES (72, 1, CAST(49000.00 AS Decimal(18, 2)), 40, 62)
INSERT [dbo].[OrderDetails] ([ID], [Quantity], [TotalMoney], [OrderID], [ProductDetailID]) VALUES (73, 1, CAST(49000.00 AS Decimal(18, 2)), 41, 86)
INSERT [dbo].[OrderDetails] ([ID], [Quantity], [TotalMoney], [OrderID], [ProductDetailID]) VALUES (74, 2, CAST(98000.00 AS Decimal(18, 2)), 42, 19)
INSERT [dbo].[OrderDetails] ([ID], [Quantity], [TotalMoney], [OrderID], [ProductDetailID]) VALUES (75, 1, CAST(45000.00 AS Decimal(18, 2)), 42, 83)
INSERT [dbo].[OrderDetails] ([ID], [Quantity], [TotalMoney], [OrderID], [ProductDetailID]) VALUES (76, 1, CAST(49000.00 AS Decimal(18, 2)), 43, 10)
INSERT [dbo].[OrderDetails] ([ID], [Quantity], [TotalMoney], [OrderID], [ProductDetailID]) VALUES (77, 1, CAST(49000.00 AS Decimal(18, 2)), 44, 16)
SET IDENTITY_INSERT [dbo].[OrderDetails] OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([ID], [Code], [Name], [IsActive], [Description], [ProductTypeID]) VALUES (8, N'BacSiu', N'Bạc sỉu', 1, N'', 9)
INSERT [dbo].[Product] ([ID], [Code], [Name], [IsActive], [Description], [ProductTypeID]) VALUES (9, N'BacSiuNong', N'Bạc sỉu nóng', 1, N'', 9)
INSERT [dbo].[Product] ([ID], [Code], [Name], [IsActive], [Description], [ProductTypeID]) VALUES (10, N'CFDenDa', N'Cà phê đen đá', 1, N'', 9)
INSERT [dbo].[Product] ([ID], [Code], [Name], [IsActive], [Description], [ProductTypeID]) VALUES (11, N'CFDenNong', N'Cà phê đen nóng', 1, N'', 9)
INSERT [dbo].[Product] ([ID], [Code], [Name], [IsActive], [Description], [ProductTypeID]) VALUES (12, N'CFSuaDa', N'Cà phê sữa đá', 1, N'', 9)
INSERT [dbo].[Product] ([ID], [Code], [Name], [IsActive], [Description], [ProductTypeID]) VALUES (13, N'CFSuaNong', N'Cà phê sữa nóng', 1, N'', 9)
INSERT [dbo].[Product] ([ID], [Code], [Name], [IsActive], [Description], [ProductTypeID]) VALUES (14, N'CrMachiatoDa', N'Caramel Machiato đá', 1, N'', 10)
INSERT [dbo].[Product] ([ID], [Code], [Name], [IsActive], [Description], [ProductTypeID]) VALUES (15, N'CrMachiatooNong', N'Caramel Machiato nóng', 1, N'', 10)
INSERT [dbo].[Product] ([ID], [Code], [Name], [IsActive], [Description], [ProductTypeID]) VALUES (16, N'DuongDenMarbleLatte', N'Đường đen Marble Latte', 1, N'', 10)
INSERT [dbo].[Product] ([ID], [Code], [Name], [IsActive], [Description], [ProductTypeID]) VALUES (17, N'HiTeaDao', N'Hi-Tea Đào', 1, N'', 7)
INSERT [dbo].[Product] ([ID], [Code], [Name], [IsActive], [Description], [ProductTypeID]) VALUES (18, N'HiTeaDaoKombucha', N'Hi-Tea Đào Kombucha', 1, N'', 7)
INSERT [dbo].[Product] ([ID], [Code], [Name], [IsActive], [Description], [ProductTypeID]) VALUES (19, N'HiTeaYuzuKombucha', N'Hi-Tea YuzuKombucha', 1, N'', 7)
INSERT [dbo].[Product] ([ID], [Code], [Name], [IsActive], [Description], [ProductTypeID]) VALUES (20, N'OolongTuQuyKimQuatTranChau', N'Oolong tứ quý kim quất trân châu', 1, N'', 8)
INSERT [dbo].[Product] ([ID], [Code], [Name], [IsActive], [Description], [ProductTypeID]) VALUES (21, N'OolongTuQuySenwebp', N'Oolong tứ quý sen', 1, N'', 8)
INSERT [dbo].[Product] ([ID], [Code], [Name], [IsActive], [Description], [ProductTypeID]) VALUES (22, N'OoLongTuQuyVai', N'OoLong tứ quý vải', 1, N'', 8)
INSERT [dbo].[Product] ([ID], [Code], [Name], [IsActive], [Description], [ProductTypeID]) VALUES (23, N'BanhMiQuePateCay', N'Bánh mì que pate cay', 1, N'', 11)
INSERT [dbo].[Product] ([ID], [Code], [Name], [IsActive], [Description], [ProductTypeID]) VALUES (24, N'BanhMiThitNguoi', N'Bánh mì thịt nguội', 1, N'', 11)
INSERT [dbo].[Product] ([ID], [Code], [Name], [IsActive], [Description], [ProductTypeID]) VALUES (25, N'CroissantTrungMuoi', N'Croissant trứng muối', 1, N'', 11)
INSERT [dbo].[Product] ([ID], [Code], [Name], [IsActive], [Description], [ProductTypeID]) VALUES (26, N'MochiKemDuaDua', N'Mochi kem dừa dứa', 1, N'', 12)
INSERT [dbo].[Product] ([ID], [Code], [Name], [IsActive], [Description], [ProductTypeID]) VALUES (27, N'MochiKemPhucBonTu', N'Mochi kem phúc bồn tử', 1, N'', 12)
INSERT [dbo].[Product] ([ID], [Code], [Name], [IsActive], [Description], [ProductTypeID]) VALUES (28, N'MochiKemVietQuat', N'Mochi kem việt quất', 1, N'', 12)
INSERT [dbo].[Product] ([ID], [Code], [Name], [IsActive], [Description], [ProductTypeID]) VALUES (29, N'DauPhoMaiTuoi', N'Dâu phô mai tươi', 1, N'', 8)
INSERT [dbo].[Product] ([ID], [Code], [Name], [IsActive], [Description], [ProductTypeID]) VALUES (30, N'TraXanhLatte', N'Trà Xanh Latte', 1, N'', 8)
INSERT [dbo].[Product] ([ID], [Code], [Name], [IsActive], [Description], [ProductTypeID]) VALUES (31, N'TraXanhEspressoMarble', N'Trà Xanh Espresso Marble', 1, N'Cho ngày thêm tươi, tỉnh, êm, mượt với Trà Xanh Espresso Marble', 7)
INSERT [dbo].[Product] ([ID], [Code], [Name], [IsActive], [Description], [ProductTypeID]) VALUES (32, N'OolongTuQuySen', N'Oolong Tứ Quý Sen ', 1, N'', 8)
INSERT [dbo].[Product] ([ID], [Code], [Name], [IsActive], [Description], [ProductTypeID]) VALUES (33, N'TraHiTeaVai', N'Trà Hi-Tea Vải', 1, N'', 7)
INSERT [dbo].[Product] ([ID], [Code], [Name], [IsActive], [Description], [ProductTypeID]) VALUES (34, N'EspressoNong', N'Espresso Nóng', 1, N'', 9)
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductDetails] ON 

INSERT [dbo].[ProductDetails] ([ID], [ProductID], [ProductSizeID], [Price]) VALUES (10, 9, 2, CAST(49000.00 AS Decimal(18, 2)))
INSERT [dbo].[ProductDetails] ([ID], [ProductID], [ProductSizeID], [Price]) VALUES (11, 9, 3, CAST(59000.00 AS Decimal(18, 2)))
INSERT [dbo].[ProductDetails] ([ID], [ProductID], [ProductSizeID], [Price]) VALUES (12, 9, 6, CAST(69000.00 AS Decimal(18, 2)))
INSERT [dbo].[ProductDetails] ([ID], [ProductID], [ProductSizeID], [Price]) VALUES (13, 10, 2, CAST(49000.00 AS Decimal(18, 2)))
INSERT [dbo].[ProductDetails] ([ID], [ProductID], [ProductSizeID], [Price]) VALUES (14, 10, 3, CAST(59000.00 AS Decimal(18, 2)))
INSERT [dbo].[ProductDetails] ([ID], [ProductID], [ProductSizeID], [Price]) VALUES (15, 10, 6, CAST(69000.00 AS Decimal(18, 2)))
INSERT [dbo].[ProductDetails] ([ID], [ProductID], [ProductSizeID], [Price]) VALUES (16, 11, 2, CAST(49000.00 AS Decimal(18, 2)))
INSERT [dbo].[ProductDetails] ([ID], [ProductID], [ProductSizeID], [Price]) VALUES (17, 11, 3, CAST(59000.00 AS Decimal(18, 2)))
INSERT [dbo].[ProductDetails] ([ID], [ProductID], [ProductSizeID], [Price]) VALUES (18, 11, 6, CAST(69000.00 AS Decimal(18, 2)))
INSERT [dbo].[ProductDetails] ([ID], [ProductID], [ProductSizeID], [Price]) VALUES (19, 12, 2, CAST(49000.00 AS Decimal(18, 2)))
INSERT [dbo].[ProductDetails] ([ID], [ProductID], [ProductSizeID], [Price]) VALUES (20, 12, 3, CAST(59000.00 AS Decimal(18, 2)))
INSERT [dbo].[ProductDetails] ([ID], [ProductID], [ProductSizeID], [Price]) VALUES (21, 12, 6, CAST(69000.00 AS Decimal(18, 2)))
INSERT [dbo].[ProductDetails] ([ID], [ProductID], [ProductSizeID], [Price]) VALUES (22, 13, 2, CAST(49000.00 AS Decimal(18, 2)))
INSERT [dbo].[ProductDetails] ([ID], [ProductID], [ProductSizeID], [Price]) VALUES (23, 13, 3, CAST(59000.00 AS Decimal(18, 2)))
INSERT [dbo].[ProductDetails] ([ID], [ProductID], [ProductSizeID], [Price]) VALUES (24, 13, 6, CAST(69000.00 AS Decimal(18, 2)))
INSERT [dbo].[ProductDetails] ([ID], [ProductID], [ProductSizeID], [Price]) VALUES (25, 14, 2, CAST(49000.00 AS Decimal(18, 2)))
INSERT [dbo].[ProductDetails] ([ID], [ProductID], [ProductSizeID], [Price]) VALUES (26, 14, 3, CAST(59000.00 AS Decimal(18, 2)))
INSERT [dbo].[ProductDetails] ([ID], [ProductID], [ProductSizeID], [Price]) VALUES (27, 14, 6, CAST(60000.00 AS Decimal(18, 2)))
INSERT [dbo].[ProductDetails] ([ID], [ProductID], [ProductSizeID], [Price]) VALUES (28, 15, 2, CAST(49000.00 AS Decimal(18, 2)))
INSERT [dbo].[ProductDetails] ([ID], [ProductID], [ProductSizeID], [Price]) VALUES (29, 15, 3, CAST(59000.00 AS Decimal(18, 2)))
INSERT [dbo].[ProductDetails] ([ID], [ProductID], [ProductSizeID], [Price]) VALUES (30, 15, 6, CAST(69000.00 AS Decimal(18, 2)))
INSERT [dbo].[ProductDetails] ([ID], [ProductID], [ProductSizeID], [Price]) VALUES (31, 16, 2, CAST(49000.00 AS Decimal(18, 2)))
INSERT [dbo].[ProductDetails] ([ID], [ProductID], [ProductSizeID], [Price]) VALUES (32, 16, 3, CAST(59000.00 AS Decimal(18, 2)))
INSERT [dbo].[ProductDetails] ([ID], [ProductID], [ProductSizeID], [Price]) VALUES (33, 16, 6, CAST(69000.00 AS Decimal(18, 2)))
INSERT [dbo].[ProductDetails] ([ID], [ProductID], [ProductSizeID], [Price]) VALUES (34, 17, 2, CAST(49000.00 AS Decimal(18, 2)))
INSERT [dbo].[ProductDetails] ([ID], [ProductID], [ProductSizeID], [Price]) VALUES (35, 17, 3, CAST(59000.00 AS Decimal(18, 2)))
INSERT [dbo].[ProductDetails] ([ID], [ProductID], [ProductSizeID], [Price]) VALUES (36, 17, 6, CAST(69000.00 AS Decimal(18, 2)))
INSERT [dbo].[ProductDetails] ([ID], [ProductID], [ProductSizeID], [Price]) VALUES (37, 18, 2, CAST(49000.00 AS Decimal(18, 2)))
INSERT [dbo].[ProductDetails] ([ID], [ProductID], [ProductSizeID], [Price]) VALUES (38, 18, 3, CAST(59000.00 AS Decimal(18, 2)))
INSERT [dbo].[ProductDetails] ([ID], [ProductID], [ProductSizeID], [Price]) VALUES (39, 19, 2, CAST(49000.00 AS Decimal(18, 2)))
INSERT [dbo].[ProductDetails] ([ID], [ProductID], [ProductSizeID], [Price]) VALUES (40, 19, 3, CAST(59000.00 AS Decimal(18, 2)))
INSERT [dbo].[ProductDetails] ([ID], [ProductID], [ProductSizeID], [Price]) VALUES (41, 20, 2, CAST(39000.00 AS Decimal(18, 2)))
INSERT [dbo].[ProductDetails] ([ID], [ProductID], [ProductSizeID], [Price]) VALUES (42, 20, 3, CAST(49000.00 AS Decimal(18, 2)))
INSERT [dbo].[ProductDetails] ([ID], [ProductID], [ProductSizeID], [Price]) VALUES (43, 21, 2, CAST(49000.00 AS Decimal(18, 2)))
INSERT [dbo].[ProductDetails] ([ID], [ProductID], [ProductSizeID], [Price]) VALUES (44, 21, 3, CAST(59000.00 AS Decimal(18, 2)))
INSERT [dbo].[ProductDetails] ([ID], [ProductID], [ProductSizeID], [Price]) VALUES (45, 22, 2, CAST(49000.00 AS Decimal(18, 2)))
INSERT [dbo].[ProductDetails] ([ID], [ProductID], [ProductSizeID], [Price]) VALUES (46, 22, 3, CAST(59000.00 AS Decimal(18, 2)))
INSERT [dbo].[ProductDetails] ([ID], [ProductID], [ProductSizeID], [Price]) VALUES (47, 23, 2, CAST(19000.00 AS Decimal(18, 2)))
INSERT [dbo].[ProductDetails] ([ID], [ProductID], [ProductSizeID], [Price]) VALUES (48, 24, 2, CAST(25000.00 AS Decimal(18, 2)))
INSERT [dbo].[ProductDetails] ([ID], [ProductID], [ProductSizeID], [Price]) VALUES (49, 25, 2, CAST(25000.00 AS Decimal(18, 2)))
INSERT [dbo].[ProductDetails] ([ID], [ProductID], [ProductSizeID], [Price]) VALUES (50, 26, 2, CAST(19000.00 AS Decimal(18, 2)))
INSERT [dbo].[ProductDetails] ([ID], [ProductID], [ProductSizeID], [Price]) VALUES (51, 27, 2, CAST(19000.00 AS Decimal(18, 2)))
INSERT [dbo].[ProductDetails] ([ID], [ProductID], [ProductSizeID], [Price]) VALUES (52, 28, 2, CAST(19000.00 AS Decimal(18, 2)))
INSERT [dbo].[ProductDetails] ([ID], [ProductID], [ProductSizeID], [Price]) VALUES (62, 8, 2, CAST(49000.00 AS Decimal(18, 2)))
INSERT [dbo].[ProductDetails] ([ID], [ProductID], [ProductSizeID], [Price]) VALUES (63, 8, 3, CAST(59000.00 AS Decimal(18, 2)))
INSERT [dbo].[ProductDetails] ([ID], [ProductID], [ProductSizeID], [Price]) VALUES (64, 8, 6, CAST(69000.00 AS Decimal(18, 2)))
INSERT [dbo].[ProductDetails] ([ID], [ProductID], [ProductSizeID], [Price]) VALUES (80, 29, 2, CAST(55000.00 AS Decimal(18, 2)))
INSERT [dbo].[ProductDetails] ([ID], [ProductID], [ProductSizeID], [Price]) VALUES (81, 29, 3, CAST(59000.00 AS Decimal(18, 2)))
INSERT [dbo].[ProductDetails] ([ID], [ProductID], [ProductSizeID], [Price]) VALUES (82, 29, 6, CAST(69000.00 AS Decimal(18, 2)))
INSERT [dbo].[ProductDetails] ([ID], [ProductID], [ProductSizeID], [Price]) VALUES (83, 30, 2, CAST(45000.00 AS Decimal(18, 2)))
INSERT [dbo].[ProductDetails] ([ID], [ProductID], [ProductSizeID], [Price]) VALUES (84, 30, 3, CAST(49000.00 AS Decimal(18, 2)))
INSERT [dbo].[ProductDetails] ([ID], [ProductID], [ProductSizeID], [Price]) VALUES (85, 30, 6, CAST(59000.00 AS Decimal(18, 2)))
INSERT [dbo].[ProductDetails] ([ID], [ProductID], [ProductSizeID], [Price]) VALUES (86, 31, 2, CAST(49000.00 AS Decimal(18, 2)))
INSERT [dbo].[ProductDetails] ([ID], [ProductID], [ProductSizeID], [Price]) VALUES (87, 31, 3, CAST(55000.00 AS Decimal(18, 2)))
INSERT [dbo].[ProductDetails] ([ID], [ProductID], [ProductSizeID], [Price]) VALUES (88, 31, 6, CAST(65000.00 AS Decimal(18, 2)))
INSERT [dbo].[ProductDetails] ([ID], [ProductID], [ProductSizeID], [Price]) VALUES (90, 32, 2, CAST(59000.00 AS Decimal(18, 2)))
INSERT [dbo].[ProductDetails] ([ID], [ProductID], [ProductSizeID], [Price]) VALUES (94, 33, 2, CAST(49000.00 AS Decimal(18, 2)))
INSERT [dbo].[ProductDetails] ([ID], [ProductID], [ProductSizeID], [Price]) VALUES (95, 33, 3, CAST(59000.00 AS Decimal(18, 2)))
INSERT [dbo].[ProductDetails] ([ID], [ProductID], [ProductSizeID], [Price]) VALUES (96, 33, 6, CAST(65000.00 AS Decimal(18, 2)))
INSERT [dbo].[ProductDetails] ([ID], [ProductID], [ProductSizeID], [Price]) VALUES (97, 34, 2, CAST(45000.00 AS Decimal(18, 2)))
INSERT [dbo].[ProductDetails] ([ID], [ProductID], [ProductSizeID], [Price]) VALUES (98, 34, 3, CAST(49000.00 AS Decimal(18, 2)))
SET IDENTITY_INSERT [dbo].[ProductDetails] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductImage] ON 

INSERT [dbo].[ProductImage] ([ID], [ProductID], [ImageUrl], [FileName]) VALUES (1, 8, N'20240605_225427_335_BacSiu.jpg', N'BacSiu.jpg')
INSERT [dbo].[ProductImage] ([ID], [ProductID], [ImageUrl], [FileName]) VALUES (3, 9, N'20240605_225858_994_BacSiuNong.webp', N'BacSiuNong.webp')
INSERT [dbo].[ProductImage] ([ID], [ProductID], [ImageUrl], [FileName]) VALUES (4, 10, N'20240605_225953_776_CaPheDenDa.jpg', N'CaPheDenDa.jpg')
INSERT [dbo].[ProductImage] ([ID], [ProductID], [ImageUrl], [FileName]) VALUES (5, 11, N'20240605_230139_748_CaPheDenNong.webp', N'CaPheDenNong.webp')
INSERT [dbo].[ProductImage] ([ID], [ProductID], [ImageUrl], [FileName]) VALUES (6, 12, N'20240605_230330_223_CaPheSuaDa.webp', N'CaPheSuaDa.webp')
INSERT [dbo].[ProductImage] ([ID], [ProductID], [ImageUrl], [FileName]) VALUES (7, 13, N'20240605_230407_357_CaPheSuaNong.webp', N'CaPheSuaNong.webp')
INSERT [dbo].[ProductImage] ([ID], [ProductID], [ImageUrl], [FileName]) VALUES (8, 14, N'20240605_230525_788_CaramelMachiatoDa.webp', N'CaramelMachiatoDa.webp')
INSERT [dbo].[ProductImage] ([ID], [ProductID], [ImageUrl], [FileName]) VALUES (9, 15, N'20240605_230611_618_CaramelMachiatoNong.webp', N'CaramelMachiatoNong.webp')
INSERT [dbo].[ProductImage] ([ID], [ProductID], [ImageUrl], [FileName]) VALUES (10, 16, N'20240605_230710_502_DuongDenMarbleLatte.webp', N'DuongDenMarbleLatte.webp')
INSERT [dbo].[ProductImage] ([ID], [ProductID], [ImageUrl], [FileName]) VALUES (11, 17, N'20240605_230812_734_HiTeaDao.webp', N'HiTeaDao.webp')
INSERT [dbo].[ProductImage] ([ID], [ProductID], [ImageUrl], [FileName]) VALUES (12, 18, N'20240605_230914_382_HiTeaDaoKombucha.webp', N'HiTeaDaoKombucha.webp')
INSERT [dbo].[ProductImage] ([ID], [ProductID], [ImageUrl], [FileName]) VALUES (13, 19, N'20240605_232338_079_HiTeaYuzuKombucha.webp', N'HiTeaYuzuKombucha.webp')
INSERT [dbo].[ProductImage] ([ID], [ProductID], [ImageUrl], [FileName]) VALUES (14, 20, N'20240605_232436_486_OolongTuQuyKimQuatTranChau.webp', N'OolongTuQuyKimQuatTranChau.webp')
INSERT [dbo].[ProductImage] ([ID], [ProductID], [ImageUrl], [FileName]) VALUES (15, 21, N'20240605_232513_184_OolongTuQuySenwebp.webp', N'OolongTuQuySenwebp.webp')
INSERT [dbo].[ProductImage] ([ID], [ProductID], [ImageUrl], [FileName]) VALUES (16, 22, N'20240605_232545_774_OoLongTuQuyVai.webp', N'OoLongTuQuyVai.webp')
INSERT [dbo].[ProductImage] ([ID], [ProductID], [ImageUrl], [FileName]) VALUES (17, 23, N'20240605_232707_062_BanhMiQuePateCay.jpg', N'BanhMiQuePateCay.jpg')
INSERT [dbo].[ProductImage] ([ID], [ProductID], [ImageUrl], [FileName]) VALUES (18, 24, N'20240605_232741_030_BanhMiThitNguoi.webp', N'BanhMiThitNguoi.webp')
INSERT [dbo].[ProductImage] ([ID], [ProductID], [ImageUrl], [FileName]) VALUES (19, 25, N'20240605_232813_993_CroissantTrungMuoi.webp', N'CroissantTrungMuoi.webp')
INSERT [dbo].[ProductImage] ([ID], [ProductID], [ImageUrl], [FileName]) VALUES (20, 26, N'20240605_232850_677_MochiKemDuaDua.webp', N'MochiKemDuaDua.webp')
INSERT [dbo].[ProductImage] ([ID], [ProductID], [ImageUrl], [FileName]) VALUES (21, 27, N'20240605_232921_775_MochiKemPhucBonTu.webp', N'MochiKemPhucBonTu.webp')
INSERT [dbo].[ProductImage] ([ID], [ProductID], [ImageUrl], [FileName]) VALUES (22, 28, N'20240605_232958_120_MochiKemVietQuat.webp', N'MochiKemVietQuat.webp')
INSERT [dbo].[ProductImage] ([ID], [ProductID], [ImageUrl], [FileName]) VALUES (28, 29, N'20240617_100243_452_20240615_220010_085_dauphomaituoi.webp.webp', N'20240615_220010_085_dauphomaituoi.webp.webp')
INSERT [dbo].[ProductImage] ([ID], [ProductID], [ImageUrl], [FileName]) VALUES (29, 30, N'20240617_100947_855_traxanhlate.webp', N'traxanhlate.webp')
INSERT [dbo].[ProductImage] ([ID], [ProductID], [ImageUrl], [FileName]) VALUES (30, 31, N'20240617_101333_941_1696220139_tra-xanh-espresso.webp', N'1696220139_tra-xanh-espresso.webp')
INSERT [dbo].[ProductImage] ([ID], [ProductID], [ImageUrl], [FileName]) VALUES (31, 32, N'20240617_101826_825_tra-sen-nong_025153_fe327c11a97e4026a6a1f13fa03b6f4e.webp', N'tra-sen-nong_025153_fe327c11a97e4026a6a1f13fa03b6f4e.webp')
INSERT [dbo].[ProductImage] ([ID], [ProductID], [ImageUrl], [FileName]) VALUES (32, 33, N'20240617_124458_514_1650529462_hi-tea-vai-1_479928fd00234920bb8b85b3ad7bb1a6.webp', N'1650529462_hi-tea-vai-1_479928fd00234920bb8b85b3ad7bb1a6.webp')
INSERT [dbo].[ProductImage] ([ID], [ProductID], [ImageUrl], [FileName]) VALUES (33, 33, N'20240617_124458_514_hi-tea-vai_cf376a6cd5724e9fb7579bf8ef0a1108.webp', N'hi-tea-vai_cf376a6cd5724e9fb7579bf8ef0a1108.webp')
INSERT [dbo].[ProductImage] ([ID], [ProductID], [ImageUrl], [FileName]) VALUES (34, 33, N'20240617_124458_514_htvaidbe34c9098248e296b51f69a1b5c72a.webp', N'htvaidbe34c9098248e296b51f69a1b5c72a.webp')
INSERT [dbo].[ProductImage] ([ID], [ProductID], [ImageUrl], [FileName]) VALUES (35, 34, N'20240617_134757_617_123espressonong_612688_41d0812d5efb47aaaebaea91a3b206db.webp', N'123espressonong_612688_41d0812d5efb47aaaebaea91a3b206db.webp')
INSERT [dbo].[ProductImage] ([ID], [ProductID], [ImageUrl], [FileName]) VALUES (36, 34, N'20240617_134757_617_1241645968236_espresso-nong-lifestyle_7dbb993a70414756b17c62965bd57c34.webp', N'1241645968236_espresso-nong-lifestyle_7dbb993a70414756b17c62965bd57c34.webp')
SET IDENTITY_INSERT [dbo].[ProductImage] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductSize] ON 

INSERT [dbo].[ProductSize] ([ID], [Code], [Name], [Description]) VALUES (2, N'M', N'M', NULL)
INSERT [dbo].[ProductSize] ([ID], [Code], [Name], [Description]) VALUES (3, N'L', N'L', NULL)
INSERT [dbo].[ProductSize] ([ID], [Code], [Name], [Description]) VALUES (6, N'XL', N'XL', N'')
SET IDENTITY_INSERT [dbo].[ProductSize] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductType] ON 

INSERT [dbo].[ProductType] ([ID], [Code], [Name], [GroupType], [Description]) VALUES (7, N'HiTea', N'Trà Hi-Tea', 2, N'')
INSERT [dbo].[ProductType] ([ID], [Code], [Name], [GroupType], [Description]) VALUES (8, N'TraTraiCay', N'Trà trái cây', 2, N'')
INSERT [dbo].[ProductType] ([ID], [Code], [Name], [GroupType], [Description]) VALUES (9, N'CaPhe', N'Cà phê', 1, N'')
INSERT [dbo].[ProductType] ([ID], [Code], [Name], [GroupType], [Description]) VALUES (10, N'CaPheMay', N'Cà phê máy', 1, N'')
INSERT [dbo].[ProductType] ([ID], [Code], [Name], [GroupType], [Description]) VALUES (11, N'BanhMan', N'Bánh mặn', 3, N'')
INSERT [dbo].[ProductType] ([ID], [Code], [Name], [GroupType], [Description]) VALUES (12, N'BanhNgot', N'Bánh ngọt', 3, N'')
SET IDENTITY_INSERT [dbo].[ProductType] OFF
GO
/****** Object:  StoredProcedure [dbo].[spGetAllAccount]    Script Date: 18/06/2024 09:54:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author: Lee Min Khooiiii>
-- Create date: <Create Date: 03/06/2024>
-- Description:	<Description: Store lấy dữ liệu >
-- =============================================
CREATE PROCEDURE [dbo].[spGetAllAccount]
	@PageNumber int,
	@Request nvarchar(250)
AS
BEGIN
	Declare @count int;
	if @PageNumber = 1 Set @count = 0;
	else Set @count = 10;

	Select *,
		Case when Role = 1 then N'Người dùng'
		 else Case when Role = 2 then N'Admin'
		 else '' End
		 End as RoleText,
		 Case when Gender = 0 then N'Nam'
		 else Case when Gender = 1 then N'Nữ'
		 else '' End
		 End as GenderText
	from Account as a 
	WHERE (FullName like '%' + @Request +'%' OR Email like '%' + @Request +'%')
	Order by Id 
	Offset (@count * (@PageNumber - 1)) rows
	fetch next 10 rows only

END
GO
/****** Object:  StoredProcedure [dbo].[spGetAllOrder]    Script Date: 18/06/2024 09:54:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author: Lee Min Khooi>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spGetAllOrder]
	@Request nvarchar(250) = N'',
	@PageNumber int = 1,
	@Status int = -1,
	@DateStart datetime = '2024-01-01',
	@DateEnd datetime = '2099-01-01'
AS
BEGIN
	Declare @count int;
	if @PageNumber = 1 Set @count = 0;
	else Set @count = 10;

	Select * from [Order]
	where (@Request is null Or TRIM(@Request) = N''
			OR OrderCode like CONCAT(N'%',@Request,'%')
			OR CustomerName like CONCAT(N'%',@Request,'%')
			OR [Address] like CONCAT(N'%',@Request,'%')
			OR PhoneNumber like CONCAT(N'%',@Request,'%'))
	AND (@Status = -1 OR [Status] = @Status)
	AND CreateDate BETWEEN @DateStart AND @DateEnd
	ORDER BY ID DESC
	Offset (@count * (@PageNumber - 1)) rows
	fetch next 10 rows only
END
GO
/****** Object:  StoredProcedure [dbo].[spGetAllProduct]    Script Date: 18/06/2024 09:54:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author: Lee Min Khooiiii>
-- Create date: <Create Date: 03/06/2024>
-- Description:	<Description: Store lấy dữ liệu >
-- =============================================
CREATE PROCEDURE [dbo].[spGetAllProduct]
	@PageNumber int,
	@Request nvarchar(250)
AS
BEGIN
	Declare @count int;
	if @PageNumber = 1 Set @count = 0;
	else Set @count = 10;

	Select p.*, t.Name as ProductTypeName from Product as p
	LEFT JOIN ProductType as t on p.ProductTypeID = t.ID
	WHERE (p.Name like N'%' + @Request +'%' 
	OR p.Code like N'%' + @Request +'%')
	Order by p.ID 
	Offset (@count * (@PageNumber - 1)) rows
	fetch next 10 rows only

END
GO
/****** Object:  StoredProcedure [dbo].[spGetAllProductClient]    Script Date: 18/06/2024 09:54:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author: Lee Min Khooi>
-- Create date: <Create Date: 05/06/2024>
-- Description:	<Description: Get dữ liệu sản phẩm>
-- =============================================
CREATE PROCEDURE [dbo].[spGetAllProductClient]
	@PageNumber int = 1,
	@Request nvarchar(250) = N'',
	@typeId int = 0
AS
BEGIN
	Declare @count int;
	if @PageNumber = 1 Set @count = 0;
	else Set @count = 12;

	Select  p.*,
	CONCAT( 'https://localhost:44368/images/',i.ImageUrl) as ImageUrl,
	pr.Price
	from Product as p 
	Left Join (
    SELECT 
        *,
        ROW_NUMBER() OVER (PARTITION BY ProductID ORDER BY Id DESC) AS rn
    FROM 
        ProductImage
) as i on p.ID = i.ProductID
Left Join (
    SELECT 
        *,
        ROW_NUMBER() OVER (PARTITION BY ProductID ORDER BY Price) AS rn
    FROM 
        ProductDetails
) as pr on p.ID = pr.ProductID
	where  (@typeId = 0 Or p.ProductTypeID = @typeId )
	AND (@Request = N'' OR p.Code like N'%' + @Request + '%' OR p.Name like N'%' + @Request + '%' OR pr.Price like N'%' + @Request + '%')
	AND p.IsActive = 1
	AND i.rn = 1
	AND pr.rn =1
	Order by p.ID
	Offset (@count * (@PageNumber - 1)) rows
	fetch next 12 rows only
END
GO
/****** Object:  StoredProcedure [dbo].[spGetAllProductSize]    Script Date: 18/06/2024 09:54:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author: Lee Min Khooiiii>
-- Create date: <Create Date: 03/06/2024>
-- Description:	<Description: Store lấy dữ liệu >
-- =============================================
CREATE PROCEDURE [dbo].[spGetAllProductSize]
	@PageNumber int,
	@Request nvarchar(250)
AS
BEGIN
	Declare @count int;
	if @PageNumber = 1 Set @count = 0;
	else Set @count = 10;

	Select * from ProductSize 
	WHERE Name like '%' + @Request +'%' 
	Order by Id 
	Offset (@count * (@PageNumber - 1)) rows
	fetch next 10 rows only

END
GO
/****** Object:  StoredProcedure [dbo].[spGetAllProductType]    Script Date: 18/06/2024 09:54:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author: Lee Min Khooiiii>
-- Create date: <Create Date: 03/06/2024>
-- Description:	<Description: Store lấy dữ liệu >
-- =============================================
CREATE PROCEDURE [dbo].[spGetAllProductType]
	@PageNumber int,
	@Request nvarchar(250)
AS
BEGIN
	Declare @count int;
	if @PageNumber = 1 Set @count = 0;
	else Set @count = 10;

	Select * from ProductType 
	WHERE Name like '%' + @Request +'%' 
	Order by Id 
	Offset (@count * (@PageNumber - 1)) rows
	fetch next 10 rows only

END
GO
/****** Object:  StoredProcedure [dbo].[spGetAllTotalAccount]    Script Date: 18/06/2024 09:54:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author: Lee Min Khooiiii>
-- Create date: <Create Date: 03/06/2024>
-- Description:	<Description: Store lấy dữ liệu >
-- =============================================
CREATE PROCEDURE [dbo].[spGetAllTotalAccount]
	@Request nvarchar(250)
AS
BEGIN
	Select Count(*) as TotalCount from Account 
	WHERE FullName like '%' + @Request +'%' OR Email like '%' + @Request +'%' 
END
GO
/****** Object:  StoredProcedure [dbo].[spGetAllTotalOrder]    Script Date: 18/06/2024 09:54:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author: Lee Min Khooiiii>
-- Create date: <Create Date: 08/06/2024>
-- Description:	<Description: Store lấy dữ liệu >
-- =============================================
CREATE PROCEDURE [dbo].[spGetAllTotalOrder]
	@Request nvarchar(250) = N'',
	@Status int = -1,
	@DateStart datetime = '2024-01-01',
	@DateEnd datetime = '2099-01-01'
AS
BEGIN
	Select Count(*) as TotalCount from [Order]
	where (@Request is null Or TRIM(@Request) = N''
			OR OrderCode like CONCAT(N'%',@Request,'%')
			OR CustomerName like CONCAT(N'%',@Request,'%')
			OR [Address] like CONCAT(N'%',@Request,'%')
			OR PhoneNumber like CONCAT(N'%',@Request,'%'))
	AND (@Status = -1 OR [Status] = @Status)
	AND CreateDate BETWEEN @DateStart AND @DateEnd
END
GO
/****** Object:  StoredProcedure [dbo].[spGetAllTotalProduct]    Script Date: 18/06/2024 09:54:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author: Lee Min Khooiiii>
-- Create date: <Create Date: 03/06/2024>
-- Description:	<Description: Store lấy dữ liệu >
-- =============================================
CREATE PROCEDURE [dbo].[spGetAllTotalProduct]
	@Request nvarchar(250)
AS
BEGIN
	Select Count(*) as TotalCount from Product
	WHERE (Name like '%' + @Request +'%'
	OR Code like '%' + @Request +'%')
END
GO
/****** Object:  StoredProcedure [dbo].[spGetAllTotalProductClient]    Script Date: 18/06/2024 09:54:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author: Lee Min Khooi>
-- Create date: <Create Date: 08/06/2024>
-- Description:	<Description: Get số sản phẩm theo bộ lọc>
-- =============================================
CREATE PROCEDURE [dbo].[spGetAllTotalProductClient] 
	@Request nvarchar(250) = N'',
	@typeId int = 0
AS
BEGIN
	Select  Count(*) as TotalCount
	from Product as p 
	where  (@typeId = 0 Or p.ProductTypeID = @typeId )
	AND (@Request = N'' OR p.Code like N'%' + @Request + '%' OR p.Name like N'%' + @Request + '%')
	AND p.IsActive = 1
	
END
GO
/****** Object:  StoredProcedure [dbo].[spGetAllTotalProductSize]    Script Date: 18/06/2024 09:54:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author: Lee Min Khooiiii>
-- Create date: <Create Date: 03/06/2024>
-- Description:	<Description: Store lấy dữ liệu >
-- =============================================
CREATE PROCEDURE [dbo].[spGetAllTotalProductSize]
	@Request nvarchar(250)
AS
BEGIN
	Select Count(*) as TotalCount from ProductSize 
	WHERE Name like '%' + @Request +'%' 
END
GO
/****** Object:  StoredProcedure [dbo].[spGetCartByAccountId]    Script Date: 18/06/2024 09:54:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author: Lee Min Khooi>
-- Create date: <Create Date: 07/06/2024>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spGetCartByAccountId]
	@AccountId int
AS
BEGIN
	Select c.ID as CartId,
	c.Quantity,
	p.Name as ProductName,
	ps.Name as SizeName,
	CONCAT( 'https://localhost:44368/images/',i.ImageUrl) as ImageUrl,
	pd.Price,
	pd.ID as ProductDetailsId
	From Cart as c
	left join ProductDetails as pd on c.ProductDetailId = pd.ID
	left join Product as p on pd.ProductID = p.ID
	left join ProductSize as ps on pd.ProductSizeID = ps.ID
	left join (
    SELECT 
        *,
        ROW_NUMBER() OVER (PARTITION BY ProductID ORDER BY Id DESC) AS rn
    FROM 
        ProductImage
) as i on p.ID = i.ProductID
	WHERE p.IsActive = 1 AND c.AccountId = @AccountId
END
GO
/****** Object:  StoredProcedure [dbo].[spGetHardestToSell]    Script Date: 18/06/2024 09:54:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author: Lee Min Khooi>
-- Create date: <Create Date: 09/06/2024>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spGetHardestToSell]
		@topSale int
AS
BEGIN
		CREATE TABLE #temp (
		ProductID INT,
		TotalSales INT
	);
	DECLARE @sql NVARCHAR(MAX);

	SET @sql = N'
		INSERT INTO #temp (ProductID, TotalSales)
		SELECT TOP ' + CAST(@topSale AS NVARCHAR(10)) + ' 
			pd.ProductID, 
			SUM(od.Quantity) AS TotalSales
		FROM [Order] AS o
		LEFT JOIN OrderDetails AS od ON o.ID = od.OrderID
		LEFT JOIN ProductDetails AS pd ON od.ProductDetailID = pd.ID
		WHERE o.Status = 2
		GROUP BY pd.ProductID
		ORDER BY TotalSales';

	EXEC sp_executesql @sql;


	--SELECT Top @topSale as int  pd.ProductID, SUM(od.Quantity) as TotalSales 
	--INTO #temp
	--FROM [Order] as o
	--left join OrderDetails as od on o.ID = od.OrderID
	--left join ProductDetails as pd on od.ProductDetailID = pd.ID
	--WHERE o.Status = 2
	--Group by pd.ProductID
	--ORDER BY TotalSales Desc

	Select  p.*,
	CONCAT( 'https://localhost:44368/images/',i.ImageUrl) as ImageUrl,
	pr.Price,
	t.TotalSales
	from Product as p 
	INNER JOIN #temp as t on p.ID = t.ProductID
	Left Join (
    SELECT 
        *,
        ROW_NUMBER() OVER (PARTITION BY ProductID ORDER BY Id DESC) AS rn
    FROM 
        ProductImage
	) as i on p.ID = i.ProductID
	Left Join (
		SELECT 
			*,
			ROW_NUMBER() OVER (PARTITION BY ProductID ORDER BY Price) AS rn
		FROM 
			ProductDetails
	) as pr on p.ID = pr.ProductID
	where  p.IsActive = 1
	AND i.rn = 1
	AND pr.rn =1
	Order by t.TotalSales

	DROP TABLE #temp;
END
GO
/****** Object:  StoredProcedure [dbo].[spGetHistoryCheckOut]    Script Date: 18/06/2024 09:54:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author: Lee Min Khooi>
-- Create date: <Create Date: 07/06/2024>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spGetHistoryCheckOut]
	@AccountId int = 0,
	@Request nvarchar(250) = N''
AS
BEGIN
	select o.*,
			Case when o.Status = 0 then N'Chờ xác nhận đơn hàng'
				else Case when o.Status = 1 then N'Đơn hàng đang giao'
						else Case when o.Status = 2 then N'Đơn hàng giao thành công'
							else Case when o.Status = 3 then N'Đơn hàng đã hủy'
								else N'' End
							end
						end
				end as StatusText
		   ,od.TotalMoney 
	from [Order] as o
	Left join 
		(SELECT OrderID, 
			SUM(TotalMoney) as TotalMoney	
			from OrderDetails 
			GROUP BY OrderID) as od on o.ID = od.OrderID
	Where (@AccountId = 0 OR o.AccountID = @AccountId)
	And (@Request = N'' OR o.CustomerName like '%' +@Request + '%'
	OR o.Address like '%' +@Request + '%'
	OR o.PhoneNumber like '%' +@Request + '%')
	ORDER BY o.ID DESC

END
GO
/****** Object:  StoredProcedure [dbo].[spGetOrderDetails]    Script Date: 18/06/2024 09:54:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author: Lee Min Khooi>
-- Create date: <Create Date: 07/06/2024>
-- Description:	<Description:>
-- =============================================
CREATE PROCEDURE [dbo].[spGetOrderDetails]
	@OrderId int = 0
AS
BEGIN
	SELECT p.Name AS ProductName,
       ps.Name AS SizeName,
       CAST(od.TotalMoney as INT) AS TotalMoney,
       od.Quantity,
       CAST((od.TotalMoney / od.Quantity) as INT) AS Price,
	   CONCAT( 'https://localhost:44368/images/',i.ImageUrl) as ImageUrl
	FROM OrderDetails AS od
	LEFT JOIN ProductDetails AS pd ON od.ProductDetailID = pd.ID
	LEFT JOIN Product AS p ON p.ID = pd.ProductID
	LEFT JOIN ProductSize AS ps ON ps.ID = pd.ProductSizeID
	left join (
		SELECT 
			*,
			ROW_NUMBER() OVER (PARTITION BY ProductID ORDER BY Id DESC) AS rn
		FROM 
			ProductImage
	) as i on p.ID = i.ProductID
	WHERE (@OrderId = 0  Or od.OrderID = @OrderId)
END
GO
/****** Object:  StoredProcedure [dbo].[spGetProductSizeById]    Script Date: 18/06/2024 09:54:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spGetProductSizeById] 
	@ProductId int = 0
AS
BEGIN
	Select ps.*, Cast(pd.Price as Int) as Price, pd.ID as ProductDetailsId from ProductDetails as pd
	Left Join ProductSize as ps on pd.ProductSizeID = ps.ID
	Where pd.ProductID = @ProductId
END
GO
/****** Object:  StoredProcedure [dbo].[spGetTop4BestSale]    Script Date: 18/06/2024 09:54:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author: Lee Min Khooi>
-- Create date: <Create Date: 09/06/2024>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spGetTop4BestSale]
		@topSale int
AS
BEGIN
		CREATE TABLE #temp (
		ProductID INT,
		TotalSales INT
	);
	DECLARE @sql NVARCHAR(MAX);

	SET @sql = N'
		INSERT INTO #temp (ProductID, TotalSales)
		SELECT TOP ' + CAST(@topSale AS NVARCHAR(10)) + ' 
			pd.ProductID, 
			SUM(od.Quantity) AS TotalSales
		FROM [Order] AS o
		LEFT JOIN OrderDetails AS od ON o.ID = od.OrderID
		LEFT JOIN ProductDetails AS pd ON od.ProductDetailID = pd.ID
		WHERE o.Status = 2
		GROUP BY pd.ProductID
		ORDER BY TotalSales DESC';

	EXEC sp_executesql @sql;


	--SELECT Top @topSale as int  pd.ProductID, SUM(od.Quantity) as TotalSales 
	--INTO #temp
	--FROM [Order] as o
	--left join OrderDetails as od on o.ID = od.OrderID
	--left join ProductDetails as pd on od.ProductDetailID = pd.ID
	--WHERE o.Status = 2
	--Group by pd.ProductID
	--ORDER BY TotalSales Desc

	Select  p.*,
	CONCAT( 'https://localhost:44368/images/',i.ImageUrl) as ImageUrl,
	pr.Price,
	t.TotalSales
	from Product as p 
	INNER JOIN #temp as t on p.ID = t.ProductID
	Left Join (
    SELECT 
        *,
        ROW_NUMBER() OVER (PARTITION BY ProductID ORDER BY Id DESC) AS rn
    FROM 
        ProductImage
	) as i on p.ID = i.ProductID
	Left Join (
		SELECT 
			*,
			ROW_NUMBER() OVER (PARTITION BY ProductID ORDER BY Price) AS rn
		FROM 
			ProductDetails
	) as pr on p.ID = pr.ProductID
	where  p.IsActive = 1
	AND i.rn = 1
	AND pr.rn =1
	Order by t.TotalSales DESC

	DROP TABLE #temp;
END
GO
/****** Object:  StoredProcedure [dbo].[spGetTop4ProductNew]    Script Date: 18/06/2024 09:54:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author: Lee Min Khooi>
-- Create date: <Create Date: 09/06/2024>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spGetTop4ProductNew]
AS
BEGIN
	Select Top 4 p.*,
	CONCAT( 'https://localhost:44368/images/',i.ImageUrl) as ImageUrl,
	pr.Price
	from Product as p
	Left Join (
    SELECT 
        *,
        ROW_NUMBER() OVER (PARTITION BY ProductID ORDER BY Id DESC) AS rn
    FROM 
        ProductImage
	) as i on p.ID = i.ProductID
	Left Join (
		SELECT 
			*,
			ROW_NUMBER() OVER (PARTITION BY ProductID ORDER BY Price) AS rn
		FROM 
			ProductDetails
	) as pr on p.ID = pr.ProductID
	where  p.IsActive = 1
	AND i.rn = 1
	AND pr.rn =1
	Order By p.ID DESC
END
GO
/****** Object:  StoredProcedure [dbo].[spGetTotalCountProductType]    Script Date: 18/06/2024 09:54:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author: Lee Min Khooiiii>
-- Create date: <Create Date: 03/06/2024>
-- Description:	<Description: Store lấy dữ liệu >
-- =============================================
CREATE PROCEDURE [dbo].[spGetTotalCountProductType]
	@Request nvarchar(250)
AS
BEGIN

	Select count(*) as TotalCount from ProductType 
	WHERE Name like '%' + @Request +'%' 

END
GO
/****** Object:  StoredProcedure [dbo].[spGetTotalPuchase]    Script Date: 18/06/2024 09:54:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author: Lê Minh Khôi>
-- Create date: <Create Date:  17/06/2024>
-- Description:	<Description: Doanh thu theo tháng>
-- =============================================
CREATE PROCEDURE [dbo].[spGetTotalPuchase]
	@Month int,
	@Year int
AS
BEGIN
	DROP table if exists #temp
	SELECT SUM(TotalMoney) as TotalMoney, OrderID
	INTO #temp
	FROM OrderDetails Group by OrderID

	SELECT Cast( Sum(t.TotalMoney) as int) as TotalMoney, FORMAT(o.CreateDate, 'dd-MM-yyyy') as DayInMonth

	from [Order] as o
	INNER JOIN #temp as t on o.ID = t.OrderID
	WHERE Month(o.CreateDate) = @Month AND YEAR(o.CreateDate)  = @Year
	GROUP BY FORMAT(o.CreateDate, 'dd-MM-yyyy')

	DROP table if exists #temp
	
END
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'0: Chờ xác nhận; 1: Đang giao; 2: Thành công; 3: Hủy hàng' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Order', @level2type=N'COLUMN',@level2name=N'Status'
GO
