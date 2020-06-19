import 'package:flutter/material.dart';
import 'cartproducts.dart';

class Cart extends StatefulWidget {
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        elevation: 0.1,
        backgroundColor: Colors.red,
        title: Text('Cart'),
        actions: <Widget>[
          new IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: () {}),
          new IconButton(
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.white,
              ),
              onPressed: () {})
        ],
      ),
      bottomNavigationBar: Container(
        color: Colors.white,
        child: Row(
          children: <Widget>[
            Expanded(
              child: Text(" Total :"),
            ),
            Expanded(
              child: Text("30 \$", style: TextStyle(color: Colors.red)),
            ),
            Expanded(
              child: MaterialButton(
                child: Text("Check Out"),
                color: Colors.red,
                onPressed: () {
                  /*Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MyApp()),
                  );*/
                },
              ),
            )
          ],
        ),
      ),
      body: Cart_products(),
    );
  }
}
