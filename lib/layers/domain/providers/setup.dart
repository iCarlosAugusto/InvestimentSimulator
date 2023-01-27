import 'package:get_it/get_it.dart';
import 'package:help_teacher/layers/domain/controllers/exam_controller.dart';

final getIt = GetIt.instance;

setupProviders() {
  getIt.registerSingleton(ExamController());
}