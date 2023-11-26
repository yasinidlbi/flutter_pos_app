import 'dart:ffi';

import 'package:flutter/material.dart';

import '../components/button_style.dart';
import '../constants.dart';
import 'home_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            // height: 200,
            height: MediaQuery.of(context).size.height * 0.35,
            decoration: BoxDecoration(
              // borderRadius: BorderRadius.circular(10),
              color: myprimercolor,
              // border: Border.all(color: Colors.grey)
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Title
                Container(
                  width: MediaQuery.of(context).size.width * 0.4,
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 20, top: 10, right: 0, bottom: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'POS\nCommerce',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 24,
                              color: Colors.white),
                        ),
                        Text(
                          'Welcome to our store',
                          style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 16,
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                // Picture
                ImageLogo(),
              ],
            ),
          ),
          Flexible(
            child: Stack(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.65,
                  color:  myprimercolor,
                ),
                Container(
                    height: MediaQuery.of(context).size.height * 0.65,
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.only(topLeft: Radius.circular(75)),
                      color: Colors.white,
                      // border: Border.all(color: Colors.grey)
                    ),
                    child:  FormLogin())
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class FormLogin extends StatefulWidget {
  const FormLogin({Key? key}) : super(key: key);

  @override
  State<FormLogin> createState() => _FormLoginState();
}

class _FormLoginState extends State<FormLogin> {
  late bool isRemmber = true;
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child:
        Scrollbar(
            thickness: 10, //width of scrollbar
            radius: Radius.circular(20), //corner radius of scrollbar
            scrollbarOrientation: ScrollbarOrientation.left, //which side to show scrollbar
            child:SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child:  Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 50),
                  Padding(
                      padding:
                      EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                      child: TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25.0),
                            ),
                            filled: true,
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: 15, vertical: 15.0),
                            hintStyle: TextStyle(color: Colors.grey),
                            labelText: "User Name",
                            fillColor: Colors.white),
                      )),
                  Padding(
                      padding:
                      EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                      child: TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25.0),
                            ),
                            filled: true,
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: 15, vertical: 15.0),
                            hintStyle: TextStyle(color: Colors.grey),
                            labelText: "Password",
                            fillColor: Colors.white),
                      )),
                  CheckboxListTile(
                    title: Text("Remmber me"),
                    value: isRemmber,
                    onChanged: (newValue) {
                      setState(() {
                        isRemmber = newValue!;
                      });
                      },
                    controlAffinity: ListTileControlAffinity.leading,  //  <-- leading Checkbox
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10.0, vertical: 5.0),
                    child: Container(
                      width: double.infinity,
                      child: TextButton(
                        child: Text(
                          'LOGIN',
                          style: TextStyle(fontSize: 18),
                        ),
                        style: bs_flatFill(context),
                        // onPressed: () {},
                        onPressed: () => Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (_) => HomeScreen())),
                      ),
                      ),
                    ),
                ],
              ),
            )
        )

    );
  }
}


class ImageLogo extends StatelessWidget {
  const ImageLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child:  Container(
            width: 150,
            height: 150,
            foregroundDecoration: BoxDecoration(
                border: Border.all(width: 1, color: Colors.grey),
                borderRadius: BorderRadius.circular(150),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(150),
              child: Container(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(25),
                  child: Image(
                    image: AssetImage('assets/images/logo.png'),
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ),
            ),
          ),
    );
  }
}
