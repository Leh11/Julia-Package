
function open_data(path, dims)
    channel = Array{Float32}(undef, dims)
    open(path) do io
        read!(io, channel)
    end
    return channel
end

function read_bin(pathHH, pathHV, pathVV, dims)
    HH = open_data(pathHH, dims)
    HV = open_data(pathHV, dims)
    VV = open_data(pathVV, dims)

    img = Array{Float64}((HH, HV, VV), (3, dims))
end
