import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medical_getx_app/Auth/LoginScr.dart';
import 'package:medical_getx_app/Widgets/CategoryCard.dart';
import 'package:medical_getx_app/Widgets/Glassify.dart';
import 'package:medical_getx_app/Widgets/Sliders.dart';
import 'package:medical_getx_app/services/app_string.dart';

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

          //////
          SizedBox(
            height: 100,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: AppString().cataImgList.length,
              itemBuilder: (context, index) {
                var imgData = AppString().cataImgList;
                var titleData = AppString().cataNameList;
                return CategoriesCard(
                  imge: imgData[index],
                  title: titleData[index],
                );
              },
            ),
          ),

          ///////
          SizedBox(height: 20),

          SizedBox(height: 10),
          GlassifyHelper.glassifyBottom(
            height: 50,
            width: 150,
            borderRadius: BorderRadius.circular(8),
            btnText: Text('Click',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                )),
            onTap: () {
              Get.off(LoginviewPage());
            },
          ),
          //////
        ],
      ),
    );
  }
}
