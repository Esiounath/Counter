// Remplacer l'import classique par l'import legacy
import 'package:flutter_riverpod/legacy.dart';

// Vos déclarations fonctionnent à présent sans erreur
final widthProvider = StateProvider<double>((ref) => 0.0);
final heightProvider = StateProvider<double>((ref) => 0.0);
