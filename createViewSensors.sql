Create View  ViewSensors

AS 
SELECT 
    SENSOR.Sensorid,
	SENSOR.SensorTag,
    SENSORCATEGORY.Description
FROM 
    SENSOR
INNER JOIN 
    SENSORCATEGORY ON SENSOR.SensorCategory = SENSORCATEGORY.TypeID;
