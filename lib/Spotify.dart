import 'package:flutter/material.dart';

import 'account.dart';

class Spotify extends StatefulWidget {
  const Spotify({Key? key}) : super(key: key);

  @override
  State<Spotify> createState() => _SpotifyState();
}

class _SpotifyState extends State<Spotify> {
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  bool isNameEmpty = false;
  bool isEmailEmpty = false;
  bool isPasswordEmpty = false;
  bool visionIcon = true;
  String avatar = 'avatar.png';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 27.0, vertical: 36),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 32,
                    width: 32,
                    padding: const EdgeInsets.only(left: 4),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: const Color(0xffFFFFFF).withOpacity(0.03),
                    ),
                    child: const Icon(
                      Icons.arrow_back_ios,
                      color: Color(0xffDDDDDD),
                      size: 12,
                    ),
                  ),
                  Image.asset('spotifylogo.png'),
                  const SizedBox(
                    width: 40,
                  )
                ],
              ),
              const SizedBox(
                height: 47,
              ),
              Center(
                child: Column(
                  children: [
                    const Text(
                      'Register',
                      style: TextStyle(
                          color: Color(0xffF2F2F2),
                          fontWeight: FontWeight.w700,
                          fontSize: 30),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    RichText(
                        text: const TextSpan(children: [
                      TextSpan(
                          text: 'If You Need Any Support',
                          style: TextStyle(
                              color: Color(0xffE1E1E1),
                              fontSize: 12,
                              fontWeight: FontWeight.w400)),
                      TextSpan(
                          text: ' Click Here',
                          style: TextStyle(
                              color: Color(0xff38B432),
                              fontSize: 12,
                              fontWeight: FontWeight.w400)),
                    ])),
                  ],
                ),
              ),
              const SizedBox(
                height: 26,
              ),
              TextFormField(
                onChanged: (c) {
                  isNameEmpty = false;
                  setState(() {});
                },
                controller: name,
                cursorColor: Colors.white,
                style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                    fontSize: 16),
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.all(28),
                  labelText: "Full Name",
                  labelStyle: TextStyle(
                      color: const Color(0xffA7A7A7).withOpacity(0.6),
                      fontWeight: FontWeight.w700,
                      fontSize: 16),
                  border: OutlineInputBorder(
                      borderRadius: const BorderRadius.all(Radius.circular(30)),
                      borderSide:
                          BorderSide(color: Colors.white.withOpacity(0.14))),
                  errorBorder: OutlineInputBorder(
                      borderRadius: const BorderRadius.all(Radius.circular(30)),
                      borderSide:
                          BorderSide(color: Colors.white.withOpacity(0.14))),
                  focusedBorder: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                      borderSide: BorderSide(color: Colors.white)),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: const BorderRadius.all(Radius.circular(30)),
                      borderSide:
                          BorderSide(color: Colors.white.withOpacity(0.14))),
                ),
              ),
              isNameEmpty
                  ? const Padding(
                      padding: EdgeInsets.only(left: 18.0, top: 8),
                      child: Text(
                        "Enter Your Name",
                        style: TextStyle(color: Colors.red),
                      ),
                    )
                  : const SizedBox.shrink(),
              Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: TextFormField(
                  onChanged: (c) {
                    isEmailEmpty = false;
                    setState(() {});
                  },
                  controller: email,
                  cursorColor: Colors.white,
                  style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 16),
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.all(28),
                    labelText: "Enter Email",
                    labelStyle: TextStyle(
                        color: const Color(0xffA7A7A7).withOpacity(0.6),
                        fontWeight: FontWeight.w700,
                        fontSize: 16),
                    border: OutlineInputBorder(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(30)),
                        borderSide:
                            BorderSide(color: Colors.white.withOpacity(0.14))),
                    errorBorder: OutlineInputBorder(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(30)),
                        borderSide:
                            BorderSide(color: Colors.white.withOpacity(0.14))),
                    focusedBorder: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                        borderSide: BorderSide(color: Colors.white)),
                    enabledBorder: OutlineInputBorder(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(30)),
                        borderSide:
                            BorderSide(color: Colors.white.withOpacity(0.14))),
                  ),
                ),
              ),
              isEmailEmpty
                  ? const Padding(
                      padding: EdgeInsets.only(left: 18.0, top: 8),
                      child: Text(
                        "Enter Your Email",
                        style: TextStyle(color: Colors.red),
                      ),
                    )
                  : const SizedBox.shrink(),
              Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: TextFormField(
                  onChanged: (c) {
                    isPasswordEmpty = false;
                    setState(() {});
                  },
                  cursorColor: Colors.white,
                  controller: password,
                  obscureText: visionIcon,
                  style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 16),
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      contentPadding: const EdgeInsets.all(28),
                      labelText: "Password",
                      labelStyle: TextStyle(
                          color: const Color(0xffA7A7A7).withOpacity(0.6),
                          fontWeight: FontWeight.w700,
                          fontSize: 16),
                      border: OutlineInputBorder(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(30)),
                          borderSide: BorderSide(
                              color: Colors.white.withOpacity(0.14))),
                      errorBorder: OutlineInputBorder(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(30)),
                          borderSide: BorderSide(
                              color: Colors.white.withOpacity(0.14))),
                      focusedBorder: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                          borderSide: BorderSide(color: Colors.white)),
                      enabledBorder: OutlineInputBorder(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(30)),
                          borderSide: BorderSide(
                              color: Colors.white.withOpacity(0.14))),
                      suffixIcon: Padding(
                        padding: const EdgeInsets.only(right: 20.0),
                        child: IconButton(
                            onPressed: () {
                              visionIcon = !visionIcon;
                              setState(() {});
                            },
                            icon: Icon(
                                visionIcon
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                                color: const Color(0xff5B5B5B))),
                      )),
                ),
              ),
              isPasswordEmpty
                  ? const Padding(
                      padding: EdgeInsets.only(left: 18.0, top: 8),
                      child: Text(
                        "Enter Your Password",
                        style: TextStyle(color: Colors.red),
                      ),
                    )
                  : const SizedBox.shrink(),
              GestureDetector(
                child: Container(
                  margin: const EdgeInsets.symmetric(vertical: 35),
                  padding: const EdgeInsets.symmetric(vertical: 28),
                  decoration: const BoxDecoration(
                    color: Color(0xff42C83C),
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                  ),
                  child: const Center(
                      child: Text(
                    "Create Account",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w700),
                  )),
                ),
                onTap: () {
                  if (name.text.isEmpty) {
                    isNameEmpty = true;
                    setState(() {});
                  }
                  if (email.text.isEmpty) {
                    isEmailEmpty = true;
                    setState(() {});
                  }
                  if (password.text.isEmpty) {
                    isPasswordEmpty = true;
                    setState(() {});
                  }
                  if (name.text.isNotEmpty &&
                      email.text.isNotEmpty &&
                      password.text.isNotEmpty) {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => Account(
                                  name: name.text,
                                  email: email.text,
                                  avatar: avatar = 'avatar.png',
                                )));
                  }
                },
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 1,
                    width: 146,
                    decoration: const BoxDecoration(
                        gradient: LinearGradient(
                            colors: [Color(0xff5B5B5B), Color(0xff252525)])),
                  ),
                  const Text(
                    'Or',
                    style: TextStyle(
                        color: Color(0xff383838),
                        fontWeight: FontWeight.w400,
                        fontSize: 12),
                  ),
                  Container(
                    height: 1,
                    width: 146,
                    decoration: const BoxDecoration(
                        gradient: LinearGradient(
                            colors: [Color(0xff5B5B5B), Color(0xff252525)])),
                  ),
                ],
              ),
              const SizedBox(
                height: 44,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    child: Image.asset('google.png'),
                    onTap: () {
                      if (name.text.isEmpty) {
                        isNameEmpty = true;
                        setState(() {});
                      }
                      if (email.text.isEmpty) {
                        isEmailEmpty = true;
                        setState(() {});
                      }
                      if (password.text.isEmpty) {
                        isPasswordEmpty = true;
                        setState(() {});
                      }
                      if (name.text.isNotEmpty &&
                          email.text.isNotEmpty &&
                          password.text.isNotEmpty) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) => Account(
                                      name: name.text,
                                      email: email.text,
                                      avatar: avatar = 'google.png',
                                    )));
                      }
                    },
                  ),
                  const SizedBox(
                    width: 60,
                  ),
                  InkWell(
                    child: Image.asset('apple.png'),
                    onTap: () {
                      if (name.text.isEmpty) {
                        isNameEmpty = true;
                        setState(() {});
                      }
                      if (email.text.isEmpty) {
                        isEmailEmpty = true;
                        setState(() {});
                      }
                      if (password.text.isEmpty) {
                        isPasswordEmpty = true;
                        setState(() {});
                      }
                      if (name.text.isNotEmpty &&
                          email.text.isNotEmpty &&
                          password.text.isNotEmpty) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) => Account(
                                      name: name.text,
                                      email: email.text,
                                      avatar: avatar = 'apple.png',
                                    )));
                      }
                    },
                  )
                ],
              ),
              const SizedBox(
                height: 31,
              ),
              Center(
                child: RichText(
                    text: const TextSpan(children: [
                  TextSpan(
                      text: 'Do You Have An Account? ',
                      style: TextStyle(
                          color: Color(0xffDBDBDB),
                          fontSize: 14,
                          fontWeight: FontWeight.w700)),
                  TextSpan(
                      text: 'Sign In',
                      style: TextStyle(
                          color: Color(0xff288CE9),
                          fontSize: 14,
                          fontWeight: FontWeight.w700)),
                ])),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
