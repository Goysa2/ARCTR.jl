fname = :TRMA97_abs
c = Combi(hessian_dense,PDataMA97,solve_modelTRDiagAbs,preprocessMA97,decreaseFact,Tparam())
include("Template.jl")

fname = :TRMA97_absS
c = Combi(hessian_dense,PDataMA97,solve_modelTRDiagAbs,preprocessMA97,decreaseFact,Tparam())
include("TemplateS.jl")
