//This file was generated from (Academic) UPPAAL 4.1.4 (rev. 5648), July 2014

/*
With some help from the environment, all traces lead to safety outside the pit lane
*/
E<> control: A<> MainPit.outside

/*

*/
E<> MainPit.outside

/*

*/
A[] not deadlock

/*
All traces do not lead to safety outside the pit lane
*/
A<> not(MainPit.crash)

/*

*/
//NO_QUERY
