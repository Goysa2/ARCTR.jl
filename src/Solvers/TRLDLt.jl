fname = :TRLDLt
c = Combi(hessian_dense,PDataLDLt,solve_modelTRDiag,preprocessLDLt,decreaseFact,Tparam())
include("Template.jl")

fname = :TRLDLtOld
c = Combi(hessian_dense,PDataLDLt,solve_modelTRDiagOld,preprocessLDLt,decreaseFact,Tparam())
include("Template.jl")

fname = :TRLDLtS
c = Combi(hessian_dense,PDataLDLt,solve_modelTRDiag,preprocessLDLt,decreaseFact,Tparam())
include("TemplateS.jl")
