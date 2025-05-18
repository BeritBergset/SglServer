Create View  View1MinSamples

AS 
select 
SENSOR.SensorTag,
Sample1Min.AvgValue,
Sample1Min.MaxValue,
Sample1Min.MinValue,
Sample1Min.TimeStamp
from Sample1Min
INNER Join SENSOR ON SENSOR.SensorID= Sample1Min.SensorID 
