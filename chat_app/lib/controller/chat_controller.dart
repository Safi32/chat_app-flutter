import 'package:chat_app/model/message.dart';
import 'package:get/get.dart';

class ChatController extends GetxController {
  var chatMessages = <Message>[].obs;

  void addMessage(String message, String sentByMe) {
    var currentTime = DateTime.now();
    var formattedTime = "${currentTime.hour}:${currentTime.minute}";
    chatMessages.add(
      Message(message: message, sentByMe: sentByMe, time: formattedTime),
    );
  }
}
