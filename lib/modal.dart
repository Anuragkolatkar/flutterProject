import 'dart:convert';

WelcomeWelcome welcomeWelcomeFromJson(String str) =>
    WelcomeWelcome.fromJson(json.decode(str));

String welcomeWelcomeToJson(WelcomeWelcome data) => json.encode(data.toJson());

class WelcomeWelcome {
  WelcomeWelcome({
    required this.greeting,
    required this.instructions,
  });

  String greeting;
  List<String> instructions;

  factory WelcomeWelcome.fromJson(Map<String, dynamic> json) => WelcomeWelcome(
        greeting: json["greeting"],
        instructions: List<String>.from(json["instructions"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "greeting": greeting,
        "instructions": List<dynamic>.from(instructions.map((x) => x)),
      };

  static void add(WelcomeWelcome welcomeWelcome) {}
}
