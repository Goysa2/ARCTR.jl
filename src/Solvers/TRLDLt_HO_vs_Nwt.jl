export TRLDLt_HO_vs_Nwt

function TRLDLt_HO_vs_Nwt(nlp 	   :: AbstractNLPModel,
              	       		  nlpstop :: NLPStopping;
				   	          corr_ho :: Symbol = :Shamanskii,
				   	          kwargs...
               	   	          )

	T = eltype(nlp.meta.x0)

	return TRARC(nlp,
				  nlpstop;
				  TR = TrustRegion(T(10.0)),
				  c = Combi(hessian_dense,PDataLDLt{eltype(nlp.meta.x0)},  (x, y, z) -> solve_modelTRDiag_HO(x, y , z, ho_correction = corr_ho, fact = 2.0), preprocessLDLt, decreaseFact, Tparam{eltype(nlp.meta.x0)}()),
				  kwargs...
				  )
end