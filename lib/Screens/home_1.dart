// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, file_names, unused_local_variable, prefer_const_literals_to_create_immutables, camel_case_types, sized_box_for_whitespace
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rpz_project/Components/components.dart';
import 'package:rpz_project/Core/app_colors.dart';
import 'package:rpz_project/Screens/add_to_cart.dart';
import '../Core/app_assets.dart';

class Home_1 extends StatefulWidget {
  const Home_1({Key? key}) : super(key: key);

  @override
  State<Home_1> createState() => _Home_1State();
}

final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

class _Home_1State extends State<Home_1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Colors.white,
      endDrawer: drawerHome(context),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
      floatingActionButton: Padding(
        padding: EdgeInsets.only(left: 175.w),
        child: Container(
          width: 200.w,
          height: 81.h,
          decoration: BoxDecoration(
            color: AppColors.c2,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(50.r),
            ),
          ),
          child: InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => AddToCart(),
              ));
            },
            child: Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 40.w, top: 20.h),
                      child: Image.asset(
                        AppAssets.basket1,
                        height: 22.h,width: 22.w,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10.w, top: 20.h),
                      child: Text(
                        'إضافة الى السلة',
                        style: TextStyle(
                            color: AppColors.c1,
                            fontSize: 18.sp,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      height: 2.h,
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 110.w,
                  ),
                  child: Row(
                    children: [
                     Image.asset(
                       AppAssets.hand,
                       width: 22.w,height: 22.h,
                     ),
                    ],
                  ),
                ),
              ],
            ),
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
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 24.w,
          ),
          child: Column(
            children: [
              SizedBox(
                height: 30.h,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      width: 101.w,
                      height: 40.h,
                      color: AppColors.c2,
                      child: Center(
                          child: Text(
                        'اسم المنتج',
                        style: TextStyle(fontSize: 16.sp, color: AppColors.c1),
                      )),
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  Image.asset(
                    AppAssets.picture1,
                    width: double.infinity,
                  ),
                  Row(
                    children: [
                      Text(
                        'يمكن تعريف المنتج على أنه العنصر الذي يتم توفيره للبيع لغرض إشباع أو تحقيق رغبات \nالزبون يمكن تعريف المنتج على أنه العنصر الذي يتم توفيره للبيع لغرض إشباع أو تحقيق\n رغبات الزبون يمكن تعريف المنتج على أنه العنصر الذي يتم توفيره للبيع لغرض \nإشباع أو تحقيق رغبات الزبون يمكن تعريف المنتج على أنه العنصر الذي يتم توفيره \nللبيع لغرض إشباع أو تحقيق رغبات الزبون  يمكن تعريف المنتج على أنه العنصر \nالذي يتم توفيره للبيع لغرض إشباع أو تحقيق رغبات الزبون يمكن تعريف المنتج \nعلى أنه العنصر الذي يتم توفيره للبيع لغرض إشباع أو تحقيق رغبات الزبون يمكن \nتعريف المنتج على أنه العنصر الذي يتم توفيره للبيع لغرض إشباع أو تحقيق رغبات \nالزبون يمكن تعريف المنتج على أنه العنصر الذي يتم توفيره للبيع لغرض إشباع \nأو تحقيق رغبات الزبون ',
                        style: TextStyle(fontSize: 10.sp),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Row(
                    children: [
                      Text(
                        'سعر المنتج : 334',
                        style: TextStyle(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.bold,
                            color: AppColors.c2),
                      ),
                      SizedBox(
                        width: 165.w,
                      ),
                      Text(
                        'عدد القطع: 99',
                        style: TextStyle(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.bold,
                            color: AppColors.c2),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Row(
                    children: [
                      Container(
                        width: 327.w,
                        height: 33.h,
                        child: MaterialButton(
                          onPressed: () {},
                          color: AppColors.c2,
                          child: Row(
                            children: [
                              SizedBox(
                                width: 100.w,
                              ),
                              Icon(Icons.whatshot, color: AppColors.c1),
                              SizedBox(
                                width: 8.w,
                              ),
                              Text(
                                textAlign: TextAlign.center,
                                'تواصل معنا',
                                style: TextStyle(
                                    color: AppColors.c1,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Container(
                height: 100.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
