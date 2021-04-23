import 'package:flutter/material.dart';
import 'package:furniture_app/core/theme/color_theme.dart';
import 'package:furniture_app/core/widgets/add_item_to_bucket.dart';
import 'package:furniture_app/core/widgets/score_product.dart';
import 'package:kartal/kartal.dart';

class PostViewDetail extends StatelessWidget {
  PostViewDetail({this.description, this.image, this.title, this.price});

  final String? description;
  final String? image;
  final String? title;
  final String? price;
  final _renk = Helpercolor();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: _renk.mavisim,
        title: Text('Detail Product'),
      ),
      body: Column(
        children: [
          Container(
              alignment: Alignment.center,
              height: context.dynamicHeight(0.28),
              width: context.dynamicWidth(1),
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(image.toString()), fit: BoxFit.contain),
              )),
          SizedBox(
            height: 15,
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    height: context.dynamicHeight(0.7),
                    width: context.dynamicWidth(1),
                    decoration: BoxDecoration(
                        color: _renk.gri,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(40),
                        )),
                    child: Padding(
                      padding: EdgeInsets.all(15.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            title.toString(),
                            style: context.textTheme.headline4,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              scoringproduct(),
                              additemtobucket(),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            description.toString(),
                            style: context.textTheme.headline6,
                          ),
                          Divider(),
                          Text(
                            price.toString() + 'TL',
                            style: context.textTheme.headline6,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                  height: context.dynamicHeight(0.07),
                                  width: context.dynamicWidth(0.2),
                                  decoration: BoxDecoration(
                                      color: Colors.grey.withOpacity(0.2),
                                      borderRadius:
                                          BorderRadiusDirectional.circular(20)),
                                  child: Icon(
                                    Icons.shopping_bag_outlined,
                                    size: 40,
                                  )),
                              Container(
                                height: context.dynamicHeight(0.07),
                                width: context.dynamicWidth(0.7),
                                decoration: BoxDecoration(
                                    color: _renk.mavisim,
                                    borderRadius:
                                        BorderRadiusDirectional.circular(20)),
                                child: Center(
                                  child: Text('BUY ME',
                                      style:
                                          context.primaryTextTheme.headline6),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
