fname = :ST_ARCsparse
c = Combi(hessian_sparse,PDataST,solve_modelST_ARC,preprocessST,decreaseGen,TparamsST())
include("Template.jl")

fname = :ST_ARCsparseS
c = Combi(hessian_sparse,PDataST,solve_modelST_ARC,preprocessST,decreaseGen,TparamsST())
include("TemplateS.jl")
