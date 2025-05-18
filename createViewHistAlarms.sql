Create view ViewHistAlarms
as

SELECT 
    AlarmSample.ID,
    AlarmTag.AlarmTag,
    ALARMSAMPLE.Time,
    AlarmState.Description as AlarmState,
    AlarmTag.Description 
FROM 
    AlarmSample
INNER JOIN 
    AlarmTag on AlarmSample.AlarmID = AlarmTag.AlarmID
Inner Join
	AlarmState on AlarmSample.AlarmState = AlarmState.State;


