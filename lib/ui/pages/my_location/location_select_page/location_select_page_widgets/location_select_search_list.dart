import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger/logger.dart';
import 'package:team_project/_core/constants/move.dart';
import 'package:team_project/_core/constants/size.dart';
import 'package:team_project/data/store/param_store.dart';
import 'package:team_project/ui/pages/my_location/location_select_page/location_select_view_model.dart';

class LocationSelectSearchList extends ConsumerWidget {
  const LocationSelectSearchList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    String text = "";

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
                    padding: const EdgeInsets.symmetric(vertical: defaultPadding),
                    child: Text(
                      "${model?.text ?? "근처"} 검색 결과",
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
                    padding: const EdgeInsets.symmetric(vertical: defaultPadding),
                    child: InkWell(
                      child: Text(
                        "${model?.location?[index - 1] ?? " "}",
                        style: TextStyle(fontSize: fontLarge),
                      ),
                      onTap: () {
                        text = model?.location?[index - 1] ?? " ";
                        List<String> splitText = text.split(" ");
                        String lastText = splitText.last;
                        ParamStore textparam = ref.read(paramProvider);
                        textparam.location = lastText;

                        Logger().d("textparam location : ${textparam.location}");

                        Navigator.popAndPushNamed(context, Move.joinPage);
                      },
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
