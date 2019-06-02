//This file was generated from (Academic) UPPAAL 4.1.4 (rev. 5648), July 2014

/*

*/
E<> Pit0.Crash

/*

*/
A<> Mech01.isLast == 1 imply Mech02.isLast == 0

/*

*/
A[] not (Mech00.Wait_For_Last_One and Mech01.Wait_For_Last_One and Mech02.Wait_For_Last_One and Mech03.Wait_For_Last_One)\


/*

*/
E<> not (Mech00.Wait_For_Last_One and Mech01.Wait_For_Last_One and Mech02.Wait_For_Last_One and Mech03.Wait_For_Last_One)

/*
No car can be locked more than 2 times straight
*/
A<> nbrOfTimesLocked[0]>2 or  nbrOfTimesLocked[1]>2 or  nbrOfTimesLocked[2]>2

/*
A mechanic cannot be Waiting for the last one and the last one at the same time
*/
A<> Mech01.Wait_For_Last_One imply not Mech01.Last_To_Be_Ready

/*
if the car from pit 1 is in front of the pit2 then the pit 2 must be locked by the car from pit 1
*/
A[]Pit0.position==2 imply locked[1]==1

/*
if the car from pit 1 is in front of the pit2 then the pit 2 and 3 might be locked by the car from pit 1 at one time
*/
A<>Pit0.position==2 imply locked[1]==1 and locked[2]==1

/*
crash reachability
*/
A[] not Pit0.Crash

/*
position 3
*/
A<>Pit0.position==3 imply Pit1.position!=3 and Pit2.position!=3

/*
position 2
*/
A<>Pit0.position==2 imply Pit1.position!=2 and Pit2.position!=2

/*
position 1
*/
A<>Pit0.position==1 imply Pit1.position!=1 and Pit2.position!=1

/*
check safety, only one car at a time in position 0
*/
A<>Pit0.position==0 imply Pit1.position!=0 and Pit2.position!=0
