char plain[132] __attribute__((section(".data")));
int coded[] __attribute__((section(".data")))= { 0x74622c2a,
		0x457f269d,
		0xca9719a1,
		0xab3ead47,
		0xd505f612,
		0x28c1e207,
	 	0xf91c45cd,
	 	0xa2bc576e,
	 	0xc5740f7d,
	 	0x5456f078,
	 	0xf7b33c52,
	 	0x1548a083,
	 	0x60424560,
	 	0xb86096a9,
	 	0x7390e797,
	 	0x0abb4814,
	 	0xf8c04a5b,
	 	0x8c1a4ea7,
	 	0xa3afdad0,
	 	0xc482a5b9,
	 	0x6f2fd3ca,
	 	0x76081edd,
	 	0xbf0be87d,
	 	0xe1ebab64,
	 	0x3f19f8fd,
	 	0x71e9dbae,
	 	0xd2461be4,
	 	0x67a1c62a,
	 	0xdce2d947,
	 	0xbda793a7,
	 	0x54d793c7,
	 	0x354081be,
	 	0x8a8ec062,
	 	0xc21e814f,
	 	0xda3e8826,
	 	0xd88b322e,
	 	0x73e1ca8e,
	 	0x58e4863c,
	 	0x9211768d,
	 	0xfbd98f2b,
	 	0xaa3819ff,
	 	0xb4168e4e,
	 	0x9c996e25,
	 	0xa228db96,
	 	0x976236b4,
	 	0x894f2c79,
	 	0xa93caa49,
	 	0x03e22eed,
	 	0xa2689d3b,
	 	0x88ce0329,
	 	0x313f4f80,
	 	0x7306761f,
	 	0xc667fab7,
	 	0x7c1d9d40,
	 	0x0bab42b8,
	 	0xddb25676,
	 	0xbcc552f2,
	 	0x1165db15,
	 	0xdbcabeef,
	 	0x35591d33,
	 	0xfa324116,
	 	0xf118398f,
	 	0x721cfd54,
	 	0x525ab393,
	 	0x64ed450a,
	 	0x8fb58b4d,
	 	0x8d9aebfb,
	 	0x081e4529,
	 	0xcd2ae6ba,
	 	0x7acfb8f8,
	 	0x019e2068,
	 	0xb6c6980a,
	 	0xb0ad87c8,
	 	0x9be857e4,
	 	0x1b339466,
	 	0x15023570,
	 	0x20b660f1,
	 	0xe19e6783,
	 	0x1a67ae3a,
	 	0x8ddfca58,
	 	0xb345ade2,
	 	0x58a5cb41,
	 	0x9810dab8,
	 	0x5b21939f,
	 	0x9c29fca2,
	 	0x66517be4,
	 	0x067c7349,
	 	0xed7387b0,
	 	    0};

int codgen(int *seed_addr);

int decode(int *wordarr,char *bytearr,int *seed_addr);

int main(void)
{
	
	int seed = 0x090912dd;
	decode(coded,plain,&seed);
	while(1==1){
	//do nothing			
	}
}

int codgen(int *seed_addr){
	signed int n;
	unsigned int x,y,k;
	n = 0;
	k = *seed_addr;
    	while (k > 0) {           				//count number of 1 in seed, set it = n
        	if ((k & 1) == 1)
            	n=n+1;
        	k >>= 1;
	}
	x= ((unsigned)*seed_addr << 25) | ((unsigned)*seed_addr >> (32 - 25));	//rotate seed 25 left
	y=(unsigned)*seed_addr/2;
	*seed_addr=0;
	*seed_addr=x+y+(unsigned)n;					//update new seed
	k = *seed_addr ^ 0x0bbd95aa;				//return seed xor 0x0bbd95aa
	return (k);
}

int decode(int *wordarr,char *bytearr,int *seed_addr){
	
	int m,r,x,y,z;

	x = (~codgen(seed_addr));				//one's complement of the value returned from codgen()

	if(*wordarr == 0){					//check if the last word of wordarr have been reached
		*bytearr = 0;					//if so set the final element of bytearr = 0
		r = x;		
	}
	else{
		y = decode(wordarr+1, bytearr+1, seed_addr);	//else call decode again with the next value of wordarr, bytearr
		m = (x - y) + *wordarr;
		z = m;
		z = z<<20;
		z = (z >> (8*3)) & 0xff;
		*bytearr = z;					//set bytearr = m[11:4]
		r = (~codgen(seed_addr)) + 1;			//r = two's complement of the value returned from codgen()
		r = x+y+m+r+5;
	}
	return r;
}
