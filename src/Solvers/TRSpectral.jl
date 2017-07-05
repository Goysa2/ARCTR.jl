fname = :TRSpectral
c = Combi(hessian_dense,PDataSpectral,solve_modelTRDiag,preprocessSpectral,decreaseFact,Tparam())
include("Template.jl")

fname = :TRSpectralS
c = Combi(hessian_dense,PDataSpectral,solve_modelTRDiag,preprocessSpectral,decreaseFact,Tparam())
include("TemplateS.jl")
