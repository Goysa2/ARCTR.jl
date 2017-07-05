fname = :ARCqKOp
c = Combi(hessian_operator,PDataK,solve_modelKARC,preprocessKARC,decreaseKARC,TparamsKARC())
include("Template.jl")

fname = :ARCqKOpS
c = Combi(hessian_operator,PDataK,solve_modelKARC,preprocessKARC,decreaseKARC,TparamsKARC())
include("TemplateS.jl")
