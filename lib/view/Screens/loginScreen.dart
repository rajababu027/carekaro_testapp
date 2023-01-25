import 'package:carekaro_testapp/view/widget/colors.dart';
import 'package:flutter/material.dart';
import '../widget/font.dart';
import '../widget/textFormField.dart';

class loginScreen extends StatefulWidget {
  const loginScreen({super.key});

  @override
  State<loginScreen> createState() => _loginScreenState();
}

class _loginScreenState extends State<loginScreen> {
  bool _obscureText = true;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: size.height * .34,
              width: size.width * 1,
              decoration: BoxDecoration(
                color: primaryColor,
                borderRadius: BorderRadius.vertical(
                    bottom: Radius.elliptical(
                        MediaQuery.of(context).size.width, 240.0)),
              ),
              child: Image.asset('assets/logoIcons/carekarologo.png'),
            ),
            SizedBox(
              height: size.height * .05,
            ),
            Text(
              "Login to Continue",
              style: TextStyle(
                  fontFamily: Poppins,
                  fontWeight: FontWeight.w500,
                  fontSize: 26),
            ),
            SizedBox(
              height: size.height * .04,
            ),
            Container(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                loginHeading('Email address'),
                textFormField(
                  surIcon: GestureDetector(
                        onTap: () {
                          setState(() {
                            _obscureText = !_obscureText;
                          });
                        },
                        child: new Icon(
                          _obscureText
                              ? Icons.visibility
                              : Icons.visibility_off,
                          color: Colors.grey,
                        ),
                      ),
                  preIcon: Icon(
                    Icons.email,
                    color: Colors.grey,
                  ),
                  ObscureText: _obscureText,
                  hintText: "Enter Email adress",
                ),
                loginHeading('Password'),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: TextFormField(
                    obscureText: _obscureText,
                    // controller: controller,
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.grey,
                    ),
                    decoration: InputDecoration(
                      //add prefix icon
                      prefixIcon: Icon(
                        Icons.lock,
                        color: Colors.grey,
                      ),
                      suffixIcon: GestureDetector(
                        onTap: () {
                          setState(() {
                            _obscureText = !_obscureText;
                          });
                        },
                        child: new Icon(
                          _obscureText
                              ? Icons.visibility
                              : Icons.visibility_off,
                          color: Colors.grey,
                        ),
                      ),
                      // errorText: "Error",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),

                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(color: Colors.grey, width: 1.0),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      fillColor: Colors.grey,
                      hintText: 'Enter Password',
                      hintStyle: TextStyle(
                        color: Colors.grey,
                        fontSize: 16,
                        fontFamily: Poppins,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Container(
                    decoration: BoxDecoration(
                        color: primaryColor,
                        borderRadius: BorderRadius.circular(15)),
                    height: size.height * .06,
                    width: size.width * 1,
                    child: Center(
                        child: Text(
                      "Login",
                      style: TextStyle(
                          fontFamily: Poppins,
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w500),
                    )),
                  ),
                ),

              
                 
              ],
            )),


           Container(
            width: size.width * 1,
             child: Row(
               children: [
                 Container(
                  height: size.height *.21,
                        alignment: Alignment.bottomLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(top:50.0),
                      child: Image.asset('assets/logoIcons/plus.png'),
                    )),

                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 50),
                    child: Text("version v.1",style: TextStyle(
                    fontFamily: Poppins,
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: Colors.grey
                ),),
                  )
               ],
             ),
           ),

             
          ],
        ),
      ),
    );
  }

  Widget loginHeading(String inputText) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Text(
        inputText,
        style: TextStyle(
            fontFamily: Poppins, fontSize: 18, fontWeight: FontWeight.w400),
      ),
    );
  }
}
