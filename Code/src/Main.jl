using FileIO, ImageMagick, ImageIO, Images, ImageView, Plots
include("Read.jl")
include("Equalization.jl")

pathHH = "Data/Haywrd_L090/Haywrd_L090HH_CX_01.mlc"
pathHV = "Data/Haywrd_L090/Haywrd_L090HV_CX_01.mlc"
pathVV = "Data/Haywrd_L090/Haywrd_L090VV_CX_01.mlc"

dims = (14065, 3300)

Img = read_bin!(pathHH, pathHV, pathVV, dims[1], dims[2])

ImgEq = equalization(Img, dims)



ImgRGB = colorview(RGB, permutedims(ImgEq, (3, 1, 2)))
#[channel2 channel3 channel1]

