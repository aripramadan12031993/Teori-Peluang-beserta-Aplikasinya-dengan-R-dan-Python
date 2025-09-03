#4.1	Teorema Probabilitas Tota
#Kode Praktik - R
# Data
total_population <- 900
cancer_smoker <- 45
cancer_nonsmoker <- 20

# Hitung total penderita kanker
total_cancer <- cancer_smoker + cancer_nonsmoker

# Hitung probabilitas penderita kanker paru-paru
prob_cancer <- total_cancer / total_population
#Output - R
#cat("Total penderita kanker:", total_cancer, "\n")
#cat("Probabilitas seseorang yang dipilih menderita kanker paru-paru:", round(prob_cancer, 4), "\n")

#4.2	 Probabilitas Kejadian Bebas dan Bersyarat
#Kode Praktik - R
# Probabilitas A hidup 50 tahun
P_A <- 0.7

# Probabilitas B hidup 90 tahun
P_B <- 0.1

# Asumsikan A dan B independen
P_A_and_B <- P_A * P_B
#Output - R
# Cetak hasil
#cat("Probabilitas bahwa A dan B hidup dalam 90 tahun adalah:", P_A_and_B, "\n")

#Kode Praktik - R
# Jumlah apel
apel_hijau <- 10
apel_merah <- 15
total_apel <- apel_hijau + apel_merah

# P(B): apel merah diambil pertama
P_B <- apel_merah / total_apel

# P(A|B): apel hijau diambil kedua, setelah apel merah diambil
P_A_given_B <- apel_hijau / (total_apel - 1)

# P(A ∩ B): merah dulu, lalu hijau
P_A_irisan_B <- P_B * P_A_given_B
#Output - R
#cat("P(A ∩ B) =", round(P_A_irisan_B, 4), "\n")

#Kode Praktik - R
# Data jumlah mahasiswa
diterima_laki <- 25
ditolak_laki <- 150
total_laki <- diterima_laki + ditolak_laki

diterima_perempuan <- 40
ditolak_perempuan <- 200
total_perempuan <- diterima_perempuan + ditolak_perempuan

total_seluruh <- total_laki + total_perempuan

# Probabilitas P(A|B) = P(A ∩ B) / P(B)
P_A_given_B <- (diterima_laki / total_seluruh) / (total_laki / total_seluruh)

# Probabilitas P(A|Bᶜ)
P_A_given_Bc <- (diterima_perempuan / total_seluruh) / (total_perempuan / total_seluruh)

# Probabilitas P(Aᶜ|B)
P_Ac_given_B <- (ditolak_laki / total_seluruh) / (total_laki / total_seluruh)

# Cetak hasil
cat("P(A|B) =", P_A_given_B, "\n")
cat("P(A|Bᶜ) =", P_A_given_Bc, "\n")
cat("P(Aᶜ|B) =", P_Ac_given_B, "\n")
#Output - R

#P(A|B) = 0.1428571   # = 1/7
#P(A|Bᶜ) = 0.1666667  # = 1/6
#P(Aᶜ|B) = 0.8571429  # = 6/7

#4.3	 Teorema Bayes
#Kode Praktik – R
# Probabilitas pelanggan ditempatkan di hotel
P_I <- 0.2
P_B <- 0.5
P_S <- 0.3

# Probabilitas kamar mandi rusak di tiap hotel
P_D_given_I <- 0.05
P_D_given_B <- 0.04
P_D_given_S <- 0.08

# 1. Total probabilitas kamar mandi rusak (Teorema Probabilitas Total)
P_D <- (P_I * P_D_given_I) + (P_B * P_D_given_B) + (P_S * P_D_given_S)

# 2. Probabilitas pelanggan di Hotel S jika kamar mandi rusak (Teorema Bayes)
P_S_given_D <- (P_S * P_D_given_S) / P_D
#Output - R
# Output hasil
#cat("Peluang kamar mandi tidak baik (P(D)) =", round(P_D, 4), "\n")
#cat("Peluang pelanggan di Hotel S jika kamar mandi tidak baik (P(S|D)) =", round(P_S_given_D, 4), "\n")




