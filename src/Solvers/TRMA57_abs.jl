fname = :TRMA57_abs
c = Combi(hessian_sparse,PDataMA57,solve_modelTRDiagAbs,preprocessMA57,decreaseFact,Tparam())
include("Template.jl")

fname = :TRMA57_absNew
c = Combi(hessian_sparse,PDataMA57,solve_modelTRDiagAbsNew,preprocessMA57,decreaseFact,Tparam())
include("Template.jl")

