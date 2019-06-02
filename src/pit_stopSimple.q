//This file was generated from (Academic) UPPAAL 4.1.4 (rev. 5648), July 2014

/*

*/
//NO_QUERY

/*

*/
control: A<> MainPit.leave

/*
All traces do not lead to safety outside the pit lane
*/
E<> control: A<> MainPit.leave

/*

*/
control: A[ (forall (i: mechId_t) not(Mechanic(i).delay)) U MainPit.leave ]

/*

*/
E<> control: A[ (forall (i: mechId_t) not(Mechanic(i).delay)) U MainPit.leave ]

/*

*/
control_t*(120, 120): E<> : A[ not(MainPit.crash) U MainPit.leave ]

/*

*/
control_t*(120, 120): A<> MainPit.leave

/*

*/
//NO_QUERY
