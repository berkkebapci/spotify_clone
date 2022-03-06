import 'package:flutter/material.dart';
import 'package:spotify/shared/uicolor.dart';
import 'package:spotify/shared/uitext.dart';
import 'package:spotify/widgets/widget_text.dart';

class ViewLibrary extends StatefulWidget {
  const ViewLibrary({Key? key}) : super(key: key);

  @override
  _ViewLibraryState createState() => _ViewLibraryState();
}

class _ViewLibraryState extends State<ViewLibrary>
    with TickerProviderStateMixin {
  late TabController tabController;
  int? selectedIndex;

  @override
  void initState() {
    super.initState();
    tabController = TabController(vsync: this, length: 2);
    tabController.addListener(() {
      setState(() {
        selectedIndex = tabController.index;
      });
    });
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: UIColor.black,
      appBar: getAppBar(),
      body: getBody(),
    );
  }

  AppBar getAppBar() {
    return AppBar(
      backgroundColor: Colors.black,
      title: getTabHeader(),
      toolbarHeight: 100,
    );
  }

  Widget getBody() {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          getTabBarView(),
        ],
      ),
    );
  }

  Widget getTabHeader() {
    return Row(
      children: [
        const FlutterLogo(),
        TabBar(
          controller: tabController,
          labelColor: UIColor.white,
          unselectedLabelColor: UIColor.gray,
          indicatorColor: UIColor.transparent,
          isScrollable: true,
          tabs: [
            Tab(
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 8),
                child: TextBasic(
                  text: UIText.music,
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color:
                      tabController.index == 0 ? UIColor.white : UIColor.gray,
                ),
              ),
            ),
            Tab(
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 8),
                child: TextBasic(
                    text: UIText.podcasts,
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: tabController.index == 1
                        ? UIColor.white
                        : UIColor.gray),
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget getTabBarView() {
    return DefaultTabController(
      length: 2,
      child: SizedBox(
        height: 800,
        child: TabBarView(
          controller: tabController,
          children: [
            tabBarContainer(UIText.loginAccountQuestion),
            tabBarContainer(UIText.search),
          ],
        ),
      ),
    );
  }

  Widget tabBarContainer(String productName) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 66,
                    width: 66,
                    color: Colors.purple,
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  TextBasic(
                    text: productName,
                  ),
                ]),
          ),
          Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 66,
                  width: 66,
                  color: UIColor.primaryBlack,
                ),
                const SizedBox(
                  width: 12,
                ),
                TextBasic(
                  text: productName,
                ),
              ]),
        ],
      ),
    );
  }
}
