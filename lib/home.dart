import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> profileImages = [
    "images/1.jpg",
    "images/2.jpg",
    "images/3.jpg",
    "images/4.jpg",
    "images/5.jpg",
    "images/6.jpg",
    "images/7.jpg",
    "images/8.jpg",
    "images/9.jpg",
    "images/10.jpg",
  ];
  List<String> posts = [
    "images/post1.jpg",
    "images/post2.jpg",
    "images/post3.jpg",
    "images/post4.jpg",
    "images/post5.jpg",
    "images/post6.jpg",
    "images/post7.jpg",
    "images/post8.jpg",
    "images/post9.jpg",
    "images/post10.jpg",
  ];
  Future<void> onRefresh() async {
    await Future.delayed(Duration(seconds: 1));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          "images/instaname2.png",
          height: 50,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.add_circle_outline),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.favorite_border),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.chat_bubble_outline),
          ),
        ],
      ),
      body:RefreshIndicator(
        onRefresh: onRefresh,
              child: SingleChildScrollView(
            child: Column(
              children: [
                //STORY
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: List.generate(
                      8,
                      (index) => Container(
                        padding: EdgeInsets.all(10),
                        child: Column(
                          children: [
                            CircleAvatar(
                              radius: 35,
                              backgroundImage: AssetImage(
                                "images/instabggradient.png",
                              ),
                              child: CircleAvatar(
                                radius: 32,
                                backgroundImage: AssetImage(
                                  profileImages[index],
                                ),
                              ),
                            ),
                            SizedBox(height: 10),
                            Text(
                              "Profile Name",
                              style: TextStyle(
                                  fontSize: 12.5, color: Colors.black87),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),

                Divider(),
                Column(
                  children: List.generate(
                    8,
                    (index) => Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // POSTS HEADER
                        Row(
                          children: [
                            Container(
                              padding: EdgeInsets.all(10),
                              child: CircleAvatar(
                                radius: 14,
                                backgroundImage: AssetImage(
                                  "images/instabggradient.png",
                                ),
                                child: CircleAvatar(
                                  radius: 12,
                                  backgroundImage: AssetImage(
                                    profileImages[index],
                                  ),
                                ),
                              ),
                            ),
                            Text("Profile Name"),
                            Spacer(),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.more_vert),
                            )
                          ],
                        ),

                        //POSTS IMAGE
                        Image.asset(posts[index]),

                        //POSTS FOOTER
                        Row(
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.favorite_border),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.chat_bubble_outline),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.label_outline),
                            ),
                            Spacer(),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.bookmark_border),
                            ),
                          ],
                        ),

                        //POST COMMENT SECTION
                        Container(
                          padding: EdgeInsets.all(15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              RichText(
                                text: TextSpan(
                                  style: TextStyle(color: Colors.black),
                                  children: [
                                    TextSpan(text: "Liked by"),
                                    TextSpan(
                                      text: "Profile Name",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    TextSpan(text: " and"),
                                    TextSpan(
                                      text: " Others",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              RichText(
                                text: TextSpan(
                                  style: TextStyle(color: Colors.black),
                                  children: [
                                    TextSpan(
                                      text: "Profile Name",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    TextSpan(
                                        text:
                                            " This is the most amazing Picture ever put on Instagram."),
                                  ],
                                ),
                              ),
                              Text(
                                "View all 12,000 comments",
                                style: TextStyle(
                                  color: Colors.black38,
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
      ),

    );
  }
}
