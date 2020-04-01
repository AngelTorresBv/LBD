USE [Hospital]
GO
/****** Object:  Table [dbo].[Urgencias]    Script Date: 31/03/2020 10:45:36 p. m. ******/
DROP TABLE IF EXISTS [dbo].[Urgencias]
GO
/****** Object:  Table [dbo].[Salas]    Script Date: 31/03/2020 10:45:36 p. m. ******/
DROP TABLE IF EXISTS [dbo].[Salas]
GO
/****** Object:  Table [dbo].[Piso]    Script Date: 31/03/2020 10:45:36 p. m. ******/
DROP TABLE IF EXISTS [dbo].[Piso]
GO
/****** Object:  Table [dbo].[Pacientes]    Script Date: 31/03/2020 10:45:36 p. m. ******/
DROP TABLE IF EXISTS [dbo].[Pacientes]
GO
/****** Object:  Table [dbo].[Hospital]    Script Date: 31/03/2020 10:45:36 p. m. ******/
DROP TABLE IF EXISTS [dbo].[Hospital]
GO
/****** Object:  Table [dbo].[Enfermeras]    Script Date: 31/03/2020 10:45:36 p. m. ******/
DROP TABLE IF EXISTS [dbo].[Enfermeras]
GO
/****** Object:  Table [dbo].[Doctores]    Script Date: 31/03/2020 10:45:36 p. m. ******/
DROP TABLE IF EXISTS [dbo].[Doctores]
GO
/****** Object:  Table [dbo].[Diagnostico]    Script Date: 31/03/2020 10:45:36 p. m. ******/
DROP TABLE IF EXISTS [dbo].[Diagnostico]
GO
/****** Object:  Table [dbo].[CentrosDeControl]    Script Date: 31/03/2020 10:45:36 p. m. ******/
DROP TABLE IF EXISTS [dbo].[CentrosDeControl]
GO
/****** Object:  Table [dbo].[Camas]    Script Date: 31/03/2020 10:45:36 p. m. ******/
DROP TABLE IF EXISTS [dbo].[Camas]
GO
USE [master]
GO
/****** Object:  Database [Hospital]    Script Date: 31/03/2020 10:45:36 p. m. ******/
DROP DATABASE IF EXISTS [Hospital]
GO
/****** Object:  Database [Hospital]    Script Date: 31/03/2020 10:45:36 p. m. ******/
CREATE DATABASE [Hospital]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Hospital', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\Hospital.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Hospital_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\Hospital_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Hospital] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Hospital].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Hospital] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Hospital] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Hospital] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Hospital] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Hospital] SET ARITHABORT OFF 
GO
ALTER DATABASE [Hospital] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Hospital] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Hospital] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Hospital] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Hospital] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Hospital] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Hospital] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Hospital] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Hospital] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Hospital] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Hospital] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Hospital] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Hospital] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Hospital] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Hospital] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Hospital] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Hospital] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Hospital] SET RECOVERY FULL 
GO
ALTER DATABASE [Hospital] SET  MULTI_USER 
GO
ALTER DATABASE [Hospital] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Hospital] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Hospital] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Hospital] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Hospital] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Hospital', N'ON'
GO
ALTER DATABASE [Hospital] SET QUERY_STORE = OFF
GO
USE [Hospital]
GO
/****** Object:  Table [dbo].[Camas]    Script Date: 31/03/2020 10:45:36 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Camas](
	[Cama_id] [int] NOT NULL,
	[NumDeCama] [int] NOT NULL,
	[PisoDeLaCama] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Cama_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CentrosDeControl]    Script Date: 31/03/2020 10:45:36 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CentrosDeControl](
	[Centros_id] [int] NOT NULL,
	[Sala] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Centros_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Diagnostico]    Script Date: 31/03/2020 10:45:36 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Diagnostico](
	[Diagnostico_id] [varchar](50) NOT NULL,
	[Paciente] [varchar](50) NOT NULL,
	[Medicamento] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Diagnostico_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Doctores]    Script Date: 31/03/2020 10:45:36 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Doctores](
	[doctor_id] [int] NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[PrimerApellido] [varchar](50) NOT NULL,
	[SegundoApellido] [varchar](50) NOT NULL,
	[NombreCompleto]  AS (((([Nombre]+' ')+[PrimerApellido])+' ')+[SegundoApellido]),
PRIMARY KEY CLUSTERED 
(
	[doctor_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Enfermeras]    Script Date: 31/03/2020 10:45:36 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Enfermeras](
	[Enfermera_id] [int] NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[PrimerApellido] [varchar](50) NOT NULL,
	[SegundoApellido] [varchar](50) NOT NULL,
	[NombreCompleto]  AS (((([Nombre]+' ')+[PrimerApellido])+' ')+[SegundoApellido]),
PRIMARY KEY CLUSTERED 
(
	[Enfermera_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Hospital]    Script Date: 31/03/2020 10:45:36 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hospital](
	[Hospital_id] [int] NOT NULL,
	[Municipio] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Hospital_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pacientes]    Script Date: 31/03/2020 10:45:36 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pacientes](
	[Paciente_id] [int] NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[PrimerApellido] [varchar](50) NOT NULL,
	[SegundoApellido] [varchar](50) NOT NULL,
	[NombreCompleto]  AS (((([Nombre]+' ')+[PrimerApellido])+' ')+[SegundoApellido]),
PRIMARY KEY CLUSTERED 
(
	[Paciente_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Piso]    Script Date: 31/03/2020 10:45:36 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Piso](
	[Piso_id] [varchar](50) NOT NULL,
	[NumPiso] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Piso_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Salas]    Script Date: 31/03/2020 10:45:36 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Salas](
	[Salas_id] [int] NOT NULL,
	[NumPiso] [int] NOT NULL,
	[NumSala] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Salas_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Urgencias]    Script Date: 31/03/2020 10:45:36 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Urgencias](
	[Paciente] [varchar](50) NOT NULL,
	[doctor_id] [varchar](50) NOT NULL,
	[Enfermera_id] [varchar](50) NOT NULL
) ON [PRIMARY]
GO
INSERT [dbo].[Camas] ([Cama_id], [NumDeCama], [PisoDeLaCama]) VALUES (1, 1, 1)
GO
INSERT [dbo].[Camas] ([Cama_id], [NumDeCama], [PisoDeLaCama]) VALUES (2, 2, 1)
GO
INSERT [dbo].[Camas] ([Cama_id], [NumDeCama], [PisoDeLaCama]) VALUES (4, 4, 1)
GO
INSERT [dbo].[Camas] ([Cama_id], [NumDeCama], [PisoDeLaCama]) VALUES (5, 5, 2)
GO
INSERT [dbo].[Camas] ([Cama_id], [NumDeCama], [PisoDeLaCama]) VALUES (6, 6, 2)
GO
INSERT [dbo].[Camas] ([Cama_id], [NumDeCama], [PisoDeLaCama]) VALUES (7, 7, 2)
GO
INSERT [dbo].[Camas] ([Cama_id], [NumDeCama], [PisoDeLaCama]) VALUES (8, 8, 2)
GO
INSERT [dbo].[Camas] ([Cama_id], [NumDeCama], [PisoDeLaCama]) VALUES (9, 9, 2)
GO
INSERT [dbo].[Camas] ([Cama_id], [NumDeCama], [PisoDeLaCama]) VALUES (10, 10, 2)
GO
INSERT [dbo].[Camas] ([Cama_id], [NumDeCama], [PisoDeLaCama]) VALUES (11, 11, 1)
GO
INSERT [dbo].[CentrosDeControl] ([Centros_id], [Sala]) VALUES (1, N'Emergencias')
GO
INSERT [dbo].[CentrosDeControl] ([Centros_id], [Sala]) VALUES (3, N'terapia')
GO
INSERT [dbo].[CentrosDeControl] ([Centros_id], [Sala]) VALUES (4, N'Laboratorio')
GO
INSERT [dbo].[CentrosDeControl] ([Centros_id], [Sala]) VALUES (5, N'Patologia')
GO
INSERT [dbo].[CentrosDeControl] ([Centros_id], [Sala]) VALUES (6, N'Endoscopia')
GO
INSERT [dbo].[CentrosDeControl] ([Centros_id], [Sala]) VALUES (7, N'Cirujia')
GO
INSERT [dbo].[CentrosDeControl] ([Centros_id], [Sala]) VALUES (8, N'Quirofano')
GO
INSERT [dbo].[CentrosDeControl] ([Centros_id], [Sala]) VALUES (9, N'Consultorio')
GO
INSERT [dbo].[CentrosDeControl] ([Centros_id], [Sala]) VALUES (10, N'Rayos X')
GO
INSERT [dbo].[Diagnostico] ([Diagnostico_id], [Paciente], [Medicamento]) VALUES (N'cinco', N'Sergio', N'Motilium')
GO
INSERT [dbo].[Diagnostico] ([Diagnostico_id], [Paciente], [Medicamento]) VALUES (N'cuatro', N'Enrique', N'Paracetamol')
GO
INSERT [dbo].[Diagnostico] ([Diagnostico_id], [Paciente], [Medicamento]) VALUES (N'diez', N'Roberto', N'Paracetamol')
GO
INSERT [dbo].[Diagnostico] ([Diagnostico_id], [Paciente], [Medicamento]) VALUES (N'dos', N'Pedro', N'Ibuprofeno')
GO
INSERT [dbo].[Diagnostico] ([Diagnostico_id], [Paciente], [Medicamento]) VALUES (N'nueve', N'Jose', N'Aceon')
GO
INSERT [dbo].[Diagnostico] ([Diagnostico_id], [Paciente], [Medicamento]) VALUES (N'ocho', N'David', N'Paracetamol')
GO
INSERT [dbo].[Diagnostico] ([Diagnostico_id], [Paciente], [Medicamento]) VALUES (N'seis', N'Martin', N'Mavik')
GO
INSERT [dbo].[Diagnostico] ([Diagnostico_id], [Paciente], [Medicamento]) VALUES (N'siete', N'Gerardo', N'Cafelexina')
GO
INSERT [dbo].[Diagnostico] ([Diagnostico_id], [Paciente], [Medicamento]) VALUES (N'tres', N'Francisco', N'Amoxilina')
GO
INSERT [dbo].[Diagnostico] ([Diagnostico_id], [Paciente], [Medicamento]) VALUES (N'uno', N'Juan', N'Paracetamol')
GO
INSERT [dbo].[Doctores] ([doctor_id], [Nombre], [PrimerApellido], [SegundoApellido]) VALUES (1, N'Diego', N'Aguilera', N'Campos')
GO
INSERT [dbo].[Doctores] ([doctor_id], [Nombre], [PrimerApellido], [SegundoApellido]) VALUES (2, N'Misael', N'Rodriguez', N'Chaves')
GO
INSERT [dbo].[Doctores] ([doctor_id], [Nombre], [PrimerApellido], [SegundoApellido]) VALUES (4, N'Manuel', N'Herrera', N'Castro')
GO
INSERT [dbo].[Doctores] ([doctor_id], [Nombre], [PrimerApellido], [SegundoApellido]) VALUES (5, N'Gerardo', N'Saenz', N'Vega')
GO
INSERT [dbo].[Doctores] ([doctor_id], [Nombre], [PrimerApellido], [SegundoApellido]) VALUES (6, N'Alejandro', N'Huerta', N'martines')
GO
INSERT [dbo].[Doctores] ([doctor_id], [Nombre], [PrimerApellido], [SegundoApellido]) VALUES (7, N'Alberto', N'Hernandez', N'Silva')
GO
INSERT [dbo].[Doctores] ([doctor_id], [Nombre], [PrimerApellido], [SegundoApellido]) VALUES (8, N'Diego', N'Garza', N'Tovar')
GO
INSERT [dbo].[Doctores] ([doctor_id], [Nombre], [PrimerApellido], [SegundoApellido]) VALUES (9, N'Jose', N'Morales', N'Sauceda')
GO
INSERT [dbo].[Doctores] ([doctor_id], [Nombre], [PrimerApellido], [SegundoApellido]) VALUES (10, N'Franciso', N'Hernandez', N'Auja')
GO
INSERT [dbo].[Enfermeras] ([Enfermera_id], [Nombre], [PrimerApellido], [SegundoApellido]) VALUES (1, N'Maria', N'Hernandez', N'Gonzales')
GO
INSERT [dbo].[Enfermeras] ([Enfermera_id], [Nombre], [PrimerApellido], [SegundoApellido]) VALUES (2, N'Consuelo', N'Torres', N'Felix')
GO
INSERT [dbo].[Enfermeras] ([Enfermera_id], [Nombre], [PrimerApellido], [SegundoApellido]) VALUES (4, N'Jasmin', N'Flores', N'Garza')
GO
INSERT [dbo].[Enfermeras] ([Enfermera_id], [Nombre], [PrimerApellido], [SegundoApellido]) VALUES (5, N'Veronica', N'Villanueva', N'Martines')
GO
INSERT [dbo].[Enfermeras] ([Enfermera_id], [Nombre], [PrimerApellido], [SegundoApellido]) VALUES (6, N'Daniela', N'Ruiz', N'Castillo')
GO
INSERT [dbo].[Enfermeras] ([Enfermera_id], [Nombre], [PrimerApellido], [SegundoApellido]) VALUES (7, N'Esmeralda', N'Moreno', N'Sauceda')
GO
INSERT [dbo].[Enfermeras] ([Enfermera_id], [Nombre], [PrimerApellido], [SegundoApellido]) VALUES (8, N'Sofia', N'Ventura', N'Salazar')
GO
INSERT [dbo].[Enfermeras] ([Enfermera_id], [Nombre], [PrimerApellido], [SegundoApellido]) VALUES (9, N'Monica', N'Gonzales', N'Alvares')
GO
INSERT [dbo].[Enfermeras] ([Enfermera_id], [Nombre], [PrimerApellido], [SegundoApellido]) VALUES (10, N'Nelly', N'Oviedo', N'Resendis')
GO
INSERT [dbo].[Hospital] ([Hospital_id], [Municipio]) VALUES (1, N'Monterrey')
GO
INSERT [dbo].[Hospital] ([Hospital_id], [Municipio]) VALUES (2, N'Monterrey')
GO
INSERT [dbo].[Hospital] ([Hospital_id], [Municipio]) VALUES (3, N'Monterrey')
GO
INSERT [dbo].[Hospital] ([Hospital_id], [Municipio]) VALUES (4, N'Guadalupe')
GO
INSERT [dbo].[Hospital] ([Hospital_id], [Municipio]) VALUES (5, N'Guadalupe')
GO
INSERT [dbo].[Hospital] ([Hospital_id], [Municipio]) VALUES (6, N'San Nicolas')
GO
INSERT [dbo].[Hospital] ([Hospital_id], [Municipio]) VALUES (7, N'San Pedro')
GO
INSERT [dbo].[Hospital] ([Hospital_id], [Municipio]) VALUES (8, N'San Pedro')
GO
INSERT [dbo].[Hospital] ([Hospital_id], [Municipio]) VALUES (9, N'Escobedo')
GO
INSERT [dbo].[Hospital] ([Hospital_id], [Municipio]) VALUES (10, N'Santa Catarina')
GO
INSERT [dbo].[Pacientes] ([Paciente_id], [Nombre], [PrimerApellido], [SegundoApellido]) VALUES (1, N'Oracio', N'Escamilla', N'Valdez')
GO
INSERT [dbo].[Pacientes] ([Paciente_id], [Nombre], [PrimerApellido], [SegundoApellido]) VALUES (2, N'Omar', N'Fernandez', N'Vergara')
GO
INSERT [dbo].[Pacientes] ([Paciente_id], [Nombre], [PrimerApellido], [SegundoApellido]) VALUES (3, N'Javier', N'Puente', N'Olvera')
GO
INSERT [dbo].[Pacientes] ([Paciente_id], [Nombre], [PrimerApellido], [SegundoApellido]) VALUES (4, N'Manuel', N'Valverde', N'Covarrubias')
GO
INSERT [dbo].[Pacientes] ([Paciente_id], [Nombre], [PrimerApellido], [SegundoApellido]) VALUES (6, N'Chirstian', N'Ponce', N'Alvarado')
GO
INSERT [dbo].[Pacientes] ([Paciente_id], [Nombre], [PrimerApellido], [SegundoApellido]) VALUES (7, N'Oracio', N'Escamilla', N'Valdez')
GO
INSERT [dbo].[Pacientes] ([Paciente_id], [Nombre], [PrimerApellido], [SegundoApellido]) VALUES (8, N'Oracio', N'Escamilla', N'Valdez')
GO
INSERT [dbo].[Pacientes] ([Paciente_id], [Nombre], [PrimerApellido], [SegundoApellido]) VALUES (9, N'Oracio', N'Escamilla', N'Valdez')
GO
INSERT [dbo].[Pacientes] ([Paciente_id], [Nombre], [PrimerApellido], [SegundoApellido]) VALUES (10, N'Oracio', N'Escamilla', N'Valdez')
GO
INSERT [dbo].[Piso] ([Piso_id], [NumPiso]) VALUES (N'1', N'6')
GO
INSERT [dbo].[Piso] ([Piso_id], [NumPiso]) VALUES (N'10', N'10')
GO
INSERT [dbo].[Piso] ([Piso_id], [NumPiso]) VALUES (N'2', N'2')
GO
INSERT [dbo].[Piso] ([Piso_id], [NumPiso]) VALUES (N'3', N'3')
GO
INSERT [dbo].[Piso] ([Piso_id], [NumPiso]) VALUES (N'4', N'4')
GO
INSERT [dbo].[Piso] ([Piso_id], [NumPiso]) VALUES (N'5', N'5')
GO
INSERT [dbo].[Piso] ([Piso_id], [NumPiso]) VALUES (N'6', N'6')
GO
INSERT [dbo].[Piso] ([Piso_id], [NumPiso]) VALUES (N'7', N'7')
GO
INSERT [dbo].[Piso] ([Piso_id], [NumPiso]) VALUES (N'8', N'8')
GO
INSERT [dbo].[Piso] ([Piso_id], [NumPiso]) VALUES (N'9', N'9')
GO
INSERT [dbo].[Salas] ([Salas_id], [NumPiso], [NumSala]) VALUES (1, 1, 1)
GO
INSERT [dbo].[Salas] ([Salas_id], [NumPiso], [NumSala]) VALUES (2, 1, 2)
GO
INSERT [dbo].[Salas] ([Salas_id], [NumPiso], [NumSala]) VALUES (4, 1, 4)
GO
INSERT [dbo].[Salas] ([Salas_id], [NumPiso], [NumSala]) VALUES (5, 1, 5)
GO
INSERT [dbo].[Salas] ([Salas_id], [NumPiso], [NumSala]) VALUES (6, 1, 6)
GO
INSERT [dbo].[Salas] ([Salas_id], [NumPiso], [NumSala]) VALUES (7, 1, 7)
GO
INSERT [dbo].[Salas] ([Salas_id], [NumPiso], [NumSala]) VALUES (8, 1, 8)
GO
INSERT [dbo].[Salas] ([Salas_id], [NumPiso], [NumSala]) VALUES (9, 1, 9)
GO
INSERT [dbo].[Salas] ([Salas_id], [NumPiso], [NumSala]) VALUES (10, 5, 10)
GO
INSERT [dbo].[Urgencias] ([Paciente], [doctor_id], [Enfermera_id]) VALUES (N'1', N'1', N'1')
GO
INSERT [dbo].[Urgencias] ([Paciente], [doctor_id], [Enfermera_id]) VALUES (N'2', N'2', N'2')
GO
INSERT [dbo].[Urgencias] ([Paciente], [doctor_id], [Enfermera_id]) VALUES (N'3', N'3', N'3')
GO
INSERT [dbo].[Urgencias] ([Paciente], [doctor_id], [Enfermera_id]) VALUES (N'4', N'4', N'4')
GO
INSERT [dbo].[Urgencias] ([Paciente], [doctor_id], [Enfermera_id]) VALUES (N'5', N'5', N'5')
GO
INSERT [dbo].[Urgencias] ([Paciente], [doctor_id], [Enfermera_id]) VALUES (N'6', N'3', N'6')
GO
INSERT [dbo].[Urgencias] ([Paciente], [doctor_id], [Enfermera_id]) VALUES (N'7', N'7', N'7')
GO
INSERT [dbo].[Urgencias] ([Paciente], [doctor_id], [Enfermera_id]) VALUES (N'1', N'1', N'1')
GO
INSERT [dbo].[Urgencias] ([Paciente], [doctor_id], [Enfermera_id]) VALUES (N'8', N'8', N'8')
GO
INSERT [dbo].[Urgencias] ([Paciente], [doctor_id], [Enfermera_id]) VALUES (N'9', N'9', N'9')
GO
INSERT [dbo].[Urgencias] ([Paciente], [doctor_id], [Enfermera_id]) VALUES (N'1', N'2', N'1')
GO
USE [master]
GO
ALTER DATABASE [Hospital] SET  READ_WRITE 
GO
