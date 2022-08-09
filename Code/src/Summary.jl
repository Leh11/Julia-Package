using Images, ImageView, Plots, PNGFiles

img = load("Img/pauli_decorr.png")

save("pauli_decorr.png", img[800:end, :])


#Calcule o volume do sólido 𝐸, onde 𝐸 é o cilindro reto sólido, cuja base é a região do plano 𝑥𝑦 que está dentro da cardioide 𝑟=1+cos𝜃 e fora da circunferência 𝑟=1 e cujo topo está no plano 𝑧=1,6.

