//This file was generated from (Academic) UPPAAL 4.1.4 (rev. 5648), July 2014

/*

*/
Pit1.Wait_To_Go_On_Lane --> Pit1.Leave

/*
no deadlock
*/
E<> deadlock

/*
LIVENESS: Only one last
*/
E<> Mech11.isLast == 1 and (Mech12.isLast == 1 or Mech13.isLast == 1 or Mech10.isLast == 1)

/*
FAINRNESS: No car can be locked more than 2 times straight
*/
E<> nbrOfTimesLocked[0]>1 or  nbrOfTimesLocked[1]>1 or  nbrOfTimesLocked[2]>1

/*
LIVENESS: A mechanic cannot be waiting for the last one and being the last one at the same time
*/
control: A<> Mech11.Wait_For_Last_One imply not Mech11.Last_To_Be_Ready

/*
LIVENESS: mechanics ready imply the car could leave
*/
control: A<> readyToGo[0]==1 imply Pit1.Wait_To_Go_On_Lane

/*
FAIRNESS: All car waiting to leave, will in the futur
*/
control: A<> Pit1.Wait_To_Go_On_Lane imply Pit1.Leave

/*
FAIRNESS: all car can reach its position
*/
control: A<>Pit1.Incoming_Car imply Pit1.CarInPos

/*
SAFETY: if the car from pit 1 is in front of the pit2 then the pit 2 must be locked by the car from pit1
*/
E<>Pit1.position==2 and locked[1]==0

/*
SAFETY: only one car at a time in position 0
*/
E<> Pit3.position==0 and (Pit1.position==0 or Pit2.position==0)
