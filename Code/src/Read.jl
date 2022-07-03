using RCall
function read_bin!(hh::String, hv::String, vv::String, lin::Int, col::Int)

    channel1 = convert(Array{Float64},
        R"""matrix(readBin(file($pathHH, "rb"), double(), n=($lin * $col),
                size=4, endian="little"),
            nrow=$lin, ncol=$col, byrow=T)"""
    )

    channel2 = convert(Array{Float64},
        R"""matrix(readBin(file($pathHV, "rb"), double(), n=($lin * $col),
                size=4, endian="little"),
            nrow=$lin, ncol=$col, byrow=T)"""
    )

    channel3 = convert(Array{Float64},
        R"""matrix(readBin(file($pathVV, "rb"), double(), n=($lin * $col),
                size=4, endian="little"),
            nrow=$lin, ncol=$col, byrow=T)"""
    )
    #(3, 1, 2)
    return reshape([channel1 channel2 channel3], (lin, col, 3))
end
