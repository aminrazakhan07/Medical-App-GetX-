import 'package:flutter/widgets.dart';

class CategoriesCard extends StatelessWidget {
  const CategoriesCard({
    super.key,
  });

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
                  'assets/plant.png',
                )),
            Text('Category'),
          ],
        ),
      ),
    );
  }
}
