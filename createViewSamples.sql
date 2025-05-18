Create View  ViewSamples

AS 
select 
SENSOR.SensorTag,
Sample.Value,
Sample.TimeStamp
from Sample
INNER Join SENSOR ON SENSOR.SensorID= Sample.SensorID 
