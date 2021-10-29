import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:healthfirst/constants.dart';

import 'Login_page.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(
        backgroundColor: blue,
        body:Stack(
          fit: StackFit.expand,

children: [



  SingleChildScrollView(

  child: Column(
      // crossAxisAlignment: CrossAxisAlignment.center,


      children: [
        Padding(padding: EdgeInsets.only(top: DPadding),
        child: Image.asset("images/istockphoto.jpg"),
        ),

        SizedBox(height: 5),
           Card(
            child: TextFormField(
              decoration: InputDecoration(
                filled: true,
                labelText: "Name",

                labelStyle: TextStyle(color: blue),
                hintText: "Enter Your name",
                border: InputBorder.none

            ),


          ),),
        Card(
          child: TextFormField(
            decoration: InputDecoration(
                filled: true,
                labelText: "Date of birth",

                labelStyle: TextStyle(color: blue),
                hintText: "Enter Your date",
                border: InputBorder.none

            ),


          ),),
        Card(
          child: TextFormField(
            decoration: InputDecoration(
                filled: true,
                labelText: "Address",

                labelStyle: TextStyle(color: blue),
                hintText: "Enter Your address",
                border: InputBorder.none

            ),


          ),



          ),
        Card(
          child: TextFormField(
            decoration: InputDecoration(
                filled: true,
                labelText: "Mobile Number",

                labelStyle: TextStyle(color: blue),
                hintText: "Enter Your mobile number",
                border: InputBorder.none

            ),


          ),



        ),
      Card(
        child: TextFormField(
          decoration: InputDecoration(
              filled: true,
              labelText: "Password",

              labelStyle: TextStyle(color: blue),
              hintText: "Enter Your password",
              border: InputBorder.none

          ),


        ),



      ),
        ElevatedButton(onPressed: (){
          Get.to(LoginScreen());
        },


            child: Text("Sign Up",style: TextStyle(color: white,fontSize: 25,fontWeight: FontWeight.w400),)),





      ]
  ),
),
],
        ) ,
      ),
    );
  }
}


