import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


import 'package:harry_potter_spells/core/utils/app_strings.dart';
import 'package:harry_potter_spells/features/Magic_Spells/domain/ApiServices/api.dart';
import 'package:harry_potter_spells/features/Magic_Spells/presentation/cubit/spell_bloc.dart';
import 'package:harry_potter_spells/features/Magic_Spells/presentation/screens/new_home_bloc.dart';


class SpellsApp extends StatelessWidget {
  const SpellsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SpellCubit(ApiProvider()),
      child: MaterialApp(
        title:AppStrings.appTitle,
        home: NewHomePage(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
