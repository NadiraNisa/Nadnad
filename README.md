[![scrape_hashtag](https://github.com/NadiraNisa/Nadnad/actions/workflows/main.yml/badge.svg)](https://github.com/NadiraNisa/Nadnad/actions/workflows/main.yml)

<div align="center">
<img width="300" alt="logo ipb" src="https://github.com/NadiraNisa/Nadnad/assets/111562803/98189826-c996-4c9a-84d7-622d09cc96d1">

  
# **Visualiasi Data Release Movie**

• [Pendahuluan](#memo-Pendahuluan)
• [Package](#computer-Package) 
• [Dokumen](#camera_flash-Dokumen)
• [Pengembang](#girl-Pengembang)
  
</div>
  

## :memo: **Pendahuluan**
<div align="justify">
  Menurut Hiawan Pratista (2008), film adalah media audio visual yang menggabungkan kedua unsur, yaitu naratif dan sinematik. Unsur naratif berhubungan dengan tema sedangkan unsur sinematik merupakan alur atau jalan ceritanya yang runtun dari awal hingga akhir. Film sendiri memiliki definisi sebagai sebuah medium komunikasi audio visual yang tak hanya memberikan hiburan, tapi juga menawarkan informasi, dan bahkan bisa menyentuh emosi penontonnya. Dalam pembuatan film harus melalui berbagai proses seperti pemikiran dan proses teknis, dalam pencarian ide dan gagasan cerita. Berbagai jenis genre film yang telah dikembangkan contohnya seperti komedi, romantis, fiksi, horor, action, petualangan, dokumenter dan masih banyak lagi.

  Data release film ini berasal dari website https://www.the-numbers.com/movies/release-schedule, website tersebut dapat dijadikan referensi untuk dapat mengetahui kapan dan film apa yang akan di release.

</div>


## :computer: **Package**
Package yang digunakan dalam melakukan scraping data tabel seperti nama film, tangga rilis, hingga distributor film menggunakan:

<img width="291" alt="package" src="https://github.com/NadiraNisa/Nadnad/assets/111562803/b40e0001-959c-4367-aa47-e61f21c0dd59">




## :camera_flash: **Dokumen**
Contoh Dokumen pada MongoDb:

```
{
"_id":{"$oid":"64898e3c83af4974540f0431"},
"new_movie":"Scarface (Special Engagement, re-release)",
"new_date":"November 12",
"new_distributor":"Fathom Events"
}
```

## :girl: **Pengembang**
Nadira Nisa Alwani (G1501222048)
