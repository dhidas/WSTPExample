#ifndef GUARD_MyClass_MMA_h
#define GUARD_MyClass_MMA_h
////////////////////////////////////////////////////////////////////
//
// Dean Andrew Hidas <dhidas@bnl.gov>
//
// Created on: Tue May 31 14:37:21 EDT 2016
//
// Intended to be an interface to Mathematica for MyClass
// including a vector of class objects
//
////////////////////////////////////////////////////////////////////

#include "MyClass.h"





int  InitMyClass ();
void SetVariable (int const, int const);
int  GetVariable (int const);
int  DeleteMyClass (int const);








#endif
