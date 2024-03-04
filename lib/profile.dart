import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Row(
              children: [
                const CircleAvatar(
                  backgroundImage:
                      NetworkImage('https://example.com/image.jpg'),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Text(
                      'John Doe',
                      style: Theme.of(context).textTheme.headline6,
                    ),
                  ),
                ),
              ],
            ),
            const Divider(
              thickness: 1,
            ),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CardView(
                  title: 'Hostel',
                  amount: '10', // number of hostels available
                ),
                CardView(
                  title: 'Earning',
                  amount: '\$30', // Total Earning
                ),
                CardView(
                  title: 'Total Room',
                  amount: '20', // number of room
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class CardView extends StatelessWidget {
  final String title;
  final String amount;
  // final String number;

  const CardView({
    Key? key,
    required this.title,
    required this.amount,
    /*required this.number */
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      margin: const EdgeInsets.all(10),
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              amount,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
