class Message {
  String message;
  String sentByMe;
  String time;

  Message({required this.message, required this.sentByMe, required this.time});

  factory Message.fromJson(Map<String, dynamic> json) {
    return Message(
      message: json['message'],
      sentByMe: json['sentByMe'],
      time: json['time'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'message': message,
      'sentByMe': sentByMe,
      'time': time,
    };
  }
}
