import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gametime/pages/login/cubit/login_cubit.dart';
import 'package:gametime/theme/text.dart';

class LoginField extends StatelessWidget {
  final Exception? exception;

  const LoginField({super.key, this.exception});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (exception != null) Text(exception.toString(), style: errorText),
        TextField(
          onSubmitted: context.read<LoginCubit>().login,
          decoration: const InputDecoration(
            hintText: 'Access Key...',
          ),
        ),
      ],
    );
  }
}
