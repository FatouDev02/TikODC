import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'home.dart';

class createnewpassword extends StatelessWidget {
  const createnewpassword({Key? key}) : super(key: key);

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
          'Nouveau mot de passe',
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
      body:  Container(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(8.0, 20.0, 8.0, 20.0),
          child: Column(children:<Widget> [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text("Création du nouveau mot de passe",
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
            Padding(padding: const EdgeInsets.fromLTRB(20.0, 10.0, 10.0, 20.0),
              child: Text(
                "Nous vous enverrqsdfghlmlkjhgfdszdfghjkjhygfdghjons un code sur votre téléphone ",

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
              height: 300,
              width: 300,
              child: TextFormField(

                decoration: const InputDecoration(hintText: "Mot de passe"),
                style: Theme.of(context).textTheme.headline5,
                keyboardType: TextInputType.visiblePassword,
                //pour rendre la password invisible
                obscureText: true,
                enableSuggestions: false,
                autocorrect: false,
                textAlign: TextAlign.start,
                // inputFormatters: [LengthLimitingTextInputFormatter(8),
                //   FilteringTextInputFormatter.digitsOnly],

              ),
            ),
            SizedBox(height: 10.0,),
            SizedBox(
              width: 200.0,
              height: 40,
              child: Builder( builder: (context) => ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Colors.grey,
                    onPrimary: Colors.black),
                onPressed: ()  {
                  _openPopup(context);

                },

                child: Text('Enregistrer'),
              ),
              ),
            ),
          ]
          ),
        ),
      ),
    );
  }

}
void _openPopup(context){
  showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.white,
      builder: (BuildContext bc){
        return Container(
            height: MediaQuery.of(context).size.height * .95,
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
                          child: Icon(Icons.close, color: Colors.black),
                        ),
                        Icon(Icons.more, color: Colors.black),
                      ],
                    ),

                    Text(
                      "Mot de passe enregistré!!!!!!!!!!!!!!!",
                      style: TextStyle(
                          fontSize: 30,
                          color: Colors.redAccent,
                      ),
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(18.0, 0.0, 18.0, 0.0),
                      child: Text(
                        "Votre mot de passe été reinitiatisé avec succès"
                        " Vous pouvez Commencer la navigation",
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.black54
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(
                      height: 60.0,
                    ),
                    ButtonTheme(
                      minWidth: 200.0,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                          onPrimary: Colors.white,
                          shape: RoundedRectangleBorder(
                              side: BorderSide(
                                  color: Colors.grey,
                                  width: 0.5
                              )
                          ),),
                        onPressed: () => {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder:  (context) => MyStatefulWidget(),
                          ),
                          ),
                        },

                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 10.0),
                          child: Row(
                            //code modifie lors de l'erreur
                            mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[

                              Expanded(
                                flex: 2,
                                child: Text(
                                  "Commencer",
                                  style: TextStyle(
                                      fontSize: 15.0,
                                      color: Colors.redAccent
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15.0,
                    ),


                  ],
                ),
              ),
            )
        );
      }
  );

}