fname = :TRKdense
c = Combi(hessian_dense,PDataK,solve_modelKTR,preprocessKTR,decreaseKTR,TparamsKTR())
include("Template.jl")

fname = :TRKdenseS
c = Combi(hessian_dense,PDataK,solve_modelKTR,preprocessKTR,decreaseKTR,TparamsKTR())
include("TemplateS.jl")
