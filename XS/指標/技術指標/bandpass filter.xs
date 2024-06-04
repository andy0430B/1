{@type:indicator|@guid:98ea4de242f6463da937a01cabe11e8e|@path:/技術指標/bandpass filter|@hash:023a8c16d72536621a73194f10d99fb9}
input:
	period(20),
	delta(0.1);
	
variable: price(0),gamma(0),alpha(0),beta(0),BP(0);
price=(h+l)/2;

beta=cosine(360/period);
gamma=1/cosine(720*delta/period);
alpha=gamma-squareroot(gamma*gamma-1);
BP=0.5*(1-alpha)*(price-price[2])+beta*(1+alpha)*BP[1]-alpha*BP[2];

plot1(BP);
plot2(0);