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

#include "MyClass_MMA.h"

#include <vector>

std::vector<MyClass*> fClass;

int InitMyClass ()
{
  fClass.push_back(new MyClass());
  return fClass.size() - 1;
}


void SetVariable (int const i, int const v) {
  if (i < 0) {
    throw;
  } else if (i >= (int) fClass.size()) {
    throw;
  }

  fClass[i]->SetVariable(v);
  return;
}


int GetVariable (int const i)
{
  if (i < 0) {
    throw;
  } else if (i >= (int) fClass.size()) {
    throw;
  }

  return fClass[i]->GetVariable();
}


int DeleteMyClass (int const i)
{
  if (i < fClass.size() && fClass[i] != 0x0) {
    delete fClass[i];
    fClass[i] = 0x0;
    return -1;
  }

  return -1;
}
