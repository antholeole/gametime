import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gametime/pages/login/cubit/login_cubit.dart';

class LoginWithProviderButton extends StatelessWidget {
  final LoginProvider loginProvider;

  const LoginWithProviderButton(
    this.loginProvider, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: TextButton(
          onPressed: () => context.read<LoginCubit>().login(loginProvider),
          style: TextButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              backgroundColor: loginProvider.color,
              padding: const EdgeInsets.all(15)),
          child: Padding(
            padding: const EdgeInsets.all(4.0),
            child: Row(
              children: [
                ColorFiltered(
                  colorFilter:
                      const ColorFilter.mode(Colors.white, BlendMode.srcATop),
                  child: Image.asset(
                    'assets/provider_logos/${loginProvider.name}.png',
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
                      'Sign in with ${loginProvider.name}',
                      textAlign: TextAlign.center,
                      style: Theme.of(context)
                          .textTheme
                          .headline6
                          ?.copyWith(color: Colors.white),
                    ),
                  ),
                ),
                Container(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
