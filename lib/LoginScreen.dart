import 'package:flutter/material.dart';

import 'components.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var keyForm=GlobalKey<FormState>();

  TextEditingController tec_email = new TextEditingController();
  TextEditingController tec_userName = new TextEditingController();
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
            child: Form(
              key:keyForm ,
              child: Column(
                children: [
                  Text(
                    "Login",
                    style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  defualtTextFormField(
                      Text_editing_controller: tec_email,
                    prefix_icon: Icons.email,
                      text_input_type: TextInputType.emailAddress,
                      label_text: "Email Address",
                      FormValidator: (value){
                        if(value.toString().isEmpty){
                          return "your must enter the email address";
                        }else{
                          return null;
                        }
                      },

                  ),
                  SizedBox(
                    height: 15,
                  ),
                  defualtTextFormField(
                      Text_editing_controller: tec_userName,
                      prefix_icon: Icons.person_sharp,
                      text_input_type: TextInputType.name,
                      label_text: "Userame",
                      FormValidator: (value){
                        if(value.toString().isEmpty){
                          return "your must enter the username";
                        }else{
                          return null;
                        }
                      }
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
                          setState(() {
                            isvisible = !isvisible;
                          });
                        },
                        icon: isvisible == true
                            ? Icon(Icons.remove_red_eye)
                            : Icon(Icons.visibility_off_rounded),
                      ),
                      border: OutlineInputBorder(),
                    ),
                      validator:(value){
                        if(value.toString().isEmpty){
                          return "your must enter the password";
                        }else{
                          return null;
                        }
                      }
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  defualtButton(
                      text: "login",
                      function: () {
                        if(keyForm.currentState!.validate()){
                          String emailValue = tec_email.text;
                          String usernameValue = tec_userName.text;
                          String passwordValue = tec_password.text;
                          print(
                              "EmailValue: ${emailValue} "
                                  "\nUsernameValue: ${usernameValue}"
                                  "\nPasswordValue: ${passwordValue} "
                          );
                        }
                      }),
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
      ),
    );
  }
}
/*
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
 */
