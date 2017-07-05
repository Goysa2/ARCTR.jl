fname = :ST_TRsparse
c = Combi(hessian_sparse,PDataST,solve_modelST_TR,preprocessST,decreaseGen,TparamsST())
include("Template.jl")

fname = :ST_TRsparseS
c = Combi(hessian_sparse,PDataST,solve_modelST_TR,preprocessST,decreaseGen,TparamsST())
include("TemplateS.jl")
