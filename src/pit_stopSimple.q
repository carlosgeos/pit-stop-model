//This file was generated from (Academic) UPPAAL 4.1.4 (rev. 5648), July 2014

/*

*/
control: A<> Pit.leaving

/*

*/
control: A[ not(Pit.crash) U Pit.leaving ] 

/*

*/
control: A[ (forall (i: mechId_t) not(Mechanic(i).delay)) U Pit.leaving ]

/*

*/
E<> control: A[ (forall (i: mechId_t) not(Mechanic(i).delay)) U Pit.leaving ]

/*

*/
control: A[ not(Pit.waiting_exit) U Pit.leaving ]

/*

*/
E<> control: A[ not(Pit.waiting_exit) U Pit.leaving ]

/*
control t...
*/
control_t*(28901, 0): A<> Pit.leaving

/*

*/
//NO_QUERY
