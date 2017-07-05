fname = :ST_ARCdense
c = Combi(hessian_dense,PDataST,solve_modelST_ARC,preprocessST,decreaseGen,TparamsST())
include("Template.jl")

fname = :ST_ARCdenseS
c = Combi(hessian_dense,PDataST,solve_modelST_ARC,preprocessST,decreaseGen,TparamsST())
include("TemplateS.jl")
