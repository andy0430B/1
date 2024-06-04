{@type:sensor|@guid:76e2dc90e798462b8f16509627f1d0e5|@path:/波段操作型/盤整後噴出|@hash:a4b42e446a1ae253b8d3207b4d48f28c}
input:Length(30); setinputname(1, "計算期間");
input:percent(2.5); setinputname(2, "設定盤整區間%");

settotalbar(9);
setbarback(Length);

value1=highest(high[1],Length);
value2=lowest(low[1],Length);

if close crosses above value1
and value1 < value2 *( 1 + percent * 0.01) //最近幾根bar的收盤價高點與低點差不到N%
then ret=1;