@eval begin
    export $fname


    function $fname(nlp :: AbstractNLPModel,
                    x0 :: Array{Float64,1};
                    kwargs... )  
        n = nlp.meta.nvar
        
        c = $c
        
        ARCK = TrustRegion(10.0 )
        
        x, f, gNorm, gnorm2, iter, calls, optimal, status = TRARC(nlp, 
                                                                  x0,
                                                                  ARCK,
                                                                  c;
                                                                  kwargs...)
        
        return (x, f, gNorm, iter, optimal, status == :UserLimit, status)
    end 
    #
    function $fname(nlp :: AbstractNLPModel; kwargs ...)
        x0 = copy(nlp.meta.x0)
        return  $fname(nlp, x0; kwargs... )
    end
end
