using StatsBase
function equalization(img, dim)
    Img = zeros(size(img))
    A1 = vec(img[:, :, 1])
    A2 = vec(img[:, :, 2])
    A3 = vec(img[:, :, 3])

    Img[:, :, 1] = ecdf(A1)(A1)
    Img[:, :, 2] = ecdf(A2)(A2)
    Img[:, :, 3] = ecdf(A3)(A3)

    #= v1 = vec(channel1)
    v2 = vec(channel2)
    v3 = vec(channel3)

    channel1 = reshape(ecdf(v1)(v1), (dim[1], dim[2]))
    channel2 = reshape(ecdf(v2)(v2), (dim[1], dim[2]))
    channel3 = reshape(ecdf(v3)(v3), (dim[1], dim[2])) =#

    return Img #, channel1, channel2, channel3
end