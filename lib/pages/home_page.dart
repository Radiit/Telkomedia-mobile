import 'package:flutter/material.dart';
import 'package:telkomedika_app/widgets/reservation_widget.dart';
import '../widgets/doctor_recommendation_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  static const TextStyle textStyle = TextStyle(
    color: Colors.black,
    fontFamily: 'Poppins',
    fontWeight: FontWeight.normal,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            leading: const Icon(
              Icons.person,
              color: Colors.black,
            ),
            foregroundColor: Colors.black,
            backgroundColor: Colors.white,
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Selamat datang!',
                  style: HomePage.textStyle.copyWith(fontSize: 12),
                ),
                const Text(
                  'John Doe',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
            pinned: true,
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'Reservasi Anda (2)',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Lihat semua',
                          style: TextStyle(
                            color: Color.fromRGBO(254, 48, 76, 1),
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                ReservationCard(), // Use ReservationCard widget here
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'Antrian Poli',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      PoliCard(
                        imagePath: 'assets/images/poliUmum.png',
                        title: 'Poli Umum',
                        number: 'Nomor 12',
                      ),
                      PoliCard(
                        imagePath: 'assets/images/poliGigi.png',
                        title: 'Poli Gigi',
                        number: 'Nomor 12',
                      ),
                      PoliCard(
                        imagePath: 'assets/images/poliMata.png',
                        title: 'Poli Mata',
                        number: 'Nomor 12',
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'Rekomendasi Dokter',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                DoctorRecommendationCard(
                  name: "dr. Budi Raharja",
                  department: "Poli Umum",
                  rating: 4.8,
                  imagePath: 'assets/images/doctor1.png',
                ),
                DoctorRecommendationCard(
                  name: "dr. Kevin Santoso",
                  department: "Poli Umum",
                  rating: 4.7,
                  imagePath: 'assets/images/doctor2.png',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class PoliCard extends StatelessWidget {
  final String imagePath;
  final String title;
  final String number;

  const PoliCard({
    required this.imagePath,
    required this.title,
    required this.number,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100, // Adjust the width as necessary to fit within the screen
      child: Column(
        children: [
          Image.asset(imagePath, width: 100, height: 65), // Adjust the width to match the container
          const SizedBox(height: 5),
          Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color(0xFF101828),
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            number,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color.fromRGBO(16, 24, 40, 0.61),
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}
