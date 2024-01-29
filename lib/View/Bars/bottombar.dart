import 'package:diet/View/Controller/bottomcntroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class bottom extends StatelessWidget {
  const bottom({super.key});

  @override
  Widget build(BuildContext context) {

    BottomController bottomController = Get.put(BottomController());

    return Scaffold(

      body: Obx(() =>
       bottomController.pages[
        bottomController.currentindex.value
        ]
      ),

      bottomNavigationBar: Obx(() => 
      BottomNavigationBar(
        currentIndex: bottomController.currentindex.value,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.label),label: "Labs"),
          
          BottomNavigationBarItem(icon: Icon(Icons.store),label: "Store"),
          // BottomNavigationBarItem(icon: Icon(Icons.storage),label: "charts"),

      ],
      onTap: (index){
        bottomController.currentindex.value = index;
      },
      )
      ),


    );
  }
}