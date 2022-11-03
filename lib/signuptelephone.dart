import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:tikodc/signupemail.dart';
class signuptel extends StatelessWidget {
  const signuptel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(8.0, 20.0, 8.0, 20.0),
          child: Column(children:<Widget> [
            SizedBox(
              height: 30.0,
            ),


            SizedBox(
              height: 300,
              width: 300,
              child: TextFormField(

                decoration: const InputDecoration(hintText: "Numéro de téléphone "),
                style: Theme.of(context).textTheme.headline5,
                keyboardType: TextInputType.number,
                textAlign: TextAlign.justify,
                inputFormatters: [LengthLimitingTextInputFormatter(8),
                  FilteringTextInputFormatter.digitsOnly],

              ),
            ),
            SizedBox(
              height: 20.0,
            ),

            SizedBox(
              width: 200.0,
              height: 40,
              child: Builder( builder: (context) => ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Colors.grey,
                    onPrimary: Colors.white),
                onPressed: () => {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder:  (context) => const signupmail(),
                  ),
                  ),
                },

                child: Text('Envoyer un code'),
              ),


              ),
            ),

          ]),
        ),
      ),

    );
  }
}
