import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:linkedin/Data/post_entity.dart';
import 'package:linkedin/Widgets/single_post_card_widget.dart';
import 'package:linkedin/theme/styles.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _NotificationsPageState();
}

class _NotificationsPageState extends State<HomePage> {
  List<PostEntity> postData = PostEntity.postListData;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          children: [
            const SizedBox(height: 10,),

            Expanded(child: ListView.builder(
              itemCount: postData.length,
                itemBuilder: (context, index) {
                  return SinglePostCardWidget(post: postData[index],

                  );
                }))

          ],
        )

    );
  }
}
