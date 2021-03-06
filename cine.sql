USE [master]
GO
/****** Object:  Database [Cine]    Script Date: 3/04/2022 6:37:35 a. m. ******/
CREATE DATABASE [Cine]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Cine', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Cine.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Cine_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Cine_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Cine] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Cine].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Cine] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Cine] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Cine] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Cine] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Cine] SET ARITHABORT OFF 
GO
ALTER DATABASE [Cine] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Cine] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Cine] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Cine] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Cine] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Cine] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Cine] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Cine] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Cine] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Cine] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Cine] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Cine] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Cine] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Cine] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Cine] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Cine] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Cine] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Cine] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Cine] SET  MULTI_USER 
GO
ALTER DATABASE [Cine] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Cine] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Cine] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Cine] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Cine] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Cine] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [Cine] SET QUERY_STORE = OFF
GO
USE [Cine]
GO
/****** Object:  Table [dbo].[Ciudades]    Script Date: 3/04/2022 6:37:36 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ciudades](
	[id_Ciudad] [int] IDENTITY(1,1) NOT NULL,
	[ciu_Nombre] [nvarchar](50) NOT NULL,
	[ciu_Estado] [bit] NOT NULL,
 CONSTRAINT [PK_Ciudades] PRIMARY KEY CLUSTERED 
(
	[id_Ciudad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Generos]    Script Date: 3/04/2022 6:37:36 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Generos](
	[id_Genero] [int] IDENTITY(1,1) NOT NULL,
	[gen_Nombre] [nvarchar](30) NOT NULL,
	[gen_Estado] [bit] NOT NULL,
 CONSTRAINT [PK_Generos] PRIMARY KEY CLUSTERED 
(
	[id_Genero] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Multicines]    Script Date: 3/04/2022 6:37:36 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Multicines](
	[id_Multicine] [int] IDENTITY(1,1) NOT NULL,
	[mul_nombre] [nvarchar](50) NOT NULL,
	[mul_estado] [bit] NOT NULL,
	[id_ciudad] [int] NOT NULL,
 CONSTRAINT [PK_Multicines] PRIMARY KEY CLUSTERED 
(
	[id_Multicine] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Peliculas]    Script Date: 3/04/2022 6:37:36 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Peliculas](
	[id_pelicula] [int] IDENTITY(1,1) NOT NULL,
	[pel_nombre] [nvarchar](max) NOT NULL,
	[pel_poster] [nvarchar](max) NOT NULL,
	[pel_trailer] [nvarchar](max) NOT NULL,
	[id_genero] [int] NOT NULL,
	[pel_estado] [bit] NOT NULL,
 CONSTRAINT [PK_Peliculas] PRIMARY KEY CLUSTERED 
(
	[id_pelicula] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Peliculas_multicine]    Script Date: 3/04/2022 6:37:36 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Peliculas_multicine](
	[id_pelicula_multicine] [int] IDENTITY(1,1) NOT NULL,
	[id_pelicula] [int] NOT NULL,
	[id_multicine] [int] NOT NULL,
	[pel_mul_horario] [datetime] NOT NULL,
 CONSTRAINT [PK_Peliculas_multicine] PRIMARY KEY CLUSTERED 
(
	[id_pelicula_multicine] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Multicines]  WITH CHECK ADD  CONSTRAINT [FK_Multicines_Ciudades] FOREIGN KEY([id_ciudad])
REFERENCES [dbo].[Ciudades] ([id_Ciudad])
GO
ALTER TABLE [dbo].[Multicines] CHECK CONSTRAINT [FK_Multicines_Ciudades]
GO
ALTER TABLE [dbo].[Peliculas]  WITH CHECK ADD  CONSTRAINT [FK_Peliculas_Generos] FOREIGN KEY([id_genero])
REFERENCES [dbo].[Generos] ([id_Genero])
GO
ALTER TABLE [dbo].[Peliculas] CHECK CONSTRAINT [FK_Peliculas_Generos]
GO
ALTER TABLE [dbo].[Peliculas_multicine]  WITH CHECK ADD  CONSTRAINT [FK_Peliculas_multicine] FOREIGN KEY([id_pelicula])
REFERENCES [dbo].[Peliculas] ([id_pelicula])
GO
ALTER TABLE [dbo].[Peliculas_multicine] CHECK CONSTRAINT [FK_Peliculas_multicine]
GO
ALTER TABLE [dbo].[Peliculas_multicine]  WITH CHECK ADD  CONSTRAINT [FK_Peliculas_multicine_Multicines] FOREIGN KEY([id_multicine])
REFERENCES [dbo].[Multicines] ([id_Multicine])
GO
ALTER TABLE [dbo].[Peliculas_multicine] CHECK CONSTRAINT [FK_Peliculas_multicine_Multicines]
GO
/****** Object:  StoredProcedure [dbo].[Ciudades_get]    Script Date: 3/04/2022 6:37:36 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Description:	Procedimiento para devolver un listado de ciudades
-- =============================================
CREATE PROCEDURE [dbo].[Ciudades_get]
AS
BEGIN
	SELECT * FROM Ciudades WHERE ciu_Estado = 1
END
GO
/****** Object:  StoredProcedure [dbo].[Generos_get]    Script Date: 3/04/2022 6:37:36 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Description:	Procedimiento para devolver un listado de generos
-- =============================================
CREATE PROCEDURE [dbo].[Generos_get]

AS
BEGIN
	SELECT * FROM Generos WHERE gen_Estado = 1
END
GO
/****** Object:  StoredProcedure [dbo].[multicines_get]    Script Date: 3/04/2022 6:37:36 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Description:	Devuelve el listado de los multicines que estan activos
-- =============================================
CREATE PROCEDURE [dbo].[multicines_get]
AS
BEGIN
	SELECT m.id_Multicine, m.mul_nombre, m.mul_estado, c.ciu_Nombre FROM Multicines AS m  
		   JOIN Ciudades AS c ON m.id_ciudad = c.id_ciudad
		   WHERE m.mul_estado = 1
END
GO
/****** Object:  StoredProcedure [dbo].[Peliculas_get]    Script Date: 3/04/2022 6:37:36 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Description:	Devuelve un listado de las peliculas activas 
-- =============================================
CREATE PROCEDURE [dbo].[Peliculas_get]
AS
BEGIN
	
	SELECT p.id_pelicula, p.pel_nombre, g.gen_Nombre,p.pel_poster, p.pel_trailer,p.pel_estado 
		   FROM Peliculas AS p JOIN Generos AS g ON p.id_genero = g.id_Genero 
		   WHERE p.pel_estado = 1
END
GO
/****** Object:  StoredProcedure [dbo].[Peliculas_multicine_get]    Script Date: 3/04/2022 6:37:36 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Description:	Devuelve la programacion de las peliculas por multicine
-- =============================================
CREATE PROCEDURE [dbo].[Peliculas_multicine_get]-- 'Royal Films' 
@multicine VARCHAR(100)
AS
BEGIN
	SELECT pm.id_pelicula_multicine,p.id_pelicula, p.pel_nombre, m.id_Multicine, m.mul_nombre, pm.pel_mul_horario FROM Peliculas_multicine AS pm 
	JOIN Peliculas AS p ON pm.id_pelicula = p.id_pelicula
	JOIN Multicines AS m ON pm.id_multicine = m.id_Multicine
	WHERE m.mul_nombre LIKE '%' + RTRIM(LTRIM(@multicine)) + '%';
END
GO
USE [master]
GO
ALTER DATABASE [Cine] SET  READ_WRITE 
GO
