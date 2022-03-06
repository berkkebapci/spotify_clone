import 'package:flutter/material.dart';
import 'package:spotify/shared/uicolor.dart';
import 'package:spotify/shared/uipath.dart';
import 'package:spotify/shared/uitext.dart';
import 'package:spotify/widgets/widget_text.dart';

class ViewSearch extends StatefulWidget {
  const ViewSearch({Key? key}) : super(key: key);

  @override
  _ViewSearchState createState() => _ViewSearchState();
}

class _ViewSearchState extends State<ViewSearch> {
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
      backgroundColor: UIColor.black,
    );
  }

  Widget getBody() {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          getTitles(),
          getSearch(),
          getYourTopGenresTitle(),
          getYourTopGenres(),
          getYourTopGenresTitle(),
          getYourTopGenres(),
          getYourTopGenresTitle(),
          getYourTopGenres(),
        ],
      ),
    );
  }

  Widget getTitles() {
    return Padding(
      padding: const EdgeInsets.only(top: 12, left: 20, right: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextBasic(
            text: UIText.search,
            color: UIColor.white,
            fontWeight: FontWeight.bold,
            fontSize: 36,
          )
        ],
      ),
    );
  }

  Widget getSearch() {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: TextFormField(
        onTap: () {},
        keyboardType: TextInputType.none,
        obscureText: true,
        decoration: InputDecoration(
            border: const UnderlineInputBorder(borderSide: BorderSide.none),
            hintText: UIText.searchHint,
            hintStyle:
                const TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
            filled: true,
            fillColor: UIColor.white,
            prefixIcon: const Icon(Icons.search)),
      ),
    );
  }

  Widget getYourTopGenresTitle() {
    return Padding(
      padding: const EdgeInsets.only(top: 12, left: 20, right: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextBasic(
            text: UIText.topGenres,
            color: UIColor.white,
            fontWeight: FontWeight.bold,
            fontSize: 16,
          )
        ],
      ),
    );
  }

  Widget getYourTopGenres() {
    return Padding(
      padding: const EdgeInsets.only(top: 12, left: 20, right: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              color: UIColor.transparent,
              padding: const EdgeInsets.only(
                top: 4,
                bottom: 16,
                right: 12,
                left: 12,
              ),
              height: 150,
              child: Scrollbar(
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 2,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(left: 8, right: 8),
                      child: Image.asset(UIPath.image12),
                    );
                  },
                ),
              )),
        ],
      ),
    );
  }
}
