// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, file_names, unused_local_variable, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rpz_project/Components/components.dart';
import 'package:rpz_project/Core/app_colors.dart';
import '../Core/app_assets.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}
final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Colors.white,
      endDrawer: drawerHome(context),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Center(
          child: Image.asset(
            AppAssets.logo,
            height: 66.h,
            width: 66.w,
            alignment: Alignment.center,
          ),
        ),
        leading: Image.asset(
          AppAssets.basket2,
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.menu,
              color: AppColors.c2,
            ),
            onPressed: () {
              _scaffoldKey.currentState!.openEndDrawer();
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        physics:BouncingScrollPhysics(),
        child: Column(
          children: [
            textForm(hint: 'ابحث',icon: Icon(Icons.search,color: AppColors.c2,)),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children:<Widget> [
                  buttonHome(text: 'كل الطلبات',color: AppColors.c2,colorText:Colors.white,size: 14.sp),
                  buttonHome(text: 'الطلبات التي تم ارجاعها',colorText:AppColors.c2,size: 11.sp),
                  buttonHome(text: 'الطلبات المسلمة',colorText:AppColors.c2,size: 14.sp),
                  buttonHome(text: 'طلبات قيد التوصيل',colorText:AppColors.c2,size: 11.sp),
                ],
              ),
            ),
            Column(
              children: [
                Row(
                  children: [
                    product(context),
                    product(context),
                  ],
                ),Row(
                  children: [
                    product(context),
                    product(context),
                  ],
                ),Row(
                  children: [
                    product(context),
                    product(context),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
