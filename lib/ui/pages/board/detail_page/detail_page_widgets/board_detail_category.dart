import 'package:flutter/material.dart';
import 'package:team_project/_core/constants/size.dart';

class BoardDetailCategory extends StatelessWidget {
  const BoardDetailCategory({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(left: defaultPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.grey[300]),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  width: 70,
                  child: Row(
                    children: [
                      Icon(Icons.library_books_sharp,
                          size: fontSmall, color: Colors.black54),
                      SizedBox(
                        width: xsmallGap,
                      ),
                      Text("동네생활",
                          style: TextStyle(
                              fontSize: fontSmall, color: Colors.black54)),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
