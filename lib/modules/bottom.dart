import 'package:flutter/material.dart';
import 'package:product_screen/models/users.dart';

class Bottom extends StatelessWidget {
  List<User> data = [
    User(
      image: ExactAssetImage('assets/images/man.jpg'),
      name: 'Hesham Reffat',
      review:
          'Focus and remember we design the best WordPress News and Magazines themes. it\'s the one closest to you than want to see you fail.',
    ),
    User(
      image: ExactAssetImage('assets/images/man.jpg'),
      name: 'Hesham Reffat',
      review:
          'Focus and remember we design the best WordPress News and Magazines themes. it\'s the one closest to you than want to see you fail.',
    ),
    User(
      image: ExactAssetImage('assets/images/man.jpg'),
      name: 'Hesham Reffat',
      review:
          'Focus and remember we design the best WordPress News and Magazines themes. it\'s the one closest to you than want to see you fail.',
    ),
    User(
      image: ExactAssetImage('assets/images/man.jpg'),
      name: 'Hesham Reffat',
      review:
          'Focus and remember we design the best WordPress News and Magazines themes. it\'s the one closest to you than want to see you fail.',
    ),
    User(
      image: ExactAssetImage('assets/images/man.jpg'),
      name: 'Hesham Reffat',
      review:
          'Focus and remember we design the best WordPress News and Magazines themes. it\'s the one closest to you than want to see you fail.',
    ),
    User(
      image: ExactAssetImage('assets/images/man.jpg'),
      name: 'Hesham Reffat',
      review:
          'Focus and remember we design the best WordPress News and Magazines themes. it\'s the one closest to you than want to see you fail.',
    ),
    User(
      image: ExactAssetImage('assets/images/man.jpg'),
      name: 'Hesham Reffat',
      review:
          'Focus and remember we design the best WordPress News and Magazines themes. it\'s the one closest to you than want to see you fail.',
    ),
    User(
      image: ExactAssetImage('assets/images/man.jpg'),
      name: 'Hesham Reffat',
      review:
          'Focus and remember we design the best WordPress News and Magazines themes. it\'s the one closest to you than want to see you fail.',
    ),
    User(
      image: ExactAssetImage('assets/images/man.jpg'),
      name: 'Hesham Reffat',
      review:
          'Focus and remember we design the best WordPress News and Magazines themes. it\'s the one closest to you than want to see you fail.',
    ),
    User(
      image: ExactAssetImage('assets/images/man.jpg'),
      name: 'Hesham Reffat',
      review:
          'Focus and remember we design the best WordPress News and Magazines themes. it\'s the one closest to you than want to see you fail.',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      color: Colors.white,
      width: double.infinity,
      child: ListView.builder(
          itemCount: data.length,
          physics: BouncingScrollPhysics(),
          itemBuilder: (context, i) {
            return Container(
              height: 225,
              width: 100,
              child: Column(
                children: [
                  reviews(data[i]),
                ],
              ),
            );
          }),
    );
  }

  Widget reviews(User userData) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(left: 20.0),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  'Reviews(121)',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                ),
              ],
            ),
            Row(
              children: [
                Icon(
                  Icons.star,
                  color: Colors.yellow,
                ),
                Icon(
                  Icons.star,
                  color: Colors.yellow,
                ),
                Icon(
                  Icons.star,
                  color: Colors.yellow,
                ),
                Icon(
                  Icons.star,
                  color: Colors.grey[200],
                ),
                Icon(
                  Icons.star,
                  color: Colors.grey[200],
                ),
                Text(
                  '   3.5',
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                    radius: 20,
                    backgroundColor: Colors.transparent,
                    backgroundImage: userData.image),
                // Container(
                //   width: 50,
                //   height: 50,
                //   decoration: new BoxDecoration(
                //       // borderRadius: BorderRadius.circular(50),
                //       image: new DecorationImage(
                //         image: NetworkImage(
                //           'https://www.mantruckandbus.com/fileadmin/media/bilder/02_19/219_05_busbusiness_interviewHeader_1485x1254.jpg',
                //         ),
                //         fit: BoxFit.fill,
                //       ),
                //       shape: BoxShape.circle),
                // ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            userData.name,
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            width: 80,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: Colors.yellow,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.yellow,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.yellow,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.grey[200],
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.grey[200],
                              ),
                            ],
                          ),
                        ],
                      ),
                      Divider(
                        color: Colors.black,
                        thickness: 2,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 5.0),
                        child: Container(
                          width: 300,
                          child: Column(
                            children: [
                              Divider(
                                color: Colors.black,
                                thickness: 1,
                                height: 1,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                userData.review,
                                style: TextStyle(
                                    fontSize: 16, color: Colors.black54),
                              ),
                            ],
                          ),
                        ),
                      ), //
                    ],
                  ),
                ),
              ],
            ),
            Divider(
              color: Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}
