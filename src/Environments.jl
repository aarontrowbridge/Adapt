# reinforcement learning environments

module Environments

export AbstractEnv, DiscreteEnv, ContinuousEnv, ShortestPath

abstract type AbstractEnv end

abstract type DiscreteEnv <: AbstractEnv end

abstract type ContinuousEnv <: AbstractEnv end

mutable struct ShortestPath <: DiscreteEnv
    dims::Tuple{Int}
    space::Matrix
    nstates::Int
    nactions::Int

    ShortestPath(dims::Tuple{Vararg{Int}}) =
        new(dims, zeros(dims), reduce(*, dims), 2 * length(dims))
end

end
