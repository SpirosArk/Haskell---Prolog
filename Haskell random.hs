

--Code written by Spiros Ark --

-----------------------------------------------------------------------------------------


amount :: Int->Float->Float
amount n p
	 
 	 |(p<0) || (n<0) = 0.0
	 |(n==5) && (p*(fromIntegral(n)-1) < 100.0) = (fromIntegral(n)-1) *p
	 |(n==5) && (p*(fromIntegral(n)-1) > 100.0) = p*(fromIntegral(n)-1) - (p*(fromIntegral(n)-1)*(0.1))
	 |(n>5) && (((fromIntegral(2*(n`div`3) + n`mod`3 + 1)) * p) <= 100.0) = (fromIntegral(2*(n`div`3) + n`mod`3 + 1)) * p
	 |(n>5) && (((fromIntegral(2*(n`div`3) + n`mod`3 + 1)) * p) > 100.0) = ((fromIntegral(2*(n`div`3) + n`mod`3 + 1)) * p) - ((((fromIntegral(2*(n`div`3) + n`mod`3 + 1)) * p))*0.1)
	 |p*fromIntegral(n) < 100.0 = p*fromIntegral(n)
	 |otherwise = p*fromIntegral(n) - (p*fromIntegral(n)*(0.1))

-----------------------------------------------------------------------------------------
     


cost :: (Int,Int,Int)->(Int,Int,Int)->Float

cost (h1,m1,s1) (h2,m2,s2)

	 |fromIntegral(h2*360+m2*60+s2) == fromIntegral(h1*360+m1*60+s1) = 0.0
	 |(h1<=h2) && ((fromIntegral(h2*3600+m2*60+s2) - fromIntegral(h1*3600+m1*60+s1))<180.0) = 0.58
 	 |(h1>h2) && (((h2+24)-h1) == 1) && ((fromIntegral(h2*3600+m2*60+s2) - fromIntegral(h1*3600+m1*60+s1))<180.0) = 0.58
 	 |((fromIntegral(h2*3600+m2*60+s2) - fromIntegral(h1*3600+m1*60+s1))>180.0) = 0.58 + (((fromIntegral(h2*3600+m2*60+s2) - fromIntegral(h1*3600+m1*60+s1))-180)*0.003)
	 |(h1>h2) = 0.58 + (((fromIntegral((h2+24)*3600+m2*60+s2) - fromIntegral(h1*3600+m1*60+s1))-180)*0.003)	 
	  

-----------------------------------------------------------------------------------------
     


compress :: Integer->Integer

compress n = 
	if (n >= 9) then
		if ((n `mod` 10) == 0) then compress (n `div` 10)
		else (n `mod` 10) * compress(n `div` 10)
	else n
	

