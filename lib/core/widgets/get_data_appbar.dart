import 'package:flutter/material.dart';
import 'package:furniture_app/feature/modelview/post_view_model.dart';
import 'package:kartal/kartal.dart';


AppBar buildAppBar(BuildContext context) {
  final _viewmodel=PostViewModel();
  return AppBar(
    backgroundColor:Colors.transparent,
    elevation: 0,
    actions: [
      IconButton(
          icon: Icon(
            Icons.notifications,
            size: 30,
            color: Colors.grey,
          ),
          onPressed: () {
            _viewmodel.fetchData();
          })
    ],
    leading: Padding(
      padding: context.verticalPaddingLow,
      child: CircleAvatar(
        child: Image.network(
            'https://i.pinimg.com/originals/51/f6/fb/51f6fb256629fc755b8870c801092942.png'),
        backgroundColor: Colors.transparent,
      ),
    ),
    title: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Welcome', style: Theme.of(context).textTheme.bodyText2),
        Text('Veli Bacık', style: Theme.of(context).textTheme.headline6)
      ],
    ),
  );
}
