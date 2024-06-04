{@type:indicator|@guid:9bc3cb3d1f284a399a16eb401fbe7ac3|@path:/籌碼指標/法人買超佔成交量比重|@hash:f9479f9a6cd95323a9e7affdf3c686d0}
input:length(5,"期數"),TXT("僅支援日線以上");
var:_strplot1("");

if barfreq = "Tick" or barfreq = "Min"
	then raiseruntimeerror("不支援此頻率，僅支援日線以上");

value4=getField("法人買賣超", "D");
if volume<>0 then 
value5=(summation(value4,length)/summation(volume,length))*100;

_strplot1 = text("近 ",numToStr(length,0)," 期，法人買超佔成交量比重");
plot1(value5,"法人買超佔成交量比重");
setplotLabel(1,_strplot1);