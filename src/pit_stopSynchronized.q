//This file was generated from (Academic) UPPAAL 4.1.4 (rev. 5648), July 2014

/*
LIVENESS: Only one last
*/
A<> Mech01.isLast == 1 imply Mech01.isLast == 1 and not(Mech02.isLast == 1 or Mech03.isLast == 1 or Mech00.isLast == 1)

/*
FAINRNESS: No car can be locked more than 2 times straight
*/
A<> nbrOfTimesLocked[0]>2 or  nbrOfTimesLocked[1]>2 or  nbrOfTimesLocked[2]>2

/*
LIVENESS: A mechanic cannot be waiting for the last one and being the last one at the same time
*/
A<> Mech01.Wait_For_Last_One imply not Mech01.Last_To_Be_Ready

/*
LIVENESS: mechanics ready imply the car could leave
*/
A<> readyToGo[0]==1 imply Pit0.Wait_To_Go_On_Lane

/*
FAIRNESS: All car waiting to leave, will in the futur and will be lokcked at most twice
*/
A<> Pit0.Wait_To_Go_On_Lane imply nbrOfTimesLocked[0]<2 and Pit0.Leave

/*
FAIRNESS: all car can reach its position
*/
A<>Pit0.Incoming_Car imply Pit0.CarInPos

/*
LIVENESS: all car coming in goes out in the future
*/
A<>Pit0.CarInPos imply Pit0.Leave

/*
SAFETY: if the car from pit 1 is in front of the pit2 then the pit 2 must be locked by the car from pit1
*/
A<>Pit0.position==2 imply Pit0.position==2 and locked[1]==1

/*
SAFETY: only one car at a time in position 0
*/
A<>Pit0.position==0 imply Pit0.position==0 and Pit1.position!=0 and Pit2.position!=0
