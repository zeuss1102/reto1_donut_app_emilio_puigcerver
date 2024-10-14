import 'package:flutter/material.dart';
import '../utils/my_tab.dart';
import '../tab/burger_tab.dart';
import '../tab/donut_tab.dart';
import '../tab/pancake_tab.dart';
import '../tab/pizza_tab.dart';
import '../tab/smoothie_tab.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List<Widget> myTabs = [
    //donut tab
    const MyTab(iconPath: 'lib/icons/donut.png'),
    //burger tab
    const MyTab(iconPath: 'lib/icons/burger.png'),
    //smoothie tab
    const MyTab(iconPath: 'lib/icons/smoothie.png'),
    //pancake tab
    const MyTab(iconPath: 'lib/icons/pancakes.png'),
    //pizza tab
    const MyTab(iconPath: 'lib/icons/pizza.png')

  ];
  @override
  Widget build(BuildContext context) {
    return  DefaultTabController(
      length: myTabs.length,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: Padding(
            padding: const EdgeInsets.only(left: 24.0),
            child: IconButton(icon: Icon(Icons.menu, color: Colors.grey[800], size: 36,), onPressed: () {
               print('botón de menú');},
                ),
          ),
          actions: [Padding(
            padding: const EdgeInsets.only(right: 24.0),
            child: IconButton(icon: Icon(Icons.person, color: Colors.grey [800], size: 36,), onPressed: () {
               print('boton de persona');},
             ),
          )],
        ),
        body: Column(children: [
          //texto "i want to Eat"
          const Padding(
            padding:  EdgeInsets.all(24.0),
            child: Row(
              children: [
                Text('I want to ', style: TextStyle(fontSize: 32),),
                Text('Eat', style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, decoration: TextDecoration.underline),),
              ],
            ),
          ),
          //tab bar
      TabBar(tabs: myTabs),
          //tab bar view
          Expanded(child: TabBarView(children: [

            //donut tab
            DonutTab(),

            //burguer tab
            BurgerTab(),

            //smoothie tab
            SmoothieTab(),

            //pancake tab
            PancakeTab(),

            //pizza tab
            PizzaTab(),

          ],))

          //carrito
        ],),
      ),
    );
  }
}