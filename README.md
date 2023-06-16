[![scrape_hashtag](https://github.com/NadiraNisa/Nadnad/actions/workflows/main.yml/badge.svg)](https://github.com/NadiraNisa/Nadnad/actions/workflows/main.yml)

<div align="center">
<img width="300" alt="logo ipb" src="https://github.com/NadiraNisa/Nadnad/assets/111562803/98189826-c996-4c9a-84d7-622d09cc96d1">

  
# **Visualiasi Data Release Movie**

• [Pendahuluan](#video_camera-Pendahuluan)
• [Package](#computer-Package) 
• [Deskripsi Data](#pen-Deskripsi-Data)
• [Dokumen](#memo-Dokumen)
• [Pengembang](#girl-Pengembang)
  
</div>
  

## :video_camera: **Pendahuluan**
<div align="justify">
  Menurut Hiawan Pratista (2008), film adalah media audio visual yang menggabungkan kedua unsur, yaitu naratif dan sinematik. Unsur naratif berhubungan dengan tema sedangkan unsur sinematik merupakan alur atau jalan ceritanya yang runtun dari awal hingga akhir. Film sendiri memiliki definisi sebagai sebuah medium komunikasi audio visual yang tak hanya memberikan hiburan, tapi juga menawarkan informasi, dan bahkan bisa menyentuh emosi penontonnya. Dalam pembuatan film harus melalui berbagai proses seperti pemikiran dan proses teknis, dalam pencarian ide dan gagasan cerita. Berbagai jenis genre film yang telah dikembangkan contohnya seperti komedi, romantis, fiksi, horor, action, petualangan, dokumenter dan masih banyak lagi.

  Data release film ini berasal dari website https://www.the-numbers.com/movies/release-schedule, website tersebut dapat dijadikan referensi untuk dapat mengetahui kapan dan film apa yang akan di release.

</div>


## :computer: **Package**
<div align="justify">
Package yang digunakan dalam melakukan scraping data tabel seperti nama film, tangga rilis, hingga distributor film menggunakan:

<img width="291" alt="package" src="https://github.com/NadiraNisa/Nadnad/assets/111562803/b40e0001-959c-4367-aa47-e61f21c0dd59">


- rvest

  
Packages “rvest” mempunyai beberapa fungsi, yaitu read_html(), html_nodes(), html_session(), dan html_table() (Krotov & Tennyson, 2021). Data yang terekstrak dapat berupa data terstruktur maupun data tidak terstruktur, yang tentu membutuhkan proses agar data dapat dianalisis.

- tidyverse

Package Tidyverse merupakan paket yang berfungsi untuk melakukan pengolahan data pada aplikasi R seperti import, export, visualisasi, dan pemodelan data.


- mongolite


Package mongolite digunakan untuk memperoleh data dari mongoDB yang kemudian akan dilakukan proses pengolahan data.


  
</div>


## :pen: Deskripsi Data
<div align="justify">
Data yang digunakan pada projek ini adalah tentang schedule release movie yang berasal dari website https://www.the-numbers.com/movies/release-schedule sebagai berikut:

  
1. Judul Movie
2. Tanggal Rilis
3. Distributor
</div>

<img width="695" alt="Data movie" src="https://github.com/NadiraNisa/Nadnad/assets/111562803/08be4619-1ac5-4358-ad9a-3dc2331f2fc4">


## :memo: **Dokumen**
Contoh Dokumen pada MongoDb:

```
{
"_id":{"$oid":"64898e3c83af4974540f0431"},
"new_movie":"Scarface (Special Engagement, re-release)",
"new_date":"November 12",
"new_distributor":"Fathom Events"
}
```

```
{"_id":{"$oid":"64898e3c83af4974540f0433"},
"new_movie":"Malibu Horror Story (Limited)",
"new_date":"September 29",
"new_distributor":"Iconic Releasing"}
```


## :girl: **Pengembang**
Nadira Nisa Alwani (G1501222048)
