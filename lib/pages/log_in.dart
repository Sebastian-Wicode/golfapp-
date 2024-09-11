import 'package:flutter/material.dart';
import 'package:golf_app/config/app_strings.dart';
import 'package:golf_app/pages/home_page.dart';
import 'package:golf_app/styles/app_colors.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.background,
        body: SingleChildScrollView(
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Spacer(),
                    Text(
                      AppStrings.appName,
                     style: TextStyle(fontSize: 30, 
                     color: Colors.white, 
                     fontWeight: FontWeight.bold,
                      )),
                    SizedBox(height: 16),
                    Text(
                      AppStrings.loginToContinue,
                    style: TextStyle(fontSize: 15, color: Colors.white,)
                    ),
                    Spacer(),
                    TextField(
                      decoration: InputDecoration(
                        hintText: 
                        AppStrings.username, 
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                      ),
                      filled: true,
                      fillColor: Colors.white.withOpacity(.7),
                      ),
                    ),
                    SizedBox(height: 10),
                      TextField(
                      decoration: InputDecoration(
                        hintText: AppStrings.password, 
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                      ),
                      filled: true,
                      fillColor: Colors.white.withOpacity(.7),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                        onPressed: () {
                        print('forgot ');
                      },
                      style: TextButton.styleFrom(
                        foregroundColor: Colors.white,
                      ), 
                       child: Text(AppStrings.forgotPasword)),
                    ),
                    SizedBox(height: 30),
                    SizedBox(
                      height: 50,
                      width: double.infinity,
                      child: ElevatedButton(onPressed: () {
                        Navigator.of(context).pushReplacementNamed('/main'); 
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.amber,
                        foregroundColor: Colors.black,
                      ),
                      child: Text(AppStrings.login)),
                    ),
                    
                    Spacer(),
              
                    Text(
                      AppStrings.loginToContinue,
                    style: TextStyle( color: Colors.white),
                    ),
                    SizedBox(height: 50),
                        SizedBox(
                          height: 48,
                          child: ElevatedButton(
                            onPressed: () {
                              print('Login with Google');
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              foregroundColor: Colors.black,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(Radius.circular(50),
                                ),
                              ), 
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'assets/images/google.jpg',
                                  width: 22,
                                  height: 22,
                                ),
                                SizedBox(width: 8), // Adding some space between the image and text
                                Text(AppStrings.loginWithGoogle),
                              ],
                            ),
                                        ),
                        ), 
                     SizedBox(
                      height: 16,
                     ),
                        SizedBox(
                          height: 48,
                          child: ElevatedButton(
                            onPressed: () {
                              print('Login with Facebook');
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              foregroundColor: Colors.black,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(Radius.circular(50),
                                ),
                              ), 
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'assets/images/facebook.png',
                                  width: 22,
                                  height: 22,
                                ),
                                SizedBox(width: 8), // Adding some space between the image and text
                                Text(AppStrings.loginWithFacebook),
                              ],
                            ),
                                        ),
                        ), 
                    Row(
                      children: [
                        Text(
                          AppStrings.dontHaveAccount, 
                        style: TextStyle(
                          color: Colors.white,
              
                        ),),
                        TextButton(onPressed: (){}
                        ,
                        style: TextButton.styleFrom( 
                          foregroundColor: Colors.amber,
                        ), 
                        child: Text(
                          AppStrings.singup, 
                        style: TextStyle(decoration: TextDecoration.underline),)
                        ),
                      ],
                    ),
                    Spacer(),
                  ],
                ),
            ),
          ),
        ),
    );
  }
}