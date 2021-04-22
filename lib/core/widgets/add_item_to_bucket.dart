import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:furniture_app/feature/modelview/post_view_model.dart';

Row additemtobucket() {
  final _viewmodel = PostViewModel();
  return Row(
    children: [
      Container(
          height: 50,
          width: 40,
          decoration: BoxDecoration(
              color: Colors.blueGrey,
              borderRadius: BorderRadiusDirectional.only(
                topStart: Radius.circular(10),
                bottomStart: Radius.circular(10),
              )),
          child: IconButton(
              icon: Icon(Icons.remove),
              onPressed: () {
                _viewmodel.decrement();
              })),
      Container(
          height: 50,
          width: 40,
          decoration: BoxDecoration(
            color: Colors.white70,
          ),
          child: Center(child: Observer(builder: (_) {
            return Text(_viewmodel.item.toString(),style:TextStyle(fontSize: 17));
          }))),
      Container(
          height: 50,
          width: 40,
          decoration: BoxDecoration(
              color: Colors.purple,
              borderRadius: BorderRadiusDirectional.only(
                bottomEnd: Radius.circular(10),
                topEnd: Radius.circular(10),
              )),
          child: IconButton(
              icon: Icon(Icons.add),
              onPressed: () {
                _viewmodel.increment();
              })),
    ],
  );
}
