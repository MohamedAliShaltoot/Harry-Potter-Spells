import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:harry_potter_spells/ApiServices/api.dart';
import 'package:harry_potter_spells/ApiServices/spell_model.dart';
import 'package:harry_potter_spells/bloc/spell_states.dart';

class SpellCubit extends Cubit<SpellStates> {
  SpellCubit(this.apiProvider) : super(SpellInitial());
  ApiProvider apiProvider;
  List<SpellModel>? spellModel;

  Future<List<SpellModel>> getSpell() async {
    try {
      emit(SpellLoading());

      spellModel = await ApiProvider().getSpells();

      emit(SpellLoaded(spellModel!));

      return spellModel!;
    } on Exception catch (e) {
      emit(SpellError(e.toString()));
      return [];
    }
  }
}
