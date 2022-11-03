import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

import 'otp.dart';


class Newpassword extends StatelessWidget {
  const Newpassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            'Réiniatiliser',
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
        body: Container(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(8.0, 20.0, 8.0, 20.0),
            child: Column(children:<Widget> [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text("Saisis ton numéro de téléphone",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,

                  ),
                ),
              ),

              SizedBox(
                height: 10.0,
              ),
              Padding(padding: const EdgeInsets.fromLTRB(18.0, 10.0, 10.0, 20.0),
                child: Text(
                  "Nous vous enverrons un code sur votre téléphone ",

                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.black54
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              // SizedBox(
              //   height: 300,
              //   width: 300,
              //   child: TextFormField(
              //
              //     decoration: const InputDecoration(hintText: "Numéro de telephone "),
              //     style: Theme.of(context).textTheme.headline5,
              //     keyboardType: TextInputType.number,
              //     textAlign: TextAlign.justify,
              //     inputFormatters: [LengthLimitingTextInputFormatter(8),
              //     FilteringTextInputFormatter.digitsOnly],
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
                height: 20.0,
              ),
              SizedBox(
                width: 200.0,
                height: 40,
                child: Builder( builder: (context) => ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.redAccent,
                      onPrimary: Colors.black),
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
        )
    );
  }
}
