import 'package:flutter/material.dart';
import 'package:otp_screen/pages/hostel.dart';
import 'package:otp_screen/pages/rooms.dart';

class HomePage extends StatelessWidget {
  final String accessToken;

  const HomePage({super.key, required this.accessToken});

  Widget _buildCard(String text, String imageLoc) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(30, 15, 30, 15),
      child: Container(
        height: 110,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            alignment: const Alignment(0.00, 0.00),
            image: AssetImage(imageLoc),
          ),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Stack(
          children: [
            Opacity(
              opacity: 0.5,
              child: Align(
                alignment: const Alignment(0.00, 0.00),
                child: Container(
                  width: double.infinity,
                  height: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
            ),
            Align(
              alignment: const Alignment(0.00, 0.00),
              child: Text(
                text,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Theme.of(context).colorScheme.background,
        automaticallyImplyLeading: false,
        centerTitle: true,
        leading: null,
        title: const Row(
          children: [
            Text(
              'Welcome',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                color: Color(0xFFF59B15),
                fontSize: 25,
              ),
            ),
          ],
        ),
        // actions: [
        //   Padding(
        //     padding: const EdgeInsets.fromLTRB(0, 0, 30, 0),
        //     child: IconButton(
        //       icon: const Icon(Icons.account_circle,
        //           color: Color(0xFFF59B15), size: 35),
        //       onPressed: () {
        //         Navigator.push(
        //           context,
        //           MaterialPageRoute(
        //             builder: (context) => const profilePage(
        //               // accessToken: accessToken,
        //             ),
        //           ),
        //         );
        //       },
        //     ),
        //   ),
        // ],
      ),
      body: SafeArea(
        child: ListView(
          children: [
            const SizedBox(height: 40),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Hostelpage(
                        // accessToken: accessToken,
                        ),
                  ),
                );
              },
              child: _buildCard(
                'Register Hostel',
                'assets/register.jpg',
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Hostelpage(
                        // accessToken: accessToken,
                        ),
                  ),
                );
              },
              child: _buildCard(
                'Hostel',
                'assets/hostel.jpg',
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Rooms(
                        // accessToken: accessToken,
                        ),
                  ),
                );
              },
              child: _buildCard(
                'Rooms',
                'assets/room.jpg',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
