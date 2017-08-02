type TparamsKTR <: Tparams  # specific parameters for this Krylov variant
    τ :: Float64
    shifts :: Array{Float64,1}
    nshifts :: Int
    function TparamsKTR()
        τ = 0.5
        shifts = [0.0; 10.0.^(collect(-15.0:1.0:20.0))]
        nshifts = size(shifts, 1)
        return new(τ,shifts,nshifts)
    end
end
