import 'package:flutter/material.dart';
import 'package:flutter_responsive_ui/utils/constants.dart';

class ResponsiveLayout extends StatefulWidget {
  const ResponsiveLayout({super.key});

  @override
  State<ResponsiveLayout> createState() => _ResponsiveLayoutState();
}

class _ResponsiveLayoutState extends State<ResponsiveLayout> {
  PageController pageController = PageController();
  int currentPage = 0;
  @override
  void dispose() {
    super.dispose();
    pageController.dispose();
  }

  changePage(int page) {
    pageController.jumpToPage(page);
    setState(() {
      currentPage = page;
    });
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: SafeArea(
        child: Scaffold(
          body: PageView(
            controller: pageController,
            children: screens,
          ),
          bottomNavigationBar: Container(
            height: 60,
            child: TabBar(
                onTap: changePage,
                labelColor: Colors.orange,
                unselectedLabelColor: Colors.black,
                tabs: const [
                  Tab(
                    icon: Icon(Icons.search, size: 25),
                    text: "Home",
                  ),
                  Tab(
                    icon: Icon(
                      Icons.work_history,
                      size: 25,
                    ),
                    text: "Work",
                  ),
                  Tab(
                    icon: Icon(Icons.login_rounded, size: 25),
                    text: "Sign Up",
                  )
                ]),
          ),
        ),
      ),
    );
  }
}
