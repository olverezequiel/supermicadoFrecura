USE [Super_Frecura]
GO
/****** Object:  Table [dbo].[Clientes]    Script Date: 12/23/2023 4:07:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clientes](
	[codigoCliente] [int] NOT NULL,
	[Empresa] [nvarchar](100) NULL,
	[Direccion] [nvarchar](200) NULL,
	[Poblacion] [nvarchar](50) NULL,
	[Telefono] [nvarchar](20) NULL,
	[Responsable] [nvarchar](100) NULL,
	[Historial] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[codigoCliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pedidos]    Script Date: 12/23/2023 4:07:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pedidos](
	[numerodePedido] [int] NOT NULL,
	[codigoCliente] [int] NULL,
	[FechaPedido] [date] NULL,
	[FormadePago] [nvarchar](50) NULL,
	[Descuento] [decimal](5, 2) NULL,
	[Enviado] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[numerodePedido] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Productos]    Script Date: 12/23/2023 4:07:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Productos](
	[CodigoArticulo] [int] NOT NULL,
	[seccion] [nvarchar](50) NULL,
	[nombreArticulo] [nvarchar](100) NULL,
	[Precio] [decimal](10, 2) NULL,
	[Fecha] [date] NULL,
	[Importado] [bit] NULL,
	[PaisDeOrigen] [nvarchar](50) NULL,
	[Foto] [varbinary](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[CodigoArticulo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductosPedido]    Script Date: 12/23/2023 4:07:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductosPedido](
	[NumeroPedido] [int] NOT NULL,
	[CodigoArticulo] [int] NOT NULL,
	[Unidades] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[NumeroPedido] ASC,
	[CodigoArticulo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ProductosPedido]  WITH CHECK ADD FOREIGN KEY([CodigoArticulo])
REFERENCES [dbo].[Productos] ([CodigoArticulo])
GO
