function solve_diagTR(λ,Δ,g̃,δ,ϵ; M = [0.0])
    # λ underestimates the required value λstar such that ||d̃(λstar)|| = δ
    # where d̃(λ) =  -(Δ+λ*M) .\ g̃
    if M==[0.0]  M = ones(Δ) ; end
    assert(minimum(M + λ*M) >= 0.0)
    λin = λ
    d̃ = -(Δ+λ*M) .\ g̃
    d̃Md̃ = d̃⋅(M .* d̃)
    normd̃ = sqrt(d̃Md̃)
    
    tolerance = 1e-06
    # Newton iterations
    iter_nwt = 0
    #println(" Nwt $iter_nwt : λ = $λ  normd̃ = $normd̃  δ = $δ)")
    while (normd̃ >= (δ+tolerance*normd̃)) && (iter_nwt<40) 
        dotd̃ = -(Δ+λ*M) .\ (M .* d̃)
        Δλ = ((normd̃-δ)/δ) * (d̃Md̃/(d̃ ⋅ (M .* dotd̃)))
        λ =  max(λ - Δλ, λin+1.0e-10)
        if !(λ>=0.0)
            println("iter_nwt = $iter_nwt")
            println("λin = $λin")    
            println("λ = $λ")    
            println("δ = $δ")
            println("M = $(M)")
            println("d̃Md̃ = $d̃Md̃")
            println("normg̃ = $(norm(g̃))")
            println("Δ = $Δ")
            println("Δ+λin*M = $(Δ+λin*M)")
        end
        d̃ = -(Δ+λ*M) .\ g̃
        d̃Md̃ = d̃⋅(M .* d̃)
        normd̃ = sqrt(d̃Md̃)
        if !(λ>=0.0)
            println("iter_nwt = $iter_nwt")
            println("λin = $λin")    
            println("λ = $λ")    
            println("δ = $δ")
            println("M = $(M)")
            println("d̃Md̃ = $d̃Md̃")
            println("normg̃ = $(norm(g̃))")
            println("Δ = $Δ")
            println("Δ+λin*M = $(Δ+λin*M)")
        end
        assert(λ>=0.0)
        iter_nwt += 1
    end
    #println(" λ computation, iter_nwt : $iter_nwt  λ  $λ")

    return d̃,λ
end
