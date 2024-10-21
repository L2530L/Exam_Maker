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

    String prompt = 'Summarize the following text and keep summary within '
        'Focus on the subject of $subjectLabel and exam format of a $examFormatLabel,'
        'and exam type of $examTypeLabel with $selectedItemCount items:\n\n'
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
