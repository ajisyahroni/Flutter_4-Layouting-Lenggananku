import 'package:Lenggananku_Layout/screens/Dashboard.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import '../utilities/constant.dart';

class LoginPage extends StatelessWidget {
  void gotoDashboard(BuildContext context) {
    Navigator.pushNamed(context, 'Dashboard');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Builder(
      builder: (context) {
        return Stack(
          children: [
            Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [startGradient, endGradient]),
              ),
            ),
            Container(
              height: double.infinity,
              child: SingleChildScrollView(
                physics: AlwaysScrollableScrollPhysics(),
                padding:
                    EdgeInsets.symmetric(horizontal: 40.0, vertical: 120.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _buildIconApp(),
                    SizedBox(
                      height: 50.0,
                    ),
                    _buildPhoneInput(),
                    SizedBox(
                      height: 30.0,
                    ),
                    _buildPasswordInput(),
                    SizedBox(
                      height: 10.0,
                    ),
                    _buildRegisterLink(),
                    SizedBox(
                      height: 30.0,
                    ),
                    _buildLoginButton(context)
                  ],
                ),
              ),
            )
          ],
        );
      },
    ));
  }

  /// -------------------------

  /// a bunch of widgets

  /// -------------------------

  Widget _buildLoginButton(BuildContext context) {
    return Container(
      child: RaisedButton(
        padding: EdgeInsets.symmetric(horizontal: 40.0),
        color: accentColor,
        onPressed: () {
          // Navigator.pushNamed(context, 'Dashboard');
          Navigator.push(
              context,
              PageTransition(
                  child: DashboardPage(), type: PageTransitionType.rotate));
        },
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
        child: Text(
          'Login',
          style: TextStyle(
              fontWeight: FontWeight.w400,
              fontFamily: 'SegoeUI',
              color: Colors.white),
        ),
      ),
    );
  }

  Widget _buildRegisterLink() {
    return Row(
      children: [
        Container(
          padding: EdgeInsets.only(left: 10.0),
          child: Text(
            'Belum punya akun ? ',
            style: TextStyle(
                fontSize: 14.0, fontFamily: 'SegoeUI', color: Colors.white),
          ),
        ),
        Text(
          'Daftar Disini',
          style: TextStyle(
              fontSize: 14.0,
              fontFamily: 'SegoeUI',
              color: successColor,
              decoration: TextDecoration.underline),
        )
      ],
    );
  }

  Widget _buildPasswordInput() {
    return Container(
      height: 40.0,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(20.0)),
      child: TextField(
        obscureText: true,
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
            isDense: true,
            contentPadding:
                EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
            border: InputBorder.none,
            hintText: 'Password',
            hintStyle: TextStyle(color: Colors.grey)),
      ),
    );
  }

  Widget _buildPhoneInput() {
    return Container(
      height: 40.0,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(20.0)),
      child: TextField(
        keyboardType: TextInputType.phone,
        decoration: InputDecoration(
            isDense: true,
            contentPadding:
                EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
            border: InputBorder.none,
            hintText: 'No Hp',
            hintStyle: TextStyle(color: Colors.grey)),
      ),
    );
  }

  Widget _buildIconApp() {
    return Column(
      children: [
        Container(
          // color: Colors.white,
          height: 100,
          child: lengganankuIcon,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Lengganan',
              style: TextStyle(
                  fontFamily: 'CenturyGothic',
                  color: Colors.white,
                  letterSpacing: 1.0,
                  fontWeight: FontWeight.bold,
                  fontSize: 30.0),
            ),
            Text(
              'Ku',
              style: TextStyle(
                  fontFamily: 'CenturyGothic',
                  letterSpacing: 1.0,
                  color: accentColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 30.0),
            ),
          ],
        ),
      ],
    );
  }
}
