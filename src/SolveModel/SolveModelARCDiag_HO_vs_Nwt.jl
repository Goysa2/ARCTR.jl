export solve_modelARCDiag_HO_vs_Nwt

function solve_modelARCDiag_HO_vs_Nwt(nlp_stop, PData :: PDataFact, α:: T; ho_correction :: Symbol = :Shamanskii, λfact = 1.0, nwt_res_fact = 0.8) where T
    # Solve the ARC subproblem once diagonalized into Δ
    nlp_at_x = nlp_stop.current_state
    # Setup the problem
    # M = ones(PData.Δ)
    # M = fill(1, size(PData.Δ))
    M = ones(T, size(PData.Δ))

    # ϵ = 1.0e-10 * (1.0 + PData.λ)
    ϵ1 = sqrt(eps(T)) / 100.0
    ϵ = T.(ϵ1 * (1.0 + PData.λ))
    λ = max(ϵ,PData.λ+ϵ)

    d̃ = -(PData.Δ+λ*M) .\ PData.g̃
    normd̃ = sqrt(d̃⋅d̃)
    seuil = normd̃/α


    # Solve the subproblem (Δ + λ I) d̃ = -g̃ such that λ = ||d̃||/α
    d̃,λ = solve_diag(λ,PData.Δ,PData.g̃,seuil,α,ϵ)

    PData.λ = λ
    # Transform back d̃ into d

    d = AInv(PData,d̃)

    if PData.λ <= λfact
        dHO = eval(ho_correction)(nlp_stop, PData, d, PData.g̃)
        nwt_residual = (-(nlp_at_x.gx + 0.5 * nlp_at_x.Hx * d)⋅d)
        if (norm(dHO) < 2.0 .* norm(d)) && ((-(nlp_at_x.gx + 0.5 * nlp_at_x.Hx * dHO)⋅dHO) >= nwt_res_fact .* nwt_residual)
            return dHO, dHO, PData.λ
        else
            return d, dHO, PData.λ
        end
    end

    return d, NaN * rand(length(d)), λ
end
