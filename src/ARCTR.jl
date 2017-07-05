module ARCTR
using NLPModels

using LinearOperators
using Krylov
using Stopping


include("Includes.jl")

include("TRARC.jl")
include("TRARCStop.jl")

include("Solvers/solvers.jl")

end # module
