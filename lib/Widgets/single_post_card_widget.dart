import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:linkedin/Data/post_entity.dart';
import 'package:linkedin/theme/styles.dart';

class SinglePostCardWidget extends StatefulWidget {
  final PostEntity post;
  const SinglePostCardWidget({super.key, required this.post});

  @override
  State<SinglePostCardWidget> createState() => _SinglePostCardWidgetState();
}

class _SinglePostCardWidgetState extends State<SinglePostCardWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 10,
        ),
        Container(
          height: 8,
          width: double.infinity,
          color: linkedInLightGreyCACCCE,
        ),
        Column(
          children: [
            Container(
                margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                color: linkedInWhiteFFFFFF,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          height: 70,
                          width: 70,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(35),
                            child: Image.asset("assets/${widget.post.userProfile}"),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "${widget.post.username}",
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16),
                                    ),
                                    GestureDetector(
                                      onTap: () {},
                                      child: Icon(
                                        Icons.more_vert,
                                        color: linkedInMediumGrey86888A,
                                      ),
                                    ),
                                  ],
                                ),
                                SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        "${widget.post.userBio}",
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: linkedInMediumGrey86888A,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 2,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "${widget.post.createAt}",
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: linkedInMediumGrey86888A),
                                    ),
                                    GestureDetector(
                                      onTap: () {},
                                      child: Icon(
                                        FontAwesomeIcons.earth,
                                        size: 15,
                                        color: linkedInMediumGrey86888A,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ))
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "${widget.post.description}",
                      style: TextStyle(fontSize: 16),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Wrap(
        children:widget.post.tags!.map((tag) {
          return Text("$tag",style: TextStyle(color: linkedInBlue0077B5),);
        }).toList()


                    ),
                  ],
                )),
            widget.post.postImages!.isEmpty?
            SizedBox(
              width: double.infinity,
              child: Image.asset(
                "assets/${widget.post.postImage}",
              ),
            ):
            Container(
              height: 400,
              child: Stack(
                children: [
                  PageView(
                    children:
                      widget.post.postImages!.map((image) {
                        return Container(
                          width: double.infinity,
                          child: Image.asset("assets/$image",fit: BoxFit.cover,),
                        );
                      },
                      ).toList(),


                  ),
                Positioned(
                    right: 15,top: 15,
                    child: Container(width: 35,height: 35,decoration: 
                    BoxDecoration(
                  color: linkedInWhiteFFFFFF,
                  borderRadius: BorderRadius.circular(10),

                ),
                    child: Icon(FontAwesomeIcons.images),))],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 35,
              padding: EdgeInsets.symmetric(
                horizontal: 10,
              ),
              child: Stack(
                alignment: Alignment.topRight,
                children: [
                  Positioned(
                      left: 0,
                      child: _singleReactWidget(
                          bgColor: Colors.blue.shade200,
                          image: "thumbs_up.png")),
                  Positioned(
                      left: 16,
                      child: _singleReactWidget(
                          bgColor: Colors.red.shade200, image: "love.png")),
                  Positioned(
                      left: 34,
                      child: _singleReactWidget(
                          bgColor: Colors.amber.shade200,
                          image: "insightful.png")),
                  Positioned(left: 70, child: Text("12")),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [Text("${widget.post.totalComments} Comments "), Text("${widget.post.totalReposts} Share")],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              width: double.infinity,
              height: 1,
              color: linkedInLightGreyCACCCE,
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _singleActionsItemWidget(
                      icon: Icons.thumb_up_alt, title: "Like"),
                  _singleActionsItemWidget(
                      icon: FontAwesomeIcons.commentDots, title: "Comment"),
                  _singleActionsItemWidget(
                      icon: FontAwesomeIcons.retweet, title: "Repost"),
                  _singleActionsItemWidget(
                      icon: FontAwesomeIcons.paperPlane, title: "Send")
                ],
              ),
            )
          ],
        ),

      ],
    );
  }
  _singleReactWidget({ required Color? bgColor, required String? image}){
    return
      Container(
        padding: EdgeInsets.all(5),
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: bgColor,
            border:Border.all(color: linkedInWhiteFFFFFF,width: 2)

        ),
        child: Image.asset("assets/$image",width: 10,height: 10,),
      );
  }
  _singleActionsItemWidget({IconData? icon,String? title}){
    return Column(children: [
      Icon(icon,color: linkedInMediumGrey86888A,),
      Text("$title",style: TextStyle(color: linkedInMediumGrey86888A),)

    ],);

  }
}


