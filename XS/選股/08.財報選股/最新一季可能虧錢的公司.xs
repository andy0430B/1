{@type:filter|@guid:d27f8acf707545c88e388f5a2ace4137|@path:/08.財報選股/最新一季可能虧錢的公司}
setbarfreq("M");

value1=GetField("月營收","M");//單位:億
value2=value1[2]+value1[3]+value1[4];
value3=GetField("營業毛利率","Q");
value4=GetField("營業費用","Q");//單位:百萬

if value2*value3/100-value4/100<0  
then ret=1;