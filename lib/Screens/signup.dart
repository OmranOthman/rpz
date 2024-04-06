// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, avoid_print

import 'package:flutter/material.dart';
import 'package:rpz_project/Components/components.dart';
import 'package:rpz_project/Core/app_assets.dart';
import 'package:rpz_project/Core/app_colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rpz_project/Screens/home.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {


  var formKey =GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          children: [
            Image.asset(
              AppAssets.background,
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.cover,
            ),
            Form(
              key: formKey,
              child: ListView(
              children:[
                Column(
                  children: [
                    Container(
                        alignment: Alignment.center,
                        child: Image.asset(
                          AppAssets.logo,
                          width: 198.w,
                          height: 198.h,
                        )),
                    Container(
                      color: Color.fromRGBO(10, 52, 76, 220),
                      width: 340.w,
                      height: 400.h,
                      child: Column(
                        children: [
                          SizedBox(
                            height: 20.h,
                          ),
                          Text(
                            'أهـلاً بـك قم بتسجيل دخول',
                            style:
                            TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 30.h,
                          ),
                          textForm(
                            hint:'اسم المستخدم',
                          textInput:TextInputAction.next,
                          keytextInput:TextInputType.name,
                          validate: (value){
                              if(value.isEmpty){
                                return'الحقل فارغ';
                              }
                              return null;
                          }
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          textForm(
                            hint:'كلمة السر',
                            textInput:TextInputAction.done,
                            keytextInput:TextInputType.visiblePassword,
                              validate: (value){
                                if(value.isEmpty){
                                  return'الحقل فارغ';
                                }
                                return null;
                              }
                          ),
                          SizedBox(height: 30.h,),
                          Container(
                            color:AppColors.c2,
                            width: 319.w,
                            height: 38.h,
                            child: MaterialButton(
                              onPressed: (){
                                if(formKey.currentState!.validate()){
                                  Navigator.of(context).
                                  push(MaterialPageRoute(builder: (context) => Home(),));
                                }
                              },
                              child: Text('تسجيل دخول',
                                style: TextStyle(fontSize: 20.sp,
                                    fontWeight: FontWeight.bold,
                                    color: AppColors.c1),),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],),
            ),
          ],
        ),
    );
  }
}