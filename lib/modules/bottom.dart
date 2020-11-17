import 'package:flutter/material.dart';

class Bottom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        height: 300,
        color: Colors.white,
        width: double.infinity,
        child: ListView.builder(
            itemCount: 5,
            itemBuilder: (context, i) {
              return Container(
                height: 225,
                width: 100,
                child: Column(
                  children: [
                    reviews(),
                  ],
                ),
              );
            }),
      ),
    );
  }

  Widget reviews() {
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
                Container(
                  width: 50,
                  height: 50,
                  decoration: new BoxDecoration(
                      // borderRadius: BorderRadius.circular(50),
                      image: new DecorationImage(
                        image: NetworkImage(
                            'https://pbs.twimg.com/profile_images/612308671914053633/Eyq3ILil_400x400.png'),
                        fit: BoxFit.fill,
                      ),
                      shape: BoxShape.circle),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            'Hesham Reffat',
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
                              SizedBox(height: 10,),
                              Text(
                                'Focus and remember we design the best WordPress News and Magazines themes. it\'s the one closest to you than want to see you fail.',
                                style: TextStyle(fontSize: 16, color: Colors.black54),
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
