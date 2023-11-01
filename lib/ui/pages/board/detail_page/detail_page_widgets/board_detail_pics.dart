import 'package:flutter/material.dart';
import 'package:team_project/_core/constants/size.dart';

class BoardDetailPics extends StatelessWidget {
  const BoardDetailPics({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height - kToolbarHeight - 100,
      width: MediaQuery.of(context).size.width,
      child: PageView(
        scrollDirection: Axis.horizontal,
        children: [
          Container(
            padding: EdgeInsets.all(defaultPadding),
            child: Center(
              child: Image.network(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                "https://fastly.picsum.photos/id/866/200/300.jpg?hmac=rcadCENKh4rD6MAp6V_ma-AyWv641M4iiOpe1RyFHeI",
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(defaultPadding),
            child: Center(
              child: Image.network(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                "https://fastly.picsum.photos/id/866/200/300.jpg?hmac=rcadCENKh4rD6MAp6V_ma-AyWv641M4iiOpe1RyFHeI",
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(defaultPadding),
            child: Center(
              child: Image.network(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                "https://fastly.picsum.photos/id/866/200/300.jpg?hmac=rcadCENKh4rD6MAp6V_ma-AyWv641M4iiOpe1RyFHeI",
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
