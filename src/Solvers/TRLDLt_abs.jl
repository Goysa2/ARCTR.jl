fname = :TRLDLt_abs
c = Combi(hessian_dense,PDataLDLt,solve_modelTRDiagAbs,preprocessLDLt,decreaseFact,Tparam())
include("Template.jl")

fname = :TRLDLt_absOld
c = Combi(hessian_dense,PDataLDLt,solve_modelTRDiagAbsOld,preprocessLDLt,decreaseFact,Tparam())
include("Template.jl")

fname = :TRLDLt_absS
c = Combi(hessian_dense,PDataLDLt,solve_modelTRDiagAbs,preprocessLDLt,decreaseFact,Tparam())
include("TemplateS.jl")
