import 'package:dailyjee/screen/components/textInputContainer.dart';
import 'package:dailyjee/theme.dart';
import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  String st = "SS";
  Icon icon = Icon(Icons.border_right, color: Colors.red,);
  TextInputType typer = TextInputType.name;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      body: Container(
        decoration: BoxDecoration(
          image:DecorationImage(
            image: AssetImage('assets/authbackground.png'),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16.0, 48, 16.0, 65),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children:[
              Container(
                alignment: Alignment.topLeft,
                child: Icon(
                      Icons.arrow_back_ios,
                      size: 16,
                      color: Colors.black,
                ),
              ),
              SizedBox(height:32),
              Text(
                  "Register",
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'RobotoBold',
                    color: Colors.black,
                  ),
              ),
              
              SizedBox(height:49),
              TextInputContainer(
                st: 'Name',
                typer:TextInputType.name
              ),
              SizedBox(height:20),

              TextInputContainer(
                st: 'Email',
                icon: Icon(Icons.check_circle, size: 18, color: Colors.green),
                typer:TextInputType.emailAddress
              ),
              SizedBox(height:20),

              TextInputContainer(
                st: 'Password',
                icon: Icon(Icons.visibility, size: 18,),
                typer:TextInputType.visiblePassword
              ),
              SizedBox(height:20),

              TextInputContainer(
                st: 'Confirm Password',
                icon: Icon(Icons.visibility, size: 18,),
                typer:TextInputType.visiblePassword
              ),

              
              SizedBox(height:56),
              FlatButton(
                onPressed: (){
                  
                },
                height: 41,
                child: Text(
                  'Register',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                  ),
                ),
                color: primary,
              ),

              SizedBox(height:16),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  
                  Text(
                  'By registering you agree to',
                  style: TextStyle(
                    color: Colors.grey[500],
                    fontSize: 12,
                    ),
                  ),
                  Text(
                    ' Terms & Conditions',
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ]
          ),
        ),
      )
    );
  }
}

