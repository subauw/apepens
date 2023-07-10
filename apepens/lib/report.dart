import 'package:flutter/material.dart';
import 'main.dart';

class Report extends StatelessWidget {
  const Report({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black.withBlue(30),
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Colors.blueAccent, Colors.yellowAccent],
            ),
          ),
        ),
        title: const Text("EHE"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(Icons.report_problem,
                      size: 64, color: Colors.white),
                  const SizedBox(height: 8),
                  const SizedBox(height: 8),
                  const Text(
                    'APEPENS yaiku media utawa wadah kangge ngelaporaken masalah, kritik, lan saran damel Politeknik Elektronika Negeri Surabaya, secara singkatipun saget di maos PENS. APEPENS nggadah arti menika Aplikasi Pengaduan Elektronik PENS sing didamel amargi kesulitanipun salah setunggalipun mahasiswa kang badhe ngeluh dhateng staff utawa fasitilasipun kampus sing kurang memadahi, nalika tasih sekedhik responipun marang laporan.',
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                  const SizedBox(height: 18),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const DetailScreen()),
                      );
                    },
                    child: const Text('Lanjut'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
