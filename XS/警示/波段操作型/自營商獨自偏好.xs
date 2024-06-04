{@type:sensor|@guid:b38f8455b75c419789c062c442a1c672|@path:/波段操作型/自營商獨自偏好|@hash:732257c8d32d929b3fc6c0bab2ef347a}
input:Length(20); setinputname(1,"計算日數");
input:_BuyRatio(5); setinputname(2,"買超佔比%");
input:TXT("僅適用日線"); setinputname(3,"使用限制");

settotalbar(3);
setbarback(Length);

if barfreq <> "D" then return;

variable: SumForce(0);
variable: SumTotalVolume(0);
variable: OtherForce(0);

SumForce = Summation(GetField("自營商買賣超")[1], Length);
SumTotalVolume = Summation(Volume[1], Length);
OtherForce = Summation(GetField("外資買賣超")[1] + GetField("投信買賣超")[1], Length);

if SumForce > SumTotalVolume  *_BuyRatio  and SumForce > OtherForce   then ret =1;
        