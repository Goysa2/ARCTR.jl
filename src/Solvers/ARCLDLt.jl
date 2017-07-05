fname = :ARCLDLt
c = Combi(hessian_dense,PDataLDLt,solve_modelARCDiag,preprocessLDLt,decreaseFact,Tparam())
include("Template.jl")

fname = :ARCLDLtS
c = Combi(hessian_dense,PDataLDLt,solve_modelARCDiag,preprocessLDLt,decreaseFact,Tparam())
include("TemplateS.jl")
