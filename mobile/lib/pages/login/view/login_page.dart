import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gametime/pages/login/cubit/login_cubit.dart';
import 'package:gametime/theme/loader.dart';
import 'package:gametime/theme/logo.dart';
import 'package:gametime/pages/login/view/widgets/sign_in_with_provider_button.dart';

class LoginPage extends StatelessWidget implements AutoRouteWrapper {
  final Exception? exception;

  const LoginPage({Key? key, this.exception}) : super(key: key);

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
        create: (_) => LoginCubit(initalException: exception), child: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Center(
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 400),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Logo(),
                    BlocBuilder<LoginCubit, LoginState>(
                        builder: (context, state) => state.when(
                            prompting: (e) => Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: LoginType.values
                                      .map((e) => SignInWithProviderButton(
                                            loginType: e,
                                          ))
                                      .toList(),
                                ),
                            loading: () => const Loader(),
                            loggedIn: () => Text('Successfully Logged In!',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .copyWith(
                                      color: CupertinoColors.systemGreen,
                                    )))),
                    const SizedBox()
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}
