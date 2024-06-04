{@type:function_bool|@guid:f67db2e284244ccbaaf4486e458ffe2d|@path:/跨頻率/xf_CrossUnder|@hash:5389d1c4b427e07abc1a3049784bca95}
SetBarMode(1);

// 傳入兩個序列(跟目前的頻率不同), 判斷是否crossunder
//
// FreqType是傳入序列的資料期別, 支援"D", "W", "M"
// SeriesA, SeriesB是傳入的序列
//
input:
	FreqType(string), 
	SeriesA(numericseries),
	SeriesB(numericseries);
 
variable:
	valA(0), valB(0), posA(0), posB(0);
 
posA = 0;
posB = 0;
valA = xf_getvalue(FreqType, SeriesA, posA);
valB = xf_getvalue(FreqType, SeriesB, posB);

if valA >= valB then
begin
	xf_CrossUnder = false;
	return;
end; 

variable: idx(0);
for idx = 1 to 6
begin
	posA = posA + 1;
	posB = posB + 1;
	valA = xf_getvalue(FreqType, SeriesA, posA);
	valB = xf_getvalue(FreqType, SeriesB, posB);
	if valA > valB then
	begin
		xf_CrossUnder = true;
		return;
	end
	else
	begin
		if valA < valB then
		begin
			xf_CrossUnder = false;
			return;
		end;
	end; 
end;
xf_CrossUnder = false;