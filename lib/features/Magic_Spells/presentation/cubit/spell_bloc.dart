import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:harry_potter_spells/features/Magic_Spells/domain/ApiServices/api.dart';
import 'package:harry_potter_spells/features/Magic_Spells/domain/ApiServices/spell_model.dart';
import 'package:harry_potter_spells/features/Magic_Spells/presentation/cubit/spell_states.dart';


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
