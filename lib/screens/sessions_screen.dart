
import 'package:flutter/material.dart';

class SessionsScreen extends StatelessWidget {
  const SessionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            const SizedBox(
              height: 24,
            ),
            Row(
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(Icons.arrow_back_ios)),
                const SizedBox(
                  width: 60,
                ),
                const SizedBox(
                  width: 90,
                  child: Text(
                    'الجلسات ',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFF00001D),
                      fontSize: 24,
                      fontFamily: 'Baloo Bhaijaan 2',
                      fontWeight: FontWeight.w700,
                      height: 1.50,
                    ),
                  ),
                ),
               ],

            ),



          ],
        ),
      ),
    );
  }
}
