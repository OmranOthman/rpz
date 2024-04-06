// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, file_names, unused_local_variable, prefer_const_literals_to_create_immutables, camel_case_types, sized_box_for_whitespace
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rpz_project/Components/components.dart';
import 'package:rpz_project/Core/app_colors.dart';
import 'package:rpz_project/Screens/all_order.dart';
import 'package:rpz_project/Screens/send_order.dart';
import '../Core/app_assets.dart';

class AddToCart extends StatefulWidget {
  const AddToCart({Key? key}) : super(key: key);

  @override
  State<AddToCart> createState() => _AddToCartState();
}

final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

class _AddToCartState extends State<AddToCart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Colors.white,
      endDrawer: drawerHome(context),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterDocked,
      floatingActionButton: Container(
        width: double.infinity,
        height: 50.h,
        alignment: Alignment.center,
        color: AppColors.c2,
        child: MaterialButton(
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => SendOrder(),));
          },
          child: Text(
            'تأكيد الارسال',
            style: TextStyle(color: AppColors.c1, fontSize: 22.sp),
          ),
        ),
      ),
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
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Column(
              children: [
                countProduct(),
                countProduct(),
                countProduct(),
                countProduct(),
                countProduct(),
                countProduct(),
                countProduct(),
                Container(
                  height: 50.h,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
