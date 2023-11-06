import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger/logger.dart';
import 'package:team_project/_core/constants/size.dart';
import 'package:team_project/ui/pages/auth/location_select_page/location_select_view_model.dart';

class LocationSelectSearchList extends ConsumerWidget {
  const LocationSelectSearchList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    LocationModel? model = ref.watch(locationSelectProvider);
    return Expanded(
      child: ListView.builder(
        itemCount: (model?.location?.length ?? 0) + 1,
        itemBuilder: (context, index) {
          if (index == 0) {
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
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: defaultPadding),
                    child: InkWell(
                      child: Text(
                        "${model?.location?[index - 1] ?? " "}",
                        style: TextStyle(fontSize: fontLarge),
                      ),
                      onTap: () {},
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
