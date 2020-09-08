# library for reinforcement learning agents

module Agents

export AbstractAgent

abstract type AbstractAgent end

mutable struct QAgent <: AbstractAgent
    state::Vector
    action::Vector
    table::Matrix

    Agent(Nₛ::Vector, Nₐ::Int, P::Function) =
        new(S₀, zeros(Nₐ), P)
end

end
