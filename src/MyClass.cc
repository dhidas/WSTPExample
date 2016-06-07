////////////////////////////////////////////////////////////////////
//
// Dean Andrew Hidas <dhidas@bnl.gov>
//
// Created on: Tue May 31 14:31:22 EDT 2016
//
////////////////////////////////////////////////////////////////////

#include "MyClass.h"

MyClass::MyClass ()
{
}



MyClass::~MyClass ()
{
}



void MyClass::SetVariable (int const v)
{
  fVariable = v;
  return;
}



int MyClass::GetVariable () const
{
  return fVariable;
}
