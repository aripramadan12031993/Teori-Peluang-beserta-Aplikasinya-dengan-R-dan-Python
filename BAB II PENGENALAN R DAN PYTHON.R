#2.3.1	“Hello World” dan Komentar (Comment)
#Kode Praktik – R 
print("Hello World")
# Ini adalah komentar

#Output– R
#Hello World

#2.3.2	Variabel dan Tipe Data
#Kode Praktik – R 
x <- 10        # Numeric
y <- "R"       # Character
z <- TRUE      # Logical

#Kode Praktik – R 
vec <- c(1, 2, 3) # Vector/List
print(vec)

mat <- matrix(1:9, nrow=3) # Matrix/Array
print(mat)

df <- data.frame(Nama=c("Andi", "Budi"), Umur=c(25,30)) # DataFrame
print(df)

#2.3.4	Percabangan (Branching)
#Kode Praktik – R 
nilai <- 70
if (nilai >= 75) {
  print("Lulus")
} else {
  print("Tidak Lulus")
}

#2.3.5	Perulangan (Looping)
#Kode Praktik – R 
for (i in 1:5) {
  print(paste("Iterasi ke-", i))
}

#2.3.6	Fungsi (Function)
#Kode Praktik – R 
tambah <- function(a, b) {
  return(a + b)
}
print(tambah(5, 7))

#2.4.1	Library Penting di R
#a. stats
#Kode Praktik – R 
# stats untuk Distribusi Normal
# Menghitung probabilitas tinggi badan antara 160 dan 170 cm
pnorm(170, mean = 165, sd = 7) - pnorm(160, mean = 165, sd = 7)

#b.	ggplot2
#Kode Praktik – R 
# ggplot2 untuk Visualisasi Distribusi
library(ggplot2)
data <- data.frame(x = rnorm(1000, mean = 165, sd = 7))
ggplot(data, aes(x = x)) +
  geom_histogram(binwidth = 2, fill = "skyblue", color = "black") +
  labs(title = "Distribusi Normal", x = "Nilai", y = "Frekuensi")

#c.	dplyr
#Kode Praktik – R 
# dplyr untuk Manipulasi Data
library(dplyr)
data <- data.frame(nilai = rnorm(1000, mean = 165, sd = 7))
data %>%
  filter(nilai >= 160 & nilai <= 170) %>%
  summarise(jumlah = n())

#2.4.2	Library Penting di Python
#a.	numpy
#Kode Praktik – Python 
# numpy untuk simulasi Distribusi Binomial
import numpy as np
hasil = np.random.binomial(n=1, p=0.5, size=1000)
np.sum(hasil)  # Jumlah kepala

#b.	scipy.stats
#Kode Praktik – Python 
# scipy.stats untuk perhitungan Probabilitas Distribusi Normal

from scipy.stats import norm
prob = norm.cdf(170, loc=165, scale=7) - norm.cdf(160, loc=165, scale=7)
print(f"Probabilitas: {prob:.4f}")

#c.	pandas
#Kode Praktik – Python 
# pandas untuk analisis data
import pandas as pd
data = pd.DataFrame({'nilai': np.random.normal(165, 7, 1000)})
filtered = data[(data['nilai'] >= 160) & (data['nilai'] <= 170)]
print(f"Jumlah data antara 160-170 cm: {len(filtered)}")

#d.	matplotlib dan seaborn
#Kode Praktik – Python 
# matplotlib dan seaborn untuk visualisasi histogram
import matplotlib.pyplot as plt
plt.hist(data['nilai'], bins=20, color='skyblue', edgecolor='black')
plt.title("Distribusi Normal")
plt.xlabel("Nilai")
plt.ylabel("Frekuensi")
plt.show()

#2.5.1	Langkah-langkah Simulasi Lemparan Koin
#a.	Menentukan jumlah percobaan, misalnya 1000 kali lemparan koin
#Kode Praktik – R 
# Simulasi lempar koin sebanyak 1000 kali
set.seed(123)  # Untuk hasil yang konsisten
n <- 1000

#b.	Menggunakan fungsi distribusi binomial untuk menghasilkan data acak. Di R, kita menggunakan rbinom(n, size, prob). Di Python, kita menggunakan numpy.random.binomial(n, p, size).
Kode Praktik – R 
hasil <- rbinom(n, size = 1, prob = 0.5)

#c.	Menghitung frekuensi hasil: berapa kali muncul kepala dan ekor.
#Kode Praktik – R 
# Menghitung frekuensi kepala (1) dan ekor (0)
frekuensi <- table(hasil)
names(frekuensi) <- c("Ekor (0)", "Kepala (1)")

#e.	Membuat visualisasi berupa histogram atau diagram batang.
#Kode Praktik – R 
# Visualisasi hasil
barplot(frekuensi,
        col = c("orange", "blue"),
        main = "Hasil Simulasi Lempar Koin (1000 Kali)",
        ylab = "Frekuensi",
        xlab = "Hasil",
        ylim = c(0, max(frekuensi) + 50))
