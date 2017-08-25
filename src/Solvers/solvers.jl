#export ARCSpectral, ARCSpectral_abs, ARCLDLt, ARCqKOp
export ALL_solvers

# Valid combinations
#

ALL_solvers = Function[] 


include("ARCSpectral.jl")
push!(ALL_solvers,eval(fname))

include("ARCSpectral_abs.jl")
push!(ALL_solvers,eval(fname))



include("TRSpectral.jl")
push!(ALL_solvers,eval(fname))

include("TRSpectral_abs.jl")
push!(ALL_solvers,eval(fname))



include("ARCLDLt.jl")
push!(ALL_solvers,eval(fname))

include("ARCLDLt_abs.jl")
push!(ALL_solvers,eval(fname))



include("TRLDLt.jl")
push!(ALL_solvers,eval(fname))

include("TRLDLt_abs.jl")
push!(ALL_solvers,eval(fname))



include("ARCqKOp.jl")
push!(ALL_solvers,eval(fname))


include("ARCqKsparse.jl")
push!(ALL_solvers,eval(fname))

include("ARCqKdense.jl")
push!(ALL_solvers,eval(fname))



include("TRKOp.jl")
push!(ALL_solvers,eval(fname))

include("TRKsparse.jl")
push!(ALL_solvers,eval(fname))

include("TRKdense.jl")
push!(ALL_solvers,eval(fname))



include("ST_TROp.jl")
push!(ALL_solvers,eval(fname))

include("ST_TRsparse.jl")
push!(ALL_solvers,eval(fname))

include("ST_TRdense.jl")
push!(ALL_solvers,eval(fname))



include("ST_ARCOp.jl")
push!(ALL_solvers,eval(fname))

include("ST_ARCsparse.jl")
push!(ALL_solvers,eval(fname))

include("ST_ARCdense.jl")
push!(ALL_solvers,eval(fname))


#include("HSLsolvers.jl")

