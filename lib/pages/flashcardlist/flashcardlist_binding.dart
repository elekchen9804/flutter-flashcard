import 'package:get/get.dart';
import 'package:flashcard/pages/flashcardlist/flashcardlist_ctrl.dart';

class FlashcardListBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FlashcardListCtrl());
  }
}
