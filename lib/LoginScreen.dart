import 'package:flutter/material.dart';

import 'components.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController tec_email = new TextEditingController();

  TextEditingController tec_password = new TextEditingController();

  bool isvisible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Colors.teal,
        leading: Icon(Icons.login),
        title: Text("Login Screen"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Text(
                  "Login",
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.w500,
                    // color: Colors.teal,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  controller: tec_email,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.email),
                    labelText: "Email Address",
                    border: OutlineInputBorder(),
                  ),
                  onFieldSubmitted: (value) {
                    print("Value: ${value}");
                  },
                ),
                SizedBox(
                  height: 15,
                ),
                TextFormField(
                  keyboardType: TextInputType.visiblePassword,
                  controller: tec_password,
                  obscureText: isvisible,
                  decoration: InputDecoration(
                    labelText: "Password",
                    prefixIcon: Icon(Icons.lock),
                    suffixIcon: IconButton(
                      onPressed: () {
                        print("befor: ${isvisible}");
                        setState(() {
                          isvisible = !isvisible;
                        });
                        print("after: ${isvisible}");
                      },
                      icon: isvisible == true
                          ? Icon(Icons.remove_red_eye)
                          : Icon(Icons.visibility_off_rounded),
                    ),
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                /////////////////////////////////
                defualtButton(
                    width: 150,
                    color: Colors.red,
                    radius: 20,
                    text: "login",
                    function: (){
                      String emailValue = tec_email.text;
                      String passwordValue = tec_password.text;
                      print(
                          "EmailValue: ${emailValue} \nPasswordValue: ${passwordValue}"
                      );
                    }

                ),
                ///////////////////////////////////
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don\'t have an account?"),
                    TextButton(
                      onPressed: () {},
                      child: Text("Register Now"),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
/*
                Container(
                  width: double.infinity,
                  height: 40,
                  child: MaterialButton(
                    onPressed: () {
                      String emailValue = tec_email.text;
                      String passwordValue = tec_password.text;
                      print(
                          "EmailValue: ${emailValue} \nPasswordValue: ${passwordValue}");
                    },
                    child: Text(
                      "LOGIN",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                    color: Colors.blue.withOpacity(0.9),
                  ),
                ),

 */