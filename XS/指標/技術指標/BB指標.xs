{@type:indicator|@guid:7da8636db4b8402cb15b6d7f8460f79f|@path:/技術指標/BB指標|@hash:2bebbf29046624e35601763a802684ef}
{
指標說明
https://xstrader.net/％b指標/
}

input: 
	Length(20, "天數"), 
	UpperBand(2, "上"), 
	LowerBand(2, "下"), 
	pbLength(5, "%B平均天數");
	
variable: up(0), down(0), mid(0), bbandwidth(0), pb(0);

up = bollingerband(Close, Length, UpperBand);
down = bollingerband(Close, Length, -1 * LowerBand);
mid = (up + down) / 2;

bbandwidth = 100 * (up - down) / mid;
pb=(close-down)/(up-down);
value1=average(pb,pbLength);

plot1(pb,"%b");
plot2(value1,"%b移動平均");
