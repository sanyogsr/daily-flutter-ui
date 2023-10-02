import 'package:dailyuipractice/finance-ui/constants.dart';
import 'package:dailyuipractice/finance-ui/widgets/bottom_bar_widget.dart';
import 'package:dailyuipractice/finance-ui/widgets/splashScreen/splash_1.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  List<Widget> screens = [Splash1(), Splash1(), Splash1()];
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          // margin: EdgeInsets.all(10),
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _buildHorizontaklIndiactorItem(index: 0),
                  _buildHorizontaklIndiactorItem(index: 1),
                  _buildHorizontaklIndiactorItem(index: 2),
                ],
              ),
              SizedBox(
                height: 55,
              ),
              SizedBox(
                height: 480,
                child: PageView.builder(
                    itemCount: screens.length,
                    onPageChanged: (index) {
                      setState(() {
                        currentIndex = index;
                      });
                    },
                    physics: AlwaysScrollableScrollPhysics(
                        parent: BouncingScrollPhysics()),
                    itemBuilder: (context, index) {
                      return screens[index];
                    }),
              ),
              Text(
                "    Enter the World \nof Fastest Transfers",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 40,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "We'are here to make your money movie swiftly. Begin your",
                style: TextStyle(
                    color: Colors.black.withOpacity(.4),
                    fontSize: 14,
                    fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 4,
              ),
              Text(
                "journey with our user-friendly app",
                style: TextStyle(
                    color: Colors.black.withOpacity(.4),
                    fontSize: 14,
                    fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 60,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => BottomBar()));
                },
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  height: 60,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: primaryColor),
                  child: Center(
                    child: Text(
                      "Get Started",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: 20),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildHorizontaklIndiactorItem({required int index}) {
    return GestureDetector(
      onTap: () {
        setState(() {
          currentIndex = index;
        });
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Container(
          height: 2,
          decoration: BoxDecoration(
              color: currentIndex == index ? primaryColor : Colors.grey,
              borderRadius: BorderRadius.all(Radius.circular(10))),
          width: 100,
        ),
      ),
    );
  }
}
