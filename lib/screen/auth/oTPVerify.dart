import 'dart:ui';

import 'package:dailyjee/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sms_autofill/sms_autofill.dart';

class OTPVerify extends StatelessWidget {
  
  Icon icon = Icon(Icons.border_right, color: Colors.red,);
  TextInputType typer = TextInputType.name;
  @override
  Widget build(BuildContext context) {

    String email = "av********@gmail.com";

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
                  "Enter 4 digit code sent to you at",
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'RobotoBold',
                    color: Colors.black,
                  ),
              ),

              SizedBox(height:32),
              Text(
                  "$email",
                  style: TextStyle(
                    fontSize: 14,
                    fontFamily: 'Roboto',
                    color: primary,
                  ),
              ),
              
              SizedBox(height:49),
              
              Container(
                padding: EdgeInsets.symmetric(horizontal:50),
                child: PinInputTextField(
                  pinLength: 4,
                  cursor: Cursor(
                    width:1,
                    height:30,
                    color:primary,
                    enabled: true,
                  ),
                  
                  decoration: UnderlineDecoration(
                    colorBuilder: FixedColorBuilder(
                      Color(0xFFE2E2E2),
                    ),
                    lineHeight: 1.0,
                    textStyle:TextStyle(fontFamily: 'Roboto',
                      fontSize: 22,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),

              
              SizedBox(height:56),
              FlatButton(onPressed: (){},
                height: 41,
                child: Text(
                  'Verify',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                  ),
                ),
                color: primary,
              ),

              SizedBox(height:20),
 
              Center(
                child: Text(
                'Didn’t receive a verification code?',
                style: TextStyle(
                  color: textLight,
                  fontSize: 14,
                  ),
                ),
              ),
              SizedBox(height:5),
              Center(
                child: Text(
                    'Resend code or Change number',
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 12,
                    ),
                  ),
                
              ),
                
            ]
          ),
        ),
      )
    );
  }
}

