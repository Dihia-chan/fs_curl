USE [pbx_conf]
GO
/****** Object:  Table [dbo].[directory_groups]    Script Date: 02/21/2011 16:50:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[directory_groups]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[directory_groups](
	[group_id] [int] NOT NULL,
	[group_name] [varchar](256) NOT NULL,
 CONSTRAINT [directory_groups_pkey] PRIMARY KEY CLUSTERED 
(
	[group_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [directory_groups_group_name_key] UNIQUE NONCLUSTERED 
(
	[group_name] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[directory_domains]    Script Date: 02/21/2011 16:50:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[directory_domains]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[directory_domains](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[domain_name] [varchar](128) NOT NULL,
 CONSTRAINT [directory_domains_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [directory_domains_domain_name_key] UNIQUE NONCLUSTERED 
(
	[domain_name] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[directory_domains] ON
INSERT [dbo].[directory_domains] ([id], [domain_name]) VALUES (1, N'freeswitch.org')
INSERT [dbo].[directory_domains] ([id], [domain_name]) VALUES (2, N'sofaswitch.org')
SET IDENTITY_INSERT [dbo].[directory_domains] OFF
/****** Object:  Table [dbo].[directory]    Script Date: 02/21/2011 16:50:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[directory]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[directory](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[username] [varchar](256) NOT NULL,
	[domain] [varchar](256) NOT NULL,
 CONSTRAINT [directory_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [directory_username_key] UNIQUE NONCLUSTERED 
(
	[username] ASC,
	[domain] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[directory] ON
INSERT [dbo].[directory] ([id], [username], [domain]) VALUES (1, N'1000', N'example.com')
INSERT [dbo].[directory] ([id], [username], [domain]) VALUES (2, N'1001', N'example.org')
INSERT [dbo].[directory] ([id], [username], [domain]) VALUES (3, N'1002', N'example.net')
INSERT [dbo].[directory] ([id], [username], [domain]) VALUES (5, N'1003', N'example.info')
INSERT [dbo].[directory] ([id], [username], [domain]) VALUES (6, N'1004', N'example.com')
INSERT [dbo].[directory] ([id], [username], [domain]) VALUES (7, N'1005', N'example.org')
INSERT [dbo].[directory] ([id], [username], [domain]) VALUES (8, N'1006', N'example.net')
INSERT [dbo].[directory] ([id], [username], [domain]) VALUES (9, N'1007', N'example.info')
INSERT [dbo].[directory] ([id], [username], [domain]) VALUES (11, N'1009', N'$${local_ip_v4}')
INSERT [dbo].[directory] ([id], [username], [domain]) VALUES (10, N'2000', N'default')
SET IDENTITY_INSERT [dbo].[directory] OFF
/****** Object:  Table [dbo].[dingaling_settings]    Script Date: 02/21/2011 16:50:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[dingaling_settings]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[dingaling_settings](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[param_name] [varchar](64) NOT NULL,
	[param_value] [varchar](64) NOT NULL,
 CONSTRAINT [dingaling_settings_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [dingaling_settings_param_name_key] UNIQUE NONCLUSTERED 
(
	[param_name] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[dingaling_settings] ON
INSERT [dbo].[dingaling_settings] ([id], [param_name], [param_value]) VALUES (1, N'debug', N'0')
INSERT [dbo].[dingaling_settings] ([id], [param_name], [param_value]) VALUES (2, N'codec-prefs', N'$${global_codec_prefs}')
SET IDENTITY_INSERT [dbo].[dingaling_settings] OFF
/****** Object:  Table [dbo].[dingaling_profiles]    Script Date: 02/21/2011 16:50:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[dingaling_profiles]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[dingaling_profiles](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[profile_name] [varchar](64) NOT NULL,
	[type] [varchar](64) NOT NULL,
 CONSTRAINT [dingaling_profiles_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [dingaling_profiles_profile_name_key] UNIQUE NONCLUSTERED 
(
	[profile_name] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[dingaling_profiles] ON
INSERT [dbo].[dingaling_profiles] ([id], [profile_name], [type]) VALUES (1, N'fs.intralanman.servehttp.com', N'component')
SET IDENTITY_INSERT [dbo].[dingaling_profiles] OFF
/****** Object:  Table [dbo].[acl_lists]    Script Date: 02/21/2011 16:50:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[acl_lists]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[acl_lists](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[acl_name] [varchar](128) NOT NULL,
	[default_policy] [varchar](48) NOT NULL,
 CONSTRAINT [acl_lists_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[acl_lists] ON
INSERT [dbo].[acl_lists] ([id], [acl_name], [default_policy]) VALUES (1, N'rfc1918', N'deny')
INSERT [dbo].[acl_lists] ([id], [acl_name], [default_policy]) VALUES (2, N'lan', N'allow')
INSERT [dbo].[acl_lists] ([id], [acl_name], [default_policy]) VALUES (3, N'default', N'allow')
SET IDENTITY_INSERT [dbo].[acl_lists] OFF
/****** Object:  Table [dbo].[accounts]    Script Date: 02/21/2011 16:50:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[accounts]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[accounts](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[name] [varchar](256) NULL,
	[cash] [float] NOT NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[dialplan_special]    Script Date: 02/21/2011 16:50:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[dialplan_special]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[dialplan_special](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[context] [varchar](256) NOT NULL,
	[class_file] [varchar](256) NOT NULL,
 CONSTRAINT [dialplan_special_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [dialplan_special_context_key] UNIQUE NONCLUSTERED 
(
	[context] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[dialplan]    Script Date: 02/21/2011 16:50:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[dialplan]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[dialplan](
	[dialplan_id] [int] NOT NULL,
	[domain] [varchar](128) NOT NULL,
	[ip_address] [varchar](16) NOT NULL,
 CONSTRAINT [dialplan_pkey] PRIMARY KEY CLUSTERED 
(
	[dialplan_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[dialplan] ([dialplan_id], [domain], [ip_address]) VALUES (1, N'freeswitch', N'127.0.0.1')
/****** Object:  Table [dbo].[conference_profiles]    Script Date: 02/21/2011 16:50:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[conference_profiles]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[conference_profiles](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[profile_name] [varchar](64) NOT NULL,
	[param_name] [varchar](64) NOT NULL,
	[param_value] [varchar](64) NOT NULL,
 CONSTRAINT [conference_profiles_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [conference_profiles_profile_name_key] UNIQUE NONCLUSTERED 
(
	[profile_name] ASC,
	[param_name] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[conference_profiles] ON
INSERT [dbo].[conference_profiles] ([id], [profile_name], [param_name], [param_value]) VALUES (1, N'default', N'domain', N'$${domain}')
INSERT [dbo].[conference_profiles] ([id], [profile_name], [param_name], [param_value]) VALUES (2, N'default', N'rate', N'8000')
INSERT [dbo].[conference_profiles] ([id], [profile_name], [param_name], [param_value]) VALUES (3, N'default', N'interval', N'20')
INSERT [dbo].[conference_profiles] ([id], [profile_name], [param_name], [param_value]) VALUES (4, N'default', N'energy-level', N'300')
INSERT [dbo].[conference_profiles] ([id], [profile_name], [param_name], [param_value]) VALUES (5, N'default', N'moh-sound', N'$${moh_uri}')
INSERT [dbo].[conference_profiles] ([id], [profile_name], [param_name], [param_value]) VALUES (6, N'default', N'caller-id-name', N'$${outbound_caller_name}')
INSERT [dbo].[conference_profiles] ([id], [profile_name], [param_name], [param_value]) VALUES (7, N'default', N'caller-id-number', N'$${outbound_caller_number}')
SET IDENTITY_INSERT [dbo].[conference_profiles] OFF
/****** Object:  Table [dbo].[conference_controls]    Script Date: 02/21/2011 16:50:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[conference_controls]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[conference_controls](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[conf_group] [varchar](64) NOT NULL,
	[action] [varchar](64) NOT NULL,
	[digits] [varchar](16) NOT NULL,
 CONSTRAINT [conference_controls_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [conference_controls_conf_group_key] UNIQUE NONCLUSTERED 
(
	[conf_group] ASC,
	[action] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[conference_controls] ON
INSERT [dbo].[conference_controls] ([id], [conf_group], [action], [digits]) VALUES (1, N'default', N'mute', N'0')
INSERT [dbo].[conference_controls] ([id], [conf_group], [action], [digits]) VALUES (2, N'default', N'deaf_mute', N'*')
INSERT [dbo].[conference_controls] ([id], [conf_group], [action], [digits]) VALUES (3, N'default', N'energy up', N'9')
INSERT [dbo].[conference_controls] ([id], [conf_group], [action], [digits]) VALUES (4, N'default', N'energy equ', N'8')
INSERT [dbo].[conference_controls] ([id], [conf_group], [action], [digits]) VALUES (5, N'default', N'energy dn', N'7')
INSERT [dbo].[conference_controls] ([id], [conf_group], [action], [digits]) VALUES (6, N'default', N'vol talk up', N'3')
INSERT [dbo].[conference_controls] ([id], [conf_group], [action], [digits]) VALUES (7, N'default', N'vol talk dn', N'1')
INSERT [dbo].[conference_controls] ([id], [conf_group], [action], [digits]) VALUES (8, N'default', N'vol talk zero', N'2')
INSERT [dbo].[conference_controls] ([id], [conf_group], [action], [digits]) VALUES (9, N'default', N'vol listen up', N'6')
INSERT [dbo].[conference_controls] ([id], [conf_group], [action], [digits]) VALUES (10, N'default', N'vol listen dn', N'4')
INSERT [dbo].[conference_controls] ([id], [conf_group], [action], [digits]) VALUES (11, N'default', N'vol listen zero', N'5')
INSERT [dbo].[conference_controls] ([id], [conf_group], [action], [digits]) VALUES (12, N'default', N'hangup', N'#')
SET IDENTITY_INSERT [dbo].[conference_controls] OFF
/****** Object:  Table [dbo].[conference_advertise]    Script Date: 02/21/2011 16:50:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[conference_advertise]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[conference_advertise](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[room] [varchar](64) NOT NULL,
	[status] [varchar](128) NOT NULL,
 CONSTRAINT [conference_advertise_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[conference_advertise] ON
INSERT [dbo].[conference_advertise] ([id], [room], [status]) VALUES (1, N'3000@$${domain}', N'Freeswitch Conference')
INSERT [dbo].[conference_advertise] ([id], [room], [status]) VALUES (2, N'3001@$${domain}', N'FreeSWITCH Conference 2')
INSERT [dbo].[conference_advertise] ([id], [room], [status]) VALUES (3, N'3002@$${domain}', N'FreeSWITCH Conference 3')
SET IDENTITY_INSERT [dbo].[conference_advertise] OFF
/****** Object:  Table [dbo].[cdr]    Script Date: 02/21/2011 16:50:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[cdr]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[cdr](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[caller_id_name] [varchar](1) NOT NULL,
	[caller_id_number] [varchar](1) NOT NULL,
	[destination_number] [varchar](1) NOT NULL,
	[context] [varchar](1) NOT NULL,
	[start_stamp] [varchar](1) NOT NULL,
	[answer_stamp] [varchar](1) NOT NULL,
	[end_stamp] [varchar](1) NOT NULL,
	[duration] [varchar](1) NOT NULL,
	[billsec] [varchar](1) NOT NULL,
	[hangup_cause] [char](128) NOT NULL,
	[uuid] [varchar](1) NOT NULL,
	[bleg_uuid] [varchar](1) NOT NULL,
	[accountcode] [char](128) NOT NULL,
	[read_codec] [varchar](1) NOT NULL,
	[write_codec] [varchar](1) NOT NULL,
 CONSTRAINT [cdr_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[carriers]    Script Date: 02/21/2011 16:50:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[carriers]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[carriers](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[carrier_name] [varchar](255) NOT NULL,
	[enabled] [bit] NOT NULL,
 CONSTRAINT [carriers_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[iax_conf]    Script Date: 02/21/2011 16:50:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[iax_conf]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[iax_conf](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[profile_name] [varchar](256) NOT NULL,
 CONSTRAINT [iax_conf_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [iax_conf_profile_name_key] UNIQUE NONCLUSTERED 
(
	[profile_name] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[iax_conf] ON
INSERT [dbo].[iax_conf] ([id], [profile_name]) VALUES (3, N'test_profile')
SET IDENTITY_INSERT [dbo].[iax_conf] OFF
/****** Object:  Table [dbo].[easyroute_data]    Script Date: 02/21/2011 16:50:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[easyroute_data]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[easyroute_data](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[gateway] [varchar](128) NOT NULL,
	[group] [varchar](128) NOT NULL,
	[call_limit] [varchar](16) NOT NULL,
	[tech_prefix] [varchar](128) NOT NULL,
	[acctcode] [varchar](128) NOT NULL,
	[destination_number] [varchar](128) NOT NULL,
 CONSTRAINT [easyroute_data_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [easyroute_data_destination_number_key] UNIQUE NONCLUSTERED 
(
	[destination_number] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[easyroute_conf]    Script Date: 02/21/2011 16:50:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[easyroute_conf]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[easyroute_conf](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[param_name] [varchar](256) NOT NULL,
	[param_value] [varchar](256) NOT NULL,
 CONSTRAINT [easyroute_conf_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [easyroute_conf_param_name_key] UNIQUE NONCLUSTERED 
(
	[param_name] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[lcr_profiles]    Script Date: 02/21/2011 16:50:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[lcr_profiles]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[lcr_profiles](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[profile_name] [varchar](128) NOT NULL,
 CONSTRAINT [lcr_profiles_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [lcr_profiles_profile_name_key] UNIQUE NONCLUSTERED 
(
	[profile_name] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[lcr_conf]    Script Date: 02/21/2011 16:50:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[lcr_conf]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[lcr_conf](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[param_name] [varchar](256) NOT NULL,
	[param_value] [varchar](256) NOT NULL,
 CONSTRAINT [lcr_conf_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [lcr_conf_param_name_key] UNIQUE NONCLUSTERED 
(
	[param_name] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[sip_subscriptions]    Script Date: 02/21/2011 16:50:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sip_subscriptions]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[sip_subscriptions](
	[proto] [varchar](255) NULL,
	[sip_user] [varchar](255) NULL,
	[sip_host] [varchar](255) NULL,
	[sub_to_user] [varchar](255) NULL,
	[sub_to_host] [varchar](255) NULL,
	[presence_hosts] [varchar](255) NULL,
	[event] [varchar](255) NULL,
	[contact] [varchar](1024) NULL,
	[call_id] [varchar](255) NULL,
	[full_from] [varchar](255) NULL,
	[full_via] [varchar](255) NULL,
	[expires] [int] NULL,
	[user_agent] [varchar](255) NULL,
	[accept] [varchar](255) NULL,
	[profile_name] [varchar](255) NULL,
	[hostname] [varchar](255) NULL,
	[network_port] [varchar](6) NULL,
	[network_ip] [varchar](255) NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[sip_shared_appearance_subscriptions]    Script Date: 02/21/2011 16:50:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sip_shared_appearance_subscriptions]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[sip_shared_appearance_subscriptions](
	[subscriber] [varchar](255) NULL,
	[call_id] [varchar](255) NULL,
	[aor] [varchar](255) NULL,
	[profile_name] [varchar](255) NULL,
	[hostname] [varchar](255) NULL,
	[contact_str] [varchar](255) NULL,
	[network_ip] [varchar](255) NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[sip_shared_appearance_dialogs]    Script Date: 02/21/2011 16:50:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sip_shared_appearance_dialogs]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[sip_shared_appearance_dialogs](
	[profile_name] [varchar](255) NULL,
	[hostname] [varchar](255) NULL,
	[contact_str] [varchar](255) NULL,
	[call_id] [varchar](255) NULL,
	[network_ip] [varchar](255) NULL,
	[expires] [int] NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[sip_registrations]    Script Date: 02/21/2011 16:50:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sip_registrations]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[sip_registrations](
	[call_id] [varchar](255) NULL,
	[sip_user] [varchar](255) NULL,
	[sip_host] [varchar](255) NULL,
	[presence_hosts] [varchar](255) NULL,
	[contact] [varchar](900) NULL,
	[status] [varchar](255) NULL,
	[rpid] [varchar](255) NULL,
	[expires] [int] NULL,
	[user_agent] [varchar](255) NULL,
	[server_user] [varchar](255) NULL,
	[server_host] [varchar](255) NULL,
	[profile_name] [varchar](255) NULL,
	[hostname] [varchar](255) NULL,
	[network_ip] [varchar](255) NULL,
	[network_port] [varchar](6) NULL,
	[sip_username] [varchar](255) NULL,
	[sip_realm] [varchar](255) NULL,
	[mwi_user] [varchar](255) NULL,
	[mwi_host] [varchar](255) NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[sip_presence]    Script Date: 02/21/2011 16:50:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sip_presence]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[sip_presence](
	[sip_user] [varchar](255) NULL,
	[sip_host] [varchar](255) NULL,
	[status] [varchar](255) NULL,
	[rpid] [varchar](255) NULL,
	[expires] [int] NULL,
	[user_agent] [varchar](255) NULL,
	[profile_name] [varchar](255) NULL,
	[hostname] [varchar](255) NULL,
	[network_ip] [varchar](255) NULL,
	[network_port] [varchar](6) NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[sip_dialogs]    Script Date: 02/21/2011 16:50:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sip_dialogs]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[sip_dialogs](
	[call_id] [varchar](255) NULL,
	[uuid] [varchar](255) NULL,
	[sip_to_user] [varchar](255) NULL,
	[sip_to_host] [varchar](255) NULL,
	[sip_from_user] [varchar](255) NULL,
	[sip_from_host] [varchar](255) NULL,
	[contact_user] [varchar](255) NULL,
	[contact_host] [varchar](255) NULL,
	[state] [varchar](255) NULL,
	[direction] [varchar](255) NULL,
	[user_agent] [varchar](255) NULL,
	[profile_name] [varchar](255) NULL,
	[hostname] [varchar](255) NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[sip_authentication]    Script Date: 02/21/2011 16:50:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sip_authentication]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[sip_authentication](
	[nonce] [varchar](255) NULL,
	[expires] [int] NULL,
	[profile_name] [varchar](255) NULL,
	[hostname] [varchar](255) NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[rss_conf]    Script Date: 02/21/2011 16:50:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[rss_conf]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[rss_conf](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[directory_id] [int] NOT NULL,
	[feed] [text] NOT NULL,
	[local_file] [text] NOT NULL,
	[description] [text] NOT NULL,
	[priority] [int] NOT NULL,
 CONSTRAINT [rss_conf_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[post_load_modules_conf]    Script Date: 02/21/2011 16:50:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[post_load_modules_conf]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[post_load_modules_conf](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[module_name] [varchar](64) NOT NULL,
	[load_module] [bit] NOT NULL,
	[priority] [int] NOT NULL,
 CONSTRAINT [post_load_modules_conf_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [post_load_modules_conf_module_name_key] UNIQUE NONCLUSTERED 
(
	[module_name] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[post_load_modules_conf] ON
INSERT [dbo].[post_load_modules_conf] ([id], [module_name], [load_module], [priority]) VALUES (1, N'mod_sofia', 1, 2000)
INSERT [dbo].[post_load_modules_conf] ([id], [module_name], [load_module], [priority]) VALUES (2, N'mod_iax', 1, 2000)
INSERT [dbo].[post_load_modules_conf] ([id], [module_name], [load_module], [priority]) VALUES (3, N'mod_xml_rpc', 1, 100)
INSERT [dbo].[post_load_modules_conf] ([id], [module_name], [load_module], [priority]) VALUES (4, N'mod_portaudio', 1, 1000)
INSERT [dbo].[post_load_modules_conf] ([id], [module_name], [load_module], [priority]) VALUES (5, N'mod_enum', 1, 2000)
INSERT [dbo].[post_load_modules_conf] ([id], [module_name], [load_module], [priority]) VALUES (6, N'mod_xml_cdr', 1, 1000)
INSERT [dbo].[post_load_modules_conf] ([id], [module_name], [load_module], [priority]) VALUES (7, N'mod_spidermonkey', 1, 1000)
INSERT [dbo].[post_load_modules_conf] ([id], [module_name], [load_module], [priority]) VALUES (8, N'mod_alsa', 0, 1000)
INSERT [dbo].[post_load_modules_conf] ([id], [module_name], [load_module], [priority]) VALUES (9, N'mod_log_file', 1, 0)
INSERT [dbo].[post_load_modules_conf] ([id], [module_name], [load_module], [priority]) VALUES (10, N'mod_commands', 1, 1000)
INSERT [dbo].[post_load_modules_conf] ([id], [module_name], [load_module], [priority]) VALUES (11, N'mod_voicemail', 1, 1000)
INSERT [dbo].[post_load_modules_conf] ([id], [module_name], [load_module], [priority]) VALUES (12, N'mod_dialplan_xml', 1, 150)
INSERT [dbo].[post_load_modules_conf] ([id], [module_name], [load_module], [priority]) VALUES (13, N'mod_dialplan_asterisk', 1, 150)
INSERT [dbo].[post_load_modules_conf] ([id], [module_name], [load_module], [priority]) VALUES (14, N'mod_openzap', 0, 1000)
INSERT [dbo].[post_load_modules_conf] ([id], [module_name], [load_module], [priority]) VALUES (15, N'mod_woomera', 0, 1000)
INSERT [dbo].[post_load_modules_conf] ([id], [module_name], [load_module], [priority]) VALUES (17, N'mod_speex', 1, 500)
INSERT [dbo].[post_load_modules_conf] ([id], [module_name], [load_module], [priority]) VALUES (18, N'mod_ilbc', 0, 1000)
INSERT [dbo].[post_load_modules_conf] ([id], [module_name], [load_module], [priority]) VALUES (20, N'mod_g723_1', 1, 500)
INSERT [dbo].[post_load_modules_conf] ([id], [module_name], [load_module], [priority]) VALUES (21, N'mod_g729', 1, 500)
INSERT [dbo].[post_load_modules_conf] ([id], [module_name], [load_module], [priority]) VALUES (22, N'mod_g722', 1, 500)
INSERT [dbo].[post_load_modules_conf] ([id], [module_name], [load_module], [priority]) VALUES (23, N'mod_g726', 1, 500)
INSERT [dbo].[post_load_modules_conf] ([id], [module_name], [load_module], [priority]) VALUES (25, N'mod_amr', 1, 500)
INSERT [dbo].[post_load_modules_conf] ([id], [module_name], [load_module], [priority]) VALUES (26, N'mod_fifo', 1, 1000)
INSERT [dbo].[post_load_modules_conf] ([id], [module_name], [load_module], [priority]) VALUES (27, N'mod_limit', 1, 1000)
INSERT [dbo].[post_load_modules_conf] ([id], [module_name], [load_module], [priority]) VALUES (28, N'mod_syslog', 1, 0)
INSERT [dbo].[post_load_modules_conf] ([id], [module_name], [load_module], [priority]) VALUES (29, N'mod_dingaling', 1, 2000)
INSERT [dbo].[post_load_modules_conf] ([id], [module_name], [load_module], [priority]) VALUES (30, N'mod_cdr_csv', 1, 1000)
INSERT [dbo].[post_load_modules_conf] ([id], [module_name], [load_module], [priority]) VALUES (31, N'mod_event_socket', 1, 100)
INSERT [dbo].[post_load_modules_conf] ([id], [module_name], [load_module], [priority]) VALUES (32, N'mod_multicast', 0, 1000)
INSERT [dbo].[post_load_modules_conf] ([id], [module_name], [load_module], [priority]) VALUES (33, N'mod_zeroconf', 0, 1000)
INSERT [dbo].[post_load_modules_conf] ([id], [module_name], [load_module], [priority]) VALUES (34, N'mod_xmpp_event', 0, 1000)
INSERT [dbo].[post_load_modules_conf] ([id], [module_name], [load_module], [priority]) VALUES (35, N'mod_sndfile', 1, 1000)
INSERT [dbo].[post_load_modules_conf] ([id], [module_name], [load_module], [priority]) VALUES (36, N'mod_native_file', 1, 1000)
INSERT [dbo].[post_load_modules_conf] ([id], [module_name], [load_module], [priority]) VALUES (37, N'mod_shout', 1, 1000)
INSERT [dbo].[post_load_modules_conf] ([id], [module_name], [load_module], [priority]) VALUES (38, N'mod_local_stream', 1, 1000)
INSERT [dbo].[post_load_modules_conf] ([id], [module_name], [load_module], [priority]) VALUES (39, N'mod_perl', 0, 1000)
INSERT [dbo].[post_load_modules_conf] ([id], [module_name], [load_module], [priority]) VALUES (40, N'mod_python', 0, 1000)
INSERT [dbo].[post_load_modules_conf] ([id], [module_name], [load_module], [priority]) VALUES (41, N'mod_java', 0, 1000)
INSERT [dbo].[post_load_modules_conf] ([id], [module_name], [load_module], [priority]) VALUES (42, N'mod_cepstral', 0, 1000)
INSERT [dbo].[post_load_modules_conf] ([id], [module_name], [load_module], [priority]) VALUES (43, N'mod_openmrcp', 0, 1000)
INSERT [dbo].[post_load_modules_conf] ([id], [module_name], [load_module], [priority]) VALUES (44, N'mod_lumenvox', 0, 1000)
INSERT [dbo].[post_load_modules_conf] ([id], [module_name], [load_module], [priority]) VALUES (45, N'mod_rss', 0, 1000)
INSERT [dbo].[post_load_modules_conf] ([id], [module_name], [load_module], [priority]) VALUES (46, N'mod_say_de', 1, 1000)
INSERT [dbo].[post_load_modules_conf] ([id], [module_name], [load_module], [priority]) VALUES (47, N'mod_say_fr', 0, 1000)
INSERT [dbo].[post_load_modules_conf] ([id], [module_name], [load_module], [priority]) VALUES (48, N'mod_say_en', 1, 1000)
INSERT [dbo].[post_load_modules_conf] ([id], [module_name], [load_module], [priority]) VALUES (49, N'mod_conference', 1, 1000)
INSERT [dbo].[post_load_modules_conf] ([id], [module_name], [load_module], [priority]) VALUES (50, N'mod_ivr', 0, 1000)
INSERT [dbo].[post_load_modules_conf] ([id], [module_name], [load_module], [priority]) VALUES (51, N'mod_console', 1, 0)
INSERT [dbo].[post_load_modules_conf] ([id], [module_name], [load_module], [priority]) VALUES (52, N'mod_dptools', 1, 1500)
INSERT [dbo].[post_load_modules_conf] ([id], [module_name], [load_module], [priority]) VALUES (53, N'mod_voipcodecs', 1, 500)
SET IDENTITY_INSERT [dbo].[post_load_modules_conf] OFF
/****** Object:  Table [dbo].[npa_nxx_company_ocn]    Script Date: 02/21/2011 16:50:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[npa_nxx_company_ocn]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[npa_nxx_company_ocn](
	[npa] [smallint] NOT NULL,
	[nxx] [smallint] NOT NULL,
	[company_type] [text] NULL,
	[ocn] [text] NULL,
	[company_name] [text] NULL,
	[lata] [int] NULL,
	[ratecenter] [text] NULL,
	[state] [text] NULL,
 CONSTRAINT [npa_nxx_company_ocn_pkey] PRIMARY KEY CLUSTERED 
(
	[npa] ASC,
	[nxx] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[modless_conf]    Script Date: 02/21/2011 16:50:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[modless_conf]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[modless_conf](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[conf_name] [varchar](64) NOT NULL,
 CONSTRAINT [modless_conf_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [modless_conf_conf_name_key] UNIQUE NONCLUSTERED 
(
	[conf_name] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[modless_conf] ON
INSERT [dbo].[modless_conf] ([id], [conf_name]) VALUES (1, N'acl.conf')
INSERT [dbo].[modless_conf] ([id], [conf_name]) VALUES (3, N'post_load_modules.conf')
INSERT [dbo].[modless_conf] ([id], [conf_name]) VALUES (2, N'postl_load_switch.conf')
SET IDENTITY_INSERT [dbo].[modless_conf] OFF
/****** Object:  Table [dbo].[local_stream_conf]    Script Date: 02/21/2011 16:50:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[local_stream_conf]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[local_stream_conf](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[directory_name] [varchar](256) NOT NULL,
	[directory_path] [text] NOT NULL,
	[param_name] [varchar](256) NOT NULL,
	[param_value] [varchar](256) NOT NULL,
 CONSTRAINT [local_stream_conf_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[limit_data]    Script Date: 02/21/2011 16:50:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[limit_data]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[limit_data](
	[hostname] [varchar](255) NULL,
	[realm] [varchar](255) NULL,
	[id] [varchar](255) NULL,
	[uuid] [varchar](255) NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[limit_conf]    Script Date: 02/21/2011 16:50:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[limit_conf]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[limit_conf](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](256) NOT NULL,
	[value] [varchar](256) NOT NULL,
 CONSTRAINT [limit_conf_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[sofia_conf]    Script Date: 02/21/2011 16:50:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sofia_conf]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[sofia_conf](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[profile_name] [varchar](256) NOT NULL,
 CONSTRAINT [sofia_conf_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [sofia_conf_profile_name_key] UNIQUE NONCLUSTERED 
(
	[profile_name] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[sofia_conf] ON
INSERT [dbo].[sofia_conf] ([id], [profile_name]) VALUES (1, N'$${domain}')
SET IDENTITY_INSERT [dbo].[sofia_conf] OFF
/****** Object:  Table [dbo].[voicemail_conf]    Script Date: 02/21/2011 16:50:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[voicemail_conf]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[voicemail_conf](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[vm_profile] [varchar](256) NOT NULL,
 CONSTRAINT [voicemail_conf_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [voicemail_conf_vm_profile_key] UNIQUE NONCLUSTERED 
(
	[vm_profile] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[voicemail_conf] ON
INSERT [dbo].[voicemail_conf] ([id], [vm_profile]) VALUES (1, N'default')
SET IDENTITY_INSERT [dbo].[voicemail_conf] OFF
/****** Object:  Table [dbo].[ivr_conf]    Script Date: 02/21/2011 16:50:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ivr_conf]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ivr_conf](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](64) NOT NULL,
	[greet_long] [varchar](256) NOT NULL,
	[greet_short] [varchar](256) NOT NULL,
	[invalid_sound] [varchar](256) NOT NULL,
	[exit_sound] [varchar](256) NOT NULL,
	[max_failures] [int] NOT NULL,
	[timeout] [int] NOT NULL,
	[tts_engine] [varchar](64) NULL,
	[tts_voice] [varchar](64) NULL,
 CONSTRAINT [ivr_conf_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [ivr_conf_name_key] UNIQUE NONCLUSTERED 
(
	[name] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[ivr_conf] ON
INSERT [dbo].[ivr_conf] ([id], [name], [greet_long], [greet_short], [invalid_sound], [exit_sound], [max_failures], [timeout], [tts_engine], [tts_voice]) VALUES (1, N'demo', N'soundfiles/ivr/demo/greet-long.wav', N'soundfiles/ivr/demo/greet-short.wav', N'soundfiles/ivr/invalid.wav', N'soundfiles/ivr/exit.wav', 3, 5, N'cepstral', N'allison')
INSERT [dbo].[ivr_conf] ([id], [name], [greet_long], [greet_short], [invalid_sound], [exit_sound], [max_failures], [timeout], [tts_engine], [tts_voice]) VALUES (2, N'demo2', N'soundfiles/ivr/demo2/greet-long.wav', N'soundfiles/ivr/demo2/greet-short.wav', N'soundfiles/ivr/invalid.wav', N'soundfiles/ivr/exit.wav', 3, 5, NULL, NULL)
INSERT [dbo].[ivr_conf] ([id], [name], [greet_long], [greet_short], [invalid_sound], [exit_sound], [max_failures], [timeout], [tts_engine], [tts_voice]) VALUES (3, N'menu8', N'soundfiles/ivr/menu8/greet-long.wav', N'soundfiles/ivr/menu8/greet-short.wav', N'soundfiles/ivr/menu8/invalid.wav', N'soundfiles/ivr/menu8/exit.wav', 3, 5, NULL, NULL)
SET IDENTITY_INSERT [dbo].[ivr_conf] OFF
/****** Object:  Table [dbo].[voicemail_prefs]    Script Date: 02/21/2011 16:50:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[voicemail_prefs]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[voicemail_prefs](
	[username] [varchar](255) NULL,
	[domain] [varchar](255) NULL,
	[name_path] [varchar](255) NULL,
	[greeting_path] [varchar](255) NULL,
	[password] [varchar](255) NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[voicemail_msgs]    Script Date: 02/21/2011 16:50:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[voicemail_msgs]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[voicemail_msgs](
	[created_epoch] [int] NULL,
	[read_epoch] [int] NULL,
	[username] [varchar](255) NULL,
	[domain] [varchar](255) NULL,
	[uuid] [varchar](255) NULL,
	[cid_name] [varchar](255) NULL,
	[cid_number] [varchar](255) NULL,
	[in_folder] [varchar](255) NULL,
	[file_path] [varchar](255) NULL,
	[message_len] [int] NULL,
	[flags] [varchar](255) NULL,
	[read_flags] [varchar](255) NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[voicemail_settings]    Script Date: 02/21/2011 16:50:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[voicemail_settings]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[voicemail_settings](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[voicemail_id] [int] NOT NULL,
	[param_name] [varchar](256) NOT NULL,
	[param_value] [varchar](256) NOT NULL,
 CONSTRAINT [voicemail_settings_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [voicemail_settings_voicemail_id_key] UNIQUE NONCLUSTERED 
(
	[voicemail_id] ASC,
	[param_name] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[voicemail_settings] ON
INSERT [dbo].[voicemail_settings] ([id], [voicemail_id], [param_name], [param_value]) VALUES (1, 1, N'file-extension', N'wav')
INSERT [dbo].[voicemail_settings] ([id], [voicemail_id], [param_name], [param_value]) VALUES (2, 1, N'terminator-key', N'#')
INSERT [dbo].[voicemail_settings] ([id], [voicemail_id], [param_name], [param_value]) VALUES (3, 1, N'max-login-attempts', N'3')
INSERT [dbo].[voicemail_settings] ([id], [voicemail_id], [param_name], [param_value]) VALUES (4, 1, N'digit-timeout', N'10000')
INSERT [dbo].[voicemail_settings] ([id], [voicemail_id], [param_name], [param_value]) VALUES (5, 1, N'max-record-length', N'300')
INSERT [dbo].[voicemail_settings] ([id], [voicemail_id], [param_name], [param_value]) VALUES (6, 1, N'tone-spec', N'%(1000, 0, 640)')
INSERT [dbo].[voicemail_settings] ([id], [voicemail_id], [param_name], [param_value]) VALUES (7, 1, N'callback-dialplan', N'XML')
INSERT [dbo].[voicemail_settings] ([id], [voicemail_id], [param_name], [param_value]) VALUES (8, 1, N'callback-context', N'default')
INSERT [dbo].[voicemail_settings] ([id], [voicemail_id], [param_name], [param_value]) VALUES (9, 1, N'play-new-messages-key', N'1')
INSERT [dbo].[voicemail_settings] ([id], [voicemail_id], [param_name], [param_value]) VALUES (10, 1, N'play-saved-messages-key', N'2')
INSERT [dbo].[voicemail_settings] ([id], [voicemail_id], [param_name], [param_value]) VALUES (11, 1, N'main-menu-key', N'*')
INSERT [dbo].[voicemail_settings] ([id], [voicemail_id], [param_name], [param_value]) VALUES (12, 1, N'config-menu-key', N'5')
INSERT [dbo].[voicemail_settings] ([id], [voicemail_id], [param_name], [param_value]) VALUES (13, 1, N'record-greeting-key', N'1')
INSERT [dbo].[voicemail_settings] ([id], [voicemail_id], [param_name], [param_value]) VALUES (14, 1, N'choose-greeting-key', N'2')
INSERT [dbo].[voicemail_settings] ([id], [voicemail_id], [param_name], [param_value]) VALUES (15, 1, N'record-file-key', N'3')
INSERT [dbo].[voicemail_settings] ([id], [voicemail_id], [param_name], [param_value]) VALUES (16, 1, N'listen-file-key', N'1')
INSERT [dbo].[voicemail_settings] ([id], [voicemail_id], [param_name], [param_value]) VALUES (17, 1, N'record-name-key', N'3')
INSERT [dbo].[voicemail_settings] ([id], [voicemail_id], [param_name], [param_value]) VALUES (18, 1, N'save-file-key', N'9')
INSERT [dbo].[voicemail_settings] ([id], [voicemail_id], [param_name], [param_value]) VALUES (19, 1, N'delete-file-key', N'7')
INSERT [dbo].[voicemail_settings] ([id], [voicemail_id], [param_name], [param_value]) VALUES (20, 1, N'undelete-file-key', N'8')
INSERT [dbo].[voicemail_settings] ([id], [voicemail_id], [param_name], [param_value]) VALUES (21, 1, N'email-key', N'4')
INSERT [dbo].[voicemail_settings] ([id], [voicemail_id], [param_name], [param_value]) VALUES (22, 1, N'pause-key', N'0')
INSERT [dbo].[voicemail_settings] ([id], [voicemail_id], [param_name], [param_value]) VALUES (23, 1, N'restart-key', N'1')
INSERT [dbo].[voicemail_settings] ([id], [voicemail_id], [param_name], [param_value]) VALUES (24, 1, N'ff-key', N'6')
INSERT [dbo].[voicemail_settings] ([id], [voicemail_id], [param_name], [param_value]) VALUES (25, 1, N'rew-key', N'4')
INSERT [dbo].[voicemail_settings] ([id], [voicemail_id], [param_name], [param_value]) VALUES (26, 1, N'record-silence-threshold', N'200')
INSERT [dbo].[voicemail_settings] ([id], [voicemail_id], [param_name], [param_value]) VALUES (27, 1, N'record-silence-hits', N'2')
INSERT [dbo].[voicemail_settings] ([id], [voicemail_id], [param_name], [param_value]) VALUES (28, 1, N'web-template-file', N'web-vm.tpl')
INSERT [dbo].[voicemail_settings] ([id], [voicemail_id], [param_name], [param_value]) VALUES (29, 1, N'operator-extension', N'operator XML default')
INSERT [dbo].[voicemail_settings] ([id], [voicemail_id], [param_name], [param_value]) VALUES (30, 1, N'operator-key', N'9')
SET IDENTITY_INSERT [dbo].[voicemail_settings] OFF
/****** Object:  Table [dbo].[voicemail_email]    Script Date: 02/21/2011 16:50:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[voicemail_email]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[voicemail_email](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[voicemail_id] [int] NOT NULL,
	[param_name] [varchar](256) NOT NULL,
	[param_value] [varchar](256) NOT NULL,
 CONSTRAINT [voicemail_email_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [voicemail_email_voicemail_id_key] UNIQUE NONCLUSTERED 
(
	[voicemail_id] ASC,
	[param_name] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[voicemail_email] ON
INSERT [dbo].[voicemail_email] ([id], [voicemail_id], [param_name], [param_value]) VALUES (1, 1, N'template-file', N'voicemail.tpl')
INSERT [dbo].[voicemail_email] ([id], [voicemail_id], [param_name], [param_value]) VALUES (2, 1, N'date-fmt', N'%A, %B %d %Y, %I %M %p')
INSERT [dbo].[voicemail_email] ([id], [voicemail_id], [param_name], [param_value]) VALUES (3, 1, N'email-from', N'${voicemail_account}@${voicemail_domain}')
SET IDENTITY_INSERT [dbo].[voicemail_email] OFF
/****** Object:  Table [dbo].[iax_settings]    Script Date: 02/21/2011 16:50:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[iax_settings]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[iax_settings](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[iax_id] [int] NOT NULL,
	[param_name] [varchar](256) NOT NULL,
	[param_value] [varchar](256) NOT NULL,
 CONSTRAINT [iax_settings_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [iax_settings_iax_id_key] UNIQUE NONCLUSTERED 
(
	[iax_id] ASC,
	[param_name] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[iax_settings] ON
INSERT [dbo].[iax_settings] ([id], [iax_id], [param_name], [param_value]) VALUES (35, 3, N'debug', N'1')
INSERT [dbo].[iax_settings] ([id], [iax_id], [param_name], [param_value]) VALUES (36, 3, N'ip', N'$${local_ip_v4}')
INSERT [dbo].[iax_settings] ([id], [iax_id], [param_name], [param_value]) VALUES (37, 3, N'port', N'4569')
INSERT [dbo].[iax_settings] ([id], [iax_id], [param_name], [param_value]) VALUES (38, 3, N'context', N'public')
INSERT [dbo].[iax_settings] ([id], [iax_id], [param_name], [param_value]) VALUES (39, 3, N'dialplan', N'enum,XML')
INSERT [dbo].[iax_settings] ([id], [iax_id], [param_name], [param_value]) VALUES (40, 3, N'codec-prefs', N'$${global_codec_prefs}')
INSERT [dbo].[iax_settings] ([id], [iax_id], [param_name], [param_value]) VALUES (41, 3, N'codec-master', N'us')
INSERT [dbo].[iax_settings] ([id], [iax_id], [param_name], [param_value]) VALUES (42, 3, N'codec-rate', N'8')
SET IDENTITY_INSERT [dbo].[iax_settings] OFF
/****** Object:  Table [dbo].[sofia_settings]    Script Date: 02/21/2011 16:50:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sofia_settings]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[sofia_settings](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[sofia_id] [int] NOT NULL,
	[param_name] [varchar](256) NOT NULL,
	[param_value] [varchar](256) NOT NULL,
 CONSTRAINT [sofia_settings_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [sofia_settings_sofia_id_key] UNIQUE NONCLUSTERED 
(
	[sofia_id] ASC,
	[param_name] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[sofia_settings] ON
INSERT [dbo].[sofia_settings] ([id], [sofia_id], [param_name], [param_value]) VALUES (1, 1, N'user-agent-string', N'RayUA 2.0pre4')
INSERT [dbo].[sofia_settings] ([id], [sofia_id], [param_name], [param_value]) VALUES (2, 1, N'auth-calls', N'true')
INSERT [dbo].[sofia_settings] ([id], [sofia_id], [param_name], [param_value]) VALUES (5, 1, N'debug', N'1')
INSERT [dbo].[sofia_settings] ([id], [sofia_id], [param_name], [param_value]) VALUES (6, 1, N'rfc2833-pt', N'101')
INSERT [dbo].[sofia_settings] ([id], [sofia_id], [param_name], [param_value]) VALUES (7, 1, N'sip-port', N'5060')
INSERT [dbo].[sofia_settings] ([id], [sofia_id], [param_name], [param_value]) VALUES (8, 1, N'dialplan', N'XML')
INSERT [dbo].[sofia_settings] ([id], [sofia_id], [param_name], [param_value]) VALUES (9, 1, N'dtmf-duration', N'100')
INSERT [dbo].[sofia_settings] ([id], [sofia_id], [param_name], [param_value]) VALUES (10, 1, N'codec-prefs', N'$${global_codec_prefs}')
INSERT [dbo].[sofia_settings] ([id], [sofia_id], [param_name], [param_value]) VALUES (11, 1, N'rtp-timeout-sec', N'300')
INSERT [dbo].[sofia_settings] ([id], [sofia_id], [param_name], [param_value]) VALUES (12, 1, N'rtp-ip', N'$${local_ip_v4}')
INSERT [dbo].[sofia_settings] ([id], [sofia_id], [param_name], [param_value]) VALUES (13, 1, N'sip-ip', N'$${local_ip_v4}')
INSERT [dbo].[sofia_settings] ([id], [sofia_id], [param_name], [param_value]) VALUES (14, 1, N'context', N'default')
INSERT [dbo].[sofia_settings] ([id], [sofia_id], [param_name], [param_value]) VALUES (15, 1, N'manage-presence', N'true')
INSERT [dbo].[sofia_settings] ([id], [sofia_id], [param_name], [param_value]) VALUES (16, 1, N'force-register-domain', N'intralanman.servehttp.com')
INSERT [dbo].[sofia_settings] ([id], [sofia_id], [param_name], [param_value]) VALUES (17, 1, N'inbound-codec-negotiation', N'generous')
INSERT [dbo].[sofia_settings] ([id], [sofia_id], [param_name], [param_value]) VALUES (18, 1, N'rtp-rewrite-timestampes', N'true')
INSERT [dbo].[sofia_settings] ([id], [sofia_id], [param_name], [param_value]) VALUES (19, 1, N'nonce-ttl', N'60')
INSERT [dbo].[sofia_settings] ([id], [sofia_id], [param_name], [param_value]) VALUES (20, 1, N'vad', N'out')
INSERT [dbo].[sofia_settings] ([id], [sofia_id], [param_name], [param_value]) VALUES (36, 1, N'odbc-dsn', N'freeswitch-mysql:freeswitch:Fr33Sw1tch')
SET IDENTITY_INSERT [dbo].[sofia_settings] OFF
/****** Object:  Table [dbo].[sofia_gateways]    Script Date: 02/21/2011 16:50:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sofia_gateways]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[sofia_gateways](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[sofia_id] [int] NOT NULL,
	[gateway_name] [varchar](256) NOT NULL,
	[gateway_param] [varchar](256) NOT NULL,
	[gateway_value] [varchar](256) NOT NULL,
 CONSTRAINT [sofia_gateways_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[sofia_gateways] ON
INSERT [dbo].[sofia_gateways] ([id], [sofia_id], [gateway_name], [gateway_param], [gateway_value]) VALUES (8, 1, N'default', N'proxy', N'asterlink.com')
INSERT [dbo].[sofia_gateways] ([id], [sofia_id], [gateway_name], [gateway_param], [gateway_value]) VALUES (9, 1, N'default', N'realm', N'asterlink.com')
INSERT [dbo].[sofia_gateways] ([id], [sofia_id], [gateway_name], [gateway_param], [gateway_value]) VALUES (10, 1, N'default', N'username', N'USERNAME_HERE')
INSERT [dbo].[sofia_gateways] ([id], [sofia_id], [gateway_name], [gateway_param], [gateway_value]) VALUES (11, 1, N'default', N'register', N'false')
INSERT [dbo].[sofia_gateways] ([id], [sofia_id], [gateway_name], [gateway_param], [gateway_value]) VALUES (12, 1, N'default', N'expire-seconds', N'60')
INSERT [dbo].[sofia_gateways] ([id], [sofia_id], [gateway_name], [gateway_param], [gateway_value]) VALUES (13, 1, N'default', N'retry_seconds', N'2')
INSERT [dbo].[sofia_gateways] ([id], [sofia_id], [gateway_name], [gateway_param], [gateway_value]) VALUES (14, 1, N'default', N'password', N'PASSWORD_HERE')
SET IDENTITY_INSERT [dbo].[sofia_gateways] OFF
/****** Object:  Table [dbo].[sofia_domains]    Script Date: 02/21/2011 16:50:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sofia_domains]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[sofia_domains](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[sofia_id] [int] NOT NULL,
	[domain_name] [varchar](256) NOT NULL,
	[parse] [bit] NOT NULL,
 CONSTRAINT [sofia_domains_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [sofia_domains_domain_name_key] UNIQUE NONCLUSTERED 
(
	[domain_name] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[sofia_aliases]    Script Date: 02/21/2011 16:50:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sofia_aliases]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[sofia_aliases](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[sofia_id] [int] NOT NULL,
	[alias_name] [varchar](256) NOT NULL,
 CONSTRAINT [sofia_aliases_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [sofia_aliases_alias_name_key] UNIQUE NONCLUSTERED 
(
	[alias_name] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[sofia_aliases] ON
INSERT [dbo].[sofia_aliases] ([id], [sofia_id], [alias_name]) VALUES (1, 1, N'default')
INSERT [dbo].[sofia_aliases] ([id], [sofia_id], [alias_name]) VALUES (3, 1, N'sip.example.com')
SET IDENTITY_INSERT [dbo].[sofia_aliases] OFF
/****** Object:  Table [dbo].[lcr_settings]    Script Date: 02/21/2011 16:50:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[lcr_settings]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[lcr_settings](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[lcr_id] [int] NOT NULL,
	[param_name] [varchar](256) NOT NULL,
	[param_value] [varchar](256) NOT NULL,
 CONSTRAINT [lcr_settings_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [lcr_settings_lcr_id_key] UNIQUE NONCLUSTERED 
(
	[lcr_id] ASC,
	[param_name] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[lcr]    Script Date: 02/21/2011 16:50:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[lcr]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[lcr](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[digits] [numeric](20, 0) NULL,
	[rate] [numeric](11, 5) NOT NULL,
	[intrastate_rate] [numeric](11, 5) NOT NULL,
	[intralata_rate] [numeric](11, 5) NOT NULL,
	[carrier_id] [int] NOT NULL,
	[lead_strip] [int] NOT NULL,
	[trail_strip] [int] NOT NULL,
	[prefix] [varchar](16) NOT NULL,
	[suffix] [varchar](16) NOT NULL,
	[lcr_profile] [int] NOT NULL,
	[date_start] [datetime] NOT NULL,
	[date_end] [datetime] NOT NULL,
	[quality] [numeric](10, 6) NOT NULL,
	[reliability] [numeric](10, 6) NOT NULL,
	[cid] [varchar](32) NOT NULL,
	[enabled] [bit] NOT NULL,
 CONSTRAINT [lcr_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ivr_entries]    Script Date: 02/21/2011 16:50:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ivr_entries]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ivr_entries](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ivr_id] [int] NOT NULL,
	[action] [varchar](64) NOT NULL,
	[digits] [varchar](64) NOT NULL,
	[params] [varchar](256) NULL,
 CONSTRAINT [ivr_entries_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[ivr_entries] ON
INSERT [dbo].[ivr_entries] ([id], [ivr_id], [action], [digits], [params]) VALUES (1, 1, N'menu-play-sound', N'1', N'soundfiles/features.wav')
INSERT [dbo].[ivr_entries] ([id], [ivr_id], [action], [digits], [params]) VALUES (2, 1, N'menu-exit', N'*', NULL)
INSERT [dbo].[ivr_entries] ([id], [ivr_id], [action], [digits], [params]) VALUES (3, 1, N'menu-sub', N'2', N'demo2')
INSERT [dbo].[ivr_entries] ([id], [ivr_id], [action], [digits], [params]) VALUES (4, 1, N'menu-exec-api', N'3', N'bridge sofia/$${domain}/888@conference.freeswtich.org')
INSERT [dbo].[ivr_entries] ([id], [ivr_id], [action], [digits], [params]) VALUES (5, 1, N'menu-call-transfer', N'4', N'888')
INSERT [dbo].[ivr_entries] ([id], [ivr_id], [action], [digits], [params]) VALUES (6, 2, N'menu-back', N'#', NULL)
INSERT [dbo].[ivr_entries] ([id], [ivr_id], [action], [digits], [params]) VALUES (7, 2, N'menu-top', N'*', NULL)
INSERT [dbo].[ivr_entries] ([id], [ivr_id], [action], [digits], [params]) VALUES (8, 3, N'menu-back', N'#', NULL)
INSERT [dbo].[ivr_entries] ([id], [ivr_id], [action], [digits], [params]) VALUES (9, 3, N'menu-top', N'*', NULL)
INSERT [dbo].[ivr_entries] ([id], [ivr_id], [action], [digits], [params]) VALUES (10, 3, N'menu-playsound', N'4', N'soundfiles/4.wav')
SET IDENTITY_INSERT [dbo].[ivr_entries] OFF
/****** Object:  Table [dbo].[directory_vars]    Script Date: 02/21/2011 16:50:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[directory_vars]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[directory_vars](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[directory_id] [int] NOT NULL,
	[var_name] [varchar](256) NOT NULL,
	[var_value] [varchar](256) NOT NULL,
 CONSTRAINT [directory_vars_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [directory_vars_directory_id_key] UNIQUE NONCLUSTERED 
(
	[directory_id] ASC,
	[var_name] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[directory_vars] ON
INSERT [dbo].[directory_vars] ([id], [directory_id], [var_name], [var_value]) VALUES (1, 1, N'numbering_plan', N'US')
INSERT [dbo].[directory_vars] ([id], [directory_id], [var_name], [var_value]) VALUES (2, 2, N'numbering_plan', N'US')
INSERT [dbo].[directory_vars] ([id], [directory_id], [var_name], [var_value]) VALUES (3, 3, N'numbering_plan', N'AU')
INSERT [dbo].[directory_vars] ([id], [directory_id], [var_name], [var_value]) VALUES (4, 5, N'numbering_plan', N'US')
INSERT [dbo].[directory_vars] ([id], [directory_id], [var_name], [var_value]) VALUES (5, 5, N'area_code', N'434')
SET IDENTITY_INSERT [dbo].[directory_vars] OFF
/****** Object:  Table [dbo].[directory_params]    Script Date: 02/21/2011 16:50:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[directory_params]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[directory_params](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[directory_id] [int] NOT NULL,
	[param_name] [varchar](256) NOT NULL,
	[param_value] [varchar](256) NOT NULL,
 CONSTRAINT [directory_params_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [directory_params_directory_id_key] UNIQUE NONCLUSTERED 
(
	[directory_id] ASC,
	[param_name] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[directory_params] ON
INSERT [dbo].[directory_params] ([id], [directory_id], [param_name], [param_value]) VALUES (1, 1, N'password', N'1234')
INSERT [dbo].[directory_params] ([id], [directory_id], [param_name], [param_value]) VALUES (2, 1, N'vm-password', N'861000')
INSERT [dbo].[directory_params] ([id], [directory_id], [param_name], [param_value]) VALUES (3, 2, N'password', N'1234')
INSERT [dbo].[directory_params] ([id], [directory_id], [param_name], [param_value]) VALUES (4, 2, N'vm-password', N'861001')
INSERT [dbo].[directory_params] ([id], [directory_id], [param_name], [param_value]) VALUES (7, 5, N'password', N'1234')
INSERT [dbo].[directory_params] ([id], [directory_id], [param_name], [param_value]) VALUES (8, 6, N'password', N'1234')
INSERT [dbo].[directory_params] ([id], [directory_id], [param_name], [param_value]) VALUES (9, 7, N'password', N'1234')
INSERT [dbo].[directory_params] ([id], [directory_id], [param_name], [param_value]) VALUES (10, 8, N'password', N'123456')
INSERT [dbo].[directory_params] ([id], [directory_id], [param_name], [param_value]) VALUES (11, 9, N'password', N'1234')
INSERT [dbo].[directory_params] ([id], [directory_id], [param_name], [param_value]) VALUES (12, 10, N'password', N'123456')
INSERT [dbo].[directory_params] ([id], [directory_id], [param_name], [param_value]) VALUES (13, 11, N'password', N'1234')
INSERT [dbo].[directory_params] ([id], [directory_id], [param_name], [param_value]) VALUES (14, 3, N'vm-password', N'861002')
INSERT [dbo].[directory_params] ([id], [directory_id], [param_name], [param_value]) VALUES (15, 3, N'password', N'1234')
INSERT [dbo].[directory_params] ([id], [directory_id], [param_name], [param_value]) VALUES (16, 11, N'vm-password', N'861009')
INSERT [dbo].[directory_params] ([id], [directory_id], [param_name], [param_value]) VALUES (17, 10, N'vm-password', N'1234')
INSERT [dbo].[directory_params] ([id], [directory_id], [param_name], [param_value]) VALUES (18, 9, N'vm-password', N'861007')
INSERT [dbo].[directory_params] ([id], [directory_id], [param_name], [param_value]) VALUES (19, 8, N'vm-password', N'861006')
INSERT [dbo].[directory_params] ([id], [directory_id], [param_name], [param_value]) VALUES (20, 7, N'vm-password', N'861005')
INSERT [dbo].[directory_params] ([id], [directory_id], [param_name], [param_value]) VALUES (21, 6, N'vm-password', N'861004')
INSERT [dbo].[directory_params] ([id], [directory_id], [param_name], [param_value]) VALUES (22, 5, N'vm-password', N'861003')
SET IDENTITY_INSERT [dbo].[directory_params] OFF
/****** Object:  Table [dbo].[carrier_gateway]    Script Date: 02/21/2011 16:50:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[carrier_gateway]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[carrier_gateway](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[carrier_id] [int] NULL,
	[prefix] [varchar](128) NOT NULL,
	[suffix] [varchar](128) NOT NULL,
	[codec] [varchar](128) NOT NULL,
	[enabled] [bit] NOT NULL,
 CONSTRAINT [carrier_gateway_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[acl_nodes]    Script Date: 02/21/2011 16:50:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[acl_nodes]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[acl_nodes](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[cidr] [varchar](48) NOT NULL,
	[type] [varchar](16) NOT NULL,
	[list_id] [int] NOT NULL,
 CONSTRAINT [acl_nodes_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[acl_nodes] ON
INSERT [dbo].[acl_nodes] ([id], [cidr], [type], [list_id]) VALUES (1, N'192.168.0.0/16', N'allow', 1)
INSERT [dbo].[acl_nodes] ([id], [cidr], [type], [list_id]) VALUES (2, N'10.0.0.0/8', N'allow', 1)
INSERT [dbo].[acl_nodes] ([id], [cidr], [type], [list_id]) VALUES (3, N'172.16.0.0/12', N'allow', 1)
SET IDENTITY_INSERT [dbo].[acl_nodes] OFF
/****** Object:  Table [dbo].[dialplan_context]    Script Date: 02/21/2011 16:50:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[dialplan_context]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[dialplan_context](
	[context_id] [int] NOT NULL,
	[dialplan_id] [int] NOT NULL,
	[context] [varchar](64) NOT NULL,
	[weight] [int] NOT NULL,
 CONSTRAINT [dialplan_context_pkey] PRIMARY KEY CLUSTERED 
(
	[context_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[dialplan_context] ([context_id], [dialplan_id], [context], [weight]) VALUES (1, 1, N'default', 10)
INSERT [dbo].[dialplan_context] ([context_id], [dialplan_id], [context], [weight]) VALUES (2, 1, N'public', 20)
/****** Object:  Table [dbo].[dingaling_profile_params]    Script Date: 02/21/2011 16:50:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[dingaling_profile_params]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[dingaling_profile_params](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[dingaling_id] [int] NOT NULL,
	[param_name] [varchar](64) NOT NULL,
	[param_value] [varchar](64) NOT NULL,
 CONSTRAINT [dingaling_profile_params_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [dingaling_profile_params_dingaling_id_key] UNIQUE NONCLUSTERED 
(
	[dingaling_id] ASC,
	[param_name] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[dingaling_profile_params] ON
INSERT [dbo].[dingaling_profile_params] ([id], [dingaling_id], [param_name], [param_value]) VALUES (1, 1, N'password', N'secret')
INSERT [dbo].[dingaling_profile_params] ([id], [dingaling_id], [param_name], [param_value]) VALUES (2, 1, N'dialplan', N'XML,enum')
INSERT [dbo].[dingaling_profile_params] ([id], [dingaling_id], [param_name], [param_value]) VALUES (3, 1, N'server', N'example.org')
INSERT [dbo].[dingaling_profile_params] ([id], [dingaling_id], [param_name], [param_value]) VALUES (4, 1, N'name', N'fs.example.org')
SET IDENTITY_INSERT [dbo].[dingaling_profile_params] OFF
/****** Object:  Table [dbo].[directory_group_user_map]    Script Date: 02/21/2011 16:50:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[directory_group_user_map]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[directory_group_user_map](
	[map_id] [int] NOT NULL,
	[group_id] [int] NOT NULL,
	[user_id] [int] NOT NULL,
 CONSTRAINT [directory_group_user_map_pkey] PRIMARY KEY CLUSTERED 
(
	[map_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [directory_group_user_map_group_id_key] UNIQUE NONCLUSTERED 
(
	[group_id] ASC,
	[user_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[directory_global_vars]    Script Date: 02/21/2011 16:50:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[directory_global_vars]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[directory_global_vars](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[var_name] [varchar](64) NOT NULL,
	[var_value] [varchar](128) NOT NULL,
	[domain_id] [int] NOT NULL,
 CONSTRAINT [directory_global_vars_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [directory_global_vars_directory_id_key] UNIQUE NONCLUSTERED 
(
	[domain_id] ASC,
	[var_name] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[directory_global_params]    Script Date: 02/21/2011 16:50:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[directory_global_params]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[directory_global_params](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[param_name] [varchar](64) NOT NULL,
	[param_value] [varchar](128) NOT NULL,
	[domain_id] [int] NOT NULL,
 CONSTRAINT [directory_global_params_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [directory_global_params_directory_id_key] UNIQUE NONCLUSTERED 
(
	[domain_id] ASC,
	[param_name] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[directory_global_params] ON
INSERT [dbo].[directory_global_params] ([id], [param_name], [param_value], [domain_id]) VALUES (1, N'default_gateway', N'errors', 1)
SET IDENTITY_INSERT [dbo].[directory_global_params] OFF
/****** Object:  Table [dbo].[directory_gateways]    Script Date: 02/21/2011 16:50:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[directory_gateways]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[directory_gateways](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[directory_id] [int] NOT NULL,
	[gateway_name] [varchar](128) NOT NULL,
 CONSTRAINT [directory_gateways_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [directory_gateways_gateway_name_key] UNIQUE NONCLUSTERED 
(
	[gateway_name] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[directory_gateway_params]    Script Date: 02/21/2011 16:50:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[directory_gateway_params]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[directory_gateway_params](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[d_gw_id] [int] NOT NULL,
	[param_name] [varchar](64) NOT NULL,
	[param_value] [varchar](64) NOT NULL,
 CONSTRAINT [directory_gateway_params_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[dialplan_extension]    Script Date: 02/21/2011 16:50:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[dialplan_extension]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[dialplan_extension](
	[extension_id] [int] NOT NULL,
	[context_id] [int] NOT NULL,
	[name] [varchar](128) NOT NULL,
	[continue] [varchar](32) NOT NULL,
	[weight] [int] NOT NULL,
 CONSTRAINT [dialplan_extension_pkey] PRIMARY KEY CLUSTERED 
(
	[extension_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[dialplan_extension] ([extension_id], [context_id], [name], [continue], [weight]) VALUES (1, 1, N'unloop', N'', 10)
INSERT [dbo].[dialplan_extension] ([extension_id], [context_id], [name], [continue], [weight]) VALUES (2, 1, N'set_domain', N'true', 20)
INSERT [dbo].[dialplan_extension] ([extension_id], [context_id], [name], [continue], [weight]) VALUES (3, 1, N'set_domain_openzap', N'true', 30)
INSERT [dbo].[dialplan_extension] ([extension_id], [context_id], [name], [continue], [weight]) VALUES (4, 1, N'tod_example', N'true', 40)
INSERT [dbo].[dialplan_extension] ([extension_id], [context_id], [name], [continue], [weight]) VALUES (5, 1, N'global-intercept', N'', 50)
INSERT [dbo].[dialplan_extension] ([extension_id], [context_id], [name], [continue], [weight]) VALUES (6, 1, N'group-intercept', N'', 60)
INSERT [dbo].[dialplan_extension] ([extension_id], [context_id], [name], [continue], [weight]) VALUES (7, 1, N'intercept-ext', N'', 70)
INSERT [dbo].[dialplan_extension] ([extension_id], [context_id], [name], [continue], [weight]) VALUES (8, 1, N'redial', N'', 80)
INSERT [dbo].[dialplan_extension] ([extension_id], [context_id], [name], [continue], [weight]) VALUES (9, 1, N'global', N'true', 90)
INSERT [dbo].[dialplan_extension] ([extension_id], [context_id], [name], [continue], [weight]) VALUES (10, 1, N'snom-demo-2', N'', 100)
INSERT [dbo].[dialplan_extension] ([extension_id], [context_id], [name], [continue], [weight]) VALUES (11, 1, N'snom-demo-1', N'', 110)
INSERT [dbo].[dialplan_extension] ([extension_id], [context_id], [name], [continue], [weight]) VALUES (12, 1, N'eavesdrop', N'', 120)
INSERT [dbo].[dialplan_extension] ([extension_id], [context_id], [name], [continue], [weight]) VALUES (13, 1, N'eavesdrop', N'', 130)
INSERT [dbo].[dialplan_extension] ([extension_id], [context_id], [name], [continue], [weight]) VALUES (14, 1, N'call_return', N'', 140)
INSERT [dbo].[dialplan_extension] ([extension_id], [context_id], [name], [continue], [weight]) VALUES (15, 1, N'del-group', N'', 150)
INSERT [dbo].[dialplan_extension] ([extension_id], [context_id], [name], [continue], [weight]) VALUES (16, 1, N'add-group', N'', 160)
INSERT [dbo].[dialplan_extension] ([extension_id], [context_id], [name], [continue], [weight]) VALUES (17, 1, N'call-group-simo', N'', 170)
INSERT [dbo].[dialplan_extension] ([extension_id], [context_id], [name], [continue], [weight]) VALUES (18, 1, N'call-group-order', N'', 180)
INSERT [dbo].[dialplan_extension] ([extension_id], [context_id], [name], [continue], [weight]) VALUES (19, 1, N'extension-intercom', N'', 190)
INSERT [dbo].[dialplan_extension] ([extension_id], [context_id], [name], [continue], [weight]) VALUES (20, 1, N'Local_Extension', N'', 200)
INSERT [dbo].[dialplan_extension] ([extension_id], [context_id], [name], [continue], [weight]) VALUES (21, 1, N'group_dial_sales', N'', 210)
INSERT [dbo].[dialplan_extension] ([extension_id], [context_id], [name], [continue], [weight]) VALUES (22, 1, N'group_dial_support', N'', 220)
INSERT [dbo].[dialplan_extension] ([extension_id], [context_id], [name], [continue], [weight]) VALUES (23, 1, N'group_dial_billing', N'', 230)
INSERT [dbo].[dialplan_extension] ([extension_id], [context_id], [name], [continue], [weight]) VALUES (24, 1, N'operator', N'', 240)
INSERT [dbo].[dialplan_extension] ([extension_id], [context_id], [name], [continue], [weight]) VALUES (25, 1, N'vmain', N'', 250)
INSERT [dbo].[dialplan_extension] ([extension_id], [context_id], [name], [continue], [weight]) VALUES (26, 1, N'sip_uri', N'', 260)
INSERT [dbo].[dialplan_extension] ([extension_id], [context_id], [name], [continue], [weight]) VALUES (27, 1, N'nb_conferences', N'', 270)
INSERT [dbo].[dialplan_extension] ([extension_id], [context_id], [name], [continue], [weight]) VALUES (28, 1, N'wb_conferences', N'', 280)
INSERT [dbo].[dialplan_extension] ([extension_id], [context_id], [name], [continue], [weight]) VALUES (29, 1, N'uwb_conferences', N'', 290)
INSERT [dbo].[dialplan_extension] ([extension_id], [context_id], [name], [continue], [weight]) VALUES (30, 1, N'cdquality_conferences', N'', 300)
INSERT [dbo].[dialplan_extension] ([extension_id], [context_id], [name], [continue], [weight]) VALUES (31, 1, N'freeswitch_public_conf_via_sip', N'', 310)
INSERT [dbo].[dialplan_extension] ([extension_id], [context_id], [name], [continue], [weight]) VALUES (32, 1, N'mad_boss_intercom', N'', 320)
INSERT [dbo].[dialplan_extension] ([extension_id], [context_id], [name], [continue], [weight]) VALUES (33, 1, N'mad_boss_intercom', N'', 330)
INSERT [dbo].[dialplan_extension] ([extension_id], [context_id], [name], [continue], [weight]) VALUES (34, 1, N'mad_boss', N'', 340)
INSERT [dbo].[dialplan_extension] ([extension_id], [context_id], [name], [continue], [weight]) VALUES (35, 1, N'ivr_demo', N'', 350)
INSERT [dbo].[dialplan_extension] ([extension_id], [context_id], [name], [continue], [weight]) VALUES (36, 1, N'dyanmic conference', N'', 360)
INSERT [dbo].[dialplan_extension] ([extension_id], [context_id], [name], [continue], [weight]) VALUES (37, 1, N'rtp_multicast_page', N'', 370)
INSERT [dbo].[dialplan_extension] ([extension_id], [context_id], [name], [continue], [weight]) VALUES (38, 1, N'park', N'', 380)
INSERT [dbo].[dialplan_extension] ([extension_id], [context_id], [name], [continue], [weight]) VALUES (39, 1, N'unpark', N'', 390)
INSERT [dbo].[dialplan_extension] ([extension_id], [context_id], [name], [continue], [weight]) VALUES (40, 1, N'park', N'', 400)
INSERT [dbo].[dialplan_extension] ([extension_id], [context_id], [name], [continue], [weight]) VALUES (41, 1, N'unpark', N'', 410)
INSERT [dbo].[dialplan_extension] ([extension_id], [context_id], [name], [continue], [weight]) VALUES (42, 1, N'park', N'', 420)
INSERT [dbo].[dialplan_extension] ([extension_id], [context_id], [name], [continue], [weight]) VALUES (43, 1, N'unpark', N'', 430)
INSERT [dbo].[dialplan_extension] ([extension_id], [context_id], [name], [continue], [weight]) VALUES (44, 1, N'wait', N'', 440)
INSERT [dbo].[dialplan_extension] ([extension_id], [context_id], [name], [continue], [weight]) VALUES (45, 1, N'ringback_180', N'', 450)
INSERT [dbo].[dialplan_extension] ([extension_id], [context_id], [name], [continue], [weight]) VALUES (46, 1, N'ringback_183_uk_ring', N'', 460)
INSERT [dbo].[dialplan_extension] ([extension_id], [context_id], [name], [continue], [weight]) VALUES (47, 1, N'ringback_183_music_ring', N'', 470)
INSERT [dbo].[dialplan_extension] ([extension_id], [context_id], [name], [continue], [weight]) VALUES (48, 1, N'ringback_post_answer_uk_ring', N'', 480)
INSERT [dbo].[dialplan_extension] ([extension_id], [context_id], [name], [continue], [weight]) VALUES (49, 1, N'ringback_post_answer_music', N'', 490)
INSERT [dbo].[dialplan_extension] ([extension_id], [context_id], [name], [continue], [weight]) VALUES (50, 1, N'show_info', N'', 500)
INSERT [dbo].[dialplan_extension] ([extension_id], [context_id], [name], [continue], [weight]) VALUES (51, 1, N'video_record', N'', 510)
INSERT [dbo].[dialplan_extension] ([extension_id], [context_id], [name], [continue], [weight]) VALUES (52, 1, N'video_playback', N'', 520)
INSERT [dbo].[dialplan_extension] ([extension_id], [context_id], [name], [continue], [weight]) VALUES (53, 1, N'delay_echo', N'', 530)
INSERT [dbo].[dialplan_extension] ([extension_id], [context_id], [name], [continue], [weight]) VALUES (54, 1, N'echo', N'', 540)
INSERT [dbo].[dialplan_extension] ([extension_id], [context_id], [name], [continue], [weight]) VALUES (55, 1, N'milliwatt', N'', 550)
INSERT [dbo].[dialplan_extension] ([extension_id], [context_id], [name], [continue], [weight]) VALUES (56, 2, N'tone_stream', N'', 560)
INSERT [dbo].[dialplan_extension] ([extension_id], [context_id], [name], [continue], [weight]) VALUES (57, 2, N'hold_music', N'', 570)
/****** Object:  Table [dbo].[dialplan_condition]    Script Date: 02/21/2011 16:50:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[dialplan_condition]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[dialplan_condition](
	[condition_id] [int] NOT NULL,
	[extension_id] [int] NOT NULL,
	[field] [varchar](128) NOT NULL,
	[expression] [varchar](128) NOT NULL,
	[weight] [int] NOT NULL,
 CONSTRAINT [dialplan_condition_pkey] PRIMARY KEY CLUSTERED 
(
	[condition_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[dialplan_condition] ([condition_id], [extension_id], [field], [expression], [weight]) VALUES (1, 1, N'$${unroll_loops}', N'^true$', 10)
INSERT [dbo].[dialplan_condition] ([condition_id], [extension_id], [field], [expression], [weight]) VALUES (2, 1, N'${sip_looped_call}', N'^true$', 20)
INSERT [dbo].[dialplan_condition] ([condition_id], [extension_id], [field], [expression], [weight]) VALUES (3, 2, N'${domain_name}', N'^$', 30)
INSERT [dbo].[dialplan_condition] ([condition_id], [extension_id], [field], [expression], [weight]) VALUES (4, 2, N'source', N'mod_sofia', 40)
INSERT [dbo].[dialplan_condition] ([condition_id], [extension_id], [field], [expression], [weight]) VALUES (5, 2, N'${sip_auth_realm}', N'^$', 50)
INSERT [dbo].[dialplan_condition] ([condition_id], [extension_id], [field], [expression], [weight]) VALUES (6, 3, N'${domain_name}', N'^$', 60)
INSERT [dbo].[dialplan_condition] ([condition_id], [extension_id], [field], [expression], [weight]) VALUES (7, 3, N'source', N'mod_openzap', 70)
INSERT [dbo].[dialplan_condition] ([condition_id], [extension_id], [field], [expression], [weight]) VALUES (8, 4, N'${strftime(%w)}', N'^([1-5])$', 80)
INSERT [dbo].[dialplan_condition] ([condition_id], [extension_id], [field], [expression], [weight]) VALUES (9, 4, N'${strftime(%H%M)}', N'^((09|1[0-7])[0-5][0-9]|1800)$', 90)
INSERT [dbo].[dialplan_condition] ([condition_id], [extension_id], [field], [expression], [weight]) VALUES (10, 5, N'destination_number', N'^886$', 100)
INSERT [dbo].[dialplan_condition] ([condition_id], [extension_id], [field], [expression], [weight]) VALUES (11, 6, N'destination_number', N'^\\*8$', 110)
INSERT [dbo].[dialplan_condition] ([condition_id], [extension_id], [field], [expression], [weight]) VALUES (12, 7, N'destination_number', N'^\\*\\*(\\d+)$', 120)
INSERT [dbo].[dialplan_condition] ([condition_id], [extension_id], [field], [expression], [weight]) VALUES (13, 8, N'destination_number', N'^870$', 130)
INSERT [dbo].[dialplan_condition] ([condition_id], [extension_id], [field], [expression], [weight]) VALUES (14, 9, N'${network_addr}', N'^$', 140)
INSERT [dbo].[dialplan_condition] ([condition_id], [extension_id], [field], [expression], [weight]) VALUES (15, 9, N'${numbering_plan}', N'^$', 150)
INSERT [dbo].[dialplan_condition] ([condition_id], [extension_id], [field], [expression], [weight]) VALUES (16, 9, N'${call_debug}', N'^true$', 160)
INSERT [dbo].[dialplan_condition] ([condition_id], [extension_id], [field], [expression], [weight]) VALUES (17, 9, N'${sip_has_crypto}', N'^(AES_CM_128_HMAC_SHA1_32|AES_CM_128_HMAC_SHA1_80)$', 170)
INSERT [dbo].[dialplan_condition] ([condition_id], [extension_id], [field], [expression], [weight]) VALUES (18, 9, N'', N'', 180)
INSERT [dbo].[dialplan_condition] ([condition_id], [extension_id], [field], [expression], [weight]) VALUES (19, 10, N'destination_number', N'^9001$', 190)
INSERT [dbo].[dialplan_condition] ([condition_id], [extension_id], [field], [expression], [weight]) VALUES (20, 11, N'destination_number', N'^9000$', 200)
INSERT [dbo].[dialplan_condition] ([condition_id], [extension_id], [field], [expression], [weight]) VALUES (21, 12, N'destination_number', N'^88(.*)$|^\\*0(.*)$', 210)
INSERT [dbo].[dialplan_condition] ([condition_id], [extension_id], [field], [expression], [weight]) VALUES (22, 13, N'destination_number', N'^779$', 220)
INSERT [dbo].[dialplan_condition] ([condition_id], [extension_id], [field], [expression], [weight]) VALUES (23, 14, N'destination_number', N'^\\*69$|^869$|^lcr$', 230)
INSERT [dbo].[dialplan_condition] ([condition_id], [extension_id], [field], [expression], [weight]) VALUES (24, 15, N'destination_number', N'^80(\\d{2})$', 240)
INSERT [dbo].[dialplan_condition] ([condition_id], [extension_id], [field], [expression], [weight]) VALUES (25, 16, N'destination_number', N'^81(\\d{2})$', 250)
INSERT [dbo].[dialplan_condition] ([condition_id], [extension_id], [field], [expression], [weight]) VALUES (26, 17, N'destination_number', N'^82(\\d{2})$', 260)
INSERT [dbo].[dialplan_condition] ([condition_id], [extension_id], [field], [expression], [weight]) VALUES (27, 18, N'destination_number', N'^83(\\d{2})$', 270)
INSERT [dbo].[dialplan_condition] ([condition_id], [extension_id], [field], [expression], [weight]) VALUES (28, 19, N'destination_number', N'^8(10[01][0-9])$', 280)
INSERT [dbo].[dialplan_condition] ([condition_id], [extension_id], [field], [expression], [weight]) VALUES (29, 20, N'destination_number', N'^(20[01][0-9])$', 290)
INSERT [dbo].[dialplan_condition] ([condition_id], [extension_id], [field], [expression], [weight]) VALUES (30, 20, N'destination_number', N'^${caller_id_number}$', 300)
INSERT [dbo].[dialplan_condition] ([condition_id], [extension_id], [field], [expression], [weight]) VALUES (31, 21, N'destination_number', N'^3000$', 310)
INSERT [dbo].[dialplan_condition] ([condition_id], [extension_id], [field], [expression], [weight]) VALUES (32, 22, N'destination_number', N'^3001$', 320)
INSERT [dbo].[dialplan_condition] ([condition_id], [extension_id], [field], [expression], [weight]) VALUES (33, 23, N'destination_number', N'^3002$', 330)
INSERT [dbo].[dialplan_condition] ([condition_id], [extension_id], [field], [expression], [weight]) VALUES (34, 24, N'destination_number', N'^operator$|^0$', 340)
INSERT [dbo].[dialplan_condition] ([condition_id], [extension_id], [field], [expression], [weight]) VALUES (35, 25, N'destination_number', N'^vmain|4000$', 350)
INSERT [dbo].[dialplan_condition] ([condition_id], [extension_id], [field], [expression], [weight]) VALUES (36, 26, N'destination_number', N'^sip:(.*)$', 360)
INSERT [dbo].[dialplan_condition] ([condition_id], [extension_id], [field], [expression], [weight]) VALUES (37, 27, N'destination_number', N'^(30\\d{2})$', 370)
INSERT [dbo].[dialplan_condition] ([condition_id], [extension_id], [field], [expression], [weight]) VALUES (38, 28, N'destination_number', N'^(31\\d{2})$', 380)
INSERT [dbo].[dialplan_condition] ([condition_id], [extension_id], [field], [expression], [weight]) VALUES (39, 29, N'destination_number', N'^(32\\d{2})$', 390)
INSERT [dbo].[dialplan_condition] ([condition_id], [extension_id], [field], [expression], [weight]) VALUES (40, 30, N'destination_number', N'^(33\\d{2})$', 400)
INSERT [dbo].[dialplan_condition] ([condition_id], [extension_id], [field], [expression], [weight]) VALUES (41, 31, N'destination_number', N'^9(888|1616|3232)$', 410)
INSERT [dbo].[dialplan_condition] ([condition_id], [extension_id], [field], [expression], [weight]) VALUES (42, 32, N'destination_number', N'^0911$', 420)
INSERT [dbo].[dialplan_condition] ([condition_id], [extension_id], [field], [expression], [weight]) VALUES (43, 33, N'destination_number', N'^0912$', 430)
INSERT [dbo].[dialplan_condition] ([condition_id], [extension_id], [field], [expression], [weight]) VALUES (44, 34, N'destination_number', N'^0913$', 440)
INSERT [dbo].[dialplan_condition] ([condition_id], [extension_id], [field], [expression], [weight]) VALUES (45, 35, N'destination_number', N'^5000$', 450)
INSERT [dbo].[dialplan_condition] ([condition_id], [extension_id], [field], [expression], [weight]) VALUES (46, 36, N'destination_number', N'^5001$', 460)
INSERT [dbo].[dialplan_condition] ([condition_id], [extension_id], [field], [expression], [weight]) VALUES (47, 37, N'destination_number', N'^pagegroup$|^7243', 470)
INSERT [dbo].[dialplan_condition] ([condition_id], [extension_id], [field], [expression], [weight]) VALUES (48, 38, N'destination_number', N'^5900$', 480)
INSERT [dbo].[dialplan_condition] ([condition_id], [extension_id], [field], [expression], [weight]) VALUES (49, 39, N'destination_number', N'^5901$', 490)
INSERT [dbo].[dialplan_condition] ([condition_id], [extension_id], [field], [expression], [weight]) VALUES (50, 40, N'source', N'mod_sofia', 500)
INSERT [dbo].[dialplan_condition] ([condition_id], [extension_id], [field], [expression], [weight]) VALUES (51, 40, N'destination_number', N'park\\+(\\d+)', 510)
INSERT [dbo].[dialplan_condition] ([condition_id], [extension_id], [field], [expression], [weight]) VALUES (52, 41, N'source', N'mod_sofia', 520)
INSERT [dbo].[dialplan_condition] ([condition_id], [extension_id], [field], [expression], [weight]) VALUES (53, 41, N'destination_number', N'^parking$', 530)
INSERT [dbo].[dialplan_condition] ([condition_id], [extension_id], [field], [expression], [weight]) VALUES (54, 41, N'${sip_to_params}', N'fifo\\=(\\d+)', 540)
INSERT [dbo].[dialplan_condition] ([condition_id], [extension_id], [field], [expression], [weight]) VALUES (55, 42, N'source', N'mod_sofia', 550)
INSERT [dbo].[dialplan_condition] ([condition_id], [extension_id], [field], [expression], [weight]) VALUES (56, 42, N'destination_number', N'callpark', 560)
INSERT [dbo].[dialplan_condition] ([condition_id], [extension_id], [field], [expression], [weight]) VALUES (57, 42, N'${sip_refer_to}', N'', 570)
INSERT [dbo].[dialplan_condition] ([condition_id], [extension_id], [field], [expression], [weight]) VALUES (58, 43, N'source', N'mod_sofia', 580)
INSERT [dbo].[dialplan_condition] ([condition_id], [extension_id], [field], [expression], [weight]) VALUES (59, 43, N'destination_number', N'pickup', 590)
INSERT [dbo].[dialplan_condition] ([condition_id], [extension_id], [field], [expression], [weight]) VALUES (60, 43, N'${sip_to_params}', N'orbit\\=(\\d+)', 600)
INSERT [dbo].[dialplan_condition] ([condition_id], [extension_id], [field], [expression], [weight]) VALUES (61, 44, N'destination_number', N'^wait$', 610)
INSERT [dbo].[dialplan_condition] ([condition_id], [extension_id], [field], [expression], [weight]) VALUES (62, 45, N'destination_number', N'^9980$', 620)
INSERT [dbo].[dialplan_condition] ([condition_id], [extension_id], [field], [expression], [weight]) VALUES (63, 46, N'destination_number', N'^9981$', 630)
INSERT [dbo].[dialplan_condition] ([condition_id], [extension_id], [field], [expression], [weight]) VALUES (64, 47, N'destination_number', N'^9982$', 640)
INSERT [dbo].[dialplan_condition] ([condition_id], [extension_id], [field], [expression], [weight]) VALUES (65, 48, N'destination_number', N'^9983$', 650)
INSERT [dbo].[dialplan_condition] ([condition_id], [extension_id], [field], [expression], [weight]) VALUES (66, 49, N'destination_number', N'^9984$', 660)
INSERT [dbo].[dialplan_condition] ([condition_id], [extension_id], [field], [expression], [weight]) VALUES (67, 50, N'destination_number', N'^9992$', 670)
INSERT [dbo].[dialplan_condition] ([condition_id], [extension_id], [field], [expression], [weight]) VALUES (68, 51, N'destination_number', N'^9993$', 680)
INSERT [dbo].[dialplan_condition] ([condition_id], [extension_id], [field], [expression], [weight]) VALUES (69, 52, N'destination_number', N'^9994$', 690)
INSERT [dbo].[dialplan_condition] ([condition_id], [extension_id], [field], [expression], [weight]) VALUES (70, 53, N'destination_number', N'^9995$', 700)
INSERT [dbo].[dialplan_condition] ([condition_id], [extension_id], [field], [expression], [weight]) VALUES (71, 54, N'destination_number', N'^9996$', 710)
INSERT [dbo].[dialplan_condition] ([condition_id], [extension_id], [field], [expression], [weight]) VALUES (72, 55, N'destination_number', N'^9997$', 720)
INSERT [dbo].[dialplan_condition] ([condition_id], [extension_id], [field], [expression], [weight]) VALUES (73, 56, N'destination_number', N'^9998$', 730)
INSERT [dbo].[dialplan_condition] ([condition_id], [extension_id], [field], [expression], [weight]) VALUES (74, 57, N'destination_number', N'^9999$', 740)
INSERT [dbo].[dialplan_condition] ([condition_id], [extension_id], [field], [expression], [weight]) VALUES (75, 57, N'${sip_has_crypto}', N'^(AES_CM_128_HMAC_SHA1_32|AES_CM_128_HMAC_SHA1_80)$', 750)
/****** Object:  Table [dbo].[dialplan_actions]    Script Date: 02/21/2011 16:50:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[dialplan_actions]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[dialplan_actions](
	[action_id] [int] NOT NULL,
	[condition_id] [int] NOT NULL,
	[application] [varchar](256) NOT NULL,
	[data] [varchar](256) NOT NULL,
	[type] [varchar](32) NOT NULL,
	[weight] [int] NOT NULL,
 CONSTRAINT [dialplan_actions_pkey] PRIMARY KEY CLUSTERED 
(
	[action_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[dialplan_actions] ([action_id], [condition_id], [application], [data], [type], [weight]) VALUES (1, 2, N'deflect', N'${destination_number}', N'action', 10)
INSERT [dbo].[dialplan_actions] ([action_id], [condition_id], [application], [data], [type], [weight]) VALUES (2, 5, N'set', N'domain_name=$${domain}', N'action', 20)
INSERT [dbo].[dialplan_actions] ([action_id], [condition_id], [application], [data], [type], [weight]) VALUES (3, 5, N'set', N'domain_name=${sip_auth_realm}', N'anti-action', 30)
INSERT [dbo].[dialplan_actions] ([action_id], [condition_id], [application], [data], [type], [weight]) VALUES (4, 7, N'set', N'domain_name=$${domain}', N'action', 40)
INSERT [dbo].[dialplan_actions] ([action_id], [condition_id], [application], [data], [type], [weight]) VALUES (5, 9, N'set', N'open=true', N'action', 50)
INSERT [dbo].[dialplan_actions] ([action_id], [condition_id], [application], [data], [type], [weight]) VALUES (6, 10, N'answer', N'', N'action', 60)
INSERT [dbo].[dialplan_actions] ([action_id], [condition_id], [application], [data], [type], [weight]) VALUES (7, 10, N'intercept', N'${db(select/${domain_name}-last_dial/global)}', N'action', 70)
INSERT [dbo].[dialplan_actions] ([action_id], [condition_id], [application], [data], [type], [weight]) VALUES (8, 10, N'sleep', N'2000', N'action', 80)
INSERT [dbo].[dialplan_actions] ([action_id], [condition_id], [application], [data], [type], [weight]) VALUES (9, 11, N'answer', N'', N'action', 90)
INSERT [dbo].[dialplan_actions] ([action_id], [condition_id], [application], [data], [type], [weight]) VALUES (10, 11, N'intercept', N'${db(select/${domain_name}-last_dial/${callgroup})}', N'action', 100)
INSERT [dbo].[dialplan_actions] ([action_id], [condition_id], [application], [data], [type], [weight]) VALUES (11, 11, N'sleep', N'2000', N'action', 110)
INSERT [dbo].[dialplan_actions] ([action_id], [condition_id], [application], [data], [type], [weight]) VALUES (12, 12, N'answer', N'', N'action', 120)
INSERT [dbo].[dialplan_actions] ([action_id], [condition_id], [application], [data], [type], [weight]) VALUES (13, 12, N'intercept', N'${db(select/${domain_name}-last_dial_ext/$1)}', N'action', 130)
INSERT [dbo].[dialplan_actions] ([action_id], [condition_id], [application], [data], [type], [weight]) VALUES (14, 12, N'sleep', N'2000', N'action', 140)
INSERT [dbo].[dialplan_actions] ([action_id], [condition_id], [application], [data], [type], [weight]) VALUES (15, 13, N'transfer', N'${db(select/${domain_name}-last_dial/${caller_id_number})}', N'action', 150)
INSERT [dbo].[dialplan_actions] ([action_id], [condition_id], [application], [data], [type], [weight]) VALUES (16, 14, N'set', N'use_profile=${cond(${acl($${local_ip_v4} rfc1918)} == true ? nat : default)}', N'action', 160)
INSERT [dbo].[dialplan_actions] ([action_id], [condition_id], [application], [data], [type], [weight]) VALUES (17, 14, N'set', N'use_profile=${cond(${acl(${network_addr} rfc1918)} == true ? nat : default)}', N'anti-action', 170)
INSERT [dbo].[dialplan_actions] ([action_id], [condition_id], [application], [data], [type], [weight]) VALUES (18, 15, N'set_user', N'default@${domain_name}', N'action', 180)
INSERT [dbo].[dialplan_actions] ([action_id], [condition_id], [application], [data], [type], [weight]) VALUES (19, 16, N'info', N'', N'action', 190)
INSERT [dbo].[dialplan_actions] ([action_id], [condition_id], [application], [data], [type], [weight]) VALUES (20, 17, N'set', N'sip_secure_media=true', N'action', 200)
INSERT [dbo].[dialplan_actions] ([action_id], [condition_id], [application], [data], [type], [weight]) VALUES (21, 18, N'db', N'insert/${domain_name}-spymap/${caller_id_number}/${uuid}', N'action', 210)
INSERT [dbo].[dialplan_actions] ([action_id], [condition_id], [application], [data], [type], [weight]) VALUES (22, 18, N'db', N'insert/${domain_name}-last_dial/${caller_id_number}/${destination_number}', N'action', 220)
INSERT [dbo].[dialplan_actions] ([action_id], [condition_id], [application], [data], [type], [weight]) VALUES (23, 18, N'db', N'insert/${domain_name}-last_dial/global/${uuid}', N'action', 230)
INSERT [dbo].[dialplan_actions] ([action_id], [condition_id], [application], [data], [type], [weight]) VALUES (24, 19, N'eval', N'${snom_bind_key(2 off DND ${sip_from_user} ${sip_from_host} ${sofia_profile_name} message notused)}', N'action', 240)
INSERT [dbo].[dialplan_actions] ([action_id], [condition_id], [application], [data], [type], [weight]) VALUES (25, 19, N'transfer', N'3000', N'action', 250)
INSERT [dbo].[dialplan_actions] ([action_id], [condition_id], [application], [data], [type], [weight]) VALUES (26, 20, N'eval', N'${snom_bind_key(2 on DND ${sip_from_user} ${sip_from_host} ${sofia_profile_name} message api+uuid_transfer ${uuid} 9001)}', N'action', 260)
INSERT [dbo].[dialplan_actions] ([action_id], [condition_id], [application], [data], [type], [weight]) VALUES (27, 20, N'playback', N'$${hold_music}', N'action', 270)
INSERT [dbo].[dialplan_actions] ([action_id], [condition_id], [application], [data], [type], [weight]) VALUES (28, 21, N'answer', N'', N'action', 280)
INSERT [dbo].[dialplan_actions] ([action_id], [condition_id], [application], [data], [type], [weight]) VALUES (29, 21, N'eavesdrop', N'${db(select/${domain_name}-spymap/$1)}', N'action', 290)
INSERT [dbo].[dialplan_actions] ([action_id], [condition_id], [application], [data], [type], [weight]) VALUES (30, 22, N'answer', N'', N'action', 300)
INSERT [dbo].[dialplan_actions] ([action_id], [condition_id], [application], [data], [type], [weight]) VALUES (31, 22, N'set', N'eavesdrop_indicate_failed=tone_stream://%(500, 0, 320)', N'action', 310)
INSERT [dbo].[dialplan_actions] ([action_id], [condition_id], [application], [data], [type], [weight]) VALUES (32, 22, N'set', N'eavesdrop_indicate_new=tone_stream://%(500, 0, 620)', N'action', 320)
INSERT [dbo].[dialplan_actions] ([action_id], [condition_id], [application], [data], [type], [weight]) VALUES (33, 22, N'set', N'eavesdrop_indicate_idle=tone_stream://%(250, 0, 920)', N'action', 330)
INSERT [dbo].[dialplan_actions] ([action_id], [condition_id], [application], [data], [type], [weight]) VALUES (34, 22, N'eavesdrop', N'all', N'action', 340)
INSERT [dbo].[dialplan_actions] ([action_id], [condition_id], [application], [data], [type], [weight]) VALUES (35, 23, N'transfer', N'${db(select/${domain_name}-call_return/${caller_id_number})}', N'action', 350)
INSERT [dbo].[dialplan_actions] ([action_id], [condition_id], [application], [data], [type], [weight]) VALUES (36, 24, N'answer', N'', N'action', 360)
INSERT [dbo].[dialplan_actions] ([action_id], [condition_id], [application], [data], [type], [weight]) VALUES (37, 24, N'group', N'delete:$1@${domain_name}:${sofia_contact(${sip_from_user}@${domain_name})}', N'action', 370)
INSERT [dbo].[dialplan_actions] ([action_id], [condition_id], [application], [data], [type], [weight]) VALUES (38, 24, N'gentones', N'%(1000, 0, 320)', N'action', 380)
INSERT [dbo].[dialplan_actions] ([action_id], [condition_id], [application], [data], [type], [weight]) VALUES (39, 25, N'answer', N'', N'action', 390)
INSERT [dbo].[dialplan_actions] ([action_id], [condition_id], [application], [data], [type], [weight]) VALUES (40, 25, N'group', N'insert:$1@${domain_name}:${sofia_contact(${sip_from_user}@${domain_name})}', N'action', 400)
INSERT [dbo].[dialplan_actions] ([action_id], [condition_id], [application], [data], [type], [weight]) VALUES (41, 25, N'gentones', N'%(1000, 0, 640)', N'action', 410)
INSERT [dbo].[dialplan_actions] ([action_id], [condition_id], [application], [data], [type], [weight]) VALUES (42, 26, N'bridge', N'{ignore_early_media=true}${group(call:$1@${domain_name})}', N'action', 420)
INSERT [dbo].[dialplan_actions] ([action_id], [condition_id], [application], [data], [type], [weight]) VALUES (43, 27, N'set', N'call_timeout=10', N'action', 430)
INSERT [dbo].[dialplan_actions] ([action_id], [condition_id], [application], [data], [type], [weight]) VALUES (44, 27, N'bridge', N'{ignore_early_media=true}${group(call:$1@${domain_name}:order)}', N'action', 440)
INSERT [dbo].[dialplan_actions] ([action_id], [condition_id], [application], [data], [type], [weight]) VALUES (45, 28, N'set', N'dialed_extension=$1', N'action', 450)
INSERT [dbo].[dialplan_actions] ([action_id], [condition_id], [application], [data], [type], [weight]) VALUES (46, 28, N'export', N'sip_auto_answer=true', N'action', 460)
INSERT [dbo].[dialplan_actions] ([action_id], [condition_id], [application], [data], [type], [weight]) VALUES (47, 28, N'bridge', N'user/${dialed_extension}@${domain_name}', N'action', 470)
INSERT [dbo].[dialplan_actions] ([action_id], [condition_id], [application], [data], [type], [weight]) VALUES (48, 29, N'set', N'dialed_extension=$1', N'action', 480)
INSERT [dbo].[dialplan_actions] ([action_id], [condition_id], [application], [data], [type], [weight]) VALUES (49, 29, N'export', N'dialed_extension=$1', N'action', 490)
INSERT [dbo].[dialplan_actions] ([action_id], [condition_id], [application], [data], [type], [weight]) VALUES (50, 30, N'set', N'voicemail_authorized=${sip_authorized}', N'action', 500)
INSERT [dbo].[dialplan_actions] ([action_id], [condition_id], [application], [data], [type], [weight]) VALUES (51, 30, N'answer', N'', N'action', 510)
INSERT [dbo].[dialplan_actions] ([action_id], [condition_id], [application], [data], [type], [weight]) VALUES (52, 30, N'sleep', N'1000', N'action', 520)
INSERT [dbo].[dialplan_actions] ([action_id], [condition_id], [application], [data], [type], [weight]) VALUES (53, 30, N'voicemail', N'check default ${domain_name} ${dialed_extension}', N'action', 530)
INSERT [dbo].[dialplan_actions] ([action_id], [condition_id], [application], [data], [type], [weight]) VALUES (54, 30, N'bind_meta_app', N'1 b s execute_extension::dx XML features', N'anti-action', 540)
INSERT [dbo].[dialplan_actions] ([action_id], [condition_id], [application], [data], [type], [weight]) VALUES (55, 30, N'bind_meta_app', N'2 b s record_session::$${recordings_dir}/${caller_id_number}.${strftime(%Y-%m-%d-%H-%M-%S)}.wav', N'anti-action', 550)
INSERT [dbo].[dialplan_actions] ([action_id], [condition_id], [application], [data], [type], [weight]) VALUES (56, 30, N'bind_meta_app', N'3 b s execute_extension::cf XML features', N'anti-action', 560)
INSERT [dbo].[dialplan_actions] ([action_id], [condition_id], [application], [data], [type], [weight]) VALUES (57, 30, N'set', N'ringback=${us-ring}', N'anti-action', 570)
INSERT [dbo].[dialplan_actions] ([action_id], [condition_id], [application], [data], [type], [weight]) VALUES (58, 30, N'set', N'transfer_ringback=$${hold_music}', N'anti-action', 580)
INSERT [dbo].[dialplan_actions] ([action_id], [condition_id], [application], [data], [type], [weight]) VALUES (59, 30, N'set', N'call_timeout=30', N'anti-action', 590)
INSERT [dbo].[dialplan_actions] ([action_id], [condition_id], [application], [data], [type], [weight]) VALUES (60, 30, N'set', N'hangup_after_bridge=true', N'anti-action', 600)
INSERT [dbo].[dialplan_actions] ([action_id], [condition_id], [application], [data], [type], [weight]) VALUES (61, 30, N'set', N'"continue"_on_fail=true', N'anti-action', 610)
INSERT [dbo].[dialplan_actions] ([action_id], [condition_id], [application], [data], [type], [weight]) VALUES (62, 30, N'db', N'insert/${domain_name}-call_return/${dialed_extension}/${caller_id_number}', N'anti-action', 620)
INSERT [dbo].[dialplan_actions] ([action_id], [condition_id], [application], [data], [type], [weight]) VALUES (63, 30, N'db', N'insert/${domain_name}-last_dial_ext/${dialed_extension}/${uuid}', N'anti-action', 630)
INSERT [dbo].[dialplan_actions] ([action_id], [condition_id], [application], [data], [type], [weight]) VALUES (64, 30, N'set', N'called_party_callgroup=${user_data(${dialed_extension}@${domain_name} var callgroup)}', N'anti-action', 640)
INSERT [dbo].[dialplan_actions] ([action_id], [condition_id], [application], [data], [type], [weight]) VALUES (65, 30, N'db', N'insert/${domain_name}-last_dial/${called_party_callgroup}/${uuid}', N'anti-action', 650)
INSERT [dbo].[dialplan_actions] ([action_id], [condition_id], [application], [data], [type], [weight]) VALUES (66, 30, N'bridge', N'user/${dialed_extension}@${domain_name}', N'anti-action', 660)
INSERT [dbo].[dialplan_actions] ([action_id], [condition_id], [application], [data], [type], [weight]) VALUES (67, 30, N'answer', N'', N'anti-action', 670)
INSERT [dbo].[dialplan_actions] ([action_id], [condition_id], [application], [data], [type], [weight]) VALUES (68, 30, N'sleep', N'1000', N'anti-action', 680)
INSERT [dbo].[dialplan_actions] ([action_id], [condition_id], [application], [data], [type], [weight]) VALUES (69, 30, N'voicemail', N'default ${domain_name} ${dialed_extension}', N'anti-action', 690)
INSERT [dbo].[dialplan_actions] ([action_id], [condition_id], [application], [data], [type], [weight]) VALUES (70, 31, N'bridge', N'${group_call(sales@${domain_name})}', N'action', 700)
INSERT [dbo].[dialplan_actions] ([action_id], [condition_id], [application], [data], [type], [weight]) VALUES (71, 32, N'bridge', N'group/support@${domain_name}', N'action', 710)
INSERT [dbo].[dialplan_actions] ([action_id], [condition_id], [application], [data], [type], [weight]) VALUES (72, 33, N'bridge', N'group/billing@${domain_name}', N'action', 720)
INSERT [dbo].[dialplan_actions] ([action_id], [condition_id], [application], [data], [type], [weight]) VALUES (73, 34, N'set', N'transfer_ringback=$${hold_music}', N'action', 730)
INSERT [dbo].[dialplan_actions] ([action_id], [condition_id], [application], [data], [type], [weight]) VALUES (74, 34, N'transfer', N'1000 XML features', N'action', 740)
INSERT [dbo].[dialplan_actions] ([action_id], [condition_id], [application], [data], [type], [weight]) VALUES (75, 35, N'answer', N'', N'action', 750)
INSERT [dbo].[dialplan_actions] ([action_id], [condition_id], [application], [data], [type], [weight]) VALUES (76, 35, N'sleep', N'1000', N'action', 760)
INSERT [dbo].[dialplan_actions] ([action_id], [condition_id], [application], [data], [type], [weight]) VALUES (77, 35, N'voicemail', N'check default ${domain_name}', N'action', 770)
INSERT [dbo].[dialplan_actions] ([action_id], [condition_id], [application], [data], [type], [weight]) VALUES (78, 36, N'bridge', N'sofia/${use_profile}/$1', N'action', 780)
INSERT [dbo].[dialplan_actions] ([action_id], [condition_id], [application], [data], [type], [weight]) VALUES (79, 37, N'answer', N'', N'action', 790)
INSERT [dbo].[dialplan_actions] ([action_id], [condition_id], [application], [data], [type], [weight]) VALUES (80, 37, N'conference', N'$1-${domain_name}@default', N'action', 800)
INSERT [dbo].[dialplan_actions] ([action_id], [condition_id], [application], [data], [type], [weight]) VALUES (81, 38, N'answer', N'', N'action', 810)
INSERT [dbo].[dialplan_actions] ([action_id], [condition_id], [application], [data], [type], [weight]) VALUES (82, 38, N'conference', N'$1-${domain_name}@wideband', N'action', 820)
INSERT [dbo].[dialplan_actions] ([action_id], [condition_id], [application], [data], [type], [weight]) VALUES (83, 39, N'answer', N'', N'action', 830)
INSERT [dbo].[dialplan_actions] ([action_id], [condition_id], [application], [data], [type], [weight]) VALUES (84, 39, N'conference', N'$1-${domain_name}@ultrawideband', N'action', 840)
INSERT [dbo].[dialplan_actions] ([action_id], [condition_id], [application], [data], [type], [weight]) VALUES (85, 40, N'answer', N'', N'action', 850)
INSERT [dbo].[dialplan_actions] ([action_id], [condition_id], [application], [data], [type], [weight]) VALUES (86, 40, N'conference', N'$1-${domain_name}@cdquality', N'action', 860)
INSERT [dbo].[dialplan_actions] ([action_id], [condition_id], [application], [data], [type], [weight]) VALUES (87, 41, N'bridge', N'sofia/${use_profile}/$1@conference.freeswitch.org', N'action', 870)
INSERT [dbo].[dialplan_actions] ([action_id], [condition_id], [application], [data], [type], [weight]) VALUES (88, 42, N'set', N'conference_auto_outcall_caller_id_name=Mad Boss1', N'action', 880)
INSERT [dbo].[dialplan_actions] ([action_id], [condition_id], [application], [data], [type], [weight]) VALUES (89, 42, N'set', N'conference_auto_outcall_caller_id_number=0911', N'action', 890)
INSERT [dbo].[dialplan_actions] ([action_id], [condition_id], [application], [data], [type], [weight]) VALUES (90, 42, N'set', N'conference_auto_outcall_timeout=60', N'action', 900)
INSERT [dbo].[dialplan_actions] ([action_id], [condition_id], [application], [data], [type], [weight]) VALUES (91, 42, N'set', N'conference_auto_outcall_flags=mute', N'action', 910)
INSERT [dbo].[dialplan_actions] ([action_id], [condition_id], [application], [data], [type], [weight]) VALUES (92, 42, N'set', N'conference_auto_outcall_prefix={sip_auto_answer=true,execute_on_answer=''bind_meta_app 2 a s1 intercept::${uuid}''}', N'action', 920)
INSERT [dbo].[dialplan_actions] ([action_id], [condition_id], [application], [data], [type], [weight]) VALUES (93, 42, N'set', N'sip_exclude_contact=${network_addr}', N'action', 930)
INSERT [dbo].[dialplan_actions] ([action_id], [condition_id], [application], [data], [type], [weight]) VALUES (94, 42, N'conference_set_auto_outcall', N'${group_call(sales)}', N'action', 940)
INSERT [dbo].[dialplan_actions] ([action_id], [condition_id], [application], [data], [type], [weight]) VALUES (95, 42, N'conference', N'madboss_intercom1@default+flags{endconf|deaf}', N'action', 950)
INSERT [dbo].[dialplan_actions] ([action_id], [condition_id], [application], [data], [type], [weight]) VALUES (96, 43, N'set', N'conference_auto_outcall_caller_id_name=Mad Boss2', N'action', 960)
INSERT [dbo].[dialplan_actions] ([action_id], [condition_id], [application], [data], [type], [weight]) VALUES (97, 43, N'set', N'conference_auto_outcall_caller_id_number=0912', N'action', 970)
INSERT [dbo].[dialplan_actions] ([action_id], [condition_id], [application], [data], [type], [weight]) VALUES (98, 43, N'set', N'conference_auto_outcall_timeout=60', N'action', 980)
INSERT [dbo].[dialplan_actions] ([action_id], [condition_id], [application], [data], [type], [weight]) VALUES (99, 43, N'set', N'conference_auto_outcall_flags=mute', N'action', 990)
INSERT [dbo].[dialplan_actions] ([action_id], [condition_id], [application], [data], [type], [weight]) VALUES (100, 43, N'set', N'conference_auto_outcall_prefix={sip_auto_answer=true,execute_on_answer=''bind_meta_app 2 a s1 intercept::${uuid}''}', N'action', 1000)
INSERT [dbo].[dialplan_actions] ([action_id], [condition_id], [application], [data], [type], [weight]) VALUES (101, 43, N'set', N'sip_exclude_contact=${network_addr}', N'action', 1010)
GO
print 'Processed 100 total records'
INSERT [dbo].[dialplan_actions] ([action_id], [condition_id], [application], [data], [type], [weight]) VALUES (102, 43, N'conference_set_auto_outcall', N'loopback/9999', N'action', 1020)
INSERT [dbo].[dialplan_actions] ([action_id], [condition_id], [application], [data], [type], [weight]) VALUES (103, 43, N'conference', N'madboss_intercom2@default+flags{endconf|deaf}', N'action', 1030)
INSERT [dbo].[dialplan_actions] ([action_id], [condition_id], [application], [data], [type], [weight]) VALUES (104, 44, N'set', N'conference_auto_outcall_caller_id_name=Mad Boss', N'action', 1040)
INSERT [dbo].[dialplan_actions] ([action_id], [condition_id], [application], [data], [type], [weight]) VALUES (105, 44, N'set', N'conference_auto_outcall_caller_id_number=0911', N'action', 1050)
INSERT [dbo].[dialplan_actions] ([action_id], [condition_id], [application], [data], [type], [weight]) VALUES (106, 44, N'set', N'conference_auto_outcall_timeout=60', N'action', 1060)
INSERT [dbo].[dialplan_actions] ([action_id], [condition_id], [application], [data], [type], [weight]) VALUES (107, 44, N'set', N'conference_auto_outcall_flags=none', N'action', 1070)
INSERT [dbo].[dialplan_actions] ([action_id], [condition_id], [application], [data], [type], [weight]) VALUES (108, 44, N'conference_set_auto_outcall', N'loopback/9999', N'action', 1080)
INSERT [dbo].[dialplan_actions] ([action_id], [condition_id], [application], [data], [type], [weight]) VALUES (109, 44, N'conference', N'madboss3@default', N'action', 1090)
INSERT [dbo].[dialplan_actions] ([action_id], [condition_id], [application], [data], [type], [weight]) VALUES (110, 45, N'answer', N'', N'action', 1100)
INSERT [dbo].[dialplan_actions] ([action_id], [condition_id], [application], [data], [type], [weight]) VALUES (111, 45, N'sleep', N'2000', N'action', 1110)
INSERT [dbo].[dialplan_actions] ([action_id], [condition_id], [application], [data], [type], [weight]) VALUES (112, 45, N'ivr', N'demo_ivr', N'action', 1120)
INSERT [dbo].[dialplan_actions] ([action_id], [condition_id], [application], [data], [type], [weight]) VALUES (113, 46, N'conference', N'bridge:mydynaconf:sofia/${use_profile}/1234@conference.freeswitch.org', N'action', 1130)
INSERT [dbo].[dialplan_actions] ([action_id], [condition_id], [application], [data], [type], [weight]) VALUES (114, 47, N'answer', N'', N'action', 1140)
INSERT [dbo].[dialplan_actions] ([action_id], [condition_id], [application], [data], [type], [weight]) VALUES (115, 47, N'esf_page_group', N'', N'action', 1150)
INSERT [dbo].[dialplan_actions] ([action_id], [condition_id], [application], [data], [type], [weight]) VALUES (116, 48, N'set', N'fifo_music=$${hold_music}', N'action', 1160)
INSERT [dbo].[dialplan_actions] ([action_id], [condition_id], [application], [data], [type], [weight]) VALUES (117, 48, N'fifo', N'5900@${domain_name} in', N'action', 1170)
INSERT [dbo].[dialplan_actions] ([action_id], [condition_id], [application], [data], [type], [weight]) VALUES (118, 49, N'answer', N'', N'action', 1180)
INSERT [dbo].[dialplan_actions] ([action_id], [condition_id], [application], [data], [type], [weight]) VALUES (119, 49, N'fifo', N'5900@${domain_name} out nowait', N'action', 1190)
INSERT [dbo].[dialplan_actions] ([action_id], [condition_id], [application], [data], [type], [weight]) VALUES (120, 51, N'fifo', N'$1@${domain_name} in undef $${hold_music}', N'action', 1200)
INSERT [dbo].[dialplan_actions] ([action_id], [condition_id], [application], [data], [type], [weight]) VALUES (121, 54, N'answer', N'', N'action', 1210)
INSERT [dbo].[dialplan_actions] ([action_id], [condition_id], [application], [data], [type], [weight]) VALUES (122, 54, N'fifo', N'$1@${domain_name} out nowait', N'action', 1220)
INSERT [dbo].[dialplan_actions] ([action_id], [condition_id], [application], [data], [type], [weight]) VALUES (123, 57, N'', N'', N'expression', 1230)
INSERT [dbo].[dialplan_actions] ([action_id], [condition_id], [application], [data], [type], [weight]) VALUES (124, 57, N'fifo', N'$1@${domain_name} in undef $${hold_music}', N'action', 1240)
INSERT [dbo].[dialplan_actions] ([action_id], [condition_id], [application], [data], [type], [weight]) VALUES (125, 60, N'answer', N'', N'action', 1250)
INSERT [dbo].[dialplan_actions] ([action_id], [condition_id], [application], [data], [type], [weight]) VALUES (126, 60, N'fifo', N'$1@${domain_name} out nowait', N'action', 1260)
INSERT [dbo].[dialplan_actions] ([action_id], [condition_id], [application], [data], [type], [weight]) VALUES (127, 61, N'pre_answer', N'', N'action', 1270)
INSERT [dbo].[dialplan_actions] ([action_id], [condition_id], [application], [data], [type], [weight]) VALUES (128, 61, N'sleep', N'20000', N'action', 1280)
INSERT [dbo].[dialplan_actions] ([action_id], [condition_id], [application], [data], [type], [weight]) VALUES (129, 61, N'answer', N'', N'action', 1290)
INSERT [dbo].[dialplan_actions] ([action_id], [condition_id], [application], [data], [type], [weight]) VALUES (130, 61, N'sleep', N'1000', N'action', 1300)
INSERT [dbo].[dialplan_actions] ([action_id], [condition_id], [application], [data], [type], [weight]) VALUES (131, 61, N'playback', N'voicemail/vm-goodbye.wav', N'action', 1310)
INSERT [dbo].[dialplan_actions] ([action_id], [condition_id], [application], [data], [type], [weight]) VALUES (132, 61, N'hangup', N'', N'action', 1320)
INSERT [dbo].[dialplan_actions] ([action_id], [condition_id], [application], [data], [type], [weight]) VALUES (133, 62, N'ring_ready', N'', N'action', 1330)
INSERT [dbo].[dialplan_actions] ([action_id], [condition_id], [application], [data], [type], [weight]) VALUES (134, 62, N'sleep', N'20000', N'action', 1340)
INSERT [dbo].[dialplan_actions] ([action_id], [condition_id], [application], [data], [type], [weight]) VALUES (135, 62, N'answer', N'', N'action', 1350)
INSERT [dbo].[dialplan_actions] ([action_id], [condition_id], [application], [data], [type], [weight]) VALUES (136, 62, N'sleep', N'1000', N'action', 1360)
INSERT [dbo].[dialplan_actions] ([action_id], [condition_id], [application], [data], [type], [weight]) VALUES (137, 62, N'playback', N'voicemail/vm-goodbye.wav', N'action', 1370)
INSERT [dbo].[dialplan_actions] ([action_id], [condition_id], [application], [data], [type], [weight]) VALUES (138, 62, N'hangup', N'', N'action', 1380)
INSERT [dbo].[dialplan_actions] ([action_id], [condition_id], [application], [data], [type], [weight]) VALUES (139, 63, N'set', N'ringback=$${uk-ring}', N'action', 1390)
INSERT [dbo].[dialplan_actions] ([action_id], [condition_id], [application], [data], [type], [weight]) VALUES (140, 63, N'bridge', N'loopback/wait', N'action', 1400)
INSERT [dbo].[dialplan_actions] ([action_id], [condition_id], [application], [data], [type], [weight]) VALUES (141, 64, N'set', N'ringback=$${hold_music}', N'action', 1410)
INSERT [dbo].[dialplan_actions] ([action_id], [condition_id], [application], [data], [type], [weight]) VALUES (142, 64, N'bridge', N'loopback/wait', N'action', 1420)
INSERT [dbo].[dialplan_actions] ([action_id], [condition_id], [application], [data], [type], [weight]) VALUES (143, 65, N'set', N'transfer_ringback=$${uk-ring}', N'action', 1430)
INSERT [dbo].[dialplan_actions] ([action_id], [condition_id], [application], [data], [type], [weight]) VALUES (144, 65, N'answer', N'', N'action', 1440)
INSERT [dbo].[dialplan_actions] ([action_id], [condition_id], [application], [data], [type], [weight]) VALUES (145, 65, N'bridge', N'loopback/wait', N'action', 1450)
INSERT [dbo].[dialplan_actions] ([action_id], [condition_id], [application], [data], [type], [weight]) VALUES (146, 66, N'set', N'transfer_ringback=$${hold_music}', N'action', 1460)
INSERT [dbo].[dialplan_actions] ([action_id], [condition_id], [application], [data], [type], [weight]) VALUES (147, 66, N'answer', N'', N'action', 1470)
INSERT [dbo].[dialplan_actions] ([action_id], [condition_id], [application], [data], [type], [weight]) VALUES (148, 66, N'bridge', N'loopback/wait', N'action', 1480)
INSERT [dbo].[dialplan_actions] ([action_id], [condition_id], [application], [data], [type], [weight]) VALUES (149, 67, N'answer', N'', N'action', 1490)
INSERT [dbo].[dialplan_actions] ([action_id], [condition_id], [application], [data], [type], [weight]) VALUES (150, 67, N'info', N'', N'action', 1500)
INSERT [dbo].[dialplan_actions] ([action_id], [condition_id], [application], [data], [type], [weight]) VALUES (151, 67, N'sleep', N'250', N'action', 1510)
INSERT [dbo].[dialplan_actions] ([action_id], [condition_id], [application], [data], [type], [weight]) VALUES (152, 67, N'hangup', N'', N'action', 1520)
INSERT [dbo].[dialplan_actions] ([action_id], [condition_id], [application], [data], [type], [weight]) VALUES (153, 68, N'answer', N'', N'action', 1530)
INSERT [dbo].[dialplan_actions] ([action_id], [condition_id], [application], [data], [type], [weight]) VALUES (154, 68, N'record_fsv', N'/tmp/testrecord.fsv', N'action', 1540)
INSERT [dbo].[dialplan_actions] ([action_id], [condition_id], [application], [data], [type], [weight]) VALUES (155, 69, N'answer', N'', N'action', 1550)
INSERT [dbo].[dialplan_actions] ([action_id], [condition_id], [application], [data], [type], [weight]) VALUES (156, 69, N'play_fsv', N'/tmp/testrecord.fsv', N'action', 1560)
INSERT [dbo].[dialplan_actions] ([action_id], [condition_id], [application], [data], [type], [weight]) VALUES (157, 70, N'answer', N'', N'action', 1570)
INSERT [dbo].[dialplan_actions] ([action_id], [condition_id], [application], [data], [type], [weight]) VALUES (158, 70, N'delay_echo', N'5000', N'action', 1580)
INSERT [dbo].[dialplan_actions] ([action_id], [condition_id], [application], [data], [type], [weight]) VALUES (159, 71, N'answer', N'', N'action', 1590)
INSERT [dbo].[dialplan_actions] ([action_id], [condition_id], [application], [data], [type], [weight]) VALUES (160, 71, N'echo', N'', N'action', 1600)
INSERT [dbo].[dialplan_actions] ([action_id], [condition_id], [application], [data], [type], [weight]) VALUES (161, 72, N'answer', N'', N'action', 1610)
INSERT [dbo].[dialplan_actions] ([action_id], [condition_id], [application], [data], [type], [weight]) VALUES (162, 72, N'playback', N'tone_stream://%(10000,0,1004);loops=-1', N'action', 1620)
INSERT [dbo].[dialplan_actions] ([action_id], [condition_id], [application], [data], [type], [weight]) VALUES (163, 73, N'answer', N'', N'action', 1630)
INSERT [dbo].[dialplan_actions] ([action_id], [condition_id], [application], [data], [type], [weight]) VALUES (164, 73, N'playback', N'tone_stream://path=${base_dir}/conf/tetris.ttml;loops=10', N'action', 1640)
INSERT [dbo].[dialplan_actions] ([action_id], [condition_id], [application], [data], [type], [weight]) VALUES (165, 75, N'answer', N'', N'action', 1650)
INSERT [dbo].[dialplan_actions] ([action_id], [condition_id], [application], [data], [type], [weight]) VALUES (166, 75, N'execute_extension', N'is_secure XML features', N'action', 1660)
INSERT [dbo].[dialplan_actions] ([action_id], [condition_id], [application], [data], [type], [weight]) VALUES (167, 75, N'playback', N'$${hold_music}', N'action', 1670)
INSERT [dbo].[dialplan_actions] ([action_id], [condition_id], [application], [data], [type], [weight]) VALUES (168, 75, N'answer', N'', N'anti-action', 1680)
INSERT [dbo].[dialplan_actions] ([action_id], [condition_id], [application], [data], [type], [weight]) VALUES (169, 75, N'playback', N'$${hold_music}', N'anti-action', 1690)
/****** Object:  Default [DF__carrier_g__prefi__014935CB]    Script Date: 02/21/2011 16:50:27 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__carrier_g__prefi__014935CB]') AND parent_object_id = OBJECT_ID(N'[dbo].[carrier_gateway]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__carrier_g__prefi__014935CB]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[carrier_gateway] ADD  DEFAULT ('') FOR [prefix]
END


End
GO
/****** Object:  Default [DF__carrier_g__suffi__023D5A04]    Script Date: 02/21/2011 16:50:27 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__carrier_g__suffi__023D5A04]') AND parent_object_id = OBJECT_ID(N'[dbo].[carrier_gateway]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__carrier_g__suffi__023D5A04]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[carrier_gateway] ADD  DEFAULT ('') FOR [suffix]
END


End
GO
/****** Object:  Default [DF__carrier_g__codec__03317E3D]    Script Date: 02/21/2011 16:50:27 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__carrier_g__codec__03317E3D]') AND parent_object_id = OBJECT_ID(N'[dbo].[carrier_gateway]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__carrier_g__codec__03317E3D]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[carrier_gateway] ADD  DEFAULT ('') FOR [codec]
END


End
GO
/****** Object:  Default [DF__carrier_g__enabl__0425A276]    Script Date: 02/21/2011 16:50:27 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__carrier_g__enabl__0425A276]') AND parent_object_id = OBJECT_ID(N'[dbo].[carrier_gateway]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__carrier_g__enabl__0425A276]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[carrier_gateway] ADD  DEFAULT ('1') FOR [enabled]
END


End
GO
/****** Object:  Default [DF__carriers__enable__060DEAE8]    Script Date: 02/21/2011 16:50:27 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__carriers__enable__060DEAE8]') AND parent_object_id = OBJECT_ID(N'[dbo].[carriers]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__carriers__enable__060DEAE8]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[carriers] ADD  DEFAULT ('1') FOR [enabled]
END


End
GO
/****** Object:  Default [DF__lcr__lead_strip__24927208]    Script Date: 02/21/2011 16:50:27 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__lcr__lead_strip__24927208]') AND parent_object_id = OBJECT_ID(N'[dbo].[lcr]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__lcr__lead_strip__24927208]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[lcr] ADD  DEFAULT ((0)) FOR [lead_strip]
END


End
GO
/****** Object:  Default [DF__lcr__trail_strip__25869641]    Script Date: 02/21/2011 16:50:27 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__lcr__trail_strip__25869641]') AND parent_object_id = OBJECT_ID(N'[dbo].[lcr]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__lcr__trail_strip__25869641]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[lcr] ADD  DEFAULT ((0)) FOR [trail_strip]
END


End
GO
/****** Object:  Default [DF__lcr__prefix__267ABA7A]    Script Date: 02/21/2011 16:50:27 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__lcr__prefix__267ABA7A]') AND parent_object_id = OBJECT_ID(N'[dbo].[lcr]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__lcr__prefix__267ABA7A]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[lcr] ADD  DEFAULT ('') FOR [prefix]
END


End
GO
/****** Object:  Default [DF__lcr__suffix__276EDEB3]    Script Date: 02/21/2011 16:50:27 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__lcr__suffix__276EDEB3]') AND parent_object_id = OBJECT_ID(N'[dbo].[lcr]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__lcr__suffix__276EDEB3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[lcr] ADD  DEFAULT ('') FOR [suffix]
END


End
GO
/****** Object:  Default [DF__lcr__lcr_profile__286302EC]    Script Date: 02/21/2011 16:50:27 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__lcr__lcr_profile__286302EC]') AND parent_object_id = OBJECT_ID(N'[dbo].[lcr]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__lcr__lcr_profile__286302EC]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[lcr] ADD  DEFAULT ((0)) FOR [lcr_profile]
END


End
GO
/****** Object:  Default [DF__lcr__date_start__29572725]    Script Date: 02/21/2011 16:50:27 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__lcr__date_start__29572725]') AND parent_object_id = OBJECT_ID(N'[dbo].[lcr]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__lcr__date_start__29572725]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[lcr] ADD  DEFAULT ('1970-01-01 00:00:00-05') FOR [date_start]
END


End
GO
/****** Object:  Default [DF__lcr__date_end__2A4B4B5E]    Script Date: 02/21/2011 16:50:27 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__lcr__date_end__2A4B4B5E]') AND parent_object_id = OBJECT_ID(N'[dbo].[lcr]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__lcr__date_end__2A4B4B5E]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[lcr] ADD  DEFAULT ('2030-12-31 00:00:00-05') FOR [date_end]
END


End
GO
/****** Object:  Default [DF__lcr__quality__2B3F6F97]    Script Date: 02/21/2011 16:50:27 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__lcr__quality__2B3F6F97]') AND parent_object_id = OBJECT_ID(N'[dbo].[lcr]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__lcr__quality__2B3F6F97]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[lcr] ADD  DEFAULT ((0)) FOR [quality]
END


End
GO
/****** Object:  Default [DF__lcr__reliability__2C3393D0]    Script Date: 02/21/2011 16:50:27 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__lcr__reliability__2C3393D0]') AND parent_object_id = OBJECT_ID(N'[dbo].[lcr]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__lcr__reliability__2C3393D0]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[lcr] ADD  DEFAULT ((0)) FOR [reliability]
END


End
GO
/****** Object:  Default [DF__lcr__cid__2D27B809]    Script Date: 02/21/2011 16:50:27 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__lcr__cid__2D27B809]') AND parent_object_id = OBJECT_ID(N'[dbo].[lcr]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__lcr__cid__2D27B809]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[lcr] ADD  DEFAULT ('') FOR [cid]
END


End
GO
/****** Object:  Default [DF__lcr__enabled__2E1BDC42]    Script Date: 02/21/2011 16:50:27 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__lcr__enabled__2E1BDC42]') AND parent_object_id = OBJECT_ID(N'[dbo].[lcr]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__lcr__enabled__2E1BDC42]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[lcr] ADD  DEFAULT ('1') FOR [enabled]
END


End
GO
/****** Object:  Default [DF__limit_dat__hostn__33D4B598]    Script Date: 02/21/2011 16:50:27 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__limit_dat__hostn__33D4B598]') AND parent_object_id = OBJECT_ID(N'[dbo].[limit_data]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__limit_dat__hostn__33D4B598]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[limit_data] ADD  DEFAULT (NULL) FOR [hostname]
END


End
GO
/****** Object:  Default [DF__limit_dat__realm__34C8D9D1]    Script Date: 02/21/2011 16:50:27 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__limit_dat__realm__34C8D9D1]') AND parent_object_id = OBJECT_ID(N'[dbo].[limit_data]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__limit_dat__realm__34C8D9D1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[limit_data] ADD  DEFAULT (NULL) FOR [realm]
END


End
GO
/****** Object:  Default [DF__limit_data__id__35BCFE0A]    Script Date: 02/21/2011 16:50:27 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__limit_data__id__35BCFE0A]') AND parent_object_id = OBJECT_ID(N'[dbo].[limit_data]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__limit_data__id__35BCFE0A]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[limit_data] ADD  DEFAULT (NULL) FOR [id]
END


End
GO
/****** Object:  Default [DF__limit_data__uuid__36B12243]    Script Date: 02/21/2011 16:50:27 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__limit_data__uuid__36B12243]') AND parent_object_id = OBJECT_ID(N'[dbo].[limit_data]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__limit_data__uuid__36B12243]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[limit_data] ADD  DEFAULT (NULL) FOR [uuid]
END


End
GO
/****** Object:  Default [DF__post_load__load___3B75D760]    Script Date: 02/21/2011 16:50:27 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__post_load__load___3B75D760]') AND parent_object_id = OBJECT_ID(N'[dbo].[post_load_modules_conf]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__post_load__load___3B75D760]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[post_load_modules_conf] ADD  DEFAULT ('1') FOR [load_module]
END


End
GO
/****** Object:  Default [DF__post_load__prior__3C69FB99]    Script Date: 02/21/2011 16:50:27 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__post_load__prior__3C69FB99]') AND parent_object_id = OBJECT_ID(N'[dbo].[post_load_modules_conf]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__post_load__prior__3C69FB99]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[post_load_modules_conf] ADD  DEFAULT ((1000)) FOR [priority]
END


End
GO
/****** Object:  Default [DF__rss_conf__priori__3E52440B]    Script Date: 02/21/2011 16:50:27 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__rss_conf__priori__3E52440B]') AND parent_object_id = OBJECT_ID(N'[dbo].[rss_conf]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__rss_conf__priori__3E52440B]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[rss_conf] ADD  DEFAULT ((1000)) FOR [priority]
END


End
GO
/****** Object:  Default [DF__sofia_dom__parse__48CFD27E]    Script Date: 02/21/2011 16:50:27 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__sofia_dom__parse__48CFD27E]') AND parent_object_id = OBJECT_ID(N'[dbo].[sofia_domains]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__sofia_dom__parse__48CFD27E]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[sofia_domains] ADD  DEFAULT ('0') FOR [parse]
END


End
GO
/****** Object:  ForeignKey [acl_nodes_list_id_fkey]    Script Date: 02/21/2011 16:50:27 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[acl_nodes_list_id_fkey]') AND parent_object_id = OBJECT_ID(N'[dbo].[acl_nodes]'))
ALTER TABLE [dbo].[acl_nodes]  WITH CHECK ADD  CONSTRAINT [acl_nodes_list_id_fkey] FOREIGN KEY([list_id])
REFERENCES [dbo].[acl_lists] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[acl_nodes_list_id_fkey]') AND parent_object_id = OBJECT_ID(N'[dbo].[acl_nodes]'))
ALTER TABLE [dbo].[acl_nodes] CHECK CONSTRAINT [acl_nodes_list_id_fkey]
GO
/****** Object:  ForeignKey [carrier_gateway_carrier_id_fkey]    Script Date: 02/21/2011 16:50:27 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[carrier_gateway_carrier_id_fkey]') AND parent_object_id = OBJECT_ID(N'[dbo].[carrier_gateway]'))
ALTER TABLE [dbo].[carrier_gateway]  WITH CHECK ADD  CONSTRAINT [carrier_gateway_carrier_id_fkey] FOREIGN KEY([carrier_id])
REFERENCES [dbo].[carriers] ([id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[carrier_gateway_carrier_id_fkey]') AND parent_object_id = OBJECT_ID(N'[dbo].[carrier_gateway]'))
ALTER TABLE [dbo].[carrier_gateway] CHECK CONSTRAINT [carrier_gateway_carrier_id_fkey]
GO
/****** Object:  ForeignKey [dialplan_actions_condition_id_fkey]    Script Date: 02/21/2011 16:50:27 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[dialplan_actions_condition_id_fkey]') AND parent_object_id = OBJECT_ID(N'[dbo].[dialplan_actions]'))
ALTER TABLE [dbo].[dialplan_actions]  WITH CHECK ADD  CONSTRAINT [dialplan_actions_condition_id_fkey] FOREIGN KEY([condition_id])
REFERENCES [dbo].[dialplan_condition] ([condition_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[dialplan_actions_condition_id_fkey]') AND parent_object_id = OBJECT_ID(N'[dbo].[dialplan_actions]'))
ALTER TABLE [dbo].[dialplan_actions] CHECK CONSTRAINT [dialplan_actions_condition_id_fkey]
GO
/****** Object:  ForeignKey [dialplan_condition_extension_id_fkey]    Script Date: 02/21/2011 16:50:27 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[dialplan_condition_extension_id_fkey]') AND parent_object_id = OBJECT_ID(N'[dbo].[dialplan_condition]'))
ALTER TABLE [dbo].[dialplan_condition]  WITH CHECK ADD  CONSTRAINT [dialplan_condition_extension_id_fkey] FOREIGN KEY([extension_id])
REFERENCES [dbo].[dialplan_extension] ([extension_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[dialplan_condition_extension_id_fkey]') AND parent_object_id = OBJECT_ID(N'[dbo].[dialplan_condition]'))
ALTER TABLE [dbo].[dialplan_condition] CHECK CONSTRAINT [dialplan_condition_extension_id_fkey]
GO
/****** Object:  ForeignKey [dialplan_context_dialplan_id_fkey]    Script Date: 02/21/2011 16:50:27 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[dialplan_context_dialplan_id_fkey]') AND parent_object_id = OBJECT_ID(N'[dbo].[dialplan_context]'))
ALTER TABLE [dbo].[dialplan_context]  WITH CHECK ADD  CONSTRAINT [dialplan_context_dialplan_id_fkey] FOREIGN KEY([dialplan_id])
REFERENCES [dbo].[dialplan] ([dialplan_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[dialplan_context_dialplan_id_fkey]') AND parent_object_id = OBJECT_ID(N'[dbo].[dialplan_context]'))
ALTER TABLE [dbo].[dialplan_context] CHECK CONSTRAINT [dialplan_context_dialplan_id_fkey]
GO
/****** Object:  ForeignKey [dialplan_extension_context_id_fkey]    Script Date: 02/21/2011 16:50:27 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[dialplan_extension_context_id_fkey]') AND parent_object_id = OBJECT_ID(N'[dbo].[dialplan_extension]'))
ALTER TABLE [dbo].[dialplan_extension]  WITH CHECK ADD  CONSTRAINT [dialplan_extension_context_id_fkey] FOREIGN KEY([context_id])
REFERENCES [dbo].[dialplan_context] ([context_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[dialplan_extension_context_id_fkey]') AND parent_object_id = OBJECT_ID(N'[dbo].[dialplan_extension]'))
ALTER TABLE [dbo].[dialplan_extension] CHECK CONSTRAINT [dialplan_extension_context_id_fkey]
GO
/****** Object:  ForeignKey [dingaling_profile_params_dingaling_id_fkey]    Script Date: 02/21/2011 16:50:27 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[dingaling_profile_params_dingaling_id_fkey]') AND parent_object_id = OBJECT_ID(N'[dbo].[dingaling_profile_params]'))
ALTER TABLE [dbo].[dingaling_profile_params]  WITH CHECK ADD  CONSTRAINT [dingaling_profile_params_dingaling_id_fkey] FOREIGN KEY([dingaling_id])
REFERENCES [dbo].[dingaling_profiles] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[dingaling_profile_params_dingaling_id_fkey]') AND parent_object_id = OBJECT_ID(N'[dbo].[dingaling_profile_params]'))
ALTER TABLE [dbo].[dingaling_profile_params] CHECK CONSTRAINT [dingaling_profile_params_dingaling_id_fkey]
GO
/****** Object:  ForeignKey [directory_gateway_params_d_gw_id_fkey]    Script Date: 02/21/2011 16:50:27 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[directory_gateway_params_d_gw_id_fkey]') AND parent_object_id = OBJECT_ID(N'[dbo].[directory_gateway_params]'))
ALTER TABLE [dbo].[directory_gateway_params]  WITH CHECK ADD  CONSTRAINT [directory_gateway_params_d_gw_id_fkey] FOREIGN KEY([d_gw_id])
REFERENCES [dbo].[directory_gateways] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[directory_gateway_params_d_gw_id_fkey]') AND parent_object_id = OBJECT_ID(N'[dbo].[directory_gateway_params]'))
ALTER TABLE [dbo].[directory_gateway_params] CHECK CONSTRAINT [directory_gateway_params_d_gw_id_fkey]
GO
/****** Object:  ForeignKey [directory_gateways_directory_id_fkey]    Script Date: 02/21/2011 16:50:27 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[directory_gateways_directory_id_fkey]') AND parent_object_id = OBJECT_ID(N'[dbo].[directory_gateways]'))
ALTER TABLE [dbo].[directory_gateways]  WITH CHECK ADD  CONSTRAINT [directory_gateways_directory_id_fkey] FOREIGN KEY([directory_id])
REFERENCES [dbo].[directory] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[directory_gateways_directory_id_fkey]') AND parent_object_id = OBJECT_ID(N'[dbo].[directory_gateways]'))
ALTER TABLE [dbo].[directory_gateways] CHECK CONSTRAINT [directory_gateways_directory_id_fkey]
GO
/****** Object:  ForeignKey [directory_global_params_directory_id_fkey1]    Script Date: 02/21/2011 16:50:27 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[directory_global_params_directory_id_fkey1]') AND parent_object_id = OBJECT_ID(N'[dbo].[directory_global_params]'))
ALTER TABLE [dbo].[directory_global_params]  WITH CHECK ADD  CONSTRAINT [directory_global_params_directory_id_fkey1] FOREIGN KEY([domain_id])
REFERENCES [dbo].[directory_domains] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[directory_global_params_directory_id_fkey1]') AND parent_object_id = OBJECT_ID(N'[dbo].[directory_global_params]'))
ALTER TABLE [dbo].[directory_global_params] CHECK CONSTRAINT [directory_global_params_directory_id_fkey1]
GO
/****** Object:  ForeignKey [directory_global_vars_directory_id_fkey1]    Script Date: 02/21/2011 16:50:27 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[directory_global_vars_directory_id_fkey1]') AND parent_object_id = OBJECT_ID(N'[dbo].[directory_global_vars]'))
ALTER TABLE [dbo].[directory_global_vars]  WITH CHECK ADD  CONSTRAINT [directory_global_vars_directory_id_fkey1] FOREIGN KEY([domain_id])
REFERENCES [dbo].[directory_domains] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[directory_global_vars_directory_id_fkey1]') AND parent_object_id = OBJECT_ID(N'[dbo].[directory_global_vars]'))
ALTER TABLE [dbo].[directory_global_vars] CHECK CONSTRAINT [directory_global_vars_directory_id_fkey1]
GO
/****** Object:  ForeignKey [directory_group_user_map_group_id_fkey]    Script Date: 02/21/2011 16:50:27 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[directory_group_user_map_group_id_fkey]') AND parent_object_id = OBJECT_ID(N'[dbo].[directory_group_user_map]'))
ALTER TABLE [dbo].[directory_group_user_map]  WITH CHECK ADD  CONSTRAINT [directory_group_user_map_group_id_fkey] FOREIGN KEY([group_id])
REFERENCES [dbo].[directory_groups] ([group_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[directory_group_user_map_group_id_fkey]') AND parent_object_id = OBJECT_ID(N'[dbo].[directory_group_user_map]'))
ALTER TABLE [dbo].[directory_group_user_map] CHECK CONSTRAINT [directory_group_user_map_group_id_fkey]
GO
/****** Object:  ForeignKey [directory_group_user_map_user_id_fkey]    Script Date: 02/21/2011 16:50:27 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[directory_group_user_map_user_id_fkey]') AND parent_object_id = OBJECT_ID(N'[dbo].[directory_group_user_map]'))
ALTER TABLE [dbo].[directory_group_user_map]  WITH CHECK ADD  CONSTRAINT [directory_group_user_map_user_id_fkey] FOREIGN KEY([user_id])
REFERENCES [dbo].[directory] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[directory_group_user_map_user_id_fkey]') AND parent_object_id = OBJECT_ID(N'[dbo].[directory_group_user_map]'))
ALTER TABLE [dbo].[directory_group_user_map] CHECK CONSTRAINT [directory_group_user_map_user_id_fkey]
GO
/****** Object:  ForeignKey [directory_params_directory_id_fkey]    Script Date: 02/21/2011 16:50:27 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[directory_params_directory_id_fkey]') AND parent_object_id = OBJECT_ID(N'[dbo].[directory_params]'))
ALTER TABLE [dbo].[directory_params]  WITH CHECK ADD  CONSTRAINT [directory_params_directory_id_fkey] FOREIGN KEY([directory_id])
REFERENCES [dbo].[directory] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[directory_params_directory_id_fkey]') AND parent_object_id = OBJECT_ID(N'[dbo].[directory_params]'))
ALTER TABLE [dbo].[directory_params] CHECK CONSTRAINT [directory_params_directory_id_fkey]
GO
/****** Object:  ForeignKey [directory_vars_directory_id_fkey]    Script Date: 02/21/2011 16:50:27 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[directory_vars_directory_id_fkey]') AND parent_object_id = OBJECT_ID(N'[dbo].[directory_vars]'))
ALTER TABLE [dbo].[directory_vars]  WITH CHECK ADD  CONSTRAINT [directory_vars_directory_id_fkey] FOREIGN KEY([directory_id])
REFERENCES [dbo].[directory] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[directory_vars_directory_id_fkey]') AND parent_object_id = OBJECT_ID(N'[dbo].[directory_vars]'))
ALTER TABLE [dbo].[directory_vars] CHECK CONSTRAINT [directory_vars_directory_id_fkey]
GO
/****** Object:  ForeignKey [iax_settings_iax_id_fkey]    Script Date: 02/21/2011 16:50:27 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[iax_settings_iax_id_fkey]') AND parent_object_id = OBJECT_ID(N'[dbo].[iax_settings]'))
ALTER TABLE [dbo].[iax_settings]  WITH CHECK ADD  CONSTRAINT [iax_settings_iax_id_fkey] FOREIGN KEY([iax_id])
REFERENCES [dbo].[iax_conf] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[iax_settings_iax_id_fkey]') AND parent_object_id = OBJECT_ID(N'[dbo].[iax_settings]'))
ALTER TABLE [dbo].[iax_settings] CHECK CONSTRAINT [iax_settings_iax_id_fkey]
GO
/****** Object:  ForeignKey [ivr_entries_ivr_id_fkey]    Script Date: 02/21/2011 16:50:27 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ivr_entries_ivr_id_fkey]') AND parent_object_id = OBJECT_ID(N'[dbo].[ivr_entries]'))
ALTER TABLE [dbo].[ivr_entries]  WITH CHECK ADD  CONSTRAINT [ivr_entries_ivr_id_fkey] FOREIGN KEY([ivr_id])
REFERENCES [dbo].[ivr_conf] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ivr_entries_ivr_id_fkey]') AND parent_object_id = OBJECT_ID(N'[dbo].[ivr_entries]'))
ALTER TABLE [dbo].[ivr_entries] CHECK CONSTRAINT [ivr_entries_ivr_id_fkey]
GO
/****** Object:  ForeignKey [lcr_carrier_id_fkey]    Script Date: 02/21/2011 16:50:27 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[lcr_carrier_id_fkey]') AND parent_object_id = OBJECT_ID(N'[dbo].[lcr]'))
ALTER TABLE [dbo].[lcr]  WITH CHECK ADD  CONSTRAINT [lcr_carrier_id_fkey] FOREIGN KEY([carrier_id])
REFERENCES [dbo].[carriers] ([id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[lcr_carrier_id_fkey]') AND parent_object_id = OBJECT_ID(N'[dbo].[lcr]'))
ALTER TABLE [dbo].[lcr] CHECK CONSTRAINT [lcr_carrier_id_fkey]
GO
/****** Object:  ForeignKey [lcr_profile]    Script Date: 02/21/2011 16:50:27 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[lcr_profile]') AND parent_object_id = OBJECT_ID(N'[dbo].[lcr]'))
ALTER TABLE [dbo].[lcr]  WITH CHECK ADD  CONSTRAINT [lcr_profile] FOREIGN KEY([lcr_profile])
REFERENCES [dbo].[lcr_profiles] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[lcr_profile]') AND parent_object_id = OBJECT_ID(N'[dbo].[lcr]'))
ALTER TABLE [dbo].[lcr] CHECK CONSTRAINT [lcr_profile]
GO
/****** Object:  ForeignKey [lcr_settings_lcr_id_fkey]    Script Date: 02/21/2011 16:50:27 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[lcr_settings_lcr_id_fkey]') AND parent_object_id = OBJECT_ID(N'[dbo].[lcr_settings]'))
ALTER TABLE [dbo].[lcr_settings]  WITH CHECK ADD  CONSTRAINT [lcr_settings_lcr_id_fkey] FOREIGN KEY([lcr_id])
REFERENCES [dbo].[lcr_profiles] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[lcr_settings_lcr_id_fkey]') AND parent_object_id = OBJECT_ID(N'[dbo].[lcr_settings]'))
ALTER TABLE [dbo].[lcr_settings] CHECK CONSTRAINT [lcr_settings_lcr_id_fkey]
GO
/****** Object:  ForeignKey [sofia_aliases_sofia_id_fkey]    Script Date: 02/21/2011 16:50:27 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[sofia_aliases_sofia_id_fkey]') AND parent_object_id = OBJECT_ID(N'[dbo].[sofia_aliases]'))
ALTER TABLE [dbo].[sofia_aliases]  WITH CHECK ADD  CONSTRAINT [sofia_aliases_sofia_id_fkey] FOREIGN KEY([sofia_id])
REFERENCES [dbo].[sofia_conf] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[sofia_aliases_sofia_id_fkey]') AND parent_object_id = OBJECT_ID(N'[dbo].[sofia_aliases]'))
ALTER TABLE [dbo].[sofia_aliases] CHECK CONSTRAINT [sofia_aliases_sofia_id_fkey]
GO
/****** Object:  ForeignKey [sofia_domains_sofia_id_fkey]    Script Date: 02/21/2011 16:50:27 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[sofia_domains_sofia_id_fkey]') AND parent_object_id = OBJECT_ID(N'[dbo].[sofia_domains]'))
ALTER TABLE [dbo].[sofia_domains]  WITH CHECK ADD  CONSTRAINT [sofia_domains_sofia_id_fkey] FOREIGN KEY([sofia_id])
REFERENCES [dbo].[sofia_conf] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[sofia_domains_sofia_id_fkey]') AND parent_object_id = OBJECT_ID(N'[dbo].[sofia_domains]'))
ALTER TABLE [dbo].[sofia_domains] CHECK CONSTRAINT [sofia_domains_sofia_id_fkey]
GO
/****** Object:  ForeignKey [sofia_gateways_sofia_id_fkey]    Script Date: 02/21/2011 16:50:27 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[sofia_gateways_sofia_id_fkey]') AND parent_object_id = OBJECT_ID(N'[dbo].[sofia_gateways]'))
ALTER TABLE [dbo].[sofia_gateways]  WITH CHECK ADD  CONSTRAINT [sofia_gateways_sofia_id_fkey] FOREIGN KEY([sofia_id])
REFERENCES [dbo].[sofia_conf] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[sofia_gateways_sofia_id_fkey]') AND parent_object_id = OBJECT_ID(N'[dbo].[sofia_gateways]'))
ALTER TABLE [dbo].[sofia_gateways] CHECK CONSTRAINT [sofia_gateways_sofia_id_fkey]
GO
/****** Object:  ForeignKey [sofia_settings_sofia_id_fkey]    Script Date: 02/21/2011 16:50:27 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[sofia_settings_sofia_id_fkey]') AND parent_object_id = OBJECT_ID(N'[dbo].[sofia_settings]'))
ALTER TABLE [dbo].[sofia_settings]  WITH CHECK ADD  CONSTRAINT [sofia_settings_sofia_id_fkey] FOREIGN KEY([sofia_id])
REFERENCES [dbo].[sofia_conf] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[sofia_settings_sofia_id_fkey]') AND parent_object_id = OBJECT_ID(N'[dbo].[sofia_settings]'))
ALTER TABLE [dbo].[sofia_settings] CHECK CONSTRAINT [sofia_settings_sofia_id_fkey]
GO
/****** Object:  ForeignKey [voicemail_email_voicemail_id_fkey]    Script Date: 02/21/2011 16:50:27 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[voicemail_email_voicemail_id_fkey]') AND parent_object_id = OBJECT_ID(N'[dbo].[voicemail_email]'))
ALTER TABLE [dbo].[voicemail_email]  WITH CHECK ADD  CONSTRAINT [voicemail_email_voicemail_id_fkey] FOREIGN KEY([voicemail_id])
REFERENCES [dbo].[voicemail_conf] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[voicemail_email_voicemail_id_fkey]') AND parent_object_id = OBJECT_ID(N'[dbo].[voicemail_email]'))
ALTER TABLE [dbo].[voicemail_email] CHECK CONSTRAINT [voicemail_email_voicemail_id_fkey]
GO
/****** Object:  ForeignKey [voicemail_settings_voicemail_id_fkey]    Script Date: 02/21/2011 16:50:27 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[voicemail_settings_voicemail_id_fkey]') AND parent_object_id = OBJECT_ID(N'[dbo].[voicemail_settings]'))
ALTER TABLE [dbo].[voicemail_settings]  WITH CHECK ADD  CONSTRAINT [voicemail_settings_voicemail_id_fkey] FOREIGN KEY([voicemail_id])
REFERENCES [dbo].[voicemail_conf] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[voicemail_settings_voicemail_id_fkey]') AND parent_object_id = OBJECT_ID(N'[dbo].[voicemail_settings]'))
ALTER TABLE [dbo].[voicemail_settings] CHECK CONSTRAINT [voicemail_settings_voicemail_id_fkey]
GO
