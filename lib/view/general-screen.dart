import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stacked/stacked.dart';

import '../view_model/home_page_viewmodel.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      viewModelBuilder: () => HomePageViewmodel(),
      builder: (context, viewModel, child) {


        return Scaffold(
        drawer: Drawer(
          child: Column(
            children: [
              UserAccountsDrawerHeader(
                accountName: Text('Idris Adedeji'),
                accountEmail: Text('ayblazz@gmail.com'),
              ),
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
            ],
          ),
        ),
        appBar: AppBar(
          backgroundColor: Colors.green.shade900,
          title: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Intel Region',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    color: Colors.white),
              ),
              Container(
                width: MediaQuery.sizeOf(context).width - 100.w,
                child: Text(
                  'Intel Region | News, technology, agriculture, health, law, '
                      'scholarships & more. Come, let us keep '
                      'ourselves at the fore front with good intel.',
                  style: TextStyle(
                      fontStyle: FontStyle.italic,
                      fontSize: 12,
                      color: Colors.white),
                ),
              ),
            ],
          ),
          actions: [
            CircleAvatar()
          ],
        ),
        body: Column(children: [
          SizedBox(
            height: 100,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                HomeTabButton(
                  callbackAction: () {
                    viewModel.changePage('HomePage');
                  },
                  text: 'HomePage',
                  color: viewModel.onPage != 'HomePage'
                      ? Colors.green
                      : Colors.white,
                  backgroundColor: viewModel.onPage != 'HomePage'
                      ? Colors.white
                      : Colors.green,
                ),
                HomeTabButton(
                  callbackAction: () {
                    viewModel.changePage('News');
                  },
                  text: 'News',
                  color: viewModel.onPage != 'News'
                      ? Colors.red
                      : Colors.white,
                  backgroundColor: viewModel.onPage != 'News'
                      ? Colors.white
                      : Colors.red,
                ),
                HomeTabButton(
                  callbackAction: () {
                    viewModel.changePage('Entertainment');
                  },
                  text: 'Entertainment',
                  color: viewModel.onPage != 'Entertainment'
                      ? Colors.purple
                      : Colors.white,
                  backgroundColor: viewModel.onPage != 'Entertainment'
                      ? Colors.white
                      : Colors.purple,
                ),
                HomeTabButton(
                  callbackAction: () {
                    viewModel.changePage('Gist');
                  },
                  text: 'Gist',
                  color: viewModel.onPage != 'Gist'
                      ? Colors.deepOrange
                      : Colors.white,
                  backgroundColor: viewModel.onPage != 'Gist'
                      ? Colors.white
                      : Colors.deepOrange,
                ),
                HomeTabButton(
                  callbackAction: () {
                    viewModel.changePage('Sports');
                  },
                  text: 'Sports',
                  color: viewModel.onPage != 'Sports'
                      ? Colors.yellow
                      : Colors.white,
                  backgroundColor: viewModel.onPage != 'Sports'
                      ? Colors.white
                      : Colors.yellow,
                ),
                HomeTabButton(
                  callbackAction: () {
                    viewModel.changePage('Technology');
                  },
                  text: 'Technology',
                  color: viewModel.onPage != 'Technology'
                      ? Colors.blue
                      : Colors.white,
                  backgroundColor: viewModel.onPage != 'Technology'
                      ? Colors.white
                      : Colors.blue,
                ),
                HomeTabButton(
                  callbackAction: () {
                    viewModel.changePage('Lifestyle');
                  },
                  text: 'Lifestyle/Art',
                  color: viewModel.onPage == 'Lifestyle'
                      ? Colors.pinkAccent
                      : Colors.white,
                  backgroundColor: viewModel.onPage == 'Lifestyle'
                      ? Colors.white
                      : Colors.pinkAccent,
                ),
              ],
            ),
          ),
          Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: viewModel.currentPage
              )
          )
        ],)
      );
      },
    );
  }
}


///


class HomeTabButton extends StatelessWidget {
  const HomeTabButton({
    super.key,
    required this.callbackAction,
    required this.text,
    required this.color,
    required this.backgroundColor,
  });
  final VoidCallback callbackAction;
  final String text;
  final Color color;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      elevation: 5,
      onPressed: callbackAction,
      child: Container(
        height: 50.h,
        padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 5.h),
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(10.r),
        ),
        child: Center(
            child: Text(
          text,
          style: TextStyle(color: color, fontSize: 4.sp),
        )),
      ),
    );
  }
}
