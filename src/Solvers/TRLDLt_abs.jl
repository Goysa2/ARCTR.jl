fname = :TRLDLt_abs
c = Combi(hessian_dense,PDataLDLt,solve_modelTRDiagAbs,preprocessLDLt,decreaseFact,Tparam())
include("Template.jl")

fname = :TRLDLt_absNew
c = Combi(hessian_dense,PDataLDLt,solve_modelTRDiagAbsNew,preprocessLDLt,decreaseFact,Tparam())
include("Template.jl")
