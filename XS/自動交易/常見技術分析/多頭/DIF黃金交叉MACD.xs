{@type:autotrade|@guid:b447ba4070f74095bc24d43d9faba2c3|@path:/常見技術分析/多頭/DIF黃金交叉MACD}
// 需告參數
input: FastLength(12, "DIF短期期數"), SlowLength(26, "DIF長期期數"), MACDLength(9, "MACD期數");
variable: difValue(0), macdValue(0), oscValue(0);

// 資料讀取筆數設定
SetTotalBar((maxlist(FastLength,SlowLength,6) + MACDLength) * 3 + 8);

MACD(weightedclose(), FastLength, SlowLength, MACDLength, difValue, macdValue, oscValue);

// 多方進場策略：DIF黃金交叉MACD；出場策略：DIF死亡交叉MACD
if difValue Crosses Above macdValue then setposition(1);
if difValue Crosses below macdValue then setposition(0);