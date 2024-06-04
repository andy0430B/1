{@type:filter|@guid:0f860762f43e4f75a83021b0affeee58|@path:/04.價量選股/特定日期迄今漲跌幅超過一定幅度}
input:startdate(20160203);
input:ratio(15,"漲幅下限");

value1=getbaroffset(startdate);
value2=rateofchange(close,value1);

if value2>ratio
then ret=1;

outputfield(1,value2,1,"區間漲跌幅");
outputfield(2,GetField("股價淨值比","D"),2,"股價淨值比");
outputfield(3,GetField("月營收年增率","M"),2,"月營收年增率");
outputfield(4,GetField("本益比","D"),1,"本益比");