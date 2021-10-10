import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

/// The page [VisitUs]
class VisitUs extends StatelessWidget {
  /// Constructs an instance of [VisitUs]
  const VisitUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.all(40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Image.asset(
                  'assets/images/mappic.PNG',
                  height: 100,
                  width: 100,
                ),
                const SizedBox(width: 20),
                const Text(
                  'Visit Us',
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(height: 20),
            const Text(
              'We have various campus locations which you can visit in order '
              'to speak to us in person for any inquiries you may have, or '
              'to borrow books and manage your fines accordingly.',
              style: TextStyle(
                fontSize: 15,
              ),
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                Container(
                  width: 500,
                  height: 300,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 2,
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 30),
                      Row(
                        children: [
                          const SizedBox(width: 30),
                          Text('Bankstown',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.red[900])),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Row(
                        children: [
                          const SizedBox(width: 30),
                          Column(
                            children: [
                              const Text(
                                'Building 9\nBullecourt Ave'
                                '\nMilperra, 2214 \n'
                                'Phone: 02 9852 5353',
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                              const SizedBox(height: 10),
                              Row(
                                children: [
                                  const Text(
                                    'See the campus map ',
                                    style: TextStyle(fontSize: 15),
                                  ),
                                  InkWell(
                                    onTap: () => launch(
                                        'https://www.westernsydney.edu.au/__data/campus_maps/Bankstown_Campus_North_L.pdf'),
                                    child: const Text(
                                      'here',
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.red,
                                          decoration: TextDecoration.underline),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(width: 40),
                          Image.asset(
                            'assets/images/bankstown.jpg',
                            height: 200,
                            width: 200,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 30),
                Container(
                  width: 500,
                  height: 300,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 2,
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 30),
                      Row(
                        children: [
                          const SizedBox(width: 30),
                          Text('Campbelltown',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.red[900])),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Row(
                        children: [
                          const SizedBox(width: 30),
                          Column(
                            children: [
                              const Text(
                                'Building 1\nGoldsmith Ave'
                                '\nCampbelltown, 2560 \n'
                                'Phone: 02 9852 5353',
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                              const SizedBox(height: 10),
                              Row(
                                children: [
                                  const Text(
                                    'See the campus map ',
                                    style: TextStyle(fontSize: 15),
                                  ),
                                  InkWell(
                                    onTap: () => launch(
                                        'https://www.westernsydney.edu.au/__data/campus_maps/Campbelltown_Campus_NorthEast_L.pdf'),
                                    child: const Text(
                                      'here',
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.red,
                                          decoration: TextDecoration.underline),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(width: 40),
                          Image.asset(
                            'assets/images/campbelltown.jpg',
                            height: 200,
                            width: 200,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 30),
                Container(
                  width: 500,
                  height: 300,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 2,
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 30),
                      Row(
                        children: [
                          const SizedBox(width: 30),
                          Text('Hawkesbury',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.red[900])),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Row(
                        children: [
                          const SizedBox(width: 30),
                          Column(
                            children: [
                              const Text(
                                'Building G1\nBourke St'
                                '\nRichmond, 2753 \n'
                                'Phone: 02 9852 5353',
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                              const SizedBox(height: 10),
                              Row(
                                children: [
                                  const Text(
                                    'See the campus map ',
                                    style: TextStyle(fontSize: 15),
                                  ),
                                  InkWell(
                                    onTap: () => launch(
                                        'https://www.westernsydney.edu.au/__data/campus_maps/Hawkesbury_Campus_North_L.pdf'),
                                    child: const Text(
                                      'here',
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.red,
                                          decoration: TextDecoration.underline),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(width: 40),
                          Image.asset(
                            'assets/images/hawkesbury.jpg',
                            height: 200,
                            width: 200,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                Container(
                  width: 500,
                  height: 300,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 2,
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 30),
                      Row(
                        children: [
                          const SizedBox(width: 30),
                          Text('Liverpool',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.red[900])),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Row(
                        children: [
                          const SizedBox(width: 30),
                          Column(
                            children: [
                              const Text(
                                'Level 2\n100 Macquarie Street'
                                '\nLiverpool, NSW 2170 \n'
                                'Phone: 02 9852 5353',
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                              const SizedBox(height: 10),
                              Row(
                                children: [
                                  const Text(
                                    'See the campus map ',
                                    style: TextStyle(fontSize: 15),
                                  ),
                                  InkWell(
                                    onTap: () => launch(
                                        'https://maps.westernsydney.edu.au/CampusMapPdfs/Liverpool_Campus_General.pdf'),
                                    child: const Text(
                                      'here',
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.red,
                                          decoration: TextDecoration.underline),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(width: 40),
                          Image.asset(
                            'assets/images/liverpool.png',
                            height: 200,
                            width: 200,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 30),
                Container(
                  width: 500,
                  height: 300,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 2,
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 30),
                      Row(
                        children: [
                          const SizedBox(width: 30),
                          Text('Nirimba',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.red[900])),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Row(
                        children: [
                          const SizedBox(width: 30),
                          Column(
                            children: [
                              const Text(
                                'Nirimba Education Precinct\n'
                                'Building C21\n'
                                'Eastern Road\n'
                                'Nirimba Fields, 2763\n'
                                'Phone: 02 9852 5353',
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                              const SizedBox(height: 10),
                              Row(
                                children: [
                                  const Text(
                                    'See the campus map ',
                                    style: TextStyle(fontSize: 15),
                                  ),
                                  InkWell(
                                    onTap: () => launch(
                                        'https://www.westernsydney.edu.au/__data/campus_maps/Blacktown_Campus_North_L.pdf'),
                                    child: const Text(
                                      'here',
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.red,
                                          decoration: TextDecoration.underline),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(width: 40),
                          Image.asset(
                            'assets/images/nirimba.jpg',
                            height: 200,
                            width: 200,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 30),
                Container(
                  width: 500,
                  height: 300,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 2,
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 30),
                      Row(
                        children: [
                          const SizedBox(width: 30),
                          Text('Parramatta City',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.red[900])),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Row(
                        children: [
                          const SizedBox(width: 30),
                          Column(
                            children: [
                              const Text(
                                'Level 1\n169 Macquarie Street'
                                '\nParramatta, 2150 \n'
                                'Phone: 02 9852 5353',
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                              const SizedBox(height: 10),
                              Row(
                                children: [
                                  const Text(
                                    'See the campus map ',
                                    style: TextStyle(fontSize: 15),
                                  ),
                                  InkWell(
                                    onTap: () => launch(
                                        'https://www.westernsydney.edu.au/__data/campus_maps/Parramatta%20City%20Campus%20Map.pdf'),
                                    child: const Text(
                                      'here',
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.red,
                                          decoration: TextDecoration.underline),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(width: 40),
                          Image.asset(
                            'assets/images/parramattacity.jpg',
                            height: 200,
                            width: 200,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      );
}
