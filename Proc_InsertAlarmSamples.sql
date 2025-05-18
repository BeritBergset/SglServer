
CREATE PROCEDURE insertALARMSAMPLE
    @AlarmTag varchar(100),
    @Timestamp datetime,
	@Alarmstate int
AS
BEGIN
    DECLARE @AlarmID int;

    SELECT @AlarmID = AlarmID
    FROM ALARMTAG
    WHERE AlarmTag = @AlarmTag;

    INSERT INTO ALARMSAMPLE (AlarmID, Time, AlarmState)
    VALUES (@AlarmID, @Timestamp,@Alarmstate);
END;
go