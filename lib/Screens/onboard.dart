import 'package:flutter/material.dart';
import 'package:rosebank/Screens/welcome.dart';
import 'package:rosebank/style.dart';

class OnboardingScreen extends StatefulWidget {
  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController();
  int currentPage = 0;
  final List<Map> _pages = [
    {
      'title': 'Take hold of your finances',
      'description': 'Running your finances is easier with Rose Bank',
      'image': 'images/onboard1.png',
    },
    {
      'title': 'Reach your goals with ease',
      'description':
          'Use the smart saving features to manage your future goals  and needs',
      'image': 'images/onboard2.png',
    },
  ];

  void _onPageChanged(int index) {
    setState(() {
      currentPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: PageView.builder(
        controller: _pageController,
        itemCount: _pages.length,
        onPageChanged: _onPageChanged,
        itemBuilder: (context, index) {
          return SizedBox(
            width: width * 1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  _pages[index]['image'],
                  height: height * 0.35,
                  fit: BoxFit.fill,
                ),
                SizedBox(
                  height: height * 0.125,
                ),
                SizedBox(
                  width: width * 0.6,
                  child: Text(
                    _pages[index]['title'],
                    style: mystyle.get_plus_jakarta_black_bold(
                        FontWeight.w700, height * 0.028),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(
                  height: height * 0.05,
                ),
                Container(
                  width: width * 0.65,
                  margin:
                      EdgeInsets.only(left: width * 0.05, right: width * 0.05),
                  child: Text(
                    _pages[index]['description'],
                    style: mystyle.get_plus_jakarta_black(
                        FontWeight.w400, height * 0.018),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(
                  height: height * 0.075,
                ),
                Container(
                  margin:
                      EdgeInsets.only(left: width * 0.05, right: width * 0.05),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "${currentPage + 1}/2",
                        style: mystyle.get_plus_jakarta_black(
                            FontWeight.w600, height * 0.018),
                        textAlign: TextAlign.center,
                      ),
                      InkWell(
                        onTap: () {
                          if (currentPage == 1) {
                            Navigator.of(context)
                                .push(MaterialPageRoute(builder: (context) {
                              return WelcomeScreen();
                            }));
                          } else {
                            _pageController.jumpToPage(1);
                          }
                        },
                        child: Row(
                          children: [
                            Text(
                              "NEXT ",
                              style: mystyle.get_plus_jakarta_black(
                                  FontWeight.w600, height * 0.018),
                              textAlign: TextAlign.center,
                            ),
                            Image.asset(
                              "images/Double Right.png",
                              height: height * 0.025,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: height * 0.025,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
