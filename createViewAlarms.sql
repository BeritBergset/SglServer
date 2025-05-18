Create view ViewAlarms
as

SELECT 
    AlarmSample.ID,
    AlarmTag.AlarmTag,
    ALARMSAMPLE.Time,
    AlarmState.Description as AlarmState,
    AlarmTag.Description 
FROM 
    AlarmSample
LEFT JOIN 
    AlarmTag on AlarmSample.AlarmID = AlarmTag.AlarmID
LEFT Join
	AlarmState on AlarmSample.AlarmState = AlarmState.State;


