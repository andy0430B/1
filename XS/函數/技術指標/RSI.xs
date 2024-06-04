{@type:function|@guid:d64c2a71d3ea43d985ca22ef62a5a8de|@path:/技術指標/RSI|@hash:151c8153e7f916c28e73127fdea622d4}
SetBarMode(2);

// RSI function (for RSI指標)
//
input: price(numericseries), length(numericsimple);                                             

variable: sumUp(0), sumDown(0), up(0), down(0);

if CurrentBar = 1 then
  begin
	sumUp = Average(maxlist(price - price[1], 0), length); 
	sumDown = Average(maxlist(price[1] - price, 0), length); 
  end
else
  begin
	up = maxlist(price - price[1], 0);
	down = maxlist(price[1] - price, 0);
	
	sumUp = sumUp[1] + (up - sumUp[1]) / length;
	sumDown = sumDown[1] + (down - sumDown[1]) / length;
  end;

if sumUp + sumDown = 0 then
	RSI = 0
else
	RSI = 100 * sumUp / (sumUp + sumDown);
	


        