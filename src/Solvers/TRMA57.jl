fname = :TRMA57Old
c = Combi(hessian_sparse,PDataMA57,solve_modelTRDiagOld,preprocessMA57,decreaseFact,Tparam())
include("Template.jl")

fname = :TRMA57New
c = Combi(hessian_sparse,PDataMA57,solve_modelTRDiagNew,preprocessMA57,decreaseFact,Tparam())
include("Template.jl")
