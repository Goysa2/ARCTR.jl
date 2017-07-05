fname = :ST_ARCOp
c = Combi(hessian_operator,PDataST,solve_modelST_ARC,preprocessST,decreaseGen,TparamsST())
include("Template.jl")

fname = :ST_ARCOpS
c = Combi(hessian_operator,PDataST,solve_modelST_ARC,preprocessST,decreaseGen,TparamsST())
include("TemplateS.jl")
