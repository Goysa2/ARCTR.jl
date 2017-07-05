fname = :ST_TRdense
c = Combi(hessian_dense,PDataST,solve_modelST_TR,preprocessST,decreaseGen,TparamsST())
include("Template.jl")

fname = :ST_TRdenseS
c = Combi(hessian_dense,PDataST,solve_modelST_TR,preprocessST,decreaseGen,TparamsST())
include("TemplateS.jl")
