#3.2.1	Aturan Penjumlahan
#Kode Praktik – R 
# Jumlah jenis pilihan
jumlah_kue <- 3
jumlah_minuman <- 4
# Aturan penjumlahan (jika hanya memilih salah satu)
total_pilihan <- jumlah_kue + jumlah_minuman
# Cetak hasil
print(paste("Total kemungkinan pilihan:", total_pilihan))
#Output– R
#Total kemungkinan pilihan:7

#3.2.2	Aturan Perkalian
#Kode Praktik – R 
# Jumlah pilihan di setiap tahap
kue <- 3
minuman <- 4
# Hitung total kombinasi
total_kombinasi <- kue * minuman
#Output– R
# Cetak hasil
#print(total_kombinasi)  # Output: 12

#3.2.3	Kombinasi
#Kode Praktik – R 
n <- 5
r <- 3
kombinasi <- choose(n, r)
print(paste("Jumlah kombinasi:", kombinasi))
#Output R:
#[1] "Jumlah kombinasi: 10"

#3.2.4	Permutasi
#Kode Praktik – R 
n <- 5
r <- 3
permutasi <- factorial(n) / factorial(n - r)
print(paste("Jumlah permutasi:", permutasi))
#Output R:
#[1] "Jumlah permutasi: 60"

#3.3	Probabilitas Kejadian
#Kode Praktik – R 
jumlah_keinginan <- 3   # Angka genap: 2, 4, 6
jumlah_total <- 6
probabilitas <- jumlah_keinginan / jumlah_total
print(paste("Probabilitas muncul angka genap:", probabilitas))
#Output R:
#[1] "Probabilitas muncul angka genap: 0.5"

#3.3.2	Aturan Penjumlahan Probabilitas
#a.	Kejadian Saling Lepas (Mutually Exclusive Events)
#Kode Praktik – R 
P_A <- 1/6
P_B <- 1/6
P_union <- P_A + P_B
print(paste("Probabilitas A atau B terjadi:", P_union))
#Output R:
#[1] "Probabilitas A atau B terjadi: 0.333333333333333"

#b.	Kejadian Tidak Saling Lepas (Non-Mutually Exclusive Events)
#Kode Praktik – R 
P_A <- 0.6
P_B <- 0.4
P_A_dan_B <- 0.25
P_union <- P_A + P_B - P_A_dan_B
print(paste("Probabilitas A atau B terjadi:", P_union))
#Output R:
#[1] "Probabilitas A atau B terjadi: 0.75"

#3.3.3	Aturan Perkalian Probabilitas
#a.	Kejadian Independen (Independent Events)
#Kode Praktik – R 
P_A <- 1/6  # Probabilitas muncul angka 2 pada dadu
P_B <- 1/2  # Probabilitas muncul gambar pada koin
P_intersection <- P_A * P_B
print(paste("Probabilitas A dan B terjadi bersamaan:", P_intersection))
#Output R:
#[1] "Probabilitas A dan B terjadi bersamaan: 0.0833333333333333"

#b.	Kejadian Tidak Independen (Dependent Events)
#Kode Praktik – R 
P_A <- 5/8        # Probabilitas bola pertama merah
P_B_given_A <- 4/7  # Probabilitas bola kedua merah jika bola pertama merah
P_intersection <- P_A * P_B_given_A
print(paste("Probabilitas kedua bola merah:", P_intersection))
#Output R:
#[1] "Probabilitas kedua bola merah: 0.357142857142857"



