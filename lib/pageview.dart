import 'package:flutter/material.dart';

class PageViewDemo extends StatefulWidget {
  const PageViewDemo({super.key});

  @override
  State<PageViewDemo> createState() => _PageViewDemoState();
}

class _PageViewDemoState extends State<PageViewDemo> {
  PageController pageController = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey.shade300,
        title: Center(
          child: const Text(
            'Page View',
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 18,
              color: Colors.black,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
      body: Stack(
        children: [
          PageView.builder(
            controller: pageController,
            itemCount: 3,
            itemBuilder: (BuildContext context, int index) => Center(
              child: Text(
                'Page ${index + 1}',
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,

            child: Container(
              height: 100,
              width: double.infinity,
              color: Colors.teal.shade100,
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        if ((pageController.page ?? 0) >= 1) {
                          pageController.previousPage(
                            duration: Duration(milliseconds: 500),
                            curve: Curves.easeIn,
                          );
                        }
                      },
                      child: Text('Previous'),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        pageController.animateToPage(
                          0,
                          duration: Duration(milliseconds: 500),
                          curve: Curves.easeIn,
                        );

                        // pageController.jumpToPage(0);
                      },
                      child: Text('Home'),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        if ((pageController.page ?? 0) <= 1) {
                          pageController.nextPage(
                            duration: Duration(milliseconds: 500),
                            curve: Curves.easeIn,
                          );
                        }
                      },
                      child: Text('Next'),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
