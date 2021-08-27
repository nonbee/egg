import 'package:flutter/material.dart';

class ItemCard extends StatelessWidget {

  final int _itemId;
  final String _planName;
  final String _planPrice;
  final String _brandName;
  final String _itemName;
  final String _itemImagePath;

  ItemCard(this._itemId, this._planName, this._planPrice, this._brandName, this._itemName, this._itemImagePath);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Container(
            child: Image.network(_itemImagePath),
          ),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Text(_planName),
                    Text(_planPrice)
                  ],
                ),
                Text(_brandName),
                Text(_itemName)
              ],
            ),
          )
        ],
      ),
    );
  }

}
