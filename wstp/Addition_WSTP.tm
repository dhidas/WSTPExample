
:Begin:
:Function:      AddTwo
:Pattern:       AddTwo[i_, j_]
:Arguments:     { i, j }
:ArgumentTypes: { Real, Real }
:ReturnType:    Real
:End:


:Evaluate: AddTwo::usage = "AddTwo[x, y] gives the sum of two Real x and y."



:Begin:
:Function:      AddRealList
:Pattern:       AddRealList[L_List]
:Arguments:     { L }
:ArgumentTypes: { RealList }
:ReturnType:    Real
:End:

:Evaluate: AddRealList::usage = "AddRealList[List] gives the sum of Real in List."











:Begin:
:Function:      AddThreeManual
:Pattern:       AddThreeManual[a_, b_, c_]
:Arguments:     { a, b, c }
:ArgumentTypes: { Manual }
:ReturnType:    Real
:End:

:Evaluate: AddManu::usage = "AddThreeManual[a, b, c] gives the sum of three numbers"







:Begin:
:Function:      InitMyClass
:Pattern:       InitMyClass[]
:Arguments:     { }
:ArgumentTypes: { }
:ReturnType:    Integer
:End:
:Evaluate: InitMyClass::usage = "InitMyClass[] initialize.  Returns Object number"


:Begin:
:Function:      DeleteMyClass
:Pattern:       DeleteMyClass[i_]
:Arguments:     { i }
:ArgumentTypes: { Integer }
:ReturnType:    Integer
:End:
:Evaluate: DeleteMyClass::usage = "DeleteMyClass[i_] deletes the i_th object.  Returns -1 to invalidate reference"



:Begin:
:Function:      SetVariable
:Pattern:       SetVariable[i_, v_]
:Arguments:     { i, v }
:ArgumentTypes: { Integer, Integer }
:ReturnType:    Null
:End:
:Evaluate: SetVariable::usage = "SetVariable[v] sets the class variable."



:Begin:
:Function:      GetVariable
:Pattern:       GetVariable[ i_]
:Arguments:     { i }
:ArgumentTypes: { Integer }
:ReturnType:    Integer
:End:
:Evaluate: GetVariable::usage = "GetVariable[i_] gets the class variable for object i."
