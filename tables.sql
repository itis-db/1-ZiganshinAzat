create table if not exists area(
    areaid int not null primary key,
    "name" text not null
);

create table if not exists activitytype(
    activitytypeid int not null primary key,
    "name" text not null,
    sysname text not null
);

create table if not exists activity(
    activityid int not null primary key,
    activitytypeid int not null references activitytype(activitytypeid),
    code text not null, 
    "name" text not null,
    parentid int references activity(activityid)
);

create table if not exists contract(
    contractid int not null references activity(activityid) primary key,
    areaid int not null references area(areaid)
);

create table if not exists subprogram(
    subprogramid int not null references activity(activityid) primary key,
    indexnum int not null 
);

create table if not exists project(
    projectid int not null references activity(activityid) primary key,
    targerdescr text not null
);

create table if not exists program(
    programid int not null references activity(activityid) primary key,
    indexnum int not null,
    yearstart int not null,
    yearfinish int not null
);

create table if not exists point(
    pointid int not null references activity(activityid) primary key,
    plandate date not null,
    factdate date not null
);