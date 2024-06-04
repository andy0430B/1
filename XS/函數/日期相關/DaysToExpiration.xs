{@type:function|@guid:7adc0732a0b144149d70fb38c0965960|@path:/日期相關/DaysToExpiration|@hash:18349eb5f02b4d9adcffcec5ef80c222}
SetBarMode(1);

// 傳入到期月份/年份, 回傳資料日期與到期日之間還差幾日
// 範例: Value1 = DaysToExpiration(4, 2013)
//
input:  
	_ExpiredM(numericsimple),
    _ExpiredY(numericsimple);

variable:
	lastTradeDate(0);
	
lastTradeDate = GetLastTradeDate(_ExpiredM, _ExpiredY);
DaysToExpiration = DateDiff(lastTradeDate, Date) + 1;
	