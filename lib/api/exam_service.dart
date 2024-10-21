import 'dart:typed_data';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:exam_ai/api/api_client.dart';
import 'package:exam_ai/constants/const.dart';
// import 'package:exam_ai/constants/const.dart';
import 'package:file_picker/file_picker.dart';

class MockExamService {
  final ApiClient _apiClient = ApiClient();
  final FirebaseFirestore firestore = FirebaseFirestore.instance;

  Future<String> generateMockQuestions(
    PlatformFile file,
    int selectedSubject,
    int selectedExamFormat,
    int selectedExamType,
    int itemCount,
  ) async {
    if (file.bytes != null) {
      Uint8List fileBytes = file.bytes!;

      String selectedExamTypes = examTypeToString[selectedExamType]!;

      final result = await _apiClient.generateExamQuestions(
        fileBytes,
        file.extension ?? 'txt',
        selectedSubject,
        selectedExamFormat,
        selectedExamTypes,
        itemCount,
      );
      return result;
    } else {
      throw Exception('Error: document content not available');
    }
  }

  Future<void> storeExamQuestions(String result, String fileName) async {
    await firestore.collection('exams').add({
      'fileName': fileName,
      'result': result,
    });
  }

  Stream<QuerySnapshot<Map<String, dynamic>>> fetchExams() {
    return firestore.collection('exams').snapshots();
  }

  void deleteExamQuestions(String docId) {
    firestore.collection('exams').doc(docId).delete();
  }
}
