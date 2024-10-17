import 'package:flutter/material.dart';
import 'package:reto1_donut_app_emilio_puigcerver/utils/donut_tile.dart';

class DonutTab extends StatefulWidget {
  @override
  _DonutTabState createState() => _DonutTabState();
}

class _DonutTabState extends State<DonutTab> {
  final List donutOnSale = [
    ["Ice Cream", "36", Colors.blue, "lib/images/icecream_donut.png"],
    ["Strawberry", "45", Colors.red, "lib/images/strawberry_donut.png"],
    ["Grape Ape", "84", Colors.purple, "lib/images/grape_donut.png"],
    ["Choco", "95", Colors.brown, "lib/images/chocolate_donut.png"],
    ["romero", "36", Colors.blue, "lib/images/icecream_donut.png"],
    ["Vok", "45", Colors.red, "lib/images/strawberry_donut.png"],
    ["omar que feo", "84", Colors.purple, "lib/images/grape_donut.png"],
    ["Credrichito", "95", Colors.brown, "lib/images/chocolate_donut.png"]
  ];

  // Cantidad de ítems y total del carrito
  int cartItems = 2;
  double cartTotal = 45.0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // La lista de donuts en venta (grid)
        Expanded(
          child: GridView.builder(
            itemCount: donutOnSale.length,
            padding: const EdgeInsets.all(12),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, childAspectRatio: 1 / 1.5),
            itemBuilder: (context, index) {
              return DonutTile(
                donutFlavor: donutOnSale[index][0],
                donutPrice: donutOnSale[index][1],
                donutColor: donutOnSale[index][2],
                imageName: donutOnSale[index][3],
              );
            },
          ),
        ),

        // Footer con total del carrito y botón para ver carrito
        Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: const BorderRadius.vertical(top: Radius.circular(20)),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: const Offset(0, 3),
              ),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Cantidad de items y total
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '$cartItems Items | \$$cartTotal',
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    'Delivery Charges included',
                    style: TextStyle(
                      fontSize: 13,
                      color: Colors.grey[600],
                    ),
                  ),
                ],
              ),

              // Botón para ver el carrito
              ElevatedButton(
                onPressed: () {
                  // Acción al presionar el botón de 'View Cart'
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.pink[300],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                child: const Text(
                  'View Cart',
                  style: TextStyle(
                    color: Colors.white, 
                    fontSize: 18)),
               ),
            ],
          ),
        ),
      ],
    );
  }
}