{@type:sensor|@guid:c60a363e247b4a4c97b69b27868bcafd|@path:/長線投資/多頭趨勢已然確立}
input:CountMonth(6,"計算月數");
input:LSP(25,"多空切換百分比");

variable:pHigh(0),pLow(100000);

if  CurrentDate < DateAdd(Date,"M",CountMonth) then begin
	pHigh = maxlist(h,pHigh);
	pLow = minlist(l,pLow);
end else begin
	pHigh = C;
	pLow = C;
end;

value1= pHigh-(pHigh-pLow)*LSP/100;

if close>value1 
and close[1]<value1[1]
then ret=1;