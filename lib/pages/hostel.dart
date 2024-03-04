import 'package:flutter/material.dart';

class HostelPage extends StatelessWidget {
  // final String accessToken;

  // const HostelPage({super.key, required this.accessToken});

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
      body: SafeArea(
        child: ListView(
          children: [
            const SizedBox(height: 40),
            GestureDetector(
              // onTap: () {
              //   Navigator.push(
              //     context,
              //     MaterialPageRoute(
              //       builder: (context) => const (
              //           ),
              //     ),
              //   );
              // },
              child: _buildCard(
                'Name',
                '...',
              ),
            ),
            GestureDetector(
              // onTap: () {
              //   Navigator.push(
              //     context,
              //     MaterialPageRoute(
              //       builder: (context) => const Hostelpage(
              //           ),
              //     ),
              //   );
              // },
              child: _buildCard(
                'Name',
                '...',
              ),
            ),
            GestureDetector(
              // onTap: () {
              //   Navigator.push(
              //     context,
              //     MaterialPageRoute(
              //       builder: (context) =>(
              //           ),
              //     ),
              //   );
              // },
              child: _buildCard(
                'Name',
                '...',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
