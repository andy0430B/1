{@type:sensor|@guid:038935f7b9ba43a4b2576f316d077f66|@path:/A股用語/螞蟻功|@hash:c3c1106d8d43042fc9cd43bfe55bf5c3}
//延著均線前進
input:Length(10); setinputname(1,"均線計算期數");
input:Length1(5); setinputname(2,"沿均線前進的期數");
input:Ratio(2); setinputname(3,"沿均線的範圍定義%");

settotalbar(maxlist(Length,Length1) + 3);

variable:x(0);
variable:count(0); count=0;

value1=average(close,Length);

for x=Length-1 downto 0
begin

	if value1[x] >= close[x]  and value1[x]*100 <=  (100+ratio) *Close
	then count += 1;

end;
if count >= Length1 then ret=1;
