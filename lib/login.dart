import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Loginpage extends StatelessWidget {
  const Loginpage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'tiktt',
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Profile'),
          backgroundColor: Colors.white,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(
                Icons.person_outline,
                color: Colors.grey,
                size: 100.0,
              ),
              SizedBox(height: 15.0),
              Text(
                'Inscription',
                style: TextStyle(
                  color: Colors.black87,
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              //////////////////////////////////button
              SizedBox(
                width: 200.0,
                child: Builder(
                  builder: (context) => ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Colors.red[400], onPrimary: Colors.white),
                    onPressed: () {
                      _openPopup(context);
                    },
                    // color: Colors.red[400],
                    // textColor: Colors.white,
                    child: Text('Inscris toi'),
                  ),
                ),
              ),
              ///////////////////////////button
            ],
          ),
        ),
      ),
    );
  }
}

void _openPopup(context) {
  showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Color.fromARGB(31, 73, 72, 72),
      builder: (BuildContext bc) {
        return Container(
          height: MediaQuery.of(context).size.height * .90,
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Center(
                child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    GestureDetector(
                        onTap: () => Navigator.pop(context),
                        child: Icon(
                          Icons.close,
                        )),
                    Icon(
                      Icons.more,
                    ),
                  ],
                ),
                SizedBox(
                  height: 50.0,
                ),
                Text(
                  'Inscription à  TIKODC',
                  style: TextStyle(fontSize: 25.0),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  'Crée un profil, abonne-toi à  dautre comptes,crée tes propres videos et bien  plus encore.',
                  style: TextStyle(fontSize: 16.0, color: Colors.black54),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 15.0,
                ),
                //////////////////////////////////////////////////////////////first rectangle
                ButtonTheme(
                  minWidth: 250.0,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      onPrimary: Colors.grey,
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          color: Colors.grey,
                          width: 0.5,
                        ),
                      ),
                    ),
                    onPressed: () => {},
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Expanded(
                            flex: 1,
                            child: FaIcon(
                              FontAwesomeIcons.user,
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Text(
                              'Utiliser un téléphone ou une adresse mail',
                              style: TextStyle(
                                fontSize: 10.0,
                                color: Colors.black87,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15.0,
                ),
///////////////////////////////////////////////////////fin first rectangle
                //////////////////////////////////////////////////////////////2 rectangle
                ButtonTheme(
                  minWidth: 250.0,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      onPrimary: Colors.grey,
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          color: Colors.grey,
                          width: 0.5,
                        ),
                      ),
                    ),
                    onPressed: () => {},
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Expanded(
                            flex: 1,
                            child: FaIcon(
                              FontAwesomeIcons.facebook,
                              color: Colors.blue,
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Text(
                              'Se connecter avec Facebook',
                              style: TextStyle(
                                fontSize: 10.0,
                                color: Colors.black87,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15.0,
                ),
///////////////////////////////////////////////////////fin 2 rectangle
                //////////////////////////////////////////////////////////////3 rectangle
                ButtonTheme(
                  minWidth: 250.0,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      onPrimary: Colors.grey,
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          color: Colors.grey,
                          width: 0.5,
                        ),
                      ),
                    ),
                    onPressed: () => {},
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Expanded(
                            flex: 1,
                            child: FaIcon(
                              FontAwesomeIcons.google,
                              color: Colors.redAccent,
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Text(
                              'Se connecter avec Google',
                              style: TextStyle(
                                fontSize: 10.0,
                                color: Colors.black87,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15.0,
                ),
///////////////////////////////////////////////////////fin 3 rectangle
                //////////////////////////////////////////////////////////////4t rectangle
                ButtonTheme(
                  minWidth: 250.0,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      onPrimary: Colors.grey,
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          color: Colors.grey,
                          width: 0.5,
                        ),
                      ),
                    ),
                    onPressed: () => {},
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Expanded(
                            flex: 1,
                            child: FaIcon(
                              FontAwesomeIcons.twitter,
                              color: Colors.lightBlue,
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Text(
                              'Se connecter avec Twitter',
                              style: TextStyle(
                                fontSize: 10.0,
                                color: Colors.black87,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                // SizedBox(
                //   height: 15.0,
                // ),
/////////////////////////////////////////////////////// 4 first rectangle
                RichText(
                  text: TextSpan(
                    text: "Tu n'as pas de compte ? ",
                    style: TextStyle(color: Colors.black),
                    children: <TextSpan>[
                      TextSpan(
                          text: 'Inscription ',
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              _openPopup(context);
                            },
                          style: TextStyle(
                            color: Colors.red,
                          )),
                    ],
                  ),
                ),
              ],
            )),
          ),
        );
      });
}
