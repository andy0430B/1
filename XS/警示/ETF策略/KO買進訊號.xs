{@type:sensor|@guid:4af85027e7894c16afaca66cef3c0c7e|@path:/ETF策略/KO買進訊號}
Input: Length1(34, "短天期");
Input: Length2(55, "長天期");
variable: ko(0);   

ko = callfunction("KO成交量擺盪指標", Length1, Length2);

value1=average(ko,3);
value2=average(ko,13);

if value1 crosses over value2
and linearregangle(close,5)>20
then ret=1;