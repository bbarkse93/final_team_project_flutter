import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:team_project/ui/pages/auth/location_select_page/location_select_page_widgets/present_location_button.dart';
import 'package:team_project/ui/pages/auth/location_select_page/location_select_page_widgets/search_location_button.dart';
import 'package:team_project/ui/pages/auth/location_select_page/location_select_view_model.dart';
import 'package:team_project/ui/widgets/forms/custom_search_text_form_field.dart';

class LocationSelectPage extends ConsumerWidget {
  const LocationSelectPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    LocationModel? model = ref.read(locationSelectProvider);

    return Scaffold(
      appBar: CustomSearchTextFormField(),
      body: Column(
        children: [
          PresentLocationButton(),
          SearchLocationList(),
        ],
      ),
    );
  }
}

//
// final api = AddressApiRepository();
// final result = await api.findByName(location: "송정동");
