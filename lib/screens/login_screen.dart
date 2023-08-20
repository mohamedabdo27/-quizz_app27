import 'package:flutter/material.dart';
import 'package:quizz_app/Global/data.dart';
import 'package:quizz_app/screens/category_screen.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();

  bool suffix = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: formKey,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                color: Colors.green,
                height: MediaQuery.of(context).size.height * .4,
                width: MediaQuery.of(context).size.width,
                child: Center(
                    child: Image.asset(
                  "assets/images/pngegg.png",
                  height: MediaQuery.of(context).size.height * .2,
                )),
              ),
            ),
            Container(
              decoration: const BoxDecoration(
                  color: Color(0xffEFECEC),
                  borderRadius:
                      BorderRadius.vertical(top: Radius.circular(35))),
              padding: const EdgeInsets.all(20),
              height: MediaQuery.of(context).size.height * 2 / 3,
              width: MediaQuery.of(context).size.width,
              child: Expanded(
                child: Column(
                  children: [
                    Text(
                      "Login",
                      style: TextStyle(
                          fontSize: MediaQuery.of(context).size.height * .06,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * .03,
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * .075,
                      child: TextFormField(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "please enter your user name";
                          } else if (value.length < 8) {
                            return "the user name must be contain 8 characters.";
                          } else if (!value[0]
                              .toUpperCase()
                              .contains(value[0])) {
                            return "the first letter must be uppercase";
                          }

                          return null;
                        },
                        controller: userName,
                        keyboardType: TextInputType.name,
                        decoration: const InputDecoration(
                            prefixIcon: Icon(Icons.person),
                            labelText: "User name",
                            focusedBorder: OutlineInputBorder(
                                //   borderRadius: BorderRadius.circular(35),
                                borderSide: BorderSide(color: Colors.blue)),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                              //   borderRadius: BorderRadius.circular(35),
                            )),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * .015,
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * .075,
                      child: TextFormField(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'please enter your user password';
                          } else if (value.length < 9) {
                            return 'the password must be mor than 8 characters';
                          } else if (!value.contains(RegExp(r'[A-Z]'))) {
                            return 'Password must contain at least one uppercase letter.';
                          } else if (!value.contains(RegExp(r'[a-z]'))) {
                            return 'Password must contain at least one lowercase letter.';
                          } else if (!value.contains(RegExp(r'[0-9]'))) {
                            return 'Password must contain at least one number.';
                          } else if (!value
                              .contains(RegExp(r'[!@#$%^&*()<>?/|}{~:]'))) {
                            return 'Password must contain at least one special character.';
                          }
                          return null;
                        },
                        obscureText: suffix,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                            prefixIcon: const Icon(Icons.lock),
                            suffixIcon: IconButton(
                                onPressed: () {
                                  setState(() {});
                                  suffix = !suffix;
                                },
                                icon: Icon(suffix
                                    ? Icons.visibility_off
                                    : Icons.visibility)),
                            labelText: "Password",
                            focusedBorder: const OutlineInputBorder(
                                // borderRadius: BorderRadius.circular(30),
                                borderSide: BorderSide(color: Colors.blue)),
                            enabledBorder: const OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                              // borderRadius: BorderRadius.circular(30),
                            )),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * .01,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        const Text("New to quizz app?"),
                        const SizedBox(width: 10),
                        InkWell(
                            onTap: () {},
                            child: const Text(
                              "Register",
                              style: TextStyle(color: Colors.green),
                            )),
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * .06,
                    ),
                    TextButton(
                        style: TextButton.styleFrom(
                            elevation: 10,
                            backgroundColor: Colors.green,
                            minimumSize: const Size(150, 40),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20))),
                        onPressed: () {
                          if (formKey.currentState!.validate()) {
                            Navigator.push(
                              context,
                              MaterialPageRoute<void>(
                                builder: (BuildContext context) =>
                                    const CategoryScreen(),
                              ),
                            );
                          }
                          ;
                        },
                        child: const Text(
                          "Login",
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        )),

                    // ElevatedButton(
                    //     style: ElevatedButton.styleFrom(
                    //         backgroundColor: Colors.green,
                    //         //shadow
                    //         elevation: 10,
                    //         minimumSize: const Size(150, 40),
                    //         shape: RoundedRectangleBorder(
                    //             borderRadius: BorderRadius.circular(20))),
                    //     onPressed: () {
                    //       Navigator.push(
                    //         context,
                    //         MaterialPageRoute<void>(
                    //           builder: (BuildContext context) =>
                    //               const CategoryScreen(),
                    //         ),
                    //       );
                    //     },
                    //     child: const Text(
                    //       "Login",
                    //       style: TextStyle(fontSize: 20, color: Colors.white),
                    //     )),

                    SizedBox(
                      height: MediaQuery.of(context).size.height * .025,
                    ),
                    Icon(
                      Icons.fingerprint,
                      color: Colors.blue,
                      size: MediaQuery.of(context).size.height * .07,
                    ),
                    Text(
                      "Touch ID",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: MediaQuery.of(context).size.height * .014,
                      ),
                    ),
                    const Spacer(),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * .019,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Checkbox(
                                  // checkColor: Colors.black,
                                  focusColor: Colors.green,
                                  activeColor: Colors.green,
                                  value: true,
                                  onChanged: (mohamed) {}),
                              const Text("Remember me"),
                            ],
                          ),
                          const Text(
                            "Forget Password?",
                            style: TextStyle(color: Colors.green),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
