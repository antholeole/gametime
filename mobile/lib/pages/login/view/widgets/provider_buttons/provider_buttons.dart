import 'package:flutter/material.dart';
import 'package:gametime/pages/login/cubit/login_cubit.dart';
import 'package:gametime/pages/login/view/widgets/provider_buttons/login_with_provider_button.dart';

class ProviderButtons extends StatelessWidget {
  const ProviderButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
        children:
            LoginProvider.values.map(LoginWithProviderButton.new).toList());
  }
}
