{@type:sensor|@guid:13a3185a5ab74e8e96009ccf649c6fd7|@path:/技術分析/景氣循環股操作法}
input: shortlength(5); setinputname(1,"短期均線期數");
input: midlength(10); setinputname(2,"中期均線期數");
input: Longlength(20); setinputname(3,"長期均線期數");
input: Percent(2); setinputname(4,"均線糾結區間%");
input: Volpercent(40); setinputname(5,"放量幅度%");//帶量突破的量是超過最長期的均量多少%
variable: shortaverage(0);
variable: midaverage(0);
variable: Longaverage(0);
variable:Kprice(0);
 
if volume > average(volume,Longlength) * (1 + volpercent * 0.01) then
begin
shortaverage = average(close,shortlength);
midaverage = average(close,midlength);
Longaverage = average(close,Longlength);
if Close crosses over maxlist(shortaverage,midaverage,Longaverage) then
begin
value1= absvalue(shortaverage -midaverage);
value2= absvalue(midaverage -Longaverage);
value3= absvalue(Longaverage -shortaverage);
if maxlist(value1,value2,value3)*100 < Percent*Close then Kprice=H;
end;
end;
 
if C crosses above Kprice
//and tselsindex(10,8)=1
 then ret=1;