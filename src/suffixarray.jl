export SuffixArray

struct SuffixArray
    data::Vector
    index::Vector{Int}
    lcps::Vector{Int}
end

mutable struct SuffixArray
    data::Vector{Int}
    lcparray::Vector{Int}
end

Base.getindex(sa::SuffixArray, i::Int) = sa.data[i]

function SuffixArray(text::Vector{Int})
    sa = sais(text)
    lcparray = StringMatch.lcparray(sa, text)
    SuffixArray(sa, lcparray)
end
