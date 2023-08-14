import 'package:flutter/material.dart';
import 'package:quizz_app/screens/category_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
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
                borderRadius: BorderRadius.vertical(top: Radius.circular(35))),
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
                    child: TextField(
                      decoration: InputDecoration(
                          prefix: const Icon(Icons.person),
                          hintText: "User name",
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: const BorderSide(color: Colors.blue)),
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.black),
                            borderRadius: BorderRadius.circular(30),
                          )),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * .015,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * .075,
                    child: TextField(
                      decoration: InputDecoration(
                          prefix: const Icon(Icons.person),
                          suffixIcon: const Icon(Icons.visibility),
                          hintText: "Password",
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: const BorderSide(color: Colors.blue)),
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.black),
                            borderRadius: BorderRadius.circular(30),
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
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green,
                          //shadow
                          elevation: 10,
                          minimumSize: const Size(150, 40),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20))),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute<void>(
                            builder: (BuildContext context) =>
                                const CategoryScreen(),
                          ),
                        );
                      },
                      child: const Text(
                        "Login",
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      )),
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
    );
  }
}
