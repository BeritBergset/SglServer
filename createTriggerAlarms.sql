
CREATE TRIGGER trg_LoggAlarmStatus
ON AlarmTag
AFTER UPDATE
AS
BEGIN
    SET NOCOUNT ON;

    INSERT INTO Alarmsample (Time, AlarmID, AlarmState)
    SELECT 
        GETDATE(),
        i.AlarmID,
        i.AlarmState
    FROM 
        inserted i
    INNER JOIN 
        deleted d ON i.AlarmID = d.AlarmID
    WHERE 
        i.AlarmState <> d.AlarmState;
END;

