USE [master]
GO
CREATE DATABASE [BancoInterandino]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Banco', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\Banco.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Banco_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\Banco_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [BancoInterandino] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BancoInterandino].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BancoInterandino] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [BancoInterandino] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [BancoInterandino] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [BancoInterandino] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [BancoInterandino] SET ARITHABORT OFF 
GO
ALTER DATABASE [BancoInterandino] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [BancoInterandino] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [BancoInterandino] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [BancoInterandino] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [BancoInterandino] SET CURSOR_CLOSE_ON_COMMIT OFF 


GO
ALTER DATABASE [BancoInterandino] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [BancoInterandino] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Banco', N'ON'
GO
USE [BancoInterandino]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cuentas](
	[cli_id] [int] IDENTITY(1,1) NOT NULL,
	[cli_identificacion] [int] NOT NULL,
	[cli_apellido1] [int] NOT NULL,
	[cli_apellido2] [int] NOT NULL,
	[cli_nombre1] [int] NOT NULL,
	[cli_nombre2] [date] NOT NULL,
	[cli_direccion] [int] NOT NULL,
	[cli_ciudad] [int] NOT NULL,
	[cli_celular] [nvarchar](10) NOT NULL,
	[cli_email] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_cuentas] PRIMARY KEY CLUSTERED 
(
	[cli_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

CREATE TABLE [dbo].[Movimientos](
	[mov_id] [int] IDENTITY(1,1) NOT NULL,
	[mov_fecha] [nvarchar](50) NOT NULL,
	[mov_origen] [date] NOT NULL,
	[mov_valor] [nvarchar](10) NOT NULL,
	[mov_tipo] [int] NOT NULL,
	[cli_id] [int] NOT NULL,
	[cue_id] [int] NOT NULL,
 CONSTRAINT [PK_cuentas] PRIMARY KEY CLUSTERED 
(
	[mov_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cuenta](
	[cue_id] [int] IDENTITY(1,1) NOT NULL,
	[cue_numero] [nvarchar](50) NOT NULL,
	[cli_id] [int] NOT NULL,
	[cue_activa] [nvarchar](50) NOT NULL,
	[cue_fechacreacion] [nvarchar](50) NOT NULL,
	[cue_usuariocrea] [nvarchar](50) NOT NULL,
	[cue_saldoactual] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_cue_id] PRIMARY KEY CLUSTERED 
(
	[cue_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

