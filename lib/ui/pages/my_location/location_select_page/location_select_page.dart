import 'package:flutter/material.dart';
import 'package:team_project/ui/pages/my_location/location_select_page/location_select_page_widgets/location_select_present_button.dart';
import 'package:team_project/ui/pages/my_location/location_select_page/location_select_page_widgets/location_select_search_list.dart';
import 'package:team_project/ui/widgets/forms/custom_search_text_form_field.dart';

class LocationSelectPage extends StatelessWidget {
  const LocationSelectPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomSearchTextFormField(),
      body: Column(
        children: [
          LocationSelectPresentButton(),
          LocationSelectSearchList(),
        ],
      ),
    );
  }
}
