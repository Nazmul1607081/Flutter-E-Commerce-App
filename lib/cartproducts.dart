import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class Cart_products extends StatefulWidget {
  @override
  _Cart_productsState createState() => _Cart_productsState();
}

class _Cart_productsState extends State<Cart_products> {
  var product_on_cart = [
    {
      "name": "Blazer",
      "picture": "images/products/blazer1.jpeg",
      "old_price": 120,
      "price": 85,
      "size": "M",
      "color": "red",
      "quantity": 1,
    },
    {
      "name": "Red dress",
      "picture": "images/products/dress1.jpeg",
      "price": 50,
      "size": "M",
      "color": "red",
      "quantity": 1,
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
        child: ListView.builder(
      itemBuilder: (context, index) {
        return Single_cart_product(
          cart_prod_name: product_on_cart[index]["name"],
          cart_prod_price: product_on_cart[index]["price"],
          cart_prod_color: product_on_cart[index]["color"],
          cart_prod_pricture: product_on_cart[index]["picture"],
          cart_prod_quantity: product_on_cart[index]["quantity"],
          cart_prod_size: product_on_cart[index]["size"],
        );
      },
      itemCount: product_on_cart.length,
    ));
  }
}

class Single_cart_product extends StatelessWidget {
  final cart_prod_name;
  final cart_prod_pricture;
  final cart_prod_color;
  final cart_prod_size;
  final cart_prod_price;
  final cart_prod_quantity;

  const Single_cart_product(
      {Key key,
      this.cart_prod_name,
      this.cart_prod_pricture,
      this.cart_prod_color,
      this.cart_prod_size,
      this.cart_prod_price,
      this.cart_prod_quantity})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Card(
        child: ListTile(
          leading: Image.asset(cart_prod_pricture),
          title: Text(
            cart_prod_name,
          ),
          subtitle: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Text(
                    "Color : ",
                  ),
                  Text(
                    "red ",
                  ),
                  Text("Size : "),
                  Text("XXL"),
                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Text(
                      "${cart_prod_price}000 \$",
                      style: TextStyle(color: Colors.red),
                    ),
                  ),
                  Text(" Qty : "),
                  Text("10000"),
                ],
              ),
            ],
          ),
          trailing: IconButton(
            icon: Icon(Icons.delete),
            onPressed: () {},
          ),
        ),
      ),
    );
  }
}
