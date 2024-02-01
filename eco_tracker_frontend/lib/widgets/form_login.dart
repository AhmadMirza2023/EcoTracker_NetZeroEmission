import 'package:eco_tracker_frontend/theme.dart';
import 'package:flutter/material.dart';

class FormLogin extends StatefulWidget {
  const FormLogin({super.key});

  @override
  State<FormLogin> createState() => _FormLoginState();
}

class _FormLoginState extends State<FormLogin> {
  bool isVisible = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: formColor,
          ),
          child: TextFormField(
            autocorrect: false,
            cursorColor: primaryTextColor,
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide.none,
              ),
              hintText: 'Email',
              hintStyle: secondaryTextStyle.copyWith(
                fontSize: 16,
                fontWeight: regular,
              ),
              contentPadding: EdgeInsets.symmetric(
                horizontal: 25,
                vertical: 23,
              ),
            ),
          ),
        ),
        SizedBox(height: 30),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: formColor,
          ),
          child: TextFormField(
            autocorrect: false,
            cursorColor: primaryTextColor,
            obscureText: !isVisible,
            decoration: InputDecoration(
              suffixIcon: Padding(
                padding: const EdgeInsets.only(right: 10),
                child: IconButton(
                  onPressed: () {
                    setState(() {
                      isVisible = !isVisible;
                    });
                  },
                  icon: Icon(
                    isVisible ? Icons.visibility : Icons.visibility_off,
                    color: Colors.black,
                  ),
                ),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide.none,
              ),
              hintText: 'Password',
              hintStyle: secondaryTextStyle.copyWith(
                fontSize: 16,
                fontWeight: regular,
              ),
              contentPadding: EdgeInsets.symmetric(
                horizontal: 25,
                vertical: 23,
              ),
            ),
          ),
        ),
        SizedBox(height: 30),
      ],
    );
  }
}
