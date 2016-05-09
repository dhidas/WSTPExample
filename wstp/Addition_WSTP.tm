
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
