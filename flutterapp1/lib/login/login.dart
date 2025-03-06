import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutterapp1/login/widgets/custom_clippers/brown_top_clipper.dart';
import 'package:flutterapp1/login/widgets/custom_clippers/gold_top_clipper.dart';
import 'package:flutterapp1/login/widgets/custom_clippers/lightgold_top_clipper.dart';
import 'package:flutterapp1/login/widgets/header.dart';
import '../../constants.dart';
import '../Register/register.dart';


class Login extends StatefulWidget
{
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}



class _LoginState extends State<Login>
{


  final GlobalKey<ScaffoldState> scaffoldKey = new GlobalKey<ScaffoldState>();

  var username = TextEditingController();
  var password = TextEditingController();
  var mobileno = TextEditingController();

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
                  //Spacer(),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: kPaddingL),

                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: space * 7),

                        Text('Login here using your username and password.',
                          style: Theme.of(context).textTheme.subtitle2!.copyWith(color: kDarkBrown.withOpacity(0.7)),
                        ),

                        SizedBox(height: space-5),

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

                        SizedBox(height: space-7),

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
                              onPressed: (){
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

                        SizedBox(height: space-7),

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

                        SizedBox(height: space-7),

                        ConstrainedBox(
                          constraints: const BoxConstraints(
                            minWidth: double.infinity,
                          ),
                          child: TextButton(
                            style: TextButton.styleFrom(
                              backgroundColor: kDarkBrown,
                              padding: const EdgeInsets.all(kPaddingS+5),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4.0),
                              ),
                            ),
                            onPressed: ()
                            {

                            },
                            child: Text("Login to continue",
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
                              backgroundColor: kGold,
                              padding: const EdgeInsets.all(kPaddingS+5),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4.0),
                              ),
                            ),
                            onPressed: (){
                              //Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => ForgotPassword()));
                            },
                            child: Text("Forgot a E-wishes Password?",
                              style: Theme.of(context).textTheme.subtitle1!.copyWith(color: kDarkBrown,fontSize:15 , fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),

                        //SizedBox(height: 2 * space),

                        ConstrainedBox(
                          constraints: const BoxConstraints(
                            minWidth: double.infinity,
                          ),
                          child: TextButton(
                            style: TextButton.styleFrom(
                              backgroundColor: kBrown,
                              padding: const EdgeInsets.all(kPaddingS+5),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4.0),
                              ),
                            ),
                            onPressed: (){
                             Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Register()));
                            },
                            child: Text("Create an E-wishes Account",
                              style: Theme.of(context).textTheme.subtitle1!.copyWith(color: kLightGold, fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        // SizedBox(height: space),
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