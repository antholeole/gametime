import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gametime/data/user_data.dart';
import 'package:gametime/pages/home/features/film_list/cubit/film_list_cubit.dart';
import 'package:gametime/pages/home/features/film_list/film_list.dart';
import 'package:gametime/register_services.dart';
import 'package:local_user/local_user.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget implements AutoRouteWrapper {
  final UserData userData;

  const HomePage({Key? key, required this.userData}) : super(key: key);

  @override
  Widget wrappedRoute(BuildContext context) {
    return Provider.value(
      value: userData,
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    final g = getIt;

    return Stack(
      children: [
        Scaffold(
          drawer: BlocProvider<FilmListCubit>(
            create: (_) => FilmListCubit(),
            child: const FilmList(),
          ),
          appBar: AppBar(
            actions: [
              IconButton(
                  onPressed: getIt<LocalUser<UserData>>().logOut,
                  icon: const Icon(Icons.logout))
            ],
          ),
        ),
        const AutoRouter(),
      ],
    );
  }
}
