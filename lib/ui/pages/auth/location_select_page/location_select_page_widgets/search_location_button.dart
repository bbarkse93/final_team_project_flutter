import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:team_project/_core/constants/size.dart';
import 'package:team_project/ui/pages/auth/location_select_page/location_select_view_model.dart';

class SearchLocationList extends ConsumerWidget {
  const SearchLocationList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    LocationModel? model = ref.watch(locationSelectProvider);
    return Expanded(
      child: ListView.builder(
        itemCount: (model?.location?.length ?? 0) + 1, // 전체 아이템 개수에 1을 더합니다.
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
                      "${model?.text} 검색 결과",
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
