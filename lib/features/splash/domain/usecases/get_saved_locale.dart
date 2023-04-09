import 'package:dartz/dartz.dart';

import '../../../../core/errors/failures.dart';
import '../../../../core/usecases/usecase.dart';
import '../repositories/lang_repository.dart';

class GetSavedLocaleUseCase implements UseCase<String, NoParams> {
  final LangRepository langRepository;

  GetSavedLocaleUseCase({required this.langRepository});

  @override
  Future<Either<Failure, String>> call(NoParams params) async {
    return await langRepository.getCurrentLocale();
  }
}
