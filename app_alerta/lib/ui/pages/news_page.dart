import 'package:app_alerta/models/news_model.dart';
import 'package:app_alerta/services/api_service.dart';
import 'package:app_alerta/ui/general/colors.dart';
import 'package:app_alerta/ui/pages/news_register_page.dart';
import 'package:app_alerta/ui/widgets/general_widget.dart';
import 'package:app_alerta/ui/widgets/item_news_widget.dart';
import 'package:flutter/material.dart';

class NewsPage extends StatelessWidget {
  ApiService apiService = ApiService();

  @override
  Widget build(BuildContext context) {
    apiService.getNews();
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => NewsRegisterPage()));
        },
        child: Icon(Icons.add),
        backgroundColor: kBrandPrimaryColor,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.newspaper,
                    color: Color(0xff00509d).withOpacity(0.7),
                  ),
                  spacingWidth6,
                  Text(
                    "Noticias",
                    style: TextStyle(
                      fontSize: 22.0,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff00509d).withOpacity(0.7),
                    ),
                  ),
                ],
              ),
              spacing14,
              FutureBuilder(
                future: apiService.getNews(),
                builder: (BuildContext context, AsyncSnapshot snap) {
                  if (snap.hasData) {
                    List<NewsModel> listNews = snap.data;
                    return Expanded(
                      child: ListView.separated(
                        physics: BouncingScrollPhysics(),
                        itemCount: listNews.length,
                        separatorBuilder: (BuildContext context, int index) =>
                            SizedBox(),
                        itemBuilder: (BuildContext context, int index) {
                          return ItemNewsWidget(
                            newsModel: listNews[index],
                          );
                        },
                      ),
                    );
                  }
                  return Expanded(
                    child: Center(
                      child: CircularProgressIndicator(),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
