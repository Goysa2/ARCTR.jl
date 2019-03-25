function hessian_dense(nlp,x)
    n = length(x)
    H = hess(nlp,x)
    tempH = (H + tril(H, -1)')
    # H = full(tempH)
    H = Matrix(H)
    return H
end
