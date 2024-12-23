import 'package:harry_potter_spells/ApiServices/spell_model.dart';

abstract class SpellStates{}
class SpellLoading extends SpellStates{}
class SpellLoaded extends SpellStates{
  final List<SpellModel> spellModel;
  SpellLoaded(this.spellModel);
}
class SpellError extends SpellStates{
  final String message;
  SpellError(this.message);
}
class SpellInitial extends SpellStates{}