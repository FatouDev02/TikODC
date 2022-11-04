import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:tikodc/signin.dart';

class inscription extends StatelessWidget {
  const inscription({super.key});

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
            'Inscription',
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: Container(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 20.0),
            child: Column(
                children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                    Column(
                      children: [
                        Text('Quelle est  ta date de naissance?',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                        fontWeight: FontWeight.bold),
                        ),

                        SizedBox(height: 15),
                        Text('Ta date de naissance \n ne sera pas affichée publiquement',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              
                             ), 
                             textAlign: TextAlign.justify,


                             )
                      ],
                    ),

                        Column(
                          children: [
                            Icon(Icons.storefront_rounded,
                            color:Colors.redAccent,
                            size:70)
                          ],
                        )

                ],
              ),
                  SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: 100,
                    width: 300,
                    child: TextFormField(

                      decoration: const InputDecoration(hintText: "Date de naissance "),
                      style: Theme.of(context).textTheme.headline5,
                      //keyboardType: TextInputType.datetime,
                      textAlign: TextAlign.justify,

                      // inputFormatters: [LengthLimitingTextInputFormatter(8),
                      //   FilteringTextInputFormatter.digitsOnly],

                    ),
                  ),
                  SizedBox(
                    width: 300.0,
                    height: 40,
                    child: Builder( builder: (context) => ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.redAccent,
                          onPrimary: Colors.black),
                      onPressed: () => {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder:  (context) => const Signin(),
                        ),
                        ),
                      },

                      child: Text('Suivant'),
                    ),
                    ),
                  ),

                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 200,
                    child: CupertinoDatePicker(
                      mode: CupertinoDatePickerMode.date,
                      initialDateTime: DateTime(2000, 1, 1),
                      onDateTimeChanged: (DateTime newDateTime) {
                        // Do something
                      },
                    ),
                  ),



            ]
            ),
          ),
        ));
  }
}
