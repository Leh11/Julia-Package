using FileIO, ImageMagick, ImageIO, Images
include("Read.jl")

pathHH = "Data/NISARA-00914/NISARA_00914_HH.mlc"
pathHV = "Data/NISARA-00914/NISARA_00914_HV.mlc"
pathVV = "Data/NISARA-00914/NISARA_00914_VV.mlc"

dims = (6451, 3300)
read_bin(pathHH, pathHV, pathVV, dims)

