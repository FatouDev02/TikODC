import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'otp.dart';

class signinmail extends StatelessWidget {
  const signinmail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(8.0, 10.0, 8.0, 10.0),
          child: Column(children: <Widget>[
            SizedBox(
              height: 10.0,
            ),
            SizedBox(
              height: 100,
              width: 300,
              child: TextFormField(
                decoration: const InputDecoration(hintText: "Adresse mail"),
                style: Theme.of(context).textTheme.headline5,
                keyboardType: TextInputType.emailAddress,
                textAlign: TextAlign.justify,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
              child: Text(
                "Reçois du contenu tendance, des newsletters, des promotions, \n des recommandations et des mises à jour du compte par e-mail \n Ton numéro de téléphone servira à améliorer ton expérience sur TikODC, notamment en te mettant en relation \n avec des personnes que tu connais peut-être, en personnalisant tes publicités, \n etc."
                " Si tu t'inscris par SMS, des frais peuvent s'appliquer.",
                style: TextStyle(fontSize: 16, color: Colors.black54),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
              child: Text(
                "En continuant ,tu acceptes les conditions d’utilisation de TikODC et confirmes avoir lu les politiques de donfidatialité de TIKODC",
                style: TextStyle(fontSize: 16, color: Colors.black54),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            SizedBox(
              width: 300.0,
              height: 40,
              child: Builder(
                builder: (context) => ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.redAccent, onPrimary: Colors.white),
                  onPressed: () => {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const Otpform(),
                      ),
                    ),
                  },
                  child: Text('Suivant'),
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
