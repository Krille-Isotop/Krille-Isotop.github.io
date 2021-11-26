// ignore: one_member_abstracts
abstract class UseCase<Type, Params> {
  Future<Type> call(Params params);
}

// ignore: one_member_abstracts
abstract class StreamUseCase<Type, Params> {
  Stream<Type> call(Params params);
}

class NoParams {}
