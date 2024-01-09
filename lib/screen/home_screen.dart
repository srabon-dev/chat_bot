import 'package:flutter/material.dart';
import 'package:flutter_gemini_bot/flutter_gemini_bot.dart';
import 'package:flutter_gemini_bot/models/chat_model.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<ChatModel> chatList = [];
  String apiKey = 'AIzaSyAcUkQi1FJ0QicB2tPtPuWzFliqSgDdsXA';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Chat By"),
        centerTitle: true,
        elevation: 0,
      ),
      body: FlutterGeminiChat(
        chatContext: 'you are a frontend app developer',
        chatList: chatList,
        apiKey: apiKey,
      ),
    );
  }
}
