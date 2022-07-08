using Images, ImageView, Plots, PNGFiles

img = load("Img/pauli_decorr.png")

save("pauli_decorr.png", img[800:end, :])
