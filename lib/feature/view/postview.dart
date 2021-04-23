import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:furniture_app/core/theme/color_theme.dart';
import 'package:furniture_app/core/widgets/get_data_appbar.dart';
import 'package:furniture_app/core/widgets/searchbar.dart';
import 'package:furniture_app/feature/modelview/post_view_model.dart';
import 'package:furniture_app/feature/view/post_view_detail.dart';
import 'package:kartal/kartal.dart';

class PostView extends StatelessWidget {
  final _viewModel = PostViewModel();
  final _renk = Helpercolor();
  @override
  Widget build(BuildContext context) {
    return 
     Container(
       decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            stops: [0.5],
            colors: [ _renk.gri.withOpacity(0.9)]),
      ),
       child: Scaffold(
        bottomNavigationBar: CurvedNavigationBar(
          backgroundColor: Colors.transparent,
          color: Color(0xff494D7E),
          items: <Widget>[
            Icon(Icons.add, size: 30,color: Colors.white,),
            Icon(Icons.list, size: 30,color: Colors.white),
            Icon(Icons.compare_arrows, size: 30,color: Colors.white),
          ],
          onTap: (index) {},
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: _renk.mavisim,
          onPressed: () {
            _viewModel.fetchData();
            
            print(_viewModel.sayi.toString());
          },
        ),
        backgroundColor: Colors.transparent,
        appBar: buildAppBar(context),
        body: Column(
          children: <Widget>[
            buildSearchBar(),
            buildTabbar(context),
          ],
        ),
    ),
     );
  }

  DefaultTabController buildTabbar(context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 5,
      child: Column(
        children: [
          Container(
            child: Padding(
              padding: EdgeInsets.only(left: 10),
              child: TabBar(
                labelPadding: EdgeInsets.symmetric(horizontal: 40),
                unselectedLabelColor: Colors.black.withOpacity(0.2),
                isScrollable: true,
                indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Color(0xff494D7E)),
                labelStyle: TextStyle(fontSize: 20),
                tabs: [
                  Tab(
                    child: Text(
                      'All',
                    ),
                  ),
                  Tab(
                    child: Text('All'),
                  ),
                  Tab(
                    child: Text('All'),
                  ),
                  Tab(
                    child: Text('All'),
                  ),
                  Tab(
                    child: Text('All'),
                  ),
                ],
              ),
            ),
          ),
          Container(
              height: MediaQuery.of(context).size.height * 0.6,
              decoration: BoxDecoration(
                  border: Border(
                      top: BorderSide(color: Colors.transparent, width: 0.5))),
              child: buildTabBarView())
        ],
      ),
    );
  }

  TabBarView buildTabBarView() {
    return TabBarView(children: [
      Observer(builder: (_) {
           return GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 10,
              childAspectRatio: 0.5,
              crossAxisSpacing: 10),
          itemCount: _viewModel.posts.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              height: context.dynamicHeight(0.3),
              child: Card(
                semanticContainer: true,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                      height: context.dynamicHeight(0.15),
                      width: context.dynamicWidth(0.20),
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(
                                  "${_viewModel.posts[index].image}"),
                              fit: BoxFit.fill)),
                    ),
                    Padding(
                      padding: context.paddingMedium,
                      child: Text(
                        _viewModel.posts[index].title.toString(),
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                    Text(
                      _viewModel.posts[index].price.toString() + 'TL',
                      style: TextStyle(fontSize: 15),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => PostViewDetail(
                                    description: _viewModel
                                        .posts[index].description
                                        .toString(),
                                    image: _viewModel.posts[index].image
                                        .toString(),
                                    title: _viewModel.posts[index].title
                                        .toString(),
                                    price: _viewModel.posts[index].price
                                        .toString(),
                                  )),
                        );
                      },
                      child: Container(
                        height: context.dynamicHeight(0.05),
                        width: context.dynamicWidth(0.4),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: context.appTheme.buttonColor),
                        child: Center(child: Text('Buy Me ')),
                      ),
                    )
                  ],
                ),
              ),
            );
          },
        );
    
        }
         ),
      Container(
        child: Center(
          child: Text('Display Tab 1',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
        ),
      ),
      Container(
        child: Center(
          child: Text('Display Tab 1',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
        ),
      ),
      Container(
        child: Center(
          child: Text('Display Tab 1',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
        ),
      ),
      Container(
        child: Center(
          child: Text('Display Tab 1',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
        ),
      ),
    ]);
  }
}
