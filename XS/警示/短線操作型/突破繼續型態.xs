{@type:sensor|@guid:b9e3b3f440314721a754b87a3bf9de5f|@path:/短線操作型/突破繼續型態}
input:Length(20); setinputname(1,"下降趨勢計算期數");
input:Rate(150); setinputname(2,"反轉率%");
variable: Factor(0);
settotalbar(Length + 3);

Factor = 100/Close[Length];

if close > open and  close < close[length] then
begin
	value1 = linearregslope(high*Factor,Length);
	value2 = linearregslope(high*Factor,3);
	if value1 < 0 and  value2-value1 > Rate*0.01 then ret=1;
end;