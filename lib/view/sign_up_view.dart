import 'package:flutter/material.dart';
import 'package:pivott/view/home_view.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({Key? key}) : super(key: key);

  @override
  _SignUpViewState createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  final passwordController = TextEditingController();
  final confirmController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  bool isChecked = false;

  String firstName = '';
  String lastName = '';
  String email = '';
  String password = '';
  String confirmPassword = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios_new),
        title: Image.asset(
          "assets/images/logoDark.png",
          height: 30,
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 13),
          child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                height(10),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Sign Up',
                    style: Theme.of(context).textTheme.headline1,
                  ),
                ),
                height(15),
                buildText('First Name'),
                height(8),
                buildFirstName(),
                height(4),
                buildText('Last Name'),
                height(8),
                buildLastName(),
                height(4),
                buildText('Email'),
                height(8),
                buildEmail(),
                height(4),
                buildText('Password'),
                height(8),
                buildPassword(),
                height(4),
                buildText('Confirm Password'),
                height(8),
                buildConfirmPassword(),
                Row(
                  children: [
                    Checkbox(
                        activeColor: Colors.blue,
                        side: BorderSide(color: Colors.white),
                        value: isChecked,
                        onChanged: (value) {
                          setState(() {
                            isChecked = value!;
                          });
                        }),
                    SizedBox(
                      width: 5,
                    ),
                    RichText(
                      text: TextSpan(
                        style: Theme.of(context).textTheme.headline3,
                        children: [
                          TextSpan(text: 'I agree to the '),
                          TextSpan(
                              text: 'Terms of Service',
                              style: Theme.of(context).textTheme.subtitle1),
                          TextSpan(text: ' & the '),
                          TextSpan(
                              text: 'Privacy Policy',
                              style: Theme.of(context).textTheme.subtitle1),
                        ],
                      ),
                    ),
                  ],
                ),
                height(10),
                createButton(),
                height(20),
                Align(
                  alignment: Alignment.center,
                  child: RichText(
                    text: TextSpan(
                      style: Theme.of(context).textTheme.headline2,
                      children: [
                        TextSpan(text: 'Already have a PIVOTT account? '),
                        TextSpan(
                            text: 'Sign in',
                            style: Theme.of(context).textTheme.subtitle2),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget createButton() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: SizedBox(
        height: 50,
        width: double.infinity,
        child: ElevatedButton(
          style: ButtonStyle(
              backgroundColor:
                  MaterialStateColor.resolveWith((states) => Colors.orange)),
          onPressed: () {
            print(password);
            print(confirmPassword);
            final isValid = formKey.currentState!.validate();
            if (isValid) {
              formKey.currentState!.save();
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HomeView(),
                ),
              );
            }
          },
          child: Text(
            'Create Account',
            style: Theme.of(context).textTheme.headline2,
          ),
        ),
      ),
    );
  }

  Widget buildText(String name) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Text(
        name,
        style: Theme.of(context).textTheme.headline2,
      ),
    );
  }

  Widget height(double height) {
    return SizedBox(
      height: height,
    );
  }

  Widget buildFirstName() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Container(
        width: double.infinity,
        child: TextFormField(
          validator: (value) {
            if (value!.length < 2) return 'Enter atleast 2 character';
          },
          onSaved: (value) => setState(() {
            firstName = value!;
          }),
          style: TextStyle(color: Colors.white),
          decoration: InputDecoration(
            hintText: 'Enter first name',
            hintStyle: TextStyle(color: Colors.grey),
            fillColor: Color(0xff414141),
            filled: true,
            errorBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey),
            ),
            disabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey),
            ),
          ),
        ),
      ),
    );
  }

  Widget buildLastName() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Container(
        width: double.infinity,
        child: TextFormField(
          validator: (value) {
            if (value!.length < 2) return 'Enter atleast 2 character';
          },
          onSaved: (value) => setState(() {
            firstName = value!;
          }),
          style: TextStyle(color: Colors.white),
          decoration: InputDecoration(
            hintText: 'Enter last name',
            hintStyle: TextStyle(color: Colors.grey),
            fillColor: Color(0xff414141),
            filled: true,
            errorBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey),
            ),
            disabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey),
            ),
          ),
        ),
      ),
    );
  }

  Widget buildEmail() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Container(
        width: double.infinity,
        child: TextFormField(
          validator: (value) {
            String pattern =
                r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
            RegExp regex = new RegExp(pattern);
            return (!regex.hasMatch(value!)) ? 'Enter valid email' : null;
          },
          onSaved: (value) => setState(() {
            email = value!;
          }),
          style: TextStyle(color: Colors.white),
          decoration: InputDecoration(
            hintText: 'Enter Email',
            hintStyle: TextStyle(color: Colors.grey),
            fillColor: Color(0xff414141),
            filled: true,
            errorBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey),
            ),
            disabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey),
            ),
          ),
        ),
      ),
    );
  }

  Widget buildPassword() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Container(
        width: double.infinity,
        child: TextFormField(
          controller: passwordController,
          validator: (value) {
            if (value!.length < 8) return 'Enter atleast 8 character';
          },
          onSaved: (value) => setState(() {
            password = value!;
          }),
          style: TextStyle(color: Colors.white),
          decoration: InputDecoration(
            hintText: 'Enter password',
            hintStyle: TextStyle(color: Colors.grey),
            fillColor: Color(0xff414141),
            filled: true,
            errorBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey),
            ),
            disabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey),
            ),
          ),
        ),
      ),
    );
  }

  Widget buildConfirmPassword() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Container(
        width: double.infinity,
        child: TextFormField(
          controller: confirmController,
          validator: (value) {
            return (confirmController.text != passwordController.text)
                ? 'Password is wrong'
                : null;
          },
          onSaved: (value) => setState(() {
            confirmPassword = value!;
          }),
          style: TextStyle(color: Colors.white),
          decoration: InputDecoration(
            hintText: 'Enter confirm password',
            hintStyle: TextStyle(color: Colors.grey),
            fillColor: Color(0xff414141),
            filled: true,
            errorBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey),
            ),
            disabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey),
            ),
          ),
        ),
      ),
    );
  }
}
