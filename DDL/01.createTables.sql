CREATE TABLE [dbo].[turno](
	[id] [int] NOT NULL,
	[hora_inicio] [datetime] NULL,
	[hora_fin] [datetime] NULL,
	[dia] [datetime] NULL,
 CONSTRAINT [PK_turnos] PRIMARY KEY CLUSTERED 
(
	[id] ASC
))
GO

CREATE TABLE [dbo].[paciente](
	[nombre] [varchar](100) NULL,
	[id] [int] NOT NULL,
	[obra_social] [bit] NULL,
	[dni] [varchar](100) NULL,
 CONSTRAINT [PK_paciente] PRIMARY KEY CLUSTERED 
(
	[id] ASC
))
GO

CREATE TABLE [dbo].[profesion](
	[id] [int] NOT NULL,
	[ocupacion] [nchar](10) NULL,
 CONSTRAINT [PK_profesion] PRIMARY KEY CLUSTERED 
(
	[id] ASC
))
GO

CREATE TABLE [dbo].[profesional](
	[id] [int] NOT NULL,
	[nombre] [varchar](100) NULL,
	[matricula] [varchar](100) NULL,
	[profesion_id] [int] NOT NULL,
 CONSTRAINT [PK_profesional] PRIMARY KEY CLUSTERED 
(
	[id] ASC
))
GO
ALTER TABLE [dbo].[profesional]  WITH CHECK ADD  CONSTRAINT [FK_profesional_profesion] FOREIGN KEY([profesion_id])
REFERENCES [dbo].[profesion] ([id])
GO

ALTER TABLE [dbo].[profesional] CHECK CONSTRAINT [FK_profesional_profesion]
GO

CREATE TABLE [dbo].[sedes](
	[id] [int] NOT NULL,
	[descripcion] [varchar](100) NULL
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[servicio](
	[id] [int] NOT NULL,
	[sede_id] [int] NOT NULL,
	[profesional_id] [int] NOT NULL,
	[paciente_id] [int] NOT NULL,
	[turno_id] [int] NOT NULL,
 CONSTRAINT [PK_servicio] PRIMARY KEY CLUSTERED 
(
	[id] ASC
))
GO

ALTER TABLE [dbo].[servicio]  WITH CHECK ADD  CONSTRAINT [FK_servicio_paciente] FOREIGN KEY([paciente_id])
REFERENCES [dbo].[paciente] ([id])
GO

ALTER TABLE [dbo].[servicio] CHECK CONSTRAINT [FK_servicio_paciente]
GO

ALTER TABLE [dbo].[servicio]  WITH CHECK ADD  CONSTRAINT [FK_servicio_profesional] FOREIGN KEY([profesional_id])
REFERENCES [dbo].[profesional] ([id])
GO

ALTER TABLE [dbo].[servicio] CHECK CONSTRAINT [FK_servicio_profesional]
GO

ALTER TABLE [dbo].[servicio]  WITH CHECK ADD  CONSTRAINT [FK_servicio_turno] FOREIGN KEY([turno_id])
REFERENCES [dbo].[turno] ([id])
GO

ALTER TABLE [dbo].[servicio] CHECK CONSTRAINT [FK_servicio_turno]
GO



