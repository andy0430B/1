{@type:indicator|@guid:8ba8219786ea40a4a64ac11347d9eaf5|@path:/市場動能/台灣50大單買進金額|@hash:f16280b356c9eb58fabcd97dec2ac1aa}
{統計台灣50成分股，近10根K棒的買進大單金額平均值。
因為不跨日，所以開盤不足10根K棒時則依照開盤根棒數平均（跨K棒時送出前一根K棒的統計值）}

value1 = GetSymbolField("TSE50.SJ","TW50大單買進金額");

plot1(value1,"台灣50大單買進金額（元）");