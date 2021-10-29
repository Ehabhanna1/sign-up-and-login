import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:healthfirst/constants.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      backgroundColor: blue,
      body: Column(
        children: [
          Padding(padding: EdgeInsets.only(top: DPadding),
            child: Image.asset("images/team.jpg"),
          ),
          SizedBox(height: DPadding,),
          CircleAvatar(
            backgroundColor: Colors.white,
            child: Icon(Icons.person_outline,size: 40,color: Colors.black45,),
            maxRadius: 40,
          ),
          SizedBox(height: 5),
          Text("Welcome",style: TextStyle(
            color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold
          ),),
          SizedBox(height: 5),
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


              child: Text("LOGIN",style: TextStyle(color: white,fontSize: 25,fontWeight: FontWeight.w400),)),




        ],
      ),
    ));
  }
}
