import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_social_button/flutter_social_button.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: Container(
        decoration: const BoxDecoration(
            gradient:
                LinearGradient(colors: [Colors.lightGreen, Colors.lightBlue])),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 110,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 120),
                child: Text(
                  'Login',
                  style: GoogleFonts.robotoMono(
                      textStyle: Theme.of(context).textTheme.displayLarge,
                      fontSize: 55,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 70,
              ),
              Container(
                height: 522,
                width: 420,
                decoration: const BoxDecoration(
                    color: Colors.lightBlue,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50)),
                    boxShadow: [
                      BoxShadow(
                          color: Color.fromARGB(255, 53, 80, 54),
                          spreadRadius: 2,
                          blurRadius: 10)
                    ]),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Column(
                    children: [
                      const SizedBox(height: 70),
                      TextFormField(
                          decoration: InputDecoration(
                              contentPadding: const EdgeInsets.symmetric(
                                  vertical: 25.0, horizontal: 10.0),
                              hintText: 'Email',
                              prefixIcon: const Icon(
                                Icons.email_sharp,
                                color: Colors.black,
                              ),
                              fillColor:
                                  const Color.fromRGBO(204, 255, 209, 0.2),
                              filled: true,
                              enabledBorder: const OutlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 3,
                                      color: Color.fromARGB(255, 7, 94, 82))),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      color: Color(0xff323FA4B)),
                                  borderRadius: BorderRadius.circular(30)))),
                      const SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                          decoration: InputDecoration(
                              contentPadding: const EdgeInsets.symmetric(
                                  vertical: 25.0, horizontal: 10.0),
                              hintText: 'Password',
                              prefixIcon: const Icon(
                                Icons.password_sharp,
                                color: Colors.black,
                              ),
                              fillColor:
                                  const Color.fromRGBO(204, 255, 209, 0.2),
                              filled: true,
                              enabledBorder: const OutlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 3,
                                      color: Color.fromARGB(255, 7, 94, 82))),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      color: Color.fromARGB(255, 96, 102, 101)),
                                  borderRadius: BorderRadius.circular(50)))),
                      const SizedBox(height: 35),
                      Container(
                          height: 65,
                          width: 180,
                          decoration: BoxDecoration(
                              color: const Color.fromRGBO(0, 204, 255, 0.8),
                              borderRadius: BorderRadius.circular(50),
                              boxShadow: const [
                                BoxShadow(
                                    color: Color.fromARGB(255, 7, 94, 82),
                                    blurRadius: 15.0,
                                    spreadRadius: 5.0)
                              ]),
                          child: const Center(
                              child: Text('Login',
                                  style: TextStyle(
                                      fontSize: 25,
                                      letterSpacing: 1.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black)))),
                      const SizedBox(height: 20),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            'forgot password',
                            style: TextStyle(
                                fontWeight: FontWeight.normal,
                                decoration: TextDecoration.underline),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Don`t have an account ? ',
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(width: 5,),
                          Text(
                            'SignUp',
                            style: TextStyle(
                                fontSize: 20,
                                color: Color.fromARGB(255, 5, 255, 134),
                                fontWeight: FontWeight.bold,
                                decoration: TextDecoration.underline),
                          )
                        ],
                      ),
                      const SizedBox(height: 10,),
                      const Text('Or', style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                        FlutterSocialButton(
                            onTap: () {},
                            buttonType: ButtonType.facebook,
                            mini: true,),
                        const SizedBox(width: 10),
                        FlutterSocialButton(
                            onTap: () {},
                            buttonType: ButtonType.google,
                            mini: true,),
                        const SizedBox(width: 10),

                        FlutterSocialButton(
                            onTap: () {},
                            buttonType: ButtonType.linkedin,
                            mini: true,),
                      ],)
                    ],
                  ),
                ),
              ),
            ]),
      )),
    );
  }
}
