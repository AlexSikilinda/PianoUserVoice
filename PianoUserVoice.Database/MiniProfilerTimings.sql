create table MiniProfilerTimings
(
    RowId                               integer not null identity constraint PK_MiniProfilerTimings primary key clustered,
    Id                                  uniqueidentifier not null,
    MiniProfilerId                      uniqueidentifier not null,
    ParentTimingId                      uniqueidentifier null,
    Name                                nvarchar(200) not null,
    DurationMilliseconds                decimal(9, 3) not null,
    StartMilliseconds                   decimal(9, 3) not null,
    IsRoot                              bit not null,
    Depth                               smallint not null,
    CustomTimingsJson                   nvarchar(max) null
);
go
create unique nonclustered index IX_MiniProfilerTimings_Id on MiniProfilerTimings (Id);
Go
create nonclustered index IX_MiniProfilerTimings_MiniProfilerId on MiniProfilerTimings (MiniProfilerId);