import 'package:flutter/material.dart';

/// The page [FaqScreen]
class FaqScreen extends StatelessWidget {
  /// Constructs an instance of [FaqScreen]
  const FaqScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.all(40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              children: [
                Image.asset(
                  'assets/images/speechbubbleimage.png',
                  height: 100,
                  width: 100,
                ),
                const SizedBox(width: 20),
                const Text(
                  'FAQ Page',
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(height: 40),
            const Text(
              "Why can't I login with my student details?",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const Text(
              'To log in to our library system, you must login with your '
              'student ID email. Please view the image to see formatting.',
              style: TextStyle(fontSize: 15),
            ),
            const SizedBox(height: 30),
            const Text(
              'I am not a WSU student. Can I still borrow books?',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const Text(
              'No. This system is reserved for WSU Students and Staff members.'
              ' You may arrive to our library in-person and read books, '
              'however borrowing is restricted to our students and staff.',
              style: TextStyle(fontSize: 15),
            ),
            const SizedBox(height: 30),
            const Text(
              'I would like to reference a book from this '
              ' library website. How?  ',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Row(
              children: const [
                Text(
                  '- You can find guidance on referencing books on our',
                  style: TextStyle(fontSize: 15),
                ),
                Text(' Referencing ',
                    style:
                        TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                Text(
                  'page. This page has extensive guides on various '
                  'referencing methods for our many PDFs.',
                  style: TextStyle(fontSize: 15),
                ),
              ],
            ),
            const SizedBox(height: 40),
            Row(
              children: [
                Image.asset(
                  'assets/images/call.png',
                  height: 100,
                  width: 100,
                ),
                const SizedBox(width: 10),
                const Text(
                  'Further assistance',
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(height: 20),
            const Text(
              'If the FAQ Questions have not answered your queries, there'
              ' are other avenues we have where you can get help. You can:',
              style: TextStyle(fontSize: 15),
            ),
            const Text(
              '- Talk to one of our librarians through our live chat system',
              style: TextStyle(fontSize: 15),
            ),
            Row(
              children: const [
                Text(
                  '- Contact us through our number:',
                  style: TextStyle(fontSize: 15),
                ),
                Text(' 02 9852 5353',
                    style:
                        TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
              ],
            ),
            Row(
              children: const [
                Text(
                  '- Contact us through our email:',
                  style: TextStyle(fontSize: 15),
                ),
                Text(' wsulibrarysystem@wsu.edu.au',
                    style:
                        TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
              ],
            ),
          ],
        ),
      );
}
