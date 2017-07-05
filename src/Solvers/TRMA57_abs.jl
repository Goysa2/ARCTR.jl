fname = :TRMA57_abs
c = Combi(hessian_sparse,PDataMA57,solve_modelTRDiagAbs,preprocessMA57,decreaseFact,Tparam())
include("Template.jl")

fname = :TRMA57_absS
c = Combi(hessian_sparse,PDataMA57,solve_modelTRDiagAbs,preprocessMA57,decreaseFact,Tparam())
include("TemplateS.jl")

fname = :TRMA57_absOld
c = Combi(hessian_sparse,PDataMA57,solve_modelTRDiagAbsOld,preprocessMA57,decreaseFact,Tparam())
include("Template.jl")

