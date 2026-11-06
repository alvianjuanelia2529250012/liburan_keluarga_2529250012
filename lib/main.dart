import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Liburan Keluarga"),
          backgroundColor: const Color.fromARGB(255, 54, 160, 57),
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Taman Bunga Celosia',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color:  Color.fromARGB(255, 54, 160, 57),
                ),
              ),
              const SizedBox(height: 13,),
              Row(
                children: [
                  Icon(Icons.star,color: Colors.yellow,size: 16),
                  SizedBox(width: 6),
                  Text('4.6',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                  SizedBox(width: 6),
                  Icon(Icons.family_restroom, color:  Color.fromARGB(255, 54, 160, 57),size:16),
                  SizedBox(width: 6),
                  Expanded(child: Text('Cocok untuk Keluarga',style: TextStyle(fontSize: 12)), )
                ],
              ),
              const SizedBox(height: 13),
              ClipRRect(
                borderRadius: BorderRadiusGeometry.circular(12),
                child: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSxw1_DDviZcepvi978s0Euj2jRHpWXToNbX2uWd4eB3Es04NQWsQMQvnc&s=10',
                width: double.infinity,
                height: 210.0,
                fit: BoxFit.cover,),
              ),
              const SizedBox(height: 13),
              const Text('Tentang Taman',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color:  Color.fromARGB(255, 54, 160, 57),
                ),
              ),
              const SizedBox(height: 13),
              const Text('Taman Bunga menjadi tempat rekreasi yang menawarkan pemandangan berwarna-warni dan suasana yang menyegarkan. Pengunjung dapat berjalan santai, berfoto bersama keluarga, serta menikmati waktu di ruang terbuka',
              textAlign: TextAlign.justify,
              style: TextStyle(
                  fontSize: 15,
                  height: 1,
                  color: Colors.black87
                ),
              ),
              const SizedBox(height: 13),
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(16),
                color: const Color.fromARGB(255, 209, 245, 168),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Rencana Kunjungan',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color:  Color.fromARGB(255, 54, 160, 57),
                      ),
                    ),
                    const SizedBox(height: 13),
                    Row(children: [
                        Icon(Icons.location_on,color:  Color.fromARGB(255, 54, 160, 57),size: 16),
                        SizedBox(width: 6),
                        Text('Lokasi',style: TextStyle(fontWeight: FontWeight.bold,)),
                        Spacer(),
                        Text('Bandungan,Semarang',style: TextStyle(fontWeight: FontWeight.bold,)),
                      ],
                    ),
                    Divider(height: 28,),
                    Row(children: [
                        Icon(Icons.access_time,color:  Color.fromARGB(255, 54, 160, 57),size: 16),
                        SizedBox(width: 6),
                        Text('Jam Buka',style: TextStyle(fontWeight: FontWeight.bold,)),
                        Spacer(),
                        Text('08.00-17.00',style: TextStyle(fontWeight: FontWeight.bold,)),
                      ],
                    ),
                    Divider(height: 28,),
                    Row(children: [
                        Icon(Icons.confirmation_num,color:  Color.fromARGB(255, 54, 160, 57),size: 16),
                        SizedBox(width: 6),
                        Text('Harga Tiket',style: TextStyle(fontWeight: FontWeight.bold,)),
                        Spacer(),
                        Text('Rp25.000',style: TextStyle(fontWeight: FontWeight.bold,)),
                      ],
                    ),
                  ],
                ),
              ),
            const SizedBox(height: 13),
            SizedBox()  
            ],
          ),
        )
      ), 
    );
  }
}
