import 'dart:typed_data';
import 'package:exam_ai/constants/const.dart';
import 'document_processor.dart';
import 'package:google_generative_ai/google_generative_ai.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class ApiClient {
  Future<String> generateExamQuestions(
    Uint8List fileBytes,
    String fileExtension,
    int selectedSubject,
    int selectedExamFormat,
    String selectedExamTypes,
    int selectedItemCount,
  ) async {
    String documentContent = await processDocument(fileBytes, fileExtension);

    String subjectLabel = subjects
        .firstWhere((subject) => subject.value == selectedSubject)
        .label;

    String examFormatLabel = examFormats
        .firstWhere((format) => format.value == selectedExamFormat)
        .label;

    String examTypeLabel = selectedExamTypes;

    String prompt =
        'Generate $selectedItemCount exam questions from the following text. '
        'Focus on the subject: $subjectLabel, exam format: $examFormatLabel, '
        'and exam type: $examTypeLabel.'
        'Please provide the questions followed by their correct answers. \n\n'
        '$documentContent';

    String result = await callExamGenerationApi(prompt);

    return result;
  }

  Future<String> callExamGenerationApi(String prompt) async {
    final apiKey = dotenv.env['API_KEY'];
    if (apiKey == null) {
      throw Exception('API key not found in environment variables');
    }

    final model = GenerativeModel(
      model: 'gemini-1.5-flash',
      apiKey: apiKey,
    );

    try {
      final List<Content> contents = [
        Content.text(prompt),
      ];

      final response = await model.generateContent(contents);

      if (response.candidates.isNotEmpty) {
        String? generateText = response.candidates.first.text;

        return generateText?.trim() ?? 'No exam generated';
      } else {
        throw Exception('No candidates found in the response.');
      }
    } catch (e) {
      throw Exception('Failed to generate exam: ${e.toString()}');
    }
  }
}

// Future<String> modifyResultWithGemini(String result) async {
//   final apiKey = dotenv
//       .env['API_KEY']; // Ensure the API key is retrieved from the .env file

//   if (apiKey == null) {
//     throw Exception('API key not found in environment variables');
//   }

//   final client = GeminiClient(apiKey: apiKey);

//   // Construct the prompt for modification
//   final prompt = '''Modify the following exam result based on these rules:
//     - Remove any questions that involve [specific_topic].
//     - Adjust the difficulty level for questions related to [another_topic].
//     - Reformat the questions into a cleaner layout.

//     Here is the original exam result:
//     $result
//     ''';

//   try {
//     final response = await client.generate(
//       prompt: prompt,
//       maxTokens: 1000,
//       temperature: 0.7,
//     );

//     // Ensure the result is properly extracted
//     return response.text?.trim() ?? 'Error modifying result';
//   } catch (e) {
//     print('Error with Gemini API: $e');
//     return result; // Return the original result if an error occurs
//   }
// }
