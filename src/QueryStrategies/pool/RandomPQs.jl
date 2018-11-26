struct RandomPQs <: PoolQs end

function qs_score(qs::RandomPQs, x::Array{T, 2}, labels::Dict{Symbol, Array{Int, 1}})::Array{Float64, 1} where T <: Real
    return rand(size(x, 2))
end

function qs_score(qs::RandomPQs,
                  x::Array{T, 2},
                  labels::Dict{Symbol, Array{Int, 1}},
                  subspaces::Vector{Vector{Int}}) where T <: Real
    return [rand(size(x, 2)) for i in eachindex(subspaces)]
end
