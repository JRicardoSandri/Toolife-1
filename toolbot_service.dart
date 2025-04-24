
import 'dart:convert';
import 'package:http/http.dart' as http;

class ToolBotService {
  Future<String> perguntar(String pergunta, String chave) async {
    final response = await http.post(
      Uri.parse('https://api.openai.com/v1/chat/completions'),
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer \$chave',
      },
      body: json.encode({
        'model': 'gpt-3.5-turbo',
        'messages': [
          {'role': 'user', 'content': pergunta}
        ]
      }),
    );

    final data = json.decode(response.body);
    return data['choices'][0]['message']['content'];
  }
}
