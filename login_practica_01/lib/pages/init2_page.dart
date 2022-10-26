import 'package:flutter/material.dart';

class Init2Page extends StatelessWidget {
  const Init2Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.network(
            'https://i.pinimg.com/originals/23/f0/53/23f053f3c3372247d407d2ad9984f16b.jpg',
            fit: BoxFit.cover,
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              child: Column(
                children: [
                  const SizedBox(
                    height: 60.0,
                  ),
                  Image.network(
                    'https://www.seekpng.com/png/full/97-975854_dibujos-de-tazas-de-cafe-png-food-vector.png',
                    height: 150.0,
                  ),
                  const Text(
                    "deeps",
                    style: TextStyle(
                      fontSize: 50.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.orangeAccent,
                      shadows: [
                        Shadow(
                            color: Colors.black,
                            offset: Offset(0, 4),
                            blurRadius: 12.0)
                      ],
                    ),
                  ),
                  const Text(
                    "BEERCAFE",
                    style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      letterSpacing: 12.0,
                      shadows: [
                        Shadow(
                            color: Colors.black,
                            offset: Offset(0,4),
                            blurRadius: 12.0
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 60.0, horizontal: 30.0),
                  decoration:  BoxDecoration(
                    color: Color(0xffFFB901).withOpacity(.7),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40.0),
                        topRight: Radius.circular(40.0)),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Welcome",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 40.0),
                      ),
                      const SizedBox(
                        height: 15.0,
                      ),
                      const Text(
                        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 45.0,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20.0),
                              child: Container(
                                height: 50.0,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.black,
                                  ),
                                  onPressed: () {
                                  },
                                  child: const Text(
                                    "Sign In",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 10.0,
                          ),
                          Expanded(
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20.0),
                              child: Container(
                                height: 50.0,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.white,
                                  ),
                                  onPressed: () {},
                                  child: const Text(
                                    "Sign Up",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
