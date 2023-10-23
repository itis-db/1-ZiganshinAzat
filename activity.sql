with recursive activity_ierarchy(activitytypeid, name, code, parentid, path) as (
	select table1.activitytypeid, table1.name, table1.code, table1.parentid, table1.code as path 
	from activity table1 where table1.name = 'КТ 7' -- написать имя нужного элемента, к примеру КТ 7
	union
	select table2.activitytypeid, table2.name, table2.code, table2.parentid, activity_ierarchy.path || '->' || table2.code 
	from activity table2 join activity_ierarchy on (activity_ierarchy.parentid = table2.activityid)
)
select "path" from activity_ierarchy where activitytypeid = 1;

