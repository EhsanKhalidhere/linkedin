import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:linkedin/theme/styles.dart';

class NotificationsPage extends StatefulWidget {
  const NotificationsPage({super.key});

  @override
  State<NotificationsPage> createState() => _NotificationsPageState();
}

class _NotificationsPageState extends State<NotificationsPage> {
  int _slecetIndexCategory = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          Row(
            children: [
              const SizedBox(
                width: 10,
              ),
              _singleCategoryWidget(
                  title: "All",
                  textColor: _slecetIndexCategory == 0
                      ? Colors.white
                      : linkedInMediumGrey86888A,
                  border: _slecetIndexCategory == 0 ? 0 : 1,
                  bgColor: _slecetIndexCategory == 0
                      ? Colors.green[800]
                      : linkedInWhiteFFFFFF,
                  onTap: () {
                    setState(() {
                      _slecetIndexCategory = 0;
                    });
                  }),
              const SizedBox(
                width: 10,
              ),
              _singleCategoryWidget(
                  title: "My posts",
                  textColor: _slecetIndexCategory == 1
                      ? Colors.white
                      : linkedInMediumGrey86888A,
                  border: _slecetIndexCategory == 1 ? 0 : 1,
                  bgColor: _slecetIndexCategory == 1
                      ? Colors.green[800]
                      : linkedInWhiteFFFFFF,
                  onTap: () {
                    setState(() {
                      _slecetIndexCategory = 1;
                    });
                  }),
              const SizedBox(
                width: 10,
              ),
              _singleCategoryWidget(
                  title: "Mentions",
                  textColor: _slecetIndexCategory == 2
                      ? Colors.white
                      : linkedInMediumGrey86888A,
                  border: _slecetIndexCategory == 2 ? 0 : 1,
                  bgColor: _slecetIndexCategory == 2
                      ? Colors.green[800]
                      : linkedInWhiteFFFFFF,
                  onTap: () {
                    setState(() {
                      _slecetIndexCategory = 2;
                    });
                  })
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 8,
            width: double.infinity,
            color: linkedInLightGreyCACCCE,
          ),
          ListView.builder(
            padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
            physics: ScrollPhysics(),
              shrinkWrap: true,
              itemCount: 8,
              itemBuilder: (context, index) {
                return Padding(

                  padding: const EdgeInsets.only(top: 10),
                  child: Row(
                    children: [
                      Container(
                        height: 70,
                        width: 70,
                        decoration: BoxDecoration(
                          color: linkedInLightGreyCACCCE,
                          shape: BoxShape.circle,
                        ),
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(80),
                            child: Image.asset(
                              "assets/profile_2.jpeg",
                              fit: BoxFit.cover,
                            )),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Stephan Covey",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                          Text("commented on your post - check out")
                        ],
                      ),
                      const SizedBox(
                        width: 6,
                      ),
                      Column(
                        children: [Text("1h"), Icon(Icons.more_vert)],
                      )
                    ],
                  ),
                );
              })
        ],
      ),
    ));
  }

  _singleNotificationWidget() {}
  _singleCategoryWidget(
      {String? title,
      Color? textColor,
      Color? bgColor,
      VoidCallback? onTap,
      required double border}) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 35,
        padding: EdgeInsets.symmetric(horizontal: 15),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: bgColor,
            border: Border.all(width: border)),
        child: Center(
            child: Text(
          "$title",
          style: TextStyle(color: textColor, fontWeight: FontWeight.bold),
        )),
      ),
    );
  }
}
