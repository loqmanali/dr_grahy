import 'package:dr_grahy/Widget/original_button.dart';
import 'package:dr_grahy/screen/auth_screen.dart';
import 'package:flutter/material.dart';

// enum AuthType { login, register }

class AuthForm extends StatefulWidget {
  final AuthType authType;

  const AuthForm({Key key, @required this.authType}) : super(key: key);
  @override
  _AuthFormState createState() => _AuthFormState();
}

class _AuthFormState extends State<AuthForm> {
  final _formKey = GlobalKey<FormFieldState>();
  String _email = '', _password = '';
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Form(
            key: _formKey,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 25,
                  ),
                  TextFormField(
                    onChanged: (value) => _email = value,
                    validator: (value) =>
                        value.isEmpty ? 'Enter valid Email' : null,
                    decoration: InputDecoration(
                      labelText: 'Enter your email',
                      hintText: 'info@gmail.com',
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    onChanged: (value) => _password = value,
                    validator: (value) => value.length < 8
                        ? 'Your passowrd must have larger than 8 charater'
                        : null,
                    decoration: InputDecoration(
                      labelText: 'Enter your password',
                    ),
                    obscureText: true,
                  ),
                  SizedBox(
                    height: 35,
                  ),
                  OriginalButton(
                    text: widget.authType == AuthType.login
                        ? 'Sign in'
                        : 'register',
                    onPressed: () {
                      if (_formKey.currentState.validate()) {
                        print(_email);
                        print(_password);
                      }
                    },
                    textColor: Colors.white,
                    bgColor: Colors.lightBlue,
                  ),
                ],
              ),
            )),
        SizedBox(
          height: 25,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 35),
          child: Row(
            children: <Widget>[
              Text(
                'New User?',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 65,
              ),
              FlatButton(
                  onPressed: () {
                    if (widget.authType == AuthType.login)
                      Navigator.of(context).pushReplacementNamed('register');
                    else
                      Navigator.of(context).pushReplacementNamed('login');
                  },
                  child: Text(
                    widget.authType == AuthType.login
                        ? 'Register Now'
                        : 'Sign in',
                    style: TextStyle(color: Colors.black, fontSize: 25),
                  )),
            ],
          ),
        )
      ],
    );
  }
}
