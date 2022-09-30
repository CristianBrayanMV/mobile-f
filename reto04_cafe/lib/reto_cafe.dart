import 'package:flutter/material.dart';

class Cafe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0,vertical: 10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Icon(
                    Icons.arrow_circle_left_rounded,
                    size: 35.0,
                  ),
                  Icon(Icons.more_horiz, size: 35.0),
                ],
              ),

              const Text(
                'mind Cafe',
                style: TextStyle(
                  fontFamily: 'Abril Fatface',
                  fontSize: 35.0,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.start,
              ),
              const Text(
                'Relaxed, inspiring essays about happiness',
                style: TextStyle(
                  fontSize: 18.0,
                ),
                textAlign: TextAlign.start,
              ),
              const SizedBox(height: 15.0,),
              Row(
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    child: Text('Follow'),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black26,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(17.0),
                          ),
                        )),
                  ),
                  const SizedBox(
                    width: 15.0,
                  ),
                  const Text(
                    '140k Followers',
                    style: TextStyle(
                      fontSize: 18.0,
                    ),
                    textAlign: TextAlign.start,
                  ),
                ],
              ),
              const SizedBox(height: 35.0,),
              Row(
                children: const [
                  Text(
                    'LATEST',
                    style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(width: 235.0),
                  Icon(
                    Icons.add_card,
                    color: Colors.black38,
                  ),
                  Icon(
                    Icons.menu,
                    size: 35.0,
                    color: Colors.black12,
                  ),
                ],
              ),
              const SizedBox(height: 20.0,),
              Row(
                children: const [
                  Icon(
                    Icons.supervised_user_circle,
                    color: Colors.black38,
                  ),
                  Text(
                    'Julian Basic in Mind Cafe - 19 hr ago',
                    style: TextStyle(fontSize: 18.0, color: Colors.black45),
                  ),
                ],
              ),
              const SizedBox(height: 15.0,),
              const Text(
                '4 Hidden Philisophical Gems To Live By',
                style: TextStyle(
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                '#3 The homless dog philosopher of Ancient Greece and his lessons on freedom',
                style: TextStyle(fontSize: 18.0, color: Colors.black45),
              ),
              const SizedBox(height: 25.0,),
              Image.network(
                'https://images.pexels.com/photos/13684853/pexels-photo-13684853.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                height: 250.0,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              const SizedBox(height: 15.0,),
              const Center(
                child: Text(
                  'Photo by Cristian on Inglant',
                  style: TextStyle(fontSize: 18.0, color: Colors.black45),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
