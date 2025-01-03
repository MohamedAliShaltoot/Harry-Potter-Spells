import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';




import 'package:harry_potter_spells/core/utils/app_strings.dart';
import 'package:harry_potter_spells/features/Magic_Spells/domain/ApiServices/spell_model.dart';
import 'package:harry_potter_spells/features/Magic_Spells/presentation/cubit/spell_bloc.dart';
import 'package:harry_potter_spells/features/Magic_Spells/presentation/cubit/spell_states.dart';
import 'package:harry_potter_spells/features/Magic_Spells/presentation/widgets/cards_short_cut.dart';


// ignore: must_be_immutable
class NewHomePage extends StatelessWidget {
  bool isClicked = false;
  List<SpellModel>? spells;

  NewHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 3, 54, 95),
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(AppStrings.appBarTitle),
        actions: const [
          Icon(Icons.sticky_note_2),
        ],
      ),
      body: BlocBuilder<SpellCubit, SpellStates>(builder: (context, state) {
        if (state is SpellLoading) {
          return const Center(child: CircularProgressIndicator());
        } else if (state is SpellLoaded) {
          return SpellUiDisplay(state);
        } else if (state is SpellError) {
          return Center(child: Text(state.message));
        }
        return Center(
          child: ElevatedButton(
            onPressed: () async {
              await context.read<SpellCubit>().getSpell();
            },
            child: const Text(AppStrings.buttonName),
          ),
        );
      }),
    );
  }

  // ignore: non_constant_identifier_names
}
