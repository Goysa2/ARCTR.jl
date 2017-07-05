fname = :ARCqKsparse
c = Combi(hessian_sparse,PDataK,solve_modelKARC,preprocessKARC,decreaseKARC,TparamsKARC())
include("Template.jl")

fname = :ARCqKsparseS
c = Combi(hessian_sparse,PDataK,solve_modelKARC,preprocessKARC,decreaseKARC,TparamsKARC())
include("TemplateS.jl")
