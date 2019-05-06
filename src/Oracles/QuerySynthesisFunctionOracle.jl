struct QuerySynthesisFunctionOracle <: Oracle
    f::Function
end

function ask_oracle(oracle::QuerySynthesisFunctionOracle, query_object::Array{T, 2})::Vector{Symbol} where T <: Real
    return oracle.f(query_object)
end
