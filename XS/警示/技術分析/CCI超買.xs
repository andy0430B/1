{@type:sensor|@guid:0c81f79d77124cdcb34b612cba7482cd|@path:/技術分析/CCI超買|@hash:ae823afdcfec10402526584ba44405ae}
// CCI超買
//
Input: Length(14), AvgLength(9), Overbought(100);
Variable: cciValue(0), cciMAValue(0);

SetTotalBar(maxlist(AvgLength + Length + 1,6) + 11);

SetInputName(1, "期數");
SetInputName(2, "平滑期數");
SetInputName(3, "超買值");

cciValue = CommodityChannel(Length);
cciMAValue = Average(cciValue, AvgLength);

Ret = cciMAValue Crosses Above OverBought;



