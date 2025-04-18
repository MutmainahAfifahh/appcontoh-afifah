import 'package:flutter/material.dart';

class Login2 extends StatefulWidget {
  const Login2({super.key});

  @override
  State<Login2> createState() => _Login2State();
}

class _Login2State extends State<Login2> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool passwordnyala = true;
  tampilPassword() {
    setState(() {
      passwordnyala = !passwordnyala;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextField(
            decoration: InputDecoration(
              labelText: "Email",
              hintText: "Enter your email",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              prefixIcon: Icon(Icons.email),
            ),
            controller: emailController,
          ),
          TextField(
            controller: passwordController,
            obscureText: passwordnyala,
            obscuringCharacter: "*",
            decoration: InputDecoration(
              labelText: "Password",
              hintText: "Enter your password",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              prefixIcon: Icon(Icons.lock),
              suffixIcon:
              // Icon(passwordnyala ? Icons.visibility_off: Icons.visibility)
              IconButton(
                onPressed: () {
                  tampilPassword();
                },
                icon: Icon(
                  passwordnyala ? Icons.visibility : Icons.visibility_off,
                ),
              ),
            ),
          ),
          TextButton(
            onPressed: () {
              tampilPassword();
              print("email : ${emailController.text}");
            },
            child: Text("Login"),
          ),
        ],
      ),
    );
  }
}
