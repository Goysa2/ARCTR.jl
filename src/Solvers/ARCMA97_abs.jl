fname = :ARCMA97_abs
c = Combi(hessian_dense,PDataMA97,solve_modelARCDiagAbs,preprocessMA97,decreaseFact,Tparam())
include("Template.jl")

fname = :ARCMA97_absS
c = Combi(hessian_dense,PDataMA97,solve_modelARCDiagAbs,preprocessMA97,decreaseFact,Tparam())
include("TemplateS.jl")

