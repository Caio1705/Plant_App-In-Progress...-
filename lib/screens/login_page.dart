import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_plant_app/constants/app_constants.dart';
import 'package:flutter_plant_app/screens/home_page.dart';
import 'package:flutter_plant_app/store/plant.store.dart';
import 'package:flutter_plant_app/widgets/large_width_green_button.dart';
import 'package:provider/provider.dart';

// email = samuel@gmail.com
// password = 1234

String email = "";
String password = "";

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<PlantStore>(context);

    return Observer(
      builder: (_) => Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              "lib/assets/images/plantcut.png",
            ),
          ),
        ),
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.center,
              end: Alignment.bottomCenter,
              colors: [
                Colors.black12,
                Colors.black54,
              ],
            ),
          ),
          child: Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              backgroundColor: Colors.transparent,
            ),
            body: SingleChildScrollView(
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: Padding(
                  padding: const EdgeInsets.only(
                    right: 32.0,
                    left: 32.0,
                  ),
                  child: Column(
                    children: [
                      const SizedBox(height: 184.2),
                      Padding(
                        padding: const EdgeInsets.only(
                          right: 8.0,
                          left: 8.0,
                          top: 16.0,
                        ),
                        child: TextField(
                          onChanged: (text) {
                            email = text;
                          },
                          style: const TextStyle(
                            color: Colors.white,
                          ),
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: black.withOpacity(0.6),
                            labelStyle: const TextStyle(
                              color: Colors.white,
                            ),
                            labelText: "Email",
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              borderSide: const BorderSide(
                                width: 1.7,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          right: 8.0,
                          left: 8.0,
                          top: 16.0,
                        ),
                        child: TextField(
                          onChanged: (text) {
                            password = text;
                          },
                          obscureText: true,
                          style: const TextStyle(
                            color: Colors.white,
                          ),
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: black.withOpacity(0.6),
                            labelStyle: const TextStyle(
                              color: Colors.white,
                            ),
                            labelText: "Password",
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              borderSide: const BorderSide(
                                width: 1.7,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        store.ConfirmText,
                        style: const TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      LargeWidthGreenButton(
                        text: "LOGIN IN",
                        click: () {
                          if (email.toLowerCase() == "samuel@gmail.com" &&
                              password == "1234") {
                            Navigator.pushAndRemoveUntil<dynamic>(
                              context,
                              MaterialPageRoute<dynamic>(
                                builder: (context) => const HomePage(),
                              ),
                              ((route) => false),
                            );
                            store.ConfirmText = "";
                          } else {
                            store.ConfirmText = "Please, put valid information";
                          }
                        },
                      ),
                      LargeWidthGreenButton(
                        text: "Enter without login",
                        click: () {
                          Navigator.pushAndRemoveUntil<dynamic>(
                            context,
                            MaterialPageRoute<dynamic>(
                              builder: (context) => const HomePage(),
                            ),
                            ((route) => false),
                          );
                        },
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
