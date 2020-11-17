import 'package:flutter/material.dart';

import 'bottom.dart';

class Header extends StatefulWidget {
  @override
  _HeaderState createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product Details'),
        backgroundColor: Colors.blue.shade600,
        actions: [
          IconButton(icon: Icon(Icons.share), onPressed: () {}),
          IconButton(icon: Icon(Icons.shopping_cart), onPressed: () {}),
        ],
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_rounded),
          onPressed: () {},
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(bottom: 10),
              color: Colors.white,
              child: Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 130, left: 20),
                        child: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            color: Colors.grey[100],
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: IconButton(
                              icon: Icon(isFavorite
                                  ? Icons.favorite
                                  : Icons.favorite_border),
                              iconSize: 25,
                              onPressed: () {
                                setState(() {
                                  // ignore: unnecessary_statements
                                  this.isFavorite != isFavorite;
                                  print('Favorite is pressed');
                                });
                              }),
                        ),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Container(
                        height: 220,
                        width: 220,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/images/jacket.jpg'),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 10,
                        width: 10,
                        decoration: BoxDecoration(
                          border: Border.all(width: 0.5),
                          borderRadius: BorderRadius.all(Radius.circular(50)),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        height: 10,
                        width: 10,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          border: Border.all(width: 0.5),
                          borderRadius: BorderRadius.all(Radius.circular(50)),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        height: 10,
                        width: 10,
                        decoration: BoxDecoration(
                          border: Border.all(width: 0.5),
                          borderRadius: BorderRadius.all(Radius.circular(50)),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              padding: EdgeInsets.only(bottom: 10),
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          'Leather Jacket',
                          style: TextStyle(
                              color: Colors.blueAccent,
                              fontWeight: FontWeight.w500,
                              fontSize: 16),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width / 1.2,
                          child: Text(
                            'Material: 100% Genuine Lamb Skin Leather Internal Soft Viscose LiningPockets Four Outside and Two Internal Pockets Colour Black',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                fontSize: 16),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
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
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          '3.5',
                          style: TextStyle(color: Colors.black54),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Text.rich(
                          TextSpan(
                            text: 'EGP',
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 16),
                            // default text style
                            children: <TextSpan>[
                              TextSpan(
                                  text: ' 517.00',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 18)),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text.rich(
                          TextSpan(
                            text: 'EGP',
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                decoration: TextDecoration.lineThrough,
                                color: Colors.black54,
                                fontSize: 16),
                            // default text style
                            children: <TextSpan>[
                              TextSpan(
                                  text: ' 730.00',
                                  style: TextStyle(
                                      decoration: TextDecoration.lineThrough,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black54,
                                      fontSize: 18)),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 65,
                        ),
                        Text(
                          'Availability: 8 items',
                          style: TextStyle(color: Colors.green[500]),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          'COLOR',
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 16,
                              fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Container(
                          height: 30,
                          width: 70,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.blue, width: 1.5),
                          ),
                          child: Center(
                              child: Text(
                            'Black',
                            style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.w400),
                          )),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Container(
                          height: 30,
                          width: 70,
                          color: Colors.grey[100],
                          child: Center(
                              child: Text(
                            'Red',
                            style: TextStyle(
                                color: Colors.black54,
                                fontWeight: FontWeight.w400),
                          )),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Container(
                          height: 30,
                          width: 70,
                          color: Colors.grey[100],
                          child: Center(
                              child: Text(
                            'Grey',
                            style: TextStyle(
                                color: Colors.black54,
                                fontWeight: FontWeight.w400),
                          )),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    Container(
                      height: 50,
                      width: 35,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey, width: 2),
                      ),
                      child: Column(
                        children: [
                          Center(
                              child: Text(
                            'qty',
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.w400),
                          )),
                          SizedBox(
                            height: 5,
                          ),
                          Center(
                              child: Text(
                            '1',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          )),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      width: 310,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(5),
                        ),
                        color: Colors.blue.shade600,
                      ),
                      child: FlatButton(
                        child: Text(
                          'ADD TO CART',
                          style: TextStyle(color: Colors.white),
                        ),
                        onPressed: () {},
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          'Check also',
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 18,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Text(
                          'products soon insha\'allah',
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.grey[200],
                          size: 30,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.grey[200],
                          size: 30,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.grey[200],
                          size: 30,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.grey[200],
                          size: 30,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.grey[200],
                          size: 30,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Text(
                          'Rate This Product',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Text(
                          'Write Review',
                          style: TextStyle(),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width / 1.1,
                          child: TextFormField(
                            decoration: InputDecoration(
                                hintText: 'Write your review here...'),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 5),
                          child: Container(
                            color: Colors.blue.shade600,
                            height: 50,
                            width: 100,
                            child: FlatButton(
                              child: Text(
                                'Submit',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 16),
                              ),
                              onPressed: () {},
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            Bottom(),
            Container(
                height: 80,
                width: double.infinity,
                color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                          height: 50,
                          width: MediaQuery.of(context).size.width / 1.1,
                          decoration: BoxDecoration(border: Border.all(width: 1),
                          borderRadius: BorderRadius.circular(5.0)),
                          child: FlatButton(
                              onPressed: () {}, child: Text('VIEW ALL REVIEWS',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w300 ),),),),
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
