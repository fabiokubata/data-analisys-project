USE [master]
GO
/****** Object:  Database [lojaeletronicos]    Script Date: 24/01/2025 20:48:20 ******/
CREATE DATABASE [lojaeletronicos]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'lojaeletronicos', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\lojaeletronicos.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'lojaeletronicos_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\lojaeletronicos_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [lojaeletronicos] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [lojaeletronicos].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [lojaeletronicos] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [lojaeletronicos] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [lojaeletronicos] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [lojaeletronicos] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [lojaeletronicos] SET ARITHABORT OFF 
GO
ALTER DATABASE [lojaeletronicos] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [lojaeletronicos] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [lojaeletronicos] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [lojaeletronicos] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [lojaeletronicos] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [lojaeletronicos] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [lojaeletronicos] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [lojaeletronicos] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [lojaeletronicos] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [lojaeletronicos] SET  ENABLE_BROKER 
GO
ALTER DATABASE [lojaeletronicos] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [lojaeletronicos] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [lojaeletronicos] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [lojaeletronicos] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [lojaeletronicos] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [lojaeletronicos] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [lojaeletronicos] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [lojaeletronicos] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [lojaeletronicos] SET  MULTI_USER 
GO
ALTER DATABASE [lojaeletronicos] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [lojaeletronicos] SET DB_CHAINING OFF 
GO
ALTER DATABASE [lojaeletronicos] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [lojaeletronicos] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [lojaeletronicos] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [lojaeletronicos] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [lojaeletronicos] SET QUERY_STORE = ON
GO
ALTER DATABASE [lojaeletronicos] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [lojaeletronicos]
GO
/****** Object:  Table [dbo].[Vendas]    Script Date: 24/01/2025 20:48:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vendas](
	[id_cliente] [int] NULL,
	[nome_cliente] [varchar](70) NULL,
	[produto] [varchar](70) NULL,
	[cidade] [varchar](50) NULL,
	[estado] [varchar](50) NULL,
	[data_venda] [date] NULL,
	[preco] [decimal](8, 2) NULL,
	[quantidade] [int] NULL
) ON [PRIMARY]
GO
INSERT [dbo].[Vendas] ([id_cliente], [nome_cliente], [produto], [cidade], [estado], [data_venda], [preco], [quantidade]) VALUES (1, N'Fabio Kubata', N'Intel I5', N'Ribeirao Preto', N'SP', CAST(N'2018-02-05' AS Date), CAST(1500.00 AS Decimal(8, 2)), 1)
INSERT [dbo].[Vendas] ([id_cliente], [nome_cliente], [produto], [cidade], [estado], [data_venda], [preco], [quantidade]) VALUES (2, N'Joao Felipe', N'RTX 3060', N'Franca', N'SP', CAST(N'2023-04-28' AS Date), CAST(3200.00 AS Decimal(8, 2)), 2)
INSERT [dbo].[Vendas] ([id_cliente], [nome_cliente], [produto], [cidade], [estado], [data_venda], [preco], [quantidade]) VALUES (3, N'Caio Cesar', N'RTX 3080', N'Sao Paulo', N'SP', CAST(N'2024-05-22' AS Date), CAST(5200.00 AS Decimal(8, 2)), 1)
INSERT [dbo].[Vendas] ([id_cliente], [nome_cliente], [produto], [cidade], [estado], [data_venda], [preco], [quantidade]) VALUES (4, N'Gabriel Souza', N'Ryzen5', N'Uberlandia', N'MG', CAST(N'2023-05-22' AS Date), CAST(1800.00 AS Decimal(8, 2)), 2)
INSERT [dbo].[Vendas] ([id_cliente], [nome_cliente], [produto], [cidade], [estado], [data_venda], [preco], [quantidade]) VALUES (5, N'Gabriela Fernandes', N'Intel I7', N'Uberlandia', N'MG', CAST(N'2023-04-22' AS Date), CAST(1800.00 AS Decimal(8, 2)), 2)
INSERT [dbo].[Vendas] ([id_cliente], [nome_cliente], [produto], [cidade], [estado], [data_venda], [preco], [quantidade]) VALUES (5, N'Carlos Ferreira', N'Intel I5', N'Uberaba', N'MG', CAST(N'2023-04-22' AS Date), CAST(1200.00 AS Decimal(8, 2)), 2)
INSERT [dbo].[Vendas] ([id_cliente], [nome_cliente], [produto], [cidade], [estado], [data_venda], [preco], [quantidade]) VALUES (7, N'Joao Carlos', N'RTX 3060', N'Belo Horizonte', N'MG', CAST(N'2023-10-22' AS Date), CAST(3000.00 AS Decimal(8, 2)), 4)
INSERT [dbo].[Vendas] ([id_cliente], [nome_cliente], [produto], [cidade], [estado], [data_venda], [preco], [quantidade]) VALUES (8, N'Andre Ferreira', N'RTX 3070', N'Varginha', N'MG', CAST(N'2024-10-26' AS Date), CAST(4000.00 AS Decimal(8, 2)), 18)
INSERT [dbo].[Vendas] ([id_cliente], [nome_cliente], [produto], [cidade], [estado], [data_venda], [preco], [quantidade]) VALUES (9, N'Jaime Pedrosa', N'RTX 3060', N'Cravinhos', N'SP', CAST(N'2024-10-28' AS Date), CAST(3000.00 AS Decimal(8, 2)), 13)
INSERT [dbo].[Vendas] ([id_cliente], [nome_cliente], [produto], [cidade], [estado], [data_venda], [preco], [quantidade]) VALUES (10, N'Jaime Pedrosa', N'RTX 3060', N'Belem', N'PA', CAST(N'2024-01-28' AS Date), CAST(3000.00 AS Decimal(8, 2)), 1)
GO
USE [master]
GO
ALTER DATABASE [lojaeletronicos] SET  READ_WRITE 
GO
