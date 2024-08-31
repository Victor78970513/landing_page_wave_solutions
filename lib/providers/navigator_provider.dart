import 'package:flutter_riverpod/flutter_riverpod.dart';

class NavigatorNotifier extends StateNotifier<int> {
  NavigatorNotifier() : super(0);

  void changePage(int value) {
    state = value;
  }
}

final navigatorProvider = StateNotifierProvider<NavigatorNotifier, int>((ref) {
  return NavigatorNotifier();
});
