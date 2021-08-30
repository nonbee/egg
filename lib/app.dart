import 'package:egg/ui/brand/brand_page.dart';
import 'package:flutter/material.dart';
import 'package:egg/ui/top/top_page.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Egg',
      theme: ThemeData(
          primarySwatch: Colors.blue
      ),
      home: _createHome()
    );
  }

  Widget _createHome() {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Center(
              child: Text('Egg')
            ),
            bottom: TabBar(
              tabs: [
                Tab(icon: Icon(Icons.directions_car)),
                Tab(icon: Icon(Icons.directions_transit)),
                Tab(icon: Icon(Icons.directions_bike)),
              ],
            ),
          ),
          body: const TabBarView(
            children: <Widget>[
              TopPage(),
              BrandPage(),
              Icon(Icons.directions_bike),
            ],
          ),
        )
    );


    // return Scaffold(
    //   appBar: AppBar(
    //     title: Text('Egg'),
    //   ),
    //   body: __createBody()
    // );
  }

  Widget __createBody() {
    return Container(
      padding: EdgeInsets.all(5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          const SizedBox(height: 8),
          TextField(),
        ],
      )
    );
  }

}
