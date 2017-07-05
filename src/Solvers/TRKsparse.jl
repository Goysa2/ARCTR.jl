fname = :TRKsparse
c = Combi(hessian_sparse,PDataK,solve_modelKTR,preprocessKTR,decreaseKTR,TparamsKTR())
include("Template.jl")

fname = :TRKsparseS
c = Combi(hessian_sparse,PDataK,solve_modelKTR,preprocessKTR,decreaseKTR,TparamsKTR())
include("TemplateS.jl")
