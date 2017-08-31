function solve_modelTRDiagAbs(PData :: PDataFact, δ:: Float64)
    # Solve the TR subproblem once diagonalized into Δ using the norm |Δ|
    

    # Setup the subproblem to recover identity regularizing matrix
    # Should this be in pre-process so that PData.λ is indeed used as updated?
    #
    ḡ = PData.g̃   # PData field g̃ actually stores what is called ḡ in the paper (eq (15)
    Δ = PData.Δ

    ϵ =  1.0e-10 # *n_g

    Γ2 = max.(abs.(PData.Δ),ϵ)
    Γ = sqrt.(Γ2)

    Δ̃ = Δ ./ Γ2    # Should be the (equivalent) Γ .\ Δ ./ Γ.
                   # using Γ2 reduces numerical inacuracies from the sqrt.
    g̃ = Γ .\ ḡ

    l_m,i = findmin(Δ̃)
    λ = max(-l_m,0.0)
    
    #d̃,λ = MoreSorensonTR(PData.success, Δ̃, λ, g̃, δ)
    #d̄ = Γ .\ d̃

    d̄,λ = MoreSorensonTR(PData.success, Δ, λ, ḡ, δ, M=Γ2)
  
    PData.λ = λ

    # Transform back d̄ into d
    # d̃ = d̄ #Γ .* d̄
    d = AInv(PData,d̄)  
    #try assert((PData.g̃ + 0.5*PData.Δ .* d̃)⋅d̃ <= 0.0)  catch  @bp  end
#println("*******SolveModelDiagAbs:  PData.g̃⋅d̃ = $(PData.g̃⋅d̃), 0.5 d̃'PData.Δd̃ = $(0.5*(PData.Δ .* d̃)⋅d̃)")
    return d, λ
end
