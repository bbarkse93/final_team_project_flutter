import 'package:flutter/material.dart';
import 'package:team_project/_core/constants/size.dart';
import 'package:team_project/ui/pages/auth/location_select_page/location_select_view_model.dart';

class SearchLocationList extends StatelessWidget {
  const SearchLocationList({
    super.key,
    required this.model,
  });

  final LocationModel? model;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 11, // 전체 아이템 개수에 1을 더합니다.
        itemBuilder: (context, index) {
          if (index == 0) {
            // 첫 번째 아이템 (반복되지 않음)을 정의합니다.
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: defaultPadding),
                    child: Text(
                      "${model?.searchText} 검색 결과",
                      style: TextStyle(
                        fontSize: fontLarge,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            );
          } else {
            // 나머지 아이템 (반복)을 정의합니다.
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: defaultPadding),
                    child: Text(
                      "${model?.location}",
                      style: TextStyle(fontSize: fontLarge),
                    ),
                  ),
                  Divider(thickness: 1),
                ],
              ),
            );
          }
        },
      ),
    );
  }
}
