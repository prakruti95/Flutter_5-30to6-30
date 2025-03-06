import 'package:flutter/material.dart';
import 'package:flutterapp1/login/widgets/header.dart';
import '../../constants.dart';
import '../login/login.dart';
import 'package:http/http.dart' as http;

import '../login/widgets/custom_clippers/brown_top_clipper.dart';
import '../login/widgets/custom_clippers/gold_top_clipper.dart';
import '../login/widgets/custom_clippers/lightgold_top_clipper.dart';

class Register extends StatefulWidget
{
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}



class _RegisterState extends State<Register>
{
  final GlobalKey<ScaffoldState> scaffoldKey = new GlobalKey<ScaffoldState>();
  var username = TextEditingController();
  var password = TextEditingController();
  var mobileno = TextEditingController();
  var confirmpassword = TextEditingController();
  bool _isObscurePassword = true;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top;
    final space = height > 650 ? kSpaceM : kSpaceS;

    return Scaffold(
      key: scaffoldKey, // Use the key for other purposes, but no need for ScaffoldMessenger here
      resizeToAvoidBottomInset: false,
      backgroundColor: kLightGold,
      body: Stack(
        children: [
          ClipPath(
            clipper: const GoldTopClipper(),
            child: Container(color: kGold),
          ),
          ClipPath(
            clipper: const BrownTopClipper(),
            child: Container(color: kBrown),
          ),
          ClipPath(
            clipper: const LightGoldTopClipper(),
            child: Container(color: kLightGold),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: kPaddingL),
              child: Column(
                children: [
                  Header(),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: kPaddingL),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: space * 7),
                        Text(
                          'Register here using your username and password.',
                          style: Theme.of(context).textTheme.subtitle2!.copyWith(color: kDarkBrown.withOpacity(0.7)),
                        ),
                        SizedBox(height: space - 5),
                        TextField(
                          controller: username,
                          decoration: InputDecoration(
                            contentPadding: const EdgeInsets.all(kPaddingS),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black.withOpacity(0.12)),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black.withOpacity(0.12)),
                            ),
                            hintText: 'Username',
                            hintStyle: TextStyle(
                              color: kBlack.withOpacity(0.5),
                              fontWeight: FontWeight.w500,
                            ),
                            prefixIcon: Icon(
                              Icons.person,
                              color: kBlack.withOpacity(0.5),
                            ),
                          ),
                        ),
                        SizedBox(height: space - 7),
                        TextField(
                          controller: password,
                          decoration: InputDecoration(
                            contentPadding: const EdgeInsets.all(kPaddingS),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black.withOpacity(0.12)),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black.withOpacity(0.12)),
                            ),
                            hintText: 'Password',
                            hintStyle: TextStyle(
                              color: kBlack.withOpacity(0.5),
                              fontWeight: FontWeight.w500,
                            ),
                            suffixIcon: IconButton(
                              icon: Icon(_isObscurePassword ? Icons.visibility_off : Icons.visibility),
                              onPressed: () {
                                setState(() {
                                  _isObscurePassword = !_isObscurePassword;
                                });
                              },
                            ),
                            prefixIcon: Icon(
                              Icons.lock,
                              color: kBlack.withOpacity(0.5),
                            ),
                          ),
                          obscureText: _isObscurePassword,
                        ),
                        SizedBox(height: space - 7),
                        TextField(
                          controller: mobileno,
                          keyboardType: TextInputType.phone,
                          decoration: InputDecoration(
                            contentPadding: const EdgeInsets.all(kPaddingS),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black.withOpacity(0.12)),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black.withOpacity(0.12)),
                            ),
                            hintText: 'Mobile Number',
                            hintStyle: TextStyle(
                              color: kBlack.withOpacity(0.5),
                              fontWeight: FontWeight.w500,
                            ),
                            prefixIcon: Icon(
                              Icons.phone,
                              color: kBlack.withOpacity(0.5),
                            ),
                          ),
                        ),
                        SizedBox(height: space - 7),
                        TextField(
                          controller: confirmpassword,
                          decoration: InputDecoration(
                            contentPadding: const EdgeInsets.all(kPaddingS),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black.withOpacity(0.12)),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black.withOpacity(0.12)),
                            ),
                            hintText: 'Confirm Password',
                            hintStyle: TextStyle(
                              color: kBlack.withOpacity(0.5),
                              fontWeight: FontWeight.w500,
                            ),
                            suffixIcon: IconButton(
                              icon: Icon(_isObscurePassword ? Icons.visibility_off : Icons.visibility),
                              onPressed: () {
                                setState(() {
                                  _isObscurePassword = !_isObscurePassword;
                                });
                              },
                            ),
                            prefixIcon: Icon(
                              Icons.lock,
                              color: kBlack.withOpacity(0.5),
                            ),
                          ),
                          obscureText: _isObscurePassword,
                        ),
                        SizedBox(height: space - 7),
                        ConstrainedBox(
                          constraints: const BoxConstraints(
                            minWidth: double.infinity,
                          ),
                          child: TextButton(
                            style: TextButton.styleFrom(
                              backgroundColor: kDarkBrown,
                              padding: const EdgeInsets.all(kPaddingS + 5),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4.0),
                              ),
                            ),
                            onPressed: () {
                              if (password.text.toString() == confirmpassword.text.toString()) {
                                registeruser();
                              } else {
                                // Show SnackBar with message
                                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Password and confirm password must be same")));
                              }
                            },
                            child: Text(
                              "Register to continue",
                              style: Theme.of(context).textTheme.subtitle1!.copyWith(color: kGold, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        SizedBox(height: space),
                        ConstrainedBox(
                          constraints: const BoxConstraints(
                            minWidth: double.infinity,
                          ),
                          child: TextButton(
                            style: TextButton.styleFrom(
                              backgroundColor: kBrown,
                              padding: const EdgeInsets.all(kPaddingS + 5),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4.0),
                              ),
                            ),
                            onPressed: () {
                              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Login()));
                            },
                            child: Text(
                              "Already have an account?",
                              style: Theme.of(context).textTheme.subtitle1!.copyWith(color: kLightGold, fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
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

  void registeruser() {
    var url1 = "https://prakrutitech.buzz/Project_API/signup.php";
    http.post(Uri.parse(url1), body: {
      "username": username.text.toString(),
      "password": password.text.toString(),
      "mobileno": mobileno.text.toString(),
      "identifier": "User"
    });

    // Show success message after registering
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Registered Successfully!')));

    // Navigate to login page
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Login()));
  }
}
