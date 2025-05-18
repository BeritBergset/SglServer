Create procedure insertSample
@SensorTag varchar(100),
@Value float,
@Timestamp datetime

as
DECLARE
@SensorID int

select @SensorID=SensorID from SENSOR where SensorTag=@SensorTag
insert into Sample (SensorID, Value, TimeStamp) values(@SensorID, @Value,@Timestamp)
go