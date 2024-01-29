import 'package:diet/res/Colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController search = TextEditingController();

    SearchController searchController = Get.put(SearchController());

    return Scaffold(

            body: Container(
              height: double.infinity,
              width: double.infinity,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top:20.0,left:40,right: 40),
                    child: TextField(
                      controller: search,
                      decoration: InputDecoration(
                        isDense: true,
                        hintText: "Search",
                        // labelText: "Search",
                        prefixIcon: Icon(Icons.search,color:Colour.sea,size: 20,),
                        border: OutlineInputBorder()
                      ),
                    ),
                  ),
                  Container(),
                ],
              ),
            ),
    );

  }}