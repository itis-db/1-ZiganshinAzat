insert into activitytype (activitytypeid ,name ,sysname)
values (1,'Программа','Program'),
    (2,'Подпрограмма','SubProgram'),
    (3,'Проект','Project'),
    (4,'Контракт','Contract'),
    (5,'КТ','Point');
 
insert into activity(
    activityid,
    activitytypeid,
    code,
    "name",
    parentid
    )
values(1,1,'Program 1','Программа 1',null),
    (2,1, 'Program 2', 'Программа 2', null),
    (3,2,'SubProgram 1','Подпрограмма 1',1),
    (4,2,'SubProgram 2','Подпрограмма 2',2),
    (5,2,'SubProgram 3','Подпрограмма 3',2),
    (6,3,'Project 1','Проект 1',3),
    (7,3,'Project 2','Проект 2',4),
    (8,3,'Project 3','Проект 3',5),
    (9,4,'Contract 1','Контракт 1',6),
    (10,4,'Contract 2','Контракт 2',7),
    (11,4,'Contract 3','Контракт 3',7),
    (12,4,'Contract 4','Контракт 4',8),
    (13,5,'Point 1','КТ 1',6),
    (14,5,'Point 2','КТ 2',7),
    (15,5,'Point 3','КТ 3',8),
    (16,5,'Point 4','КТ 4',9),
    (17,5,'Point 5','КТ 5',10),
    (18,5,'Point 6','КТ 6',11),
    (19,5,'Point 7','КТ 7',12);