#ifndef GUARD_MyClass_h
#define GUARD_MyClass_h
////////////////////////////////////////////////////////////////////
//
// Dean Andrew Hidas <dhidas@bnl.gov>
//
// Created on: Tue May 31 14:31:22 EDT 2016
//
////////////////////////////////////////////////////////////////////

class MyClass
{
  public:
    MyClass ();
    ~MyClass ();

    void SetVariable (int const);
    int  GetVariable () const;

  private:
    int fVariable;

};





#endif
