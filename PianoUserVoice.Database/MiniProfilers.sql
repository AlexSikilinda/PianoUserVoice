 create table MiniProfilers
(
    RowId                                integer not null identity constraint PK_MiniProfilers primary key clustered, -- Need a clustered primary key for SQL Azure
    Id                                   uniqueidentifier not null, -- don't cluster on a guid
    RootTimingId                         uniqueidentifier null,
    Started                              datetime not null,
    DurationMilliseconds                 decimal(7, 1) not null,
    [User]                               nvarchar(100) null,
    HasUserViewed                        bit not null,
    MachineName                          nvarchar(100) null,
    CustomLinksJson                      nvarchar(max),
    ClientTimingsRedirectCount           int null
);
go
-- displaying results selects everything based on the main MiniProfilers.Id column
create unique nonclustered index IX_MiniProfilers_Id on MiniProfilers (Id)
go                
-- speeds up a query that is called on every .Stop()
create nonclustered index IX_MiniProfilers_User_HasUserViewed_Includes on MiniProfilers ([User], HasUserViewed) include (Id, [Started])   