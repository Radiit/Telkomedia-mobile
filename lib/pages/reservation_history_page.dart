import 'package:flutter/material.dart';

class ReservationHistoryPage extends StatelessWidget {
  final List<Map<String, dynamic>> reservations = [
    {
      'doctorName': 'dr. Budi Raharja',
      'department': 'Poli Umum',
      'date': '16 Mar 2024',
      'time': '08:00 AM - 11:00 AM',
      'imagePath': 'assets/images/doctor1.png',
    },
    {
      'doctorName': 'dr. Juliant Robert',
      'department': 'Poli Umum',
      'date': '17 Mar 2024',
      'time': '14:00 PM - 17:00 PM',
      'imagePath': 'assets/images/doctor2.png',
    },
    {
      'doctorName': 'dr. Trias Susanti',
      'department': 'Poli Umum',
      'date': '18 Mar 2024',
      'time': '08:00 AM - 11:00 AM',
      'imagePath': 'assets/images/doctor3.png',
    },
    {
      'doctorName': 'dr. George Shearer',
      'department': 'Poli Umum',
      'date': '19 Mar 2024',
      'time': '14:00 PM - 17:00 PM',
      'imagePath': 'assets/images/doctor4.png',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Riwayat Reservasi',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView.builder(
          itemCount: reservations.length,
          itemBuilder: (context, index) {
            final reservation = reservations[index];
            return Card(
              color: Colors.white, 
              margin: const EdgeInsets.symmetric(vertical: 10),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: ListTile(
                contentPadding: EdgeInsets.all(15),
                leading: CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage(reservation['imagePath']),
                ),
                title: Text(
                  reservation['doctorName'],
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 5),
                    Text(reservation['department']),
                    const SizedBox(height: 5),
                    Row(
                      children: [
                        Icon(Icons.calendar_today, size: 16),
                        const SizedBox(width: 5),
                        Text(reservation['date']),
                      ],
                    ),
                    const SizedBox(height: 5),
                    Row(
                      children: [
                        Icon(Icons.access_time, size: 16),
                        const SizedBox(width: 5),
                        Text(reservation['time']),
                      ],
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
