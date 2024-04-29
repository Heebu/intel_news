
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stacked/stacked.dart';

import '../view_model/home_page_viewmodel.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {

    return ViewModelBuilder.reactive(viewModelBuilder: () => HomePageViewmodel(), builder: (context, viewModel, child) => Scaffold(
      drawer: Drawer(
        child: Column(children: [
          UserAccountsDrawerHeader(accountName: Text('Idris Adedeji'), accountEmail: Text('ayblazz@gmail.com'),),
          ListTile(
            title: Text('All'),
          ),
          ListTile(
            title: Text('Breaking News'),
          ),
          ListTile(
            title: Text('Latest Gist'),
          ),
          ListTile(
            title: Text('Recent Sports'),
          ),
          ListTile(
            title: Text('Descoveries'),
          ),
        ],),
      ),

      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.green.shade700,
            flexibleSpace: Padding(
              padding: EdgeInsets.only(left: 50, right: 10 ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('IR', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.sp, color: Colors.white),),
                      Container(
                        width: MediaQuery.sizeOf(context).width - 200,
                        child: Text(
                          'Intel Region | News, technology, agriculture, health, law, '
                            'scholarships & more. Come, let us keep '
                            'ourselves at the fore front with good intel.',
                          style: TextStyle(fontStyle: FontStyle.italic, fontSize: 14, color: Colors.white),),
                      ),
                    ],),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      CircleAvatar(),
                      Text('Login/sign up', style: TextStyle(color: Colors.white, fontSize: 12),)
                    ],
                  )
                ],
              ),
            ),

            expandedHeight: 200,
            stretch: true,
            bottom: PreferredSize(preferredSize: Size(double.maxFinite, 100.h), child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                HomeTabButton(callbackAction: (){}, text: 'HomePage', color: Colors.white, backgroundColor: Colors.green),
                HomeTabButton(callbackAction: (){}, text: 'News', color: Colors.white, backgroundColor: Colors.green),
                HomeTabButton(callbackAction: (){}, text: 'Entertainment', color: Colors.white, backgroundColor: Colors.green),
                HomeTabButton(callbackAction: (){}, text: 'Gist', color: Colors.white, backgroundColor: Colors.green),
                HomeTabButton(callbackAction: (){}, text: 'Sports', color: Colors.white, backgroundColor: Colors.green),
                HomeTabButton(callbackAction: (){}, text: 'Technology', color: Colors.white, backgroundColor: Colors.green),
                HomeTabButton(callbackAction: (){}, text: 'Games', color: Colors.white, backgroundColor: Colors.green),
                HomeTabButton(callbackAction: (){}, text: 'Food', color: Colors.white, backgroundColor: Colors.green),
              ],)),

          )
        ],
      ),
    ),
    );
  }
}

class HomeTabButton extends StatelessWidget {
  const HomeTabButton({
    super.key, required this.callbackAction, required this.text, required this.color, required this.backgroundColor,
  });
 final VoidCallback callbackAction;
final String text;
final Color color;
final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      elevation: 5,
      onPressed: callbackAction, child: Container(
      height: 50.h,
      padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 5.h),
      decoration: BoxDecoration(color: backgroundColor, borderRadius: BorderRadius.circular(10.r),),
      child: Center(child: Text(text, style: TextStyle(color: color, fontSize: 4.sp),)),
    ),);
  }
}

