import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:tikodc/signinemail.dart';
import 'package:tikodc/signintelephone.dart';
class Signin extends StatelessWidget {
  const Signin({Key? key}) : super(key: key);

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
              'Inscription',
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
                    'E-mail',
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
                    signintel(),
                    signinmail(),
                  ],
                ),
              )
            ],
          ),


        ),
    );
  }
}
