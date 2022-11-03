import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:tikodc/signinemail.dart';

import 'otp.dart';

class signintel extends StatelessWidget {
  const signintel({Key? key}) : super(key: key);

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

            //
            // SizedBox(
            //   height: 300,
            //   width: 300,
            //   child: TextFormField(
            //
            //     decoration: const InputDecoration(hintText: "Numéro de téléphone "
            //     ),
            //     style: Theme.of(context).textTheme.headline5,
            //     keyboardType: TextInputType.number,
            //     textAlign: TextAlign.justify,
            //     inputFormatters: [LengthLimitingTextInputFormatter(8),
            //       FilteringTextInputFormatter.digitsOnly],
            //
            //
            //   ),
            // ),

            IntlPhoneField(
              decoration: InputDecoration(
                hintText: "Numero de téléphone",
                hintStyle: TextStyle(
                  color: Colors.black12,

                ),
              ),
              style: Theme.of(context).textTheme.headline5,
              keyboardType: TextInputType.number,
              textAlign: TextAlign.justify,
              inputFormatters: [LengthLimitingTextInputFormatter(8),
                FilteringTextInputFormatter.digitsOnly],

              onChanged: (phone) {
                print(phone.completeNumber);
              },
              onCountryChanged: (country) {
                print('Country changed to: ' + country.name);
              },

            ),
            SizedBox(
              height: 10.0,
            ),
            Padding(padding: const EdgeInsets.fromLTRB(18.0, 10.0, 10.0, 20.0),
              child: Text(
                "Ton numero de telephone servira à ameliorer ton expérience sur "
                    "TikTok, notamment en te mettant en relation avec des personnes "
                    "que tu connais peut-être, en personnalisant tes publicités, etc."
                    " Si tut’inscris par SMS, des frais peuvent s’appliquer.Ensavoir plus",

                style: TextStyle(
                    fontSize: 16,
                    color: Colors.black54
                ),
                textAlign: TextAlign.center,
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
                    builder:  (context) => const Otpform(),
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
