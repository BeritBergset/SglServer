Create Procedure calculate1Min
@sensorID int
as
INSERT INTO Sample1Min(SensorID,AvgValue, MaxValue,MinValue,timestamp)
SELECT 
    SensorID,
    Round(AVG(Value),1) AS AvgValue,
	Round(MAX(Value),1) AS MaxValue,
	Round(Min(Value),1) AS minValue,
	DATEADD(MINUTE, DATEDIFF(MINUTE, 0, timestamp), 0) AS timestamp
FROM 
    Sample 
Where SensorID=@sensorID
GROUP BY 
    SensorID,
	DATEADD(MINUTE, DATEDIFF(MINUTE, 0, timestamp), 0)
	go