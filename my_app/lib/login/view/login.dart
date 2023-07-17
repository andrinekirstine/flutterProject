import 'package:flutter/material.dart';
//import 'package:hera/domain/firebase/authenticate.dart';
//import 'package:firebase_core/firebase_core.dart';
//import 'package:hera/firebase_options.dart';
//import 'package:firebase_auth/firebase_auth.dart';
//import "../../config/palette.dart";

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  /*await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );*/
  //await FirebaseAuth.instance.useAuthEmulator('localhost', 9099);

  runApp(LoginPage());
}

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  //final AuthService _auth = AuthService();
  // palette heraColor = palette();

  String email = "";
  String password = "";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: TextFormField(
                validator: (val) =>
                    val!.isEmpty ? "Skriv inn epost/brukernavn" : null,
                onChanged: (val) {
                  setState(() {
                    email = val;
                  });
                },
                decoration: InputDecoration(
                    labelText: 'Epost/brukernavn',
                    border: OutlineInputBorder(),
                    filled: true,
                    fillColor: Color.fromARGB(217, 217, 217, 217)),
              ),
              padding: EdgeInsets.fromLTRB(10, 0, 10, 10),
            ),
            SizedBox(height: 20),
            Container(
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(),
                  filled: true,
                  fillColor: Color.fromARGB(217, 217, 217, 217),
                ),
                obscureText: true,
                validator: (val) =>
                    val!.length < 6 ? "Passord må være 6 eller mer tegn" : null,
                onChanged: (val) {
                  setState(() {
                    password = val;
                  });
                },
              ),
              padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 30),
              child: ElevatedButton(
                child: Text('Log In'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFFF9B24C),
                  shadowColor: Colors.transparent,
                  minimumSize: Size(999999, 38),
                ),
                onPressed: () async {
                  //dynamic result = await _auth.signInWithEmailAndPassword(email,password);
                  //print(result.toString());
                },
              ),
            )
          ],
        ),
      ),
      backgroundColor: Color(0xFFE84829),
    ));
  }
}
