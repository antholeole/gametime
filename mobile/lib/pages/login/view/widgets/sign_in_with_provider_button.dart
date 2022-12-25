import 'package:flutter/material.dart';
import 'package:gametime/pages/login/cubit/login_cubit.dart';
import 'package:provider/provider.dart';

extension Ui on LoginType {
  String get _imageLocation {
    switch (this) {
      case LoginType.google:
        return 'assets/provider_logos/google.png';
    }
  }

  Color get _color {
    switch (this) {
      case LoginType.google:
        return const Color(0xff4285F4);
    }
  }

  String get _name {
    switch (this) {
      case LoginType.google:
        return 'Google';
    }
  }
}

class SignInWithProviderButton extends StatelessWidget {
  final LoginType _loginType;

  const SignInWithProviderButton({
    Key? key,
    required LoginType loginType,
  })  : _loginType = loginType,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: TextButton(
        onPressed: () => context.read<LoginCubit>().login(_loginType),
        style: TextButton.styleFrom(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            backgroundColor: _loginType._color,
            padding: const EdgeInsets.all(15)),
        child: Row(
          children: [
            ColorFiltered(
              colorFilter:
                  const ColorFilter.mode(Colors.white, BlendMode.srcATop),
              child: Image.asset(
                _loginType._imageLocation,
                height: 40,
              ),
            ),
            Container(
              height: 35,
              width: 2,
              color: Colors.white60,
            ),
            Flexible(
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text(
                  'Sign in with ${_loginType._name}',
                  textAlign: TextAlign.center,
                  style: Theme.of(context)
                      .textTheme
                      .headlineSmall
                      ?.copyWith(color: Colors.white),
                ),
              ),
            ),
            Container(),
          ],
        ),
      ),
    );
  }
}
