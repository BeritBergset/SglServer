Create View ViewActiveAlarms 
as
SELECT 
    AlarmTag.AlarmID,
    AlarmTag.AlarmTag,
    AlarmCategory.Description AS Category, 
	AlarmState.Description As AlarmStatus,
    AlarmTag.Description AS AlarmTagDescription
FROM 
    AlarmTag
INNER JOIN 
    AlarmCategory ON AlarmTag.Priority = AlarmCategory.AlarmCategory
INNER JOIN
	AlarmState on AlarmTag.AlarmState = AlarmState.State


