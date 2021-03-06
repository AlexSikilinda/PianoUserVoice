﻿USE [PianoUserVoice]
GO
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'39c6d776-fbec-4c38-b3fd-d7aa95ef0666', N'test2@gmail.com', 0, N'ABg2p7MO97kUi+dGvAeCvSJQ3Ouq/llv96y3uRUqRJk6zGc9D1FiHvosD7u16b4FIw==', N'6b7bac46-f268-449d-8415-4aa9a97bfb27', NULL, 0, 0, NULL, 1, 0, N'test2@gmail.com')
GO
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'3cf6cf8f-d2fe-477b-8ea8-6440692e69cd', N'test3@gmail.com', 0, N'AEk07gupO0/9tadyfbx18ru+JEXBnKYydcMAhSMjYosAgrKQ405F570XhMSBMx9OeA==', N'2058da05-a6dc-427a-b050-788c81ec2fb0', NULL, 0, 0, NULL, 1, 0, N'test3@gmail.com')
GO
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'65586021-87e0-4d28-a784-e7be0f7d6dee', N'dimonser147@gmail.com', 0, N'AKZpNgJxcLiWsRBsomELgyTqTG/Wzy5eoF5GKkWj0BfM6eJTuUOiV3Nka9G4kXQfTg==', N'3aa9877d-8881-46a0-b876-fa395ae7c0b0', NULL, 0, 0, NULL, 1, 0, N'dimonser147@gmail.com')
GO
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'889086f6-709a-4066-85bd-e7fd283ac785', N'test6@gmail.com', 0, N'AD3/Q9dJZhZH1IgJyT17aTWU0rWdfC7m86zhmERc43djTBtaBvEcli/zQDZU5tqb4Q==', N'3730e5c4-df60-4dfa-80ac-f653b0d416a0', NULL, 0, 0, NULL, 1, 0, N'test6@gmail.com')
GO
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'a27c0583-db82-4b8a-b348-67cfaf42e432', N'test1@gmail.com', 0, N'ABdI5kulBwjFe9BLXN6Jeat6SBdftmQIFYxZU6Sxf+r7j9p4JdM/Dp0qMBUgHIJXUA==', N'70d393ab-c133-4b9e-94d7-d17ded434ab3', NULL, 0, 0, NULL, 1, 0, N'test1@gmail.com')
GO
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'af120c35-6f0e-48bb-b6b7-e6f6077dee6c', N'test4@gmail.com', 0, N'ANidijVqyXrMCLbgItWypADzGefU2UQOByPmJFq2Om3vsxuHPR3LfIEPSY7zIpexHA==', N'e97a9b5b-874d-4b97-b71e-bfb6a11c78b4', NULL, 0, 0, NULL, 1, 0, N'test4@gmail.com')
GO
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'df843652-e476-4a06-8c71-762b25e417b0', N'test5@gmail.com', 0, N'AEuiGeDBUtitqBBDmzLjr2e15T04y4k7xvN89H4JlIlC0QkVJ0Vdbu3xII7I9V3RpA==', N'4148d20d-cdef-4cfe-a363-0d69ebe755cb', NULL, 0, 0, NULL, 1, 0, N'test5@gmail.com')
GO
SET IDENTITY_INSERT [dbo].[SongStatuses] ON 

GO
INSERT [dbo].[SongStatuses] ([Id], [Title]) VALUES (1, N'Unknown')
GO
INSERT [dbo].[SongStatuses] ([Id], [Title]) VALUES (2, N'Under Review')
GO
INSERT [dbo].[SongStatuses] ([Id], [Title]) VALUES (3, N'Started')
GO
INSERT [dbo].[SongStatuses] ([Id], [Title]) VALUES (4, N'Completed')
GO
INSERT [dbo].[SongStatuses] ([Id], [Title]) VALUES (5, N'Declined')
GO
SET IDENTITY_INSERT [dbo].[SongStatuses] OFF
GO
SET IDENTITY_INSERT [dbo].[Songs] ON 

GO
INSERT [dbo].[Songs] ([Id], [Title], [Description], [CreatedAt], [UserId], [StatusId]) VALUES (1, N'Mann''s Chinese', N'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras in fringilla magna. In hac habitasse.', CAST(N'2016-09-21T12:28:29.863' AS DateTime), N'39c6d776-fbec-4c38-b3fd-d7aa95ef0666', 1)
GO
INSERT [dbo].[Songs] ([Id], [Title], [Description], [CreatedAt], [UserId], [StatusId]) VALUES (3, N'The Road Home', N'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras in fringilla magna. In hac habitasse.', CAST(N'2016-09-21T12:28:47.387' AS DateTime), N'39c6d776-fbec-4c38-b3fd-d7aa95ef0666', 1)
GO
INSERT [dbo].[Songs] ([Id], [Title], [Description], [CreatedAt], [UserId], [StatusId]) VALUES (4, N'The Color Decays', N'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras in fringilla magna. In hac habitasse.', CAST(N'2016-09-21T12:29:04.847' AS DateTime), N'39c6d776-fbec-4c38-b3fd-d7aa95ef0666', 2)
GO
INSERT [dbo].[Songs] ([Id], [Title], [Description], [CreatedAt], [UserId], [StatusId]) VALUES (5, N'What About You', N'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras in fringilla magna. In hac habitasse.', CAST(N'2016-09-21T12:29:21.543' AS DateTime), N'39c6d776-fbec-4c38-b3fd-d7aa95ef0666', 1)
GO
INSERT [dbo].[Songs] ([Id], [Title], [Description], [CreatedAt], [UserId], [StatusId]) VALUES (6, N'Raining on the Sky', N'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras in fringilla magna. In hac habitasse.', CAST(N'2016-09-21T12:29:41.513' AS DateTime), N'3cf6cf8f-d2fe-477b-8ea8-6440692e69cd', 1)
GO
INSERT [dbo].[Songs] ([Id], [Title], [Description], [CreatedAt], [UserId], [StatusId]) VALUES (7, N'Raining on the Sky', N'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras in fringilla magna. In hac habitasse.', CAST(N'2016-09-21T12:29:41.513' AS DateTime), N'3cf6cf8f-d2fe-477b-8ea8-6440692e69cd', 1)
GO
INSERT [dbo].[Songs] ([Id], [Title], [Description], [CreatedAt], [UserId], [StatusId]) VALUES (8, N'Raining on the Sky', N'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras in fringilla magna. In hac habitasse.', CAST(N'2016-09-21T12:29:41.513' AS DateTime), N'3cf6cf8f-d2fe-477b-8ea8-6440692e69cd', 1)
GO
INSERT [dbo].[Songs] ([Id], [Title], [Description], [CreatedAt], [UserId], [StatusId]) VALUES (9, N'Raining on the Sky', N'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras in fringilla magna. In hac habitasse.', CAST(N'2016-09-21T12:29:41.513' AS DateTime), N'3cf6cf8f-d2fe-477b-8ea8-6440692e69cd', 1)
GO
INSERT [dbo].[Songs] ([Id], [Title], [Description], [CreatedAt], [UserId], [StatusId]) VALUES (10, N'Raining on the Sky', N'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras in fringilla magna. In hac habitasse.', CAST(N'2016-09-21T12:29:41.513' AS DateTime), N'3cf6cf8f-d2fe-477b-8ea8-6440692e69cd', 1)
GO
INSERT [dbo].[Songs] ([Id], [Title], [Description], [CreatedAt], [UserId], [StatusId]) VALUES (11, N'Raining on the Sky', N'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras in fringilla magna. In hac habitasse.', CAST(N'2016-09-21T12:29:41.513' AS DateTime), N'3cf6cf8f-d2fe-477b-8ea8-6440692e69cd', 1)
GO
INSERT [dbo].[Songs] ([Id], [Title], [Description], [CreatedAt], [UserId], [StatusId]) VALUES (12, N'Raining on the Sky', N'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras in fringilla magna. In hac habitasse.', CAST(N'2016-09-21T12:29:41.513' AS DateTime), N'3cf6cf8f-d2fe-477b-8ea8-6440692e69cd', 1)
GO
INSERT [dbo].[Songs] ([Id], [Title], [Description], [CreatedAt], [UserId], [StatusId]) VALUES (13, N'Raining on the Sky', N'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras in fringilla magna. In hac habitasse.', CAST(N'2016-09-21T12:29:41.513' AS DateTime), N'3cf6cf8f-d2fe-477b-8ea8-6440692e69cd', 1)
GO
INSERT [dbo].[Songs] ([Id], [Title], [Description], [CreatedAt], [UserId], [StatusId]) VALUES (14, N'Raining on the Sky', N'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras in fringilla magna. In hac habitasse.', CAST(N'2016-09-21T12:29:41.513' AS DateTime), N'3cf6cf8f-d2fe-477b-8ea8-6440692e69cd', 1)
GO
INSERT [dbo].[Songs] ([Id], [Title], [Description], [CreatedAt], [UserId], [StatusId]) VALUES (15, N'Raining on the Sky', N'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras in fringilla magna. In hac habitasse.', CAST(N'2016-09-21T12:29:41.513' AS DateTime), N'3cf6cf8f-d2fe-477b-8ea8-6440692e69cd', 1)
GO
INSERT [dbo].[Songs] ([Id], [Title], [Description], [CreatedAt], [UserId], [StatusId]) VALUES (16, N'Raining on the Sky', N'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras in fringilla magna. In hac habitasse.', CAST(N'2016-09-21T12:29:41.513' AS DateTime), N'3cf6cf8f-d2fe-477b-8ea8-6440692e69cd', 1)
GO
INSERT [dbo].[Songs] ([Id], [Title], [Description], [CreatedAt], [UserId], [StatusId]) VALUES (17, N'Raining on the Sky', N'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras in fringilla magna. In hac habitasse.', CAST(N'2016-09-21T12:29:41.513' AS DateTime), N'3cf6cf8f-d2fe-477b-8ea8-6440692e69cd', 1)
GO
INSERT [dbo].[Songs] ([Id], [Title], [Description], [CreatedAt], [UserId], [StatusId]) VALUES (18, N'Raining on the Sky', N'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras in fringilla magna. In hac habitasse.', CAST(N'2016-09-21T12:29:41.513' AS DateTime), N'3cf6cf8f-d2fe-477b-8ea8-6440692e69cd', 1)
GO
INSERT [dbo].[Songs] ([Id], [Title], [Description], [CreatedAt], [UserId], [StatusId]) VALUES (19, N'Raining on the Sky', N'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras in fringilla magna. In hac habitasse.', CAST(N'2016-09-21T12:29:41.513' AS DateTime), N'3cf6cf8f-d2fe-477b-8ea8-6440692e69cd', 1)
GO
INSERT [dbo].[Songs] ([Id], [Title], [Description], [CreatedAt], [UserId], [StatusId]) VALUES (20, N'Raining on the Sky', N'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras in fringilla magna. In hac habitasse.', CAST(N'2016-09-21T12:29:41.513' AS DateTime), N'3cf6cf8f-d2fe-477b-8ea8-6440692e69cd', 1)
GO
INSERT [dbo].[Songs] ([Id], [Title], [Description], [CreatedAt], [UserId], [StatusId]) VALUES (21, N'Raining on the Sky', N'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras in fringilla magna. In hac habitasse.', CAST(N'2016-09-21T12:29:41.513' AS DateTime), N'3cf6cf8f-d2fe-477b-8ea8-6440692e69cd', 1)
GO
INSERT [dbo].[Songs] ([Id], [Title], [Description], [CreatedAt], [UserId], [StatusId]) VALUES (22, N'Raining on the Sky', N'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras in fringilla magna. In hac habitasse.', CAST(N'2016-09-21T12:29:41.513' AS DateTime), N'3cf6cf8f-d2fe-477b-8ea8-6440692e69cd', 1)
GO
INSERT [dbo].[Songs] ([Id], [Title], [Description], [CreatedAt], [UserId], [StatusId]) VALUES (23, N'Raining on the Sky', N'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras in fringilla magna. In hac habitasse.', CAST(N'2016-09-21T12:29:41.513' AS DateTime), N'3cf6cf8f-d2fe-477b-8ea8-6440692e69cd', 1)
GO
INSERT [dbo].[Songs] ([Id], [Title], [Description], [CreatedAt], [UserId], [StatusId]) VALUES (24, N'Raining on the Sky', N'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras in fringilla magna. In hac habitasse.', CAST(N'2016-09-21T12:29:41.513' AS DateTime), N'3cf6cf8f-d2fe-477b-8ea8-6440692e69cd', 1)
GO
INSERT [dbo].[Songs] ([Id], [Title], [Description], [CreatedAt], [UserId], [StatusId]) VALUES (25, N'Raining on the Sky', N'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras in fringilla magna. In hac habitasse.', CAST(N'2016-09-21T12:29:41.513' AS DateTime), N'3cf6cf8f-d2fe-477b-8ea8-6440692e69cd', 1)
GO
GO
SET IDENTITY_INSERT [dbo].[Songs] OFF
GO
INSERT [dbo].[SongVotes] ([SongId], [UserId]) VALUES (1, N'39c6d776-fbec-4c38-b3fd-d7aa95ef0666')
GO
INSERT [dbo].[SongVotes] ([SongId], [UserId]) VALUES (1, N'3cf6cf8f-d2fe-477b-8ea8-6440692e69cd')
GO
INSERT [dbo].[SongVotes] ([SongId], [UserId]) VALUES (1, N'65586021-87e0-4d28-a784-e7be0f7d6dee')
GO
INSERT [dbo].[SongVotes] ([SongId], [UserId]) VALUES (1, N'889086f6-709a-4066-85bd-e7fd283ac785')
GO
INSERT [dbo].[SongVotes] ([SongId], [UserId]) VALUES (1, N'af120c35-6f0e-48bb-b6b7-e6f6077dee6c')
GO
INSERT [dbo].[SongVotes] ([SongId], [UserId]) VALUES (1, N'df843652-e476-4a06-8c71-762b25e417b0')
GO
INSERT [dbo].[SongVotes] ([SongId], [UserId]) VALUES (3, N'3cf6cf8f-d2fe-477b-8ea8-6440692e69cd')
GO
INSERT [dbo].[SongVotes] ([SongId], [UserId]) VALUES (3, N'889086f6-709a-4066-85bd-e7fd283ac785')
GO
INSERT [dbo].[SongVotes] ([SongId], [UserId]) VALUES (3, N'af120c35-6f0e-48bb-b6b7-e6f6077dee6c')
GO
INSERT [dbo].[SongVotes] ([SongId], [UserId]) VALUES (4, N'39c6d776-fbec-4c38-b3fd-d7aa95ef0666')
GO
INSERT [dbo].[SongVotes] ([SongId], [UserId]) VALUES (4, N'3cf6cf8f-d2fe-477b-8ea8-6440692e69cd')
GO
INSERT [dbo].[SongVotes] ([SongId], [UserId]) VALUES (4, N'a27c0583-db82-4b8a-b348-67cfaf42e432')
GO
INSERT [dbo].[SongVotes] ([SongId], [UserId]) VALUES (5, N'39c6d776-fbec-4c38-b3fd-d7aa95ef0666')
GO
INSERT [dbo].[SongVotes] ([SongId], [UserId]) VALUES (5, N'3cf6cf8f-d2fe-477b-8ea8-6440692e69cd')
GO
INSERT [dbo].[SongVotes] ([SongId], [UserId]) VALUES (5, N'889086f6-709a-4066-85bd-e7fd283ac785')
GO
INSERT [dbo].[SongVotes] ([SongId], [UserId]) VALUES (5, N'a27c0583-db82-4b8a-b348-67cfaf42e432')
GO
INSERT [dbo].[SongVotes] ([SongId], [UserId]) VALUES (5, N'df843652-e476-4a06-8c71-762b25e417b0')
GO
INSERT [dbo].[SongVotes] ([SongId], [UserId]) VALUES (6, N'3cf6cf8f-d2fe-477b-8ea8-6440692e69cd')
GO
INSERT [dbo].[SongVotes] ([SongId], [UserId]) VALUES (6, N'65586021-87e0-4d28-a784-e7be0f7d6dee')
GO
INSERT [dbo].[SongVotes] ([SongId], [UserId]) VALUES (6, N'a27c0583-db82-4b8a-b348-67cfaf42e432')
GO
INSERT [dbo].[SongVotes] ([SongId], [UserId]) VALUES (6, N'af120c35-6f0e-48bb-b6b7-e6f6077dee6c')
GO
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'201609201150013_InitialCreate', N'PianoUserVoice.Models.ApplicationDbContext', 0x1F8B0800000000000400DD5C5B6FE336167E5F60FF83A0A7EE22B572D919CC06F60C5227E9069D5C30CE0CFA36A025DA2146A254894A1314FD657DE84FEA5FD8438992255E74B115DB290A1463F1F0E3E1E147F2F0F0307FFDF1E7F8C353E05B8F384E484827F6D1E8D0B63075438FD0E5C44ED9E2FB77F687F7FFFCC7F8C20B9EAC2F85DC0997839A3499D80F8C45A78E93B80F3840C928206E1C26E1828DDC307090173AC78787FF758E8E1C0C10366059D6F8534A190970F6037E4E43EAE288A5C8BF0E3DEC27E23B94CC3254EB06053889908B27F61D4134FC9CE0F84B485C3CCA2BD8D6994F102833C3FEC2B610A521430C543D05C9198B43BA9C45F001F9F7CF1106B905F2132CBA70BA12EFDA9BC363DE1B6755B18072D38485414FC0A313611E47AEBE9691EDD27C60C00B30347BE6BDCE8C38B1AF3C9C7DFA14FA6000B9C1D3A91F73E1897D5D3671964437988D8A8AA31CF23206B85FC3F8DBA88A786075AE7750D2E97874C8FF3BB0A6A9CFD2184F284E598CFC03EB2E9DFBC4FD093FDF87DF309D9C1CCD1727EFDEBC45DEC9DBFFE09337D59E425F41AEF6013EDDC5618463D00D2FCAFEDB9653AFE7C815CB6A953AB955804B30336CEB1A3D7DC474C91E60CE1CBFB3AD4BF284BDE28B20D7674A6022412516A7F0F326F57D34F77159EE34B6C9FFDFD0EAF19BB783B47A831EC9321B7AA97D3EC5605E7DC27E569A3C90289F5EB5F1FE2AC42EE330E0BFEBFCCA4BBFCEC23476796742A3C83D8A9798D5B51B3B2BF276A234871A9ED605EAFE539B6BAAD25B2BCA3BB4CE4C289AD8F66C28F47DD9763B33EE2C8A60F0326A718B34114EBB5F8D2400A0434D6C45A0A3AE04A2D0B1BFF37A781120E20FB020766805DC910589035CF6F28710E887686F9DEF5092C07AE0FD0F250F0DAAC33F07507D86DD34069ACE180AA2176FEDEE21A4F8260DE69CFDDB6B6BB0A1B9FF35BC442E0BE30BCA6B6D8CF73174BF8529BBA0DE3962F833730B40FEF39E04DD010651E7CC7571925C0299B1370DC1DB2E00AF283B39EE0DC717A65D3B24531F9140EF9148ABE9D74274E595E82514CFC420A6F34E9A54FD182E09EDA66A216A56359768555588F555958375D354489A15CD045AF5CCA506F3F7B2111ADEE1CB60F7DFE3DB6CF336AD051533CE6085C43F628A6358C6BC3BC4188EE96A04BAAC1BBB7016B2E1E38DBEF8DE94B5F405F9E9D04DAD351BB24560F8D990C1EEFF6CC8D484CF8FC4E35E49876350210CF09DE4F527ACF6392769B6EDE950EBE6B61BDFCE1A609A2E674912BA249B059A0098085FD4F5071FCE6A8F65E4BD91E321D031203AE15B1E7C81BED932A96EE939F631C3D6999B0708A7287191A79A113AE4F550ACD851358AADE22275E5FEADB4094CC731AF84F8212881994A2853A705A12E8990DF6A25A966C72D8CF7BD6C432E39C711A6BCC1564B74695C1F06E10A94ED4883D266A1B153615C33110D5EAB69CCDB5CD8D5B82BD189AD70B2C57736F052F86F2F42CC668B6D819CCD26E9A28031A4B70B828AB34A5702C807977D23A87462321054B8545B2168DD623B2068DD24AF8EA0F911B5EBF84BE7D57DA367FDA0BCFD6DBDD15C3BE066CD1E7B46CDDCF7843A0C6AE058A5E7F99C17E227A6399C819EE27C96085757A608079F61560FD9ACFC5DAD1FEA3483C8246A025C11AD05545C062A40CA84EAA15C11CB6BD44E78113D608BB85B23AC58FB25D80A0754ECEAA56845D07C752A93B3D3E9A3EC59C90685E49D0E0B151C0D21E4C5ABDEF10E4631C56555C374F185FB78C3958E89C16830508BE76A3052D199C1AD5450B3DD4A3A87AC8F4BB6919524F7C960A5A233835B4970B4DD481AA7A0875BB09189EA5BF84093AD887494BB4D593676F27429F161EC18F2AAC6D7288A085D56F2ACC4176B9627594DBF9FF54F3D0A720CC74D341948A5B6654B2C8CD1124BA5D034687A49E2849D2386E688C779A65EA08869F756C3F25F3459DD3ED5412CF681429AFF5B84CFB457F8B5ED56F54704CC257432E04E4D1649D750405FDDE2A96FC847B126783F0DFD34A0661FCB5C3BBFC2ABD6CFBFA8086347D25FF1A11483299E6EDDFA9DC6469D17C38D53E9C5AC3F56660893C50B1FB46A73935F6A4629C254551453E86A6763677267FA8E97EC2CF61FAE568497995D2243A50A203EF5C4A82439286095B2EEA8F53C942A66BDA43BA2946C5285948A7A68594D29A929592D580BCF6051BD44F716D424922ABA5ADA1D59934E5285D614AF81ADD1592EEB8EAAC938A9026B8ABB63AFD24FE475748FF72FE31166930D2C3FE86EB68319305E66511C6603ACDCE757812A9F7B62891B7B054C7CDF4B42194F7B9B102A0F716C4628038679FDA95D86D7979FC61B7C3366ED86BBB6C437DDF09BF1FAD1F645C9A19CF76491B2F5F2DC279DEFC6E2ACD5FEB846397CE522B6559811B6F7E784E160C40546B35FFCA94F305FCC0B816B44C902272CCFEAB08F0F8F8EA5C739FBF350C64912CFD79C554DAF65EA63B685042DFA8862F701C56ABAC4068F4956A04A24FA8A7AF86962FF96D53ACD821AFC5FD9E703EB2AF94CC92F2914DCC729B67E57D33F8749AE6F3E6DEDE95388EE56BDFAF96B5EF5C0BA8D61C69C5A87922DD719E1FA03895EDAE45537D066ED6713AF7742D55E236851A509B1FEE3833961833C3C28B4FC2E404FFFEAAB9AF671C146889A070443E10D6242D3038175B08C8F033CF8C9B2C701FD3AAB7F2CB08E6AC6870284F607939F09745F868A9A3BDC6A34C7A26D2C49999D5BD3AC37CAB9DCF5DEA464636F34D1D58CEB1E701B6455AFC18C5796903CD8EEA8C9371E0C7B97D47EF124E37DC92B5E657CEC369D789B19C40DF7437FABC4E13D4875D3A4EEEC3E3D78DB5C338572F73CC7B25F12F09E914D2474ED3ED577DB64338579F79C6CBD127AF78C6BBBDA3F77CCB4CE5BE8CED373D54C23C3958C2E16DC967E9B07CEE1843F0F8104B94799BF9AD4E77B35E5AAB634B81231376A4E34931B56268ED2AE22D1DC6CBFBE8A0DBFB1B342A6B959437A6653DB62FD6F6C5BC834B76D487ADC45E2B036ED5097CCDDB28E356543BDA644E15A4F5AF2D2DB7CD6C6FBF5D794173C88516AB3C77047FC7AD2800731C99053A747DAAF7ADD0B7B67E52F2EC2FE9D90E50A82FFFD458ADDDAAE59CA5CD145586CDE9246858814A1B9C60C79B0A59EC58C2C90CBA098C798B367DF59DC8EDF74CCB177456F5316A50CBA8C83B95F0B787127A0A9FD2CB7B9AEF3F836CAFE82C9105D0035098FCDDFD21F52E27BA5DE979A989001827B1722A2CBC792F1C8EEF2B944BA0969472061BED229BAC741E40358724B67E811AFA31BD0EF235E22F77915013481B40F44DDECE3738296310A1281B1AA0F3F81C35EF0F4FEFF546F200078540000, N'6.1.3-40302')
GO
SET IDENTITY_INSERT [dbo].[Songs] On
GO
insert [dbo].[Comments]  ([Text], [UserId], [SongId]) values ('Sample', N'af120c35-6f0e-48bb-b6b7-e6f6077dee6c', 1)
GO
insert [dbo].[Comments]  ([Text], [UserId], [SongId]) values ('Sample', N'af120c35-6f0e-48bb-b6b7-e6f6077dee6c', 2)
GO
insert [dbo].[Comments]  ([Text], [UserId], [SongId]) values ('Sample', N'af120c35-6f0e-48bb-b6b7-e6f6077dee6c', 3)
GO
insert [dbo].[Comments]  ([Text], [UserId], [SongId]) values ('Sample', N'a27c0583-db82-4b8a-b348-67cfaf42e432', 1)
GO
insert [dbo].[Comments]  ([Text], [UserId], [SongId]) values ('Sample', N'a27c0583-db82-4b8a-b348-67cfaf42e432', 2)
GO
insert [dbo].[Comments]  ([Text], [UserId], [SongId]) values ('Sample', N'a27c0583-db82-4b8a-b348-67cfaf42e432', 3)
GO
SET IDENTITY_INSERT [dbo].[Songs] OFF