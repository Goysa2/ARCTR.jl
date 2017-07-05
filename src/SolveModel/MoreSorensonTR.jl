function MoreSorensonTR(success, Δ, λIn, g̃, δ:: Float64; M=[0.0])
    # Solve the TR subproblem once diagonalized into Δ using the L₂ norm

    # Setup the problem
    if M==[0.0]  M = ones(Δ) ; end
    Min = minimum(Δ + λIn*M)
    #assert(Min >= 0.0)
    # Min < 0.0  && println("Assertion failed MoreSorensonTR:  minimum(Δ + λIn*M) = $Min")
    ϵ = 1.0e-10# * (1.0 + λIn)

    if success # take care of eventual hard case and Newton's direction interior (λ=0)
        # (PData.Δ+PData.λ*M) ⪰ 0
        λ = max(ϵ, λIn + ϵ * (1.0 + λIn)) # to make sure (Δ+λ*M) ≻ 0
        
        d̃ = -(Δ+λ*M) .\ g̃
        normd̃2 = d̃⋅(M .* d̃)
        if normd̃2 < δ*δ   
            if λIn == 0.0 # Newton's direction
                λ = λIn
                #println(" Newton's direction inside the region")
                #  d̃ is the Newton's direction, nothing more to do
            else              # hard case
                #println(" hard case")
                bidon, i = findmin(Δ)
                d̃[i] =0.0; d̃[i] = - sign(g̃[i]) * sqrt(δ^2 - normd̃2)
            end
        else
            d̃,λ = solve_diagTR(λ,Δ,g̃,δ,ϵ,M=M)
        end      
    else
        # hard case should not occurr if δ reduction is sufficient. If not, Newton's direction
        # may be tried in solve_diagTR and by luck, improve the convergence. Otherwise, after
        # a sufficient decrease of δ, a direction on the boundary will be computed.
        # Solve the subproblem (Δ + λ I) d̃ = -g̃ such that ||d̃|| = δ
        d̃,λ = solve_diagTR(λIn,Δ,g̃,δ,ϵ,M=M)
    end

    return d̃, λ
end
