fname = :TRSpectral_abs
c = Combi(hessian_dense,PDataSpectral,solve_modelTRDiagAbs,preprocessSpectral,decreaseFact,Tparam())
include("Template.jl")

fname = :TRSpectral_absS
c = Combi(hessian_dense,PDataSpectral,solve_modelTRDiagAbs,preprocessSpectral,decreaseFact,Tparam())
include("TemplateS.jl")
