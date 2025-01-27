import 'package:flutter/material.dart';
import 'package:medical_getx_app/Widgets/CategoryCard.dart';
import 'package:medical_getx_app/Widgets/Sliders.dart';

class HomescrMedi extends StatelessWidget {
  const HomescrMedi({super.key, required});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'MediApp',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.menu,
            size: 35,
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Slider
          Containslider(),
          //
          Padding(
            padding: EdgeInsets.only(top: 8, left: 5),
            child: Text('Categories'),
          ),

          //
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                for (int i = 0; i < 10; i++) CategoriesCard(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
