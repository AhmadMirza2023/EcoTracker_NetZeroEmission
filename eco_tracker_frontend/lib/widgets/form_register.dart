import 'package:eco_tracker_frontend/theme.dart';
import 'package:flutter/material.dart';

class FormRegister extends StatefulWidget {
  const FormRegister({super.key});

  @override
  State<FormRegister> createState() => _FormRegisterState();
}

class _FormRegisterState extends State<FormRegister> {
  final emailController = TextEditingController(text: '');
  final usernameController = TextEditingController(text: '');
  final passwordController = TextEditingController(text: '');
  bool isVisible = false;
  bool isEmailValid = false;
  bool isUsernameValid = false;
  bool isPasswordValid = false;
  @override
  Widget build(BuildContext context) {
    onNamaChanged(String username) {
      final usernameRegex = RegExp(r'^[a-zA-Z0-9_]{4,}$');
      setState(() {
        isUsernameValid = false;
        if (usernameRegex.hasMatch(username)) {
          isUsernameValid = true;
        }
      });
    }

    onEmailChanged(String email) {
      final emailRegex = RegExp(r'^[\w\.-]+@[\w-]+\.\w{2,3}(\.\w{2,3})?$');
      setState(() {
        isEmailValid = false;
        if (emailRegex.hasMatch(email)) {
          isEmailValid = true;
        }
      });
    }

    onPasswordChanged(String password) {
      RegExp passwordeRegex = RegExp(r'^.{8,}$');
      final passwordValid = passwordeRegex.hasMatch(password);
      setState(() {
        isPasswordValid = passwordValid;
      });
    }

    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: formColor,
          ),
          child: TextFormField(
            controller: usernameController,
            onChanged: (username) => onNamaChanged(username),
            autocorrect: false,
            cursorColor: primaryTextColor,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide.none,
              ),
              hintText: 'Username',
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
        SizedBox(
          child: isUsernameValid
              ? null
              : !isUsernameValid && usernameController.text.isNotEmpty
                  ? Text(
                      'Username minimal 4 karakter!',
                      style: alertTextStyle.copyWith(
                        fontSize: 13,
                        fontWeight: regular,
                      ),
                    )
                  : null,
          height: 30,
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: formColor,
          ),
          child: TextFormField(
            controller: emailController,
            onChanged: (email) => onEmailChanged(email),
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
        SizedBox(
          child: isEmailValid
              ? null
              : !isEmailValid && emailController.text.isNotEmpty
                  ? Text(
                      'Tolong masukkan email dengan benar!',
                      style: alertTextStyle.copyWith(
                        fontSize: 13,
                        fontWeight: regular,
                      ),
                    )
                  : null,
          height: 30,
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: formColor,
          ),
          child: TextFormField(
            controller: passwordController,
            onChanged: (password) => onPasswordChanged(password),
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
        SizedBox(
          child: isPasswordValid
              ? null
              : !isPasswordValid && passwordController.text.isNotEmpty
                  ? Text(
                      'Minimal 8 karakter!',
                      style: alertTextStyle.copyWith(
                        fontSize: 13,
                        fontWeight: regular,
                      ),
                    )
                  : null,
          height: 30,
        )
      ],
    );
  }
}
