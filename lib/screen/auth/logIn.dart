import 'package:dailyjee/screen/components/textInputContainer.dart';
import 'package:dailyjee/theme.dart';
import 'package:flutter/material.dart';

class LogIn extends StatelessWidget {
  String st = "SS";
  Icon icon = Icon(Icons.border_right, color: Colors.red,);
  TextInputType typer = TextInputType.name;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: background,
          image:DecorationImage(
            image: AssetImage('assets/authbackground.png'),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16.0, 108, 16.0, 65),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children:[
              Center(
                child: Text(
                  "DailyJEE",
                  style: TextStyle(
                    fontSize: 34,
                    fontFamily: 'Molengo',
                    color: primary,
                  ),
                ),
              ),
              SizedBox(height:49),
              TextInputContainer(
                st: 'Email',
                icon: Icon(Icons.check_circle, size: 18, color: Colors.green),
                typer:TextInputType.emailAddress
              ),
              SizedBox(height:32),
              TextInputContainer(
                st: 'Password',
                icon: Icon(Icons.visibility, size: 18,),
                typer:TextInputType.visiblePassword
              ),
              SizedBox(height:24),
              Row(
                children: [
                  Icon(
                    Icons.check_circle,
                    size: 14,
                    color: primary,
                  ),
                  SizedBox(width:8),
                  Expanded(
                      child: Text(
                      'Remember me',
                      style: TextStyle(
                        color: Colors.grey[500],
                        fontSize: 12,
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: (){
                      Navigator.pushNamed(context, '/resetpassword');
                    },
                    child: Text(
                      'Forgot Passward?',
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 12,
                      ),
                    ),
                  ),
                ],
              ),
              
              SizedBox(height:56),
              FlatButton(
                onPressed: (){
                  
                },
                height: 41,
                child: Text(
                  'Log in',
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
                  'Do not have an account?',
                  style: TextStyle(
                    color: Colors.grey[500],
                    fontSize: 12,
                    ),
                  ),
                  TextButton(
                    onPressed: (){
                      Navigator.pushNamed(context, '/signup');
                    },
                    child: Text(
                      'Register now',
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 12,
                      ),
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

