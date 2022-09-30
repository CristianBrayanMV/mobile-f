import 'package:flutter/material.dart';

void main() {
  runApp(Aplicacion());
}

class Aplicacion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.greenAccent,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.account_balance,
                      size: 23.0,
                    ),
                    SizedBox(width: 5.0,),
                    Text(
                      'Dayzer',
                      style: TextStyle(
                        fontSize: 23.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 18.0,),
                Container(
                  padding: const EdgeInsets.all(15.0),
                  child: const Text(
                    'To simplify the way you work',
                    style: TextStyle(fontSize: 60.0,fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                ),
                Icon(
                  Icons.ac_unit,
                  color: Colors.black,
                  size: 200.0,
                ),
                Container(
                  margin:EdgeInsets.only(top: 20.0,bottom: 60.0),
                  width: 220.0,
                  child:const Text(
                    'Controlling deliveries in reliable and no-hassle way',
                    style: TextStyle(
                      fontSize: 18.0,
                    ),
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {},
                        child: const Padding(
                          padding: const EdgeInsets.all(17.0),
                          child: Text(
                            'Get Free Trial',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
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
      ),
    );
  }
}
