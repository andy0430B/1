{@type:sensor|@guid:3d786268200f4a52b674ea90ee17b35e|@path:/3.出場常用警示/高檔量縮收黑|@hash:dbaac5370321af392b990a1bfd61e739}
input:DownPercent(4);  setinputname(1,"當期下跌幅度");
input:Ratio(20);       setinputname(2,"量縮程度%");
input:TieDays(3);      setinputname(3,"量縮持續期數");
input:UpTrendDays(20); setinputname(4,"累計上漲期數");
input:RaisingRatio(20);setinputname(5,"累計上漲幅度");

settotalbar(3);
setbarback(UpTrendDays+TieDays);

if Close[TieDays] >  close[UpTrendDays+TieDays-1] * (1+RaisingRatio/100) then
begin
  if Close< high[TieDays] * (1 - DownPercent/100) and 
     volume[TieDays] > volume *(1+Ratio/100) 
  then ret=1;
end;