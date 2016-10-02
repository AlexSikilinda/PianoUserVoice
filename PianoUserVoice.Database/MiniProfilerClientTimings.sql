create table MiniProfilerClientTimings
(
    RowId                               integer not null identity constraint PK_MiniProfilerClientTimings primary key clustered,
    Id                                  uniqueidentifier not null,
    MiniProfilerId                      uniqueidentifier not null,
    Name                                nvarchar(200) not null,
    Start                               decimal(9, 3) not null,
    Duration                            decimal(9, 3) not null
);
Go
create unique nonclustered index IX_MiniProfilerClientTimings_Id on MiniProfilerClientTimings (Id);
go
create nonclustered index IX_MiniProfilerClientTimings_MiniProfilerId on MiniProfilerClientTimings (MiniProfilerId);   