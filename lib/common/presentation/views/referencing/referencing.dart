import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

/// The page [Referencing]
class Referencing extends StatelessWidget {
  /// Constructs an instance of [FaqScreen]
  const Referencing({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              children: [
                Image.asset(
                  'assets/images/referencingimage.png',
                  height: 100,
                  width: 100,
                ),
                const SizedBox(width: 20),
                const Text(
                  'Referencing & Citation',
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(height: 40),
            const Text(
              'When writing assignments, reports, research papers or theses, '
              'you must acknowledge quotations, information and ideas taken '
              'from other authors through a bibliography or list of '
              'references.',
              style: TextStyle(fontSize: 15),
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                const Text(
                    'The Library has developed guides for the citation styles '
                    'most commonly used within the University. Use of these '
                    'guides is supported in the ',
                    style: TextStyle(fontSize: 15)),
                InkWell(
                  onTap: () => launch(
                      'https://policies.westernsydney.edu.au/download.php?associated=1&id=716&version=1'),
                  child: Text('University Referencing Styles Guidelines.',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.red[900],
                        decoration: TextDecoration.underline,
                      )),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                const Text('-   ', style: TextStyle(fontSize: 15)),
                InkWell(
                  onTap: () => launch(
                      'https://library.westernsydney.edu.au/main/sites/default/files/pdf/cite_APA.pdf'),
                  child: Text('APA 7',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.red[900],
                        decoration: TextDecoration.underline,
                      )),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
              child: Column(
                children: [
                  Row(
                    children: [
                      const Text('• See how: ', style: TextStyle(fontSize: 15)),
                      InkWell(
                        onTap: () => launch(
                            'https://www.youtube.com/watch?v=drVG9qb1wNo'),
                        child: Text('Referencing a book',
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.red[900],
                              decoration: TextDecoration.underline,
                            )),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const Text('• See how: ', style: TextStyle(fontSize: 15)),
                      InkWell(
                        onTap: () => launch(
                            'https://www.youtube.com/watch?v=9m0Zufs0sno'),
                        child: Text('Referencing a book chapter',
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.red[900],
                              decoration: TextDecoration.underline,
                            )),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const Text('• See how: ', style: TextStyle(fontSize: 15)),
                      InkWell(
                        onTap: () => launch(
                            'https://www.youtube.com/watch?v=Ntxyx2WhEHU'),
                        child: Text('Referencing an online journal article',
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.red[900],
                              decoration: TextDecoration.underline,
                            )),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const Text('• See how: ', style: TextStyle(fontSize: 15)),
                      InkWell(
                        onTap: () => launch(
                            'https://www.youtube.com/watch?v=k71y5duiwpQ'),
                        child: Text('Referencing an online report',
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.red[900],
                              decoration: TextDecoration.underline,
                            )),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                const Text('-   ', style: TextStyle(fontSize: 15)),
                InkWell(
                  onTap: () => launch(
                      'https://library.westernsydney.edu.au/main/sites/default/files/pdf/cite_Harvard.pdf'),
                  child: Text('Harvard WesternSydU',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.red[900],
                        decoration: TextDecoration.underline,
                      )),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
              child: Column(
                children: [
                  Row(
                    children: [
                      const Text('• See how: ', style: TextStyle(fontSize: 15)),
                      InkWell(
                        onTap: () => launch(
                            'https://www.youtube.com/watch?v=uoKk5a2AyLg'),
                        child: Text('Referencing a book',
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.red[900],
                              decoration: TextDecoration.underline,
                            )),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const Text('• See how: ', style: TextStyle(fontSize: 15)),
                      InkWell(
                        onTap: () => launch(
                            'https://www.youtube.com/watch?v=lNtwA2ZsI2c'),
                        child: Text('Referencing a book chapter',
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.red[900],
                              decoration: TextDecoration.underline,
                            )),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const Text('• See how: ', style: TextStyle(fontSize: 15)),
                      InkWell(
                        onTap: () => launch(
                            'https://www.youtube.com/watch?v=hlagrF4DgeY'),
                        child: Text('Referencing an online journal article',
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.red[900],
                              decoration: TextDecoration.underline,
                            )),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const Text('• See how: ', style: TextStyle(fontSize: 15)),
                      InkWell(
                        onTap: () => launch(
                            'https://www.youtube.com/watch?v=gKtqczI1eOs'),
                        child: Text('Referencing an online report',
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.red[900],
                              decoration: TextDecoration.underline,
                            )),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                const Text('-   ', style: TextStyle(fontSize: 15)),
                InkWell(
                  onTap: () => launch(
                      'https://library.westernsydney.edu.au/main/sites/default/files/pdf/cite_Vancouver.pdf'),
                  child: Text('Vancouver',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.red[900],
                        decoration: TextDecoration.underline,
                      )),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
              child: Column(
                children: [
                  Row(
                    children: [
                      const Text('• See how: ', style: TextStyle(fontSize: 15)),
                      InkWell(
                        onTap: () => launch(
                            'https://www.youtube.com/watch?v=p9m0z8d7vCo'),
                        child: Text('Referencing a book',
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.red[900],
                              decoration: TextDecoration.underline,
                            )),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const Text('• See how: ', style: TextStyle(fontSize: 15)),
                      InkWell(
                        onTap: () => launch(
                            'https://www.youtube.com/watch?v=YLmom2s6_Fs'),
                        child: Text('Referencing a book chapter',
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.red[900],
                              decoration: TextDecoration.underline,
                            )),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const Text('• See how: ', style: TextStyle(fontSize: 15)),
                      InkWell(
                        onTap: () => launch(
                            'https://www.youtube.com/watch?v=L2aQYg277Fw'),
                        child: Text('Referencing an online journal article',
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.red[900],
                              decoration: TextDecoration.underline,
                            )),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const Text('• See how: ', style: TextStyle(fontSize: 15)),
                      InkWell(
                        onTap: () => launch(
                            'https://www.youtube.com/watch?v=_wixPOc5XFc'),
                        child: Text('Referencing an online report',
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.red[900],
                              decoration: TextDecoration.underline,
                            )),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
            const Text(
              'It is important to first consult your unit outline, learning '
              'guide, lecturer or tutor for the preferred citation style for '
              'each unit you undertake.',
              style: TextStyle(fontSize: 15),
            ),
          ],
        ),
      );
}
