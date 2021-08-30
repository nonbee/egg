import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

class BrandPage extends StatefulWidget {
  const BrandPage();

  @override
  State<StatefulWidget> createState() {
    return _BrandPageState();
  }
}

class _BrandPageState extends State<BrandPage> {

  List? _items;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _fetchBrands();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: _items == null ? 0 : _items?.length,
        itemBuilder: (BuildContext context, int index) {

          return ListTile(
            title: Text('${_items?[index]['name']}')
          );
        }),
    );
  }

  Future<List?> _fetchBrands() async {
  // Future<List> _fetchBrands() async {
    //Future xxx async{} という記法
    try {
      var response = await Dio().get('http://192.168.12.220:3000/api/v2/item/brand_list');
      print(response.data['brands']);
      setState(() {
        _items = response.data['brands'];
      });
    } catch (e) {
      print(e);
    }
  }

}

