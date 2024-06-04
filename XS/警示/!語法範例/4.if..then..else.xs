{@type:sensor|@guid:9714b94d30274a439eee955bd62f63db|@path:/!語法範例/4.if..then..else}
//if 條件1成立 then 動作1;
//這是常用的語法，代表滿足條件1時，執行動作1
//if 條件1成立 then 動作1 else 動作2;
//這是完整的語法，除了定義滿足條件1時，執行動作1外，還定義了不滿足條件1時，需執行動作2

//=====================範例：跳空上漲超過2%=======================================

//例如我們在股價跳空上漲超過2%時希望電腦可以通知我們，我們可以編寫腳本如下：

//1.宣告參數：利用input宣告輸入的參數。
input:percent(2);//宣告一個參數叫percent，預設值為2
variable:count(0);//宣告一個叫count的變數，初始值是0

//if 條件1成立 then 動作1;
//當出現2%跳空時，變數count等於1
if open >= high[1]*(1+percent/100)
then count=1; //只到這裡，這敘述最後必須加";"

//if 條件1成立 then 動作1 else 動作2;
//當count等於1時，觸發警示；count不等於1時，不觸發警示
if count=1
then ret=1 //有else時，這邊的敘述結束時就不必加上";"
else
ret=0;

//6.設定警示條件：if.. then ret=1;
//上面的句子可以簡化如下
if open >= high[1]* (1+percent/100)
then ret=1;
