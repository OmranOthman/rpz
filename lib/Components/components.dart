// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, prefer_const_literals_to_create_immutables, no_leading_underscores_for_local_identifiers
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rpz_project/Core/app_assets.dart';
import 'package:rpz_project/Core/app_colors.dart';
import 'package:rpz_project/Screens/all_order.dart';
import 'package:rpz_project/Screens/home.dart';
import 'package:rpz_project/Screens/home_1.dart';

Widget buttonHome({function, text, color, colorText,size}) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      width: 100.w,
      height: 45.h,
      color: color,
      child: MaterialButton(
        onPressed: function,
        autofocus: true,
        focusColor: Colors.green,
        disabledColor: Colors.transparent,
        padding: EdgeInsets.all(8),
        height: 3.h,
        child: Text(
          '$text',
          style: TextStyle(color: colorText, fontSize: size,fontWeight: FontWeight.bold),
        ),
      ),
    ),
  );
}

Widget textForm(
    {hint, keytextInput, textInput, controller, validate,icon }) {
  return Container(
    color: AppColors.c1,
    width: 319.w,
    height: 38.h,
    margin: EdgeInsets.all(20),
    child: TextFormField(
      textInputAction: textInput,
      keyboardType: keytextInput,
      textAlign: TextAlign.end,
      controller: controller,
      validator: validate,
      cursorColor: AppColors.c2,
      decoration: InputDecoration(
       suffixIcon: icon,
        hintText: hint,
        hintStyle: TextStyle(color:AppColors.c2,),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.zero,
            borderSide: BorderSide(
                color: Colors.transparent,
                width: 0.w,
                style: BorderStyle.solid)),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.zero,
            borderSide: BorderSide(
                color: AppColors.c1, width: 0.w, style: BorderStyle.solid)),
        errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.zero,
            borderSide: BorderSide(
                color: Colors.red, width: 0.w, style: BorderStyle.solid)),
      ),
    ),
  );
}

Widget product(BuildContext context) {
  return Padding(
    padding: EdgeInsets.all(8.0).flipped,
    child: Stack(
      children: [
        Container(
          width: 164.w,
          height: 220.h,
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                spreadRadius: 1,
                blurRadius: 1,
              ),
            ],
          ),
          child: Column(
            children: [
              Image.asset(
                AppAssets.picture1,
                width: double.infinity,
              ),
              Text(
                'اسم المنتج',
                style: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.bold),
              ),
              Text(
                'يمكن تعريف المنتج على أنه العنصر\nالذي يتم توفيره للبيع لغرض إشباع\nأو تحقيق رغبات الزبون',
                style: TextStyle(
                  fontSize: 8.sp,
                ),
              ),
              Text(
                'سعر المنتج: 666',
                style: TextStyle(
                  fontSize: 8.sp,
                ),
              ),
              Text(
                'عدد القطع: 88',
                style: TextStyle(
                  fontSize: 8.sp,
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 15.w, top: 200.h),
          child: InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => Home_1(),
              ));
            },
            child: Container(
              width: 29.w,
              height: 29.h,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: AppColors.c2,
              ),
              child: Image.asset(
                height: 17.h,
              width: 17.03.w,
              AppAssets.basket1,
            ),
            ),
          ),
        ),
      ],
    ),
  );
}

Widget drawerHome(BuildContext context) {
  return ClipPath(
    clipper: CustomDrawerClipper(),
    child: Container(
      width: 188.w,
      height: double.infinity,
      child: Drawer(
        width: 188.w,
        child: Stack(
          children: [
            Image.asset(
              AppAssets.sidebar,
              width: 188.w,
              height: double.infinity,
              alignment: Alignment.bottomRight,
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 230.h, horizontal: 4.w),
              child: Column(
                children: [
                  MaterialButton(
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          'اسم المستخدم',
                          style: TextStyle(fontSize: 22.sp, color: AppColors.c2),
                        ),
                        Icon(Icons.person_pin, color: AppColors.c2),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 25.h,
                  ),
                  MaterialButton(
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          '20000',
                          style: TextStyle(fontSize: 22.sp, color: AppColors.c2),
                        ),
                        Icon(Icons.monetization_on_outlined, color: AppColors.c2),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 25.h,
                  ),
                  MaterialButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => Home(),
                      ));
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          'الصفحة الرئيسية',
                          style: TextStyle(fontSize: 21.sp, color: AppColors.c2),
                        ),
                        Icon(Icons.home, color: AppColors.c2),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 25.h,
                  ),
                  MaterialButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => AllOrder(),
                      ));
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          'الطلبات',
                          style: TextStyle(fontSize: 22.sp, color: AppColors.c2),
                        ),
                        Icon(Icons.request_page, color: AppColors.c2),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 25.h,
                  ),
                  MaterialButton(
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          'تسجيل خروج',
                          style: TextStyle(fontSize: 22.sp, color: AppColors.c2),
                        ),
                        Icon(Icons.login, color: AppColors.c2),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

class CustomDrawerClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    const cutHeight = 105.0; // Adjust the height of the cut
    path.moveTo(0, cutHeight);
    path.lineTo(0, size.height);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, cutHeight);
    path.quadraticBezierTo(0 / 80, 105, 105, cutHeight);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}

Widget countProduct() {
  return Padding(
    padding: const EdgeInsets.all(10),
    child: Container(
      width: 343.w,
      height: 108.h,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 1,
          ),
        ],
      ),
      child: Row(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'اسم المنتج',
                style: TextStyle(fontSize: 12.sp),
              ),
              Text(
                '\$ 12798',
                style: TextStyle(fontSize: 12.sp),
              ),
              Row(
                children: [
                  MaterialButton(
                    onPressed: () {},
                    child: Text(
                      '+',
                      style: TextStyle(fontSize: 16.sp),
                    ),
                  ),
                  Text(
                    '1',
                    style: TextStyle(fontSize: 16.sp),
                  ),
                  MaterialButton(
                    onPressed: () {},
                    child: Text(
                      '-',
                      style: TextStyle(fontSize: 16.sp),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Image.asset(
            AppAssets.picture2,
            width: 165.w,
            height: 108.h,
          ),
        ],
      ),
    ),
  );
}
