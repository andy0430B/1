{@type:indicator|@guid:dc2ea05993cb4190808f3fc9287b2607|@path:/技術指標/天羅地網線|@hash:0b211eecc424cc2ac25defbc24630875}
input:period(60,"期數");

value5=average(close,period);
value6=standarddev(close,period,1);
value7=value5+value6;
value8=value5+2*value6;
value9=value5-value6;
value10=value5-2*value6;

plot1(value8,"+2SD");
plot2(value7,"+1SD");
plot3(value5,"MA");
plot4(value9,"-1SD");
plot5(value10,"-2SD");