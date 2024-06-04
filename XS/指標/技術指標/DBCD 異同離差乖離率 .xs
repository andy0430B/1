{@type:indicator|@guid:b18ccfff1a7a474f85faa67733ae1702|@path:/技術指標/DBCD 異同離差乖離率 |@hash:dafab5476b0d8117ae8aeb961339eee3}
{
指標說明
https://xstrader.net/異同離差乖離率dbcd在單一國家股票型基金的應用/
}

input:
	length1(10,"短天期"),
	length2(20,"長天期"),
	length3(14,"平均天期");

value1=bias(length1);
value2=bias(length2);
value3=value2-value1;
value4=average(value3,length3);
plot1(value4,"DBCD");