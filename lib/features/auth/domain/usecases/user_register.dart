
import 'package:fpdart/fpdart.dart';
import 'package:clarba/core/error/failure.dart';
import 'package:clarba/core/usecase/usecase.dart';
import 'package:clarba/features/auth/domain/repository/auth_repository.dart';

class UserRegister implements UseCase<String,UserRegisterParams>{
  final AuthRepository authRepository;
  UserRegister(this.authRepository);

  @override
  Future<Either<Failure,String>> call(UserRegisterParams params)async{
    return await authRepository.registerWithEmailPassword(
      name: params.name, 
      email: params.email,
       password: params.password,
       );
  }
}

class UserRegisterParams {
  final String name;
  final String email;
  final String password;
  UserRegisterParams({
    required this.name,
    required this.email,
    required this.password,
  });
}
