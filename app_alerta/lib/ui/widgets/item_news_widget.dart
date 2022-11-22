import 'package:app_alerta/models/news_model.dart';
import 'package:app_alerta/ui/widgets/general_widget.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ItemNewsWidget extends StatelessWidget {
  NewsModel newsModel;

  ItemNewsWidget({required this.newsModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 17.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: [
          BoxShadow(
              color: Color(0xff00509d).withOpacity(0.09),
              offset: const Offset(0, 4),
              blurRadius: 12.0),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10.0),
              bottomLeft: Radius.circular(10.0),
            ),
            child: CachedNetworkImage(
              height: 95.0,
              width: 100.0,
              fit: BoxFit.cover,
              imageUrl: newsModel.imagen,
              placeholder: (context, url) => Center(
                child: SizedBox(
                  width: 20,
                  height: 20,
                  child: CircularProgressIndicator(
                    color: Colors.orangeAccent,
                  ),
                ),
              ),
              errorWidget: (context, url, error) => Image.asset(
                "assets/images/placeholderNot.png",
                fit: BoxFit.cover,
              ),
            ),
          ),
          spacingWidth10,
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 5.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    newsModel.titulo,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 18.0,
                        color: Colors.indigo),
                  ),
                  spacing14,
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Link:",
                        style: TextStyle(
                          color: Colors.indigoAccent,
                        ),
                      ),
                      spacingWidth6,
                      Expanded(
                        child: Text(
                          newsModel.link,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                  spacing6,
                  Row(
                    children: [
                      Text(
                        "Fecha:",
                        style: TextStyle(
                          color: Colors.indigoAccent,
                        ),
                      ),
                      spacingWidth6,
                      Text(newsModel.fecha.toString().substring(0, 10)),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
