import 'dart:convert';

import 'package:banking_app/core/tools/messages.dart';
import 'package:banking_app/main.dart';
import 'package:http/http.dart' as http;

class OpenAI {
  static Future<String> fromQuestion({
    String question = "How do I access my account?",
  }) async {
    const openaiApiKey = "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";
    const apiUrl = 'https://api.openai.com/v1/chat/completions';

    final context = Messages.getContext();
    final questionStr = Messages.getQuestion(question);
    context.add(questionStr);

    Map<String, dynamic> requestBody = {
      'model': 'gpt-3.5-turbo',
      'messages': context,
    };

    http.Response response = await http.post(
      Uri.parse(apiUrl),
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $openaiApiKey',
      },
      body: jsonEncode(requestBody),
    );

    if (response.statusCode == 200) {
      Map<String, dynamic> responseBody = jsonDecode(response.body);
      String content = responseBody['choices'][0]['message']['content'];
      logger.d('Content: $content');
      return content;
    } else {
      logger.e('Error: ${response.statusCode} ${response.reasonPhrase}');
      return "Error: Something went wrong. Try again later.";
    }
  }
}
