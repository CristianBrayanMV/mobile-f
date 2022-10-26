import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  const CardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: Text("Card Page"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //Card 1
            Container(
              margin: const EdgeInsets.all(20.0),
              padding: const EdgeInsets.all(12.0),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(18.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.07),
                      offset: const Offset(4, 4),
                      blurRadius: 12.0,
                    ),
                    const BoxShadow(
                      color: Colors.white,
                      offset: Offset(-5, -5),
                      blurRadius: 6.0,
                    ),
                  ]),
              child: Column(
                children: [
                  Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                    maxLines: 5,
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: Colors.black.withOpacity(0.66),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 10.0),
                    padding: const EdgeInsets.symmetric(vertical: 12.0),
                    width: double.infinity,
                    // height: 40.0,
                    decoration: BoxDecoration(
                        color: Colors.deepPurpleAccent,
                        borderRadius: BorderRadius.circular(40.0),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.deepPurpleAccent.withOpacity(0.6),
                            blurRadius: 10,
                            offset: const Offset(4, 4),
                          ),
                        ]),
                    alignment: Alignment.center,
                    child: const Text(
                      "Follow me",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 15.0,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            //Card 2

            Container(
              margin:
                  const EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
              padding:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 12.0),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(14.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.06),
                      offset: const Offset(4, 4),
                      blurRadius: 12.0,
                    ),
                  ]),
              child: Row(
                children: [
                  Image.asset(
                    'assets/images/imagex1.png',
                    height: 120.0,
                  ),
                  SizedBox(
                    width: 4.0,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Fiorella de las nieves azules",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: Colors.black87,
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 4.0,
                        ),
                        Text(
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                          overflow: TextOverflow.ellipsis,
                          maxLines: 4,
                          style: TextStyle(
                            color: Colors.black54,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            //Card 3

            Container(
              margin:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 14.0),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.06),
                      blurRadius: 12,
                      offset: const Offset(4, 4),
                    ),
                  ]),
              child: Row(
                children: [
                  const Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                        maxLines: 6,
                      ),
                    ),
                  ),

                  // ClipRRect(
                  //   borderRadius: BorderRadius.circular(16.0),
                  //   child: Image.network(
                  //     "https://images.pexels.com/photos/9374414/pexels-photo-9374414.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                  //     height: 130.0,
                  //     width: 130.0,
                  //     fit: BoxFit.cover,
                  //   ),
                  // ),
                  Container(
                    width: 130,
                    height: 130,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16.0),
                      image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                              "https://images.pexels.com/photos/9374414/pexels-photo-9374414.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1")),
                    ),
                  ),
                ],
              ),
            ),

            Container(
              margin:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 14.0),
              padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 15.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10.0),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black.withOpacity(.06),
                      offset: Offset(4, 4),
                      blurRadius: 12.0),
                ],
              ),
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundImage: NetworkImage(
                      'https://images.pexels.com/photos/38554/girl-people-landscape-sun-38554.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                    ),
                    radius: 25,
                  ),
                  SizedBox(
                    width: 15.0,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Jhon Doe',
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          'Ceo at Apple Inc.',
                          style: TextStyle(color: Colors.black38),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(5.0),
                    decoration: BoxDecoration(
                        color: Colors.blue.withOpacity(.3),
                        borderRadius: BorderRadius.circular(5.0)),
                    child: Row(
                      children: [
                        Icon(
                          Icons.settings,
                          size: 18.0,
                          color: Colors.indigo,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'Settings',
                          style: TextStyle(
                              fontSize: 16.0,
                              color: Colors.indigo,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 14.0),
              padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 15.0),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      color: Colors.black.withOpacity(.06),
                      offset: Offset(4, 4),
                      blurRadius: 12.0),
                ],
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    child: Icon(
                      Icons.filter_list_alt,
                      color: Colors.indigo,
                    ),
                    radius: 25,
                    backgroundColor: Colors.blueAccent.withOpacity(0.5),
                  ),
                  SizedBox(
                    width: 15.0,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'The quick, brown fox jumps over',
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          style: TextStyle(
                            fontSize: 17.0,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old',
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                          style: TextStyle(
                              fontWeight: FontWeight.w400, fontSize: 15.0),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 14.0),
              padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 15.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10.0),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black.withOpacity(.06),
                      offset: Offset(4, 4),
                      blurRadius: 12.0),
                ],
              ),
              child: Row(
                children: [
                  Column(
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            width:260,
                            child: Text(
                              'It is a long established fact that.',
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.w500,
                              ),
                            ),

                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          Text(
                            'On',
                            style: TextStyle(
                                fontSize: 18.0, color: Colors.blueAccent),
                          ),
                          SizedBox(
                            width: 5.0,
                          ),
                          Stack(
                            children: [
                              Container(
                                width: 40.0,
                                height: 22.0,
                                color: Colors.blueAccent,
                              ),
                              Positioned(
                                right: 5.0,
                                top: 5.0,
                                child: Container(
                                  alignment: Alignment.centerRight,
                                  width: 15.0,
                                  height: 12.0,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Divider(
                        height: 40.0,
                        color: Colors.red,

                      ),
                      Row(
                        children: [
                          SizedBox(
                            width:260,
                            child: Text(
                              'It is a long established fact that.',
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.w500,
                              ),
                            ),

                          ),
                          SizedBox(
                            width: 15.0,
                          ),
                          Text(
                            'Off',
                            style: TextStyle(
                                fontSize: 18.0, color: Colors.black),
                          ),
                          SizedBox(
                            width: 5.0,
                          ),
                          Stack(
                            children: [
                              Container(
                                width: 40.0,
                                height: 22.0,
                                color: Colors.black12,
                              ),
                              Positioned(
                                left: 5.0,
                                top: 5.0,
                                child: Container(
                                  alignment: Alignment.centerRight,
                                  width: 15.0,
                                  height: 12.0,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
          ],
        ),
      ),
    );
  }
}
