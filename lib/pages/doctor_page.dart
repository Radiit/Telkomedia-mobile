import 'package:flutter/material.dart';
import 'doctor_detail_page.dart';
import '../widgets/doctor_recommendation_widget.dart';

class DoctorPage extends StatefulWidget {
  const DoctorPage({Key? key}) : super(key: key);

  @override
  _DoctorPageState createState() => _DoctorPageState();
}

class _DoctorPageState extends State<DoctorPage> {
  String selectedPoli = 'Poli Umum';

  List<Map<String, dynamic>> doctors = [
    {
      'name': "dr. Budi Raharja",
      'department': "Poli Umum",
      'rating': 4.8,
      'imagePath': 'assets/images/doctor1.png',
      'poli': 'Poli Umum'
    },
    {
      'name': "dr. Juliant Robert",
      'department': "Poli Umum",
      'rating': 4.8,
      'imagePath': 'assets/images/doctor2.png',
      'poli': 'Poli Umum'
    },
    {
      'name': "dr. Trias Susanti",
      'department': "Poli Umum",
      'rating': 4.8,
      'imagePath': 'assets/images/doctor3.png',
      'poli': 'Poli Umum'
    },
    {
      'name': "dr. George Shearer",
      'department': "Poli Umum",
      'rating': 4.8,
      'imagePath': 'assets/images/doctor4.png',
      'poli': 'Poli Umum'
    },
    {
      'name': "dr. Susan Lee",
      'department': "Poli Gigi",
      'rating': 4.7,
      'imagePath': 'assets/images/doctor5.png',
      'poli': 'Poli Gigi'
    },
    {
      'name': "dr. John Smith",
      'department': "Poli Gigi",
      'rating': 4.7,
      'imagePath': 'assets/images/doctor6.png',
      'poli': 'Poli Gigi'
    },
    {
      'name': "dr. Karen Taylor",
      'department': "Poli Mata",
      'rating': 4.9,
      'imagePath': 'assets/images/doctor7.png',
      'poli': 'Poli Mata'
    },
    {
      'name': "dr. Michael Brown",
      'department': "Poli Mata",
      'rating': 4.8,
      'imagePath': 'assets/images/doctor8.png',
      'poli': 'Poli Mata'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Lakukan Reservasi',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Lakukan Reservasi',
              style: TextStyle(
                color: Colors.black,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                buildPoliButton('Poli Umum'),
                buildPoliButton('Poli Gigi'),
                buildPoliButton('Poli Mata'),
              ],
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView(
                children: doctors
                    .where((doctor) => doctor['poli'] == selectedPoli)
                    .map((doctor) => GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => DoctorDetailPage(doctor: doctor),
                              ),
                            );
                          },
                          child: DoctorRecommendationCard(
                            name: doctor['name'],
                            department: doctor['department'],
                            rating: doctor['rating'],
                            imagePath: doctor['imagePath'],
                          ),
                        ))
                    .toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildPoliButton(String poli) {
    return ElevatedButton(
      onPressed: () {
        setState(() {
          selectedPoli = poli;
        });
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: selectedPoli == poli ? Colors.red : Colors.white,
        foregroundColor: selectedPoli == poli ? Colors.white : Colors.red,
        shape: StadiumBorder(),
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        side: BorderSide(color: Colors.red),
      ),
      child: Text(poli),
    );
  }
}
