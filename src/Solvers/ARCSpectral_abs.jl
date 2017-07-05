fname = :ARCSpectral_abs

c = ARCTR.Combi(ARCTR.hessian_dense,ARCTR.PDataSpectral,ARCTR.solve_modelARCDiagAbs,ARCTR.preprocessSpectral,ARCTR.decreaseFact,ARCTR.Tparam())

include("Template.jl")

fname = :ARCSpectral_absS

c = ARCTR.Combi(ARCTR.hessian_dense,ARCTR.PDataSpectral,ARCTR.solve_modelARCDiagAbs,ARCTR.preprocessSpectral,ARCTR.decreaseFact,ARCTR.Tparam())

include("TemplateS.jl")
