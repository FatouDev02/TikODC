import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'creernewpassword.dart';


class Otpform extends StatelessWidget {
  const Otpform({Key? key}) : super(key: key);

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
          'OTP',
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 12.0),
            child: Icon(
                Icons.quiz_rounded,
                color: Colors.black
            ),
          )
        ],
        //////////btn infos
      ),
        body:Center(
              child: Column(
              children:<Widget> [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text("Saisir le code à 4 chiffres",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w300,

                    ),
                    textAlign: TextAlign.center,
                  ),
                ),

                SizedBox(
                  height: 10.0,
                ),
                Padding(padding: const EdgeInsets.fromLTRB(18.0, 10.0, 10.0, 20.0),
                  child: Text(
                    "Pour rédefinir Votre mot de passe saisissez "
                        "le code à 4 chiffres envoyé au +223909.....",
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

                Form(
                    child:Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          height: 68,
                          width: 64,
                          child: TextFormField(
                            //condition  si une valeur a éte fourmis dans le rectangle passer au suivant
                            onChanged: (value){
                              if(value.length==1){
                                FocusScope.of(context).nextFocus();
                              }
                            },
                            onSaved: (pin1){},
                            decoration: const InputDecoration(hintText: "0"),
                            style: Theme.of(context).textTheme.headline6,
                            keyboardType: TextInputType.number,
                            textAlign: TextAlign.center,
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(1),
                              FilteringTextInputFormatter.digitsOnly,
                            ],
                          ),
                        ),
                        /////////////////2 rect
                        SizedBox(
                          height: 68,
                          width: 64,
                          child: TextFormField(
                            //condition  si une valeur a éte fourmis dans le rectangle passer au suivant
                            onChanged: (value){
                              if(value.length==1){
                                FocusScope.of(context).nextFocus();
                              }
                            },
                            onSaved: (pin1){},
                            decoration: const InputDecoration(hintText: "0"),
                            style: Theme.of(context).textTheme.headline6,
                            keyboardType: TextInputType.number,
                            textAlign: TextAlign.center,
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(1),
                              FilteringTextInputFormatter.digitsOnly,
                            ],
                          ),
                        ),
                        /////////////////////3eeme
                        SizedBox(
                          height: 68,
                          width: 64,
                          child: TextFormField(
                            //condition  si une valeur a éte fourmis dans le rectangle passer au suivant
                            onChanged: (value){
                              if(value.length==1){
                                FocusScope.of(context).nextFocus();
                              }
                            },
                            onSaved: (pin1){},
                            decoration: const InputDecoration(hintText: "0"),
                            style: Theme.of(context).textTheme.headline6,
                            keyboardType: TextInputType.number,
                            textAlign: TextAlign.center,
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(1),
                              FilteringTextInputFormatter.digitsOnly,
                            ],
                          ),
                        ),
                        /////////////////::4eme
                        SizedBox(
                          height: 68,
                          width: 64,
                          child: TextFormField(
                            //condition  si une valeur a éte fourmis dans le rectangle passer au suivant
                            onChanged: (value){
                              if(value.length==1){
                                FocusScope.of(context).nextFocus();
                              }
                            },
                            onSaved: (pin1){},
                            decoration: const InputDecoration(hintText: "0"),
                            style: Theme.of(context).textTheme.headline6,
                            keyboardType: TextInputType.number,
                            textAlign: TextAlign.center,
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(1),
                              FilteringTextInputFormatter.digitsOnly,
                            ],
                          ),
                        ),
                        ////////////////finish
                      ],
                    )

                ),

                SizedBox(
                  height: 20.0,
                ),

                Text('Renvoyez le code 39s.',
                  style: TextStyle(
                  color: Colors.amberAccent,
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
                        primary: Colors.redAccent,
                        onPrimary: Colors.black),
                    onPressed: () => {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder:  (context) => const createnewpassword(),
                      ),
                      ),
                    },

                    child: Text('Suivant'),
                  ),
                  ),
                ),



              ],
              )

    )

    );
  }
}

