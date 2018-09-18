export SuffixArray

struct SuffixArray
    data::Vector
    index::Vector{Int}
    lcps::Vector{Int}
end

function SuffixArray(data::String)
    index = sais(data)
    lcps = lcparray(data, index)
end

function Base.findall(sa::SuffixArray, query::String)
    chars = Vector{Char}(query)
    i = 1
    j = length(sa)
    while i <= j
        k = (i+j) ÷ 2
        ii = sa.index[k]
        while sa.data[ii+m] == chars[m]
            m == length(chars) && return ii
            m += 1
        end

    end
    
end
