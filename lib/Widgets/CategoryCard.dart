import 'package:flutter/widgets.dart';

class CategoriesCard extends StatelessWidget {
  final String imge, title;
  const CategoriesCard({super.key, required this.imge, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 5.0),
      child: Padding(
        padding: EdgeInsets.only(left: 8),
        child: Column(
          children: [
            SizedBox(
                height: 50,
                width: 50,
                child: Image.asset(
                  imge,
                )),
            Text(title),
          ],
        ),
      ),
    );
  }
}
