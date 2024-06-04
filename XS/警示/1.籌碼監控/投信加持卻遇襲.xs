{@type:sensor|@guid:a33034d55ec34b92b9ec7fecdad94796|@path:/1.籌碼監控/投信加持卻遇襲|@hash:203544bf576916fa40c748570dcb1ec1}
Input: pastDays(5); setinputname(1, "計算天數");
Input: _buyAmount(1000); setinputname(2, "買超張數");
input:TXT("僅適用日線"); setinputname(3,"使用限制");

variable: SumForce(0);

settotalbar(pastdays + 3);

if BarFreq <> "D" then return;

if close < lowest(low[1], pastdays) then
begin
	sumForce = Summation(GetField("投信買賣超")[1], pastDays);
	if sumForce > _buyAmount then ret=1;

end;        