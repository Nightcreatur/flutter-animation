import 'package:flutter/material.dart';

class ShoppingCartButton extends StatefulWidget {
  const ShoppingCartButton({super.key});

  @override
  State<ShoppingCartButton> createState() => _ShoppingCartButtonState();
}

class _ShoppingCartButtonState extends State<ShoppingCartButton> {
  void onTap() {
    setState(() {
      isTap = !isTap;
    });
  }

  bool isTap = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Shopping Cart'),
        ),
        body: Center(
            child: isTap
                ? AnimatedContainer(
                    curve: Curves.decelerate,
                    duration: const Duration(
                      milliseconds: 1500,
                    ),
                    width: 160.0,
                    height: 60.0,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    child: TextButton.icon(
                      label: const Text(
                        maxLines: 1,
                        softWrap: false,
                        'Added to cart',
                        style: TextStyle(color: Colors.white),
                      ),
                      onPressed: onTap,
                      icon: const Icon(
                        Icons.check,
                        color: Colors.white,
                      ),
                    ))
                : AnimatedContainer(
                    curve: Curves.bounceOut,
                    duration: const Duration(
                      milliseconds: 500,
                    ),
                    width: 80.0,
                    height: 60.0,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: IconButton(
                      onPressed: onTap,
                      icon: const Icon(Icons.shopping_basket_rounded),
                    ))));
  }
}
