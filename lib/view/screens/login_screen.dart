import 'package:flutter/material.dart';
import 'package:instagram_app/core/constants/constants.dart';
import 'package:instagram_app/core/widgets/custom_button.dart';
import 'package:instagram_app/core/widgets/custom_text_field.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool showPassword = true;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverFillRemaining(
              hasScrollBody: false,
              child: Column(
                children: [
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: const Icon(
                            Icons.close,
                            color: Colors.black,
                          ),
                        )
                      ],
                    ),
                  ),

                  ///////////////////////////////////////////////////////////////////
                  ///////////////////////////////////////////////////////////////////
                  Expanded(
                    flex: 7,
                    child: Column(
                      children: [
                        const ImageIcon(
                          AssetImage("images/Instagram_dark.png"),
                          size: 180,
                          // color:Colors.red,
                        ),

                        ////////////////////////////
                        ///// Username
                        ////////////////////////
                        CustomTextField(
                          hintString: "Phone number, username or email address",
                          borderEnabled: true,
                        ),

                        ///////////////
                        ////// Password TextField
                        //////////////////
                        CustomTextField(
                          hintString: "Password",
                          obscureString: showPassword,
                          borderEnabled: true,
                          passwordSuffixIcon: IconButton(
                            splashRadius: 0.1,
                            onPressed: () {
                              setState(() {
                                showPassword = showPassword ? false : true;
                              });
                            },
                            icon: Icon(showPassword
                                ? Icons.visibility_off
                                : Icons.visibility),
                          ),
                        ),

                        ///////////////////////////
                        /////// Forget password
                        /////////////////////////////////
                        Container(
                          height: 30,
                          padding: const EdgeInsets.only(right: 10),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                "Forgotten password?",
                                style: TextStyle(color: Colors.blue),
                              ),
                            ],
                          ),
                        ),

                        ////////////////////////
                        ////// Button
                        ////////////////////////
                        Container(
                          margin: const EdgeInsets.only(top: 30),
                          child: CustomButton(
                            labelColor: Colors.white,
                            buttonColor: Colors.blue,
                            buttonElevation: 2.0,
                            label: "Log In",
                            onPress: () {},
                          ),
                        ),

                        //////////////////////////////
                        /////// Or String
                        /////////////////////////////////
                        const Padding(
                          padding: EdgeInsets.all(10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              kDividerLine,
                              Text(
                                "OR",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              kDividerLine,
                            ],
                          ),
                        ),

                        ///////////////////////////////
                        /////// Facebook Login
                        ////////////////////////////////
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.facebook,
                              color: Colors.blue,
                            ),
                            Text(
                              "Login with facebook",
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),

                  /////////////////////////////////////////////////////////////
                  ////////////////////////////////////////////////////////////////
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const Divider(
                        thickness: 2,
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(vertical: 20),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Don't have an account? "),
                            SizedBox(
                              width: 1,
                            ),
                            Text(
                              "Sign Up",
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );

    //     SingleChildScrollView(
    //       child: Container(
    //         child: Column(
    //           mainAxisSize: MainAxisSize.max,
    //           // shrinkWrap: true,
    //           mainAxisAlignment: MainAxisAlignment.center,
    //           children: [
    //             Row(
    //               mainAxisAlignment: MainAxisAlignment.end,
    //               children: [
    //                 IconButton(
    //                   onPressed: () {},
    //                   icon: Icon(
    //                     Icons.close,
    //                     color: Colors.black,
    //                   ),
    //                 )
    //               ],
    //             ),
    //             ImageIcon(
    //               AssetImage("images/Instagram_dark.png"),
    //               size: 200,
    //               color: Colors.red,
    //             ),
    //
    //             ///////////////////////////
    //             ///// Username
    //             ////////////////////////
    //             CustomTextField(
    //               hintString: "Phone number, username or email address",
    //             ),
    //
    //             ///////////////
    //             //// Password TextField
    //             // ////////////////
    //             CustomTextField(
    //               hintString: "Password",
    //               obscureString: showPassword,
    //               passwordSuffixIcon: IconButton(
    //                 splashRadius: 0.1,
    //                 onPressed: () {
    //                   setState(() {
    //                     showPassword = showPassword ? false : true;
    //                   });
    //                 },
    //                 icon: Icon(showPassword
    //                     ? Icons.visibility_off
    //                     : Icons.visibility),
    //               ),
    //             ),
    //
    //             ///////////////////////////
    //             ///// Forget password
    //             ///////////////////////////////
    //             Container(
    //               height: 30,
    //               padding: EdgeInsets.only(right: 10),
    //               child: Row(
    //                 mainAxisAlignment: MainAxisAlignment.end,
    //                 children: [
    //                   Text(
    //                     "Forgotten password?",
    //                     style: TextStyle(),
    //                   ),
    //                 ],
    //               ),
    //             ),
    //
    //             ////////////////////////
    //             //// Button
    //             ///////////////////////
    //             Container(
    //               margin: EdgeInsets.only(top: 30),
    //               child: CustomButton(label: "Log In", onPress: () {}),
    //             ),
    //
    //             //////////////////////////////
    //             ///// Or String
    //             ///////////////////////////////
    //             Padding(
    //               padding: const EdgeInsets.all(10),
    //               child: Row(
    //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //                 children: [
    //                   kDividerLine,
    //                   Text("OR"),
    //                   kDividerLine,
    //                 ],
    //               ),
    //             ),
    //
    //             /////////////////////////////
    //             ///// Facebook Login
    //             //////////////////////////////
    //             Row(
    //               mainAxisAlignment: MainAxisAlignment.center,
    //               children: [
    //                 Icon(
    //                   Icons.facebook,
    //                   color: Colors.blue,
    //                 ),
    //                 Text(
    //                   "Login with facebook",
    //                   style: TextStyle(color: Colors.blue),
    //                 )
    //               ],
    //             ),
    //             Column(
    //               // mainAxisAlignment: MainAxisAlignment.end,
    //               children: [
    //                 Divider(
    //                   thickness: 2,
    //                 ),
    //                 Container(
    //                   // padding: EdgeInsets.symmetric(vertical: 20),
    //                   child: Row(
    //                     mainAxisAlignment: MainAxisAlignment.center,
    //                     children: [
    //                       Text("Don't have an account? "),
    //                       Text("Sign Up")
    //                     ],
    //                   ),
    //                 )
    //               ],
    //             ),
    //           ],
    //         ),
    //       ),
    //     ),
    //   ),
    // );
  }
}
