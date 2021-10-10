/* -------------------------------------------- To see the Referencing Page, backspace this and the line at the bottom of this code. Make sure to comment out the single child scroll view
        Container(
          padding: EdgeInsets.all(40.0),
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
                  SizedBox(width: 20),
                  Text(
                    'Referencing & Citation',
                    style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(height: 40),
              Text(
                "When writing assignments, reports, research papers or theses, you must acknowledge quotations, information and ideas taken from other authors through a bibliography or list of references.",
                style: TextStyle(fontSize: 15),
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Text(
                      "The Library has developed guides for the citation styles most commonly used within the University. Use of these guides is supported in the ",
                      style: TextStyle(fontSize: 15)),
                  InkWell(
                    child: Text("University Referencing Styles Guidelines.",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.red[900],
                          decoration: TextDecoration.underline,
                        )),
                    onTap: () => launch(
                        'https://policies.westernsydney.edu.au/download.php?associated=1&id=716&version=1'),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Text("-   ", style: TextStyle(fontSize: 15)),
                  InkWell(
                    child: Text("APA 7",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.red[900],
                          decoration: TextDecoration.underline,
                        )),
                    onTap: () => launch(
                        'https://library.westernsydney.edu.au/main/sites/default/files/pdf/cite_APA.pdf'),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text("• See how: ", style: TextStyle(fontSize: 15)),
                        InkWell(
                          child: Text("Referencing a book",
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.red[900],
                                decoration: TextDecoration.underline,
                              )),
                          onTap: () => launch(
                              'https://www.youtube.com/watch?v=drVG9qb1wNo'),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text("• See how: ", style: TextStyle(fontSize: 15)),
                        InkWell(
                          child: Text("Referencing a book chapter",
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.red[900],
                                decoration: TextDecoration.underline,
                              )),
                          onTap: () => launch(
                              'https://www.youtube.com/watch?v=9m0Zufs0sno'),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text("• See how: ", style: TextStyle(fontSize: 15)),
                        InkWell(
                          child: Text("Referencing an online journal article",
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.red[900],
                                decoration: TextDecoration.underline,
                              )),
                          onTap: () => launch(
                              'https://www.youtube.com/watch?v=Ntxyx2WhEHU'),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text("• See how: ", style: TextStyle(fontSize: 15)),
                        InkWell(
                          child: Text("Referencing an online report",
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.red[900],
                                decoration: TextDecoration.underline,
                              )),
                          onTap: () => launch(
                              'https://www.youtube.com/watch?v=k71y5duiwpQ'),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Text("-   ", style: TextStyle(fontSize: 15)),
                  InkWell(
                    child: Text("Harvard WesternSydU",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.red[900],
                          decoration: TextDecoration.underline,
                        )),
                    onTap: () => launch(
                        'https://library.westernsydney.edu.au/main/sites/default/files/pdf/cite_Harvard.pdf'),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text("• See how: ", style: TextStyle(fontSize: 15)),
                        InkWell(
                          child: Text("Referencing a book",
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.red[900],
                                decoration: TextDecoration.underline,
                              )),
                          onTap: () => launch(
                              'https://www.youtube.com/watch?v=uoKk5a2AyLg'),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text("• See how: ", style: TextStyle(fontSize: 15)),
                        InkWell(
                          child: Text("Referencing a book chapter",
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.red[900],
                                decoration: TextDecoration.underline,
                              )),
                          onTap: () => launch(
                              'https://www.youtube.com/watch?v=lNtwA2ZsI2c'),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text("• See how: ", style: TextStyle(fontSize: 15)),
                        InkWell(
                          child: Text("Referencing an online journal article",
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.red[900],
                                decoration: TextDecoration.underline,
                              )),
                          onTap: () => launch(
                              'https://www.youtube.com/watch?v=hlagrF4DgeY'),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text("• See how: ", style: TextStyle(fontSize: 15)),
                        InkWell(
                          child: Text("Referencing an online report",
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.red[900],
                                decoration: TextDecoration.underline,
                              )),
                          onTap: () => launch(
                              'https://www.youtube.com/watch?v=gKtqczI1eOs'),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Text("-   ", style: TextStyle(fontSize: 15)),
                  InkWell(
                    child: Text("Vancouver",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.red[900],
                          decoration: TextDecoration.underline,
                        )),
                    onTap: () => launch(
                        'https://library.westernsydney.edu.au/main/sites/default/files/pdf/cite_Vancouver.pdf'),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text("• See how: ", style: TextStyle(fontSize: 15)),
                        InkWell(
                          child: Text("Referencing a book",
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.red[900],
                                decoration: TextDecoration.underline,
                              )),
                          onTap: () => launch(
                              'https://www.youtube.com/watch?v=p9m0z8d7vCo'),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text("• See how: ", style: TextStyle(fontSize: 15)),
                        InkWell(
                          child: Text("Referencing a book chapter",
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.red[900],
                                decoration: TextDecoration.underline,
                              )),
                          onTap: () => launch(
                              'https://www.youtube.com/watch?v=YLmom2s6_Fs'),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text("• See how: ", style: TextStyle(fontSize: 15)),
                        InkWell(
                          child: Text("Referencing an online journal article",
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.red[900],
                                decoration: TextDecoration.underline,
                              )),
                          onTap: () => launch(
                              'https://www.youtube.com/watch?v=L2aQYg277Fw'),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text("• See how: ", style: TextStyle(fontSize: 15)),
                        InkWell(
                          child: Text("Referencing an online report",
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.red[900],
                                decoration: TextDecoration.underline,
                              )),
                          onTap: () => launch(
                              'https://www.youtube.com/watch?v=_wixPOc5XFc'),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30),
              Text(
                "It is important to first consult your unit outline, learning guide, lecturer or tutor for the preferred citation style for each unit you undertake.",
                style: TextStyle(fontSize: 15),
              ),
            ],
          ),
        ),

              ----------------------------------------- */