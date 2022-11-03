import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:tikodc/home.dart';

import 'otp.dart';

class signupmail extends StatelessWidget {
  const signupmail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(8.0, 20.0, 8.0, 20.0),
          child: Column(children:<Widget> [
            SizedBox(
              height: 10.0,
            ),


            SizedBox(
              height: 300,
              width: 300,
              child: TextFormField(
                decoration: const InputDecoration(hintText: "Adresse mail"),
                style: Theme.of(context).textTheme.headline5,
                keyboardType: TextInputType.emailAddress,
                textAlign: TextAlign.start,



              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            SizedBox(
              height: 300,
              width: 300,
              child: TextFormField(
                decoration: const InputDecoration(hintText: "Mot de passe "),
                style: Theme.of(context).textTheme.headline5,
                keyboardType: TextInputType.emailAddress,
                textAlign: TextAlign.justify,
                obscureText: true,
                enableSuggestions: false,
                autocorrect: false,


              ),
            ),

            SizedBox(
              height: 10.0,
            ),
            SizedBox(
              width: 200.0,
              height: 40,
              child: Builder( builder: (context) => ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Colors.redAccent,
                    onPrimary: Colors.white),
                onPressed: () => {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder:  (context) =>  MyStatefulWidget(),
                  ),
                  ),
                },

                child: Text('Connexion'),
              ),


              ),
            ),

          ]),
        ),
      ),

    );
  }
}
