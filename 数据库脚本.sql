use master
go
if exists(select 1 from sysdatabases where name ='dw_test')
drop database dw_test
go
create database dw_test
go

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[c004]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[c004]
GO

CREATE TABLE [dbo].[c004] (
	[sPrinter_c] [C8] NOT NULL ,
	[sPrinter_n] [S32] NOT NULL ,
	[sSparePrinter_c] [C8] NOT NULL ,
	[bDrive] [B] NOT NULL ,
	[sPrintType] [S16] NOT NULL ,
	[sSerialPorts] [S16] NOT NULL ,
	[sIpAdd] [S32] NOT NULL ,
	[sDrivePrinter] [S64] NOT NULL ,
	[dDate] [D] NOT NULL ,
	[sOper_c] [C8] NOT NULL ,
	[sRmk] [S255] NOT NULL ,
	[istatusup] [I] NOT NULL ,
	[dtlast] [DT] NOT NULL ,
	[print_area] [varchar] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[iBillRemind] [I] NULL ,
	[cnettype] [B] NULL ,
	[bPrintTurn] [B] NULL ,
	[bStart] [B] NULL ,
	[ePrinterStatus] [S32] NULL ,
	[nPrintNum] [N] NULL ,
	[nErrNum] [N] NULL ,
	[nSuccessNum] [N] NULL ,
	[nCycleNum] [N] NULL ,
	[bErr] [B] NULL ,
	[sPrnType] [B] NULL ,
	[status_port] [I] NULL ,
	[sPort] [S16] NULL ,
	[bcut] [B] NULL 
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[c004] WITH NOCHECK ADD 
	CONSTRAINT [PK_c004] PRIMARY KEY  CLUSTERED 
	(
		[sPrinter_c]
	)  ON [PRIMARY] 
GO

setuser
GO

EXEC sp_bindefault N'[dbo].[Empty_b]', N'[c004].[bcut]'
GO

EXEC sp_bindefault N'[dbo].[Empty_b]', N'[c004].[bDrive]'
GO

EXEC sp_bindefault N'[dbo].[Empty_b]', N'[c004].[bErr]'
GO

EXEC sp_bindefault N'[dbo].[Empty_b]', N'[c004].[bPrintTurn]'
GO

EXEC sp_bindefault N'[dbo].[Empty_b]', N'[c004].[bStart]'
GO

EXEC sp_bindefault N'[dbo].[Empty_b]', N'[c004].[cnettype]'
GO

EXEC sp_bindefault N'[dbo].[Empty_d]', N'[c004].[dDate]'
GO

EXEC sp_bindefault N'[dbo].[Empty_dt]', N'[c004].[dtlast]'
GO

EXEC sp_bindefault N'[dbo].[Empty_c]', N'[c004].[ePrinterStatus]'
GO

EXEC sp_bindefault N'[dbo].[Empty_n]', N'[c004].[iBillRemind]'
GO

EXEC sp_bindefault N'[dbo].[Empty_n]', N'[c004].[istatusup]'
GO

EXEC sp_bindefault N'[dbo].[Empty_n]', N'[c004].[nCycleNum]'
GO

EXEC sp_bindefault N'[dbo].[Empty_n]', N'[c004].[nErrNum]'
GO

EXEC sp_bindefault N'[dbo].[Empty_n]', N'[c004].[nPrintNum]'
GO

EXEC sp_bindefault N'[dbo].[Empty_n]', N'[c004].[nSuccessNum]'
GO

EXEC sp_bindefault N'[dbo].[Empty_c]', N'[c004].[sDrivePrinter]'
GO

EXEC sp_bindefault N'[dbo].[Empty_c]', N'[c004].[sIpAdd]'
GO

EXEC sp_bindefault N'[dbo].[Empty_c]', N'[c004].[sOper_c]'
GO

EXEC sp_bindefault N'[dbo].[Empty_c]', N'[c004].[sPort]'
GO

EXEC sp_bindefault N'[dbo].[Empty_c]', N'[c004].[sPrinter_c]'
GO

EXEC sp_bindefault N'[dbo].[Empty_c]', N'[c004].[sPrinter_n]'
GO

EXEC sp_bindefault N'[dbo].[Empty_c]', N'[c004].[sPrintType]'
GO

EXEC sp_bindefault N'[dbo].[Empty_b]', N'[c004].[sPrnType]'
GO

EXEC sp_bindefault N'[dbo].[Empty_c]', N'[c004].[sRmk]'
GO

EXEC sp_bindefault N'[dbo].[Empty_c]', N'[c004].[sSerialPorts]'
GO

EXEC sp_bindefault N'[dbo].[Empty_c]', N'[c004].[sSparePrinter_c]'
GO

EXEC sp_bindefault N'[dbo].[Empty_n]', N'[c004].[status_port]'
GO

setuser
GO

