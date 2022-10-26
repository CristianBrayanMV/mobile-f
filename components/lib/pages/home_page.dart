import 'package:components/pages/alert_page.dart';
import 'package:components/pages/avatar_page.dart';
import 'package:components/pages/card_page.dart';
import 'package:components/pages/grid_page.dart';
import 'package:components/pages/input_page.dart';
import 'package:components/pages/list_page.dart';
import 'package:components/pages/selection_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              const SizedBox(
                height: 20.0,
              ),
              Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                  // color: Colors.redAccent,
                    borderRadius: BorderRadius.circular(20.0),
                    image: const DecorationImage(
                      image: NetworkImage(
                          "https://malditopaparazzo.com.ar/wp-content/uploads/2021/05/David-Chicle.jpg"),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.17),
                        offset: Offset(5, 5),
                        blurRadius: 12,
                      ),
                    ]),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Text(
                "Flutter Components",
                style: GoogleFonts.poppins(
                  fontSize: 22.0,
                  letterSpacing: 0,
                ),
              ),
              const SizedBox(
                width: 160.0,
                child: Divider(),
              ),

              ItemComponentWidget(title: "Avatar", toPage: AvatarPage()),
              ItemComponentWidget(title: "Alerts", toPage: AlertPage()),
              ItemComponentWidget(title: "Cards", toPage: CardPage()),
              ItemComponentWidget(title: "Inputs", toPage: InputPage()),

              ItemComponentWidget(title: "Selection", toPage: SelectionPage()),

              ItemComponentWidget(title: "List", toPage: ListPage()),

              ItemComponentWidget(title: "Grid View", toPage: GridPage()),

            ],
          ),
        ),
      ),
    );
  }
}

class ItemComponentWidget extends StatelessWidget {

  String title;
  Widget toPage;
  ItemComponentWidget({required this.title, required this.toPage});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 7.0),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16.0),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.07),
              blurRadius: 12,
              offset: Offset(4, 4),
            ),
          ]
      ),
      child: ListTile(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => toPage));
        },
        leading: Icon(
          Icons.check_circle_outline,
          color: Color(0xff14213d),
        ),
        title: Text(
          title,
          style: GoogleFonts.poppins(),
        ),
        subtitle: Text(
          "Ir al detalle del $title",
          style: GoogleFonts.poppins(),
        ),
        trailing: Icon(
          Icons.chevron_right,
        ),
      ),
    );
  }
}