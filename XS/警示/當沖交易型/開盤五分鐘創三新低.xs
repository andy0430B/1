{@type:sensor|@guid:077d0f1e92144f139d40ae48cf0080ae|@path:/當沖交易型/開盤五分鐘創三新低}
input:TXT("僅適用1分鐘線"); setinputname(1,"使用限制");
settotalbar(8);
variable:KBarOfDay(0); KBarOfDay+=1; if date<>date[1] then  KBarOfDay=1; 

if barfreq = "Min"  and barinterval = 1 and Date = CurrentDate   and
   KBarOfDay = 6 and
   Countif(Low < Low[1] and Close < Close[1] ,5) >=3  then Ret=1;