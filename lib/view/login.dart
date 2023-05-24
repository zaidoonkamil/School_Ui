import 'package:flutter/material.dart';
import 'package:school_app/view/home.dart';
import 'package:school_app/widgets/custom_button.dart';
import 'package:school_app/widgets/custom_form_field.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: MediaQuery.of(context).size.height*0.2,),
                Image.asset(
                  'assets/images/img.png',
                  scale: 3,
                ),
                const SizedBox(height: 8,),
                Text(
                  '... مرحبا بكم',
                   style: Theme.of(context).textTheme.bodyText1,
                 ),
                const SizedBox(height: 52,),
                CustomFormField(
                  hintText: 'الاسم',
                ),
                const SizedBox(height: 17,),
                CustomFormField(
                  hintText: 'كلمة المرور',
                ),
                const SizedBox(height: 14,),
                const SizedBox(width: 24,),
                Container(
                  alignment: Alignment.centerRight,
                  child: Text(
                    'نسيت كلمة المرور ؟    ',
                    style: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontSize: 12,
                    ),
                  ),
                ),
                const SizedBox(height: 52,),
                CustomBottom(
                  width: 120,
                  height: 35,
                  colorBottom:  Theme.of(context).primaryColor,
                  colorText: Colors.white,
                  text: 'دخول',
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context)
                      => HomeScreen()),
                    );
                  },
                ),
                const SizedBox(height: 14,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
