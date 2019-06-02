//This file was generated from (Academic) UPPAAL 4.1.4 (rev. 5648), July 2014

/*

*/
control: A<> MainPit.leaving

/*

*/
control: A[ not(MainPit.crash) U MainPit.leaving ] 

/*

*/
control: A[ (forall (i: mechId_t) not(Mechanic(i).delay)) U MainPit.leaving ]

/*

*/
E<> control: A[ (forall (i: mechId_t) not(Mechanic(i).delay)) U MainPit.leaving ]

/*

*/
control: A[ not(MainPit.waiting_exit) U MainPit.leaving ]

/*

*/
E<> control: A[ not(MainPit.waiting_exit) U MainPit.leaving ]

/*
control t...
*/
control_t*(50000, 0): A<> MainPit.leaving

/*

*/
//NO_QUERY
