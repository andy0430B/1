{@type:indicator|@guid:07356f447b0343a3956fa01fd4019c1c|@path:/籌碼指標/外資買超佔成交量比重|@hash:f37a7393f09180712c605ea9a77ea7d1}
input:length(5,"期數"),TXT("僅支援日線以上");
var:_strplot1("");

if barfreq = "Tick" or barfreq = "Min"
	then raiseruntimeerror("不支援此頻率，僅支援日線以上");

value4=getField("外資買賣超張數", "D");
if volume<>0 then 
value5=(summation(value4,length)/summation(volume,length))*100;

_strplot1 = text("近 ",numToStr(length,0)," 期，外資買超佔成交量比重");
plot1(value5,"外資買超佔成交量比重");
setplotLabel(1,_strplot1);