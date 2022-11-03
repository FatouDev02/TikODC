import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:tikodc/signupemail.dart';
import 'package:tikodc/signuptelephone.dart';
class signup extends StatelessWidget {
  const signup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 2,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          leading: IconButton(
              icon: Icon(
                Icons.arrow_back_ios_rounded,
                color: Colors.black,
              ),
              onPressed: () => Navigator.of(context).pop()),
          backgroundColor: Colors.white,

          title: const Text(
            'Connexion',
            style: TextStyle(color: Colors.black),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 12.0),
              child: Icon(
                  Icons.help_rounded,
                  color: Colors.black
              ),
            )
          ],
        ),
        body: Column(
          children: [
            SizedBox(
                height: 15
            ),
            TabBar(tabs: [
              Padding(padding: const EdgeInsets.fromLTRB(0.0, 0.0, 10.0, 0.0),
                child: Text(
                  'Téléphone',
                  style: TextStyle(color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.w100
                  ),
                ),
              ),
              Padding(padding: const EdgeInsets.fromLTRB(0.0, 0.0, 10.0, 0.0),
                child: Text(
                  'E-mail/nom d utilisateur',
                  style: TextStyle(color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.w100
                  ),
                ),
              )
            ],
            ),
            Expanded(
              child: TabBarView(
                children: [
                  signuptel(),
                  signupmail(),
                ],
              ),
            )
          ],
        ),


      ),
    );
  }
}
