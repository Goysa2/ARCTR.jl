fname = :ARCLDLt_abs
c = Combi(hessian_dense,PDataLDLt,solve_modelARCDiagAbs,preprocessLDLt,decreaseFact,Tparam())
include("Template.jl")

fname = :ARCLDLt_absS
c = Combi(hessian_dense,PDataLDLt,solve_modelARCDiagAbs,preprocessLDLt,decreaseFact,Tparam())
include("TemplateS.jl")
