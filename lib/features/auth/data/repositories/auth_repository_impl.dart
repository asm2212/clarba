import 'package:clarba/core/error/execptions.dart';
import 'package:clarba/core/error/failure.dart';
import 'package:clarba/features/auth/data/datasources/auto_remote_data_source.dart';
import 'package:clarba/features/auth/domain/repository/auth_repository.dart';
import 'package:fpdart/fpdart.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AutoRemoteDataSource remoteDataSource;
  const AuthRepositoryImpl(this.remoteDataSource);
  @override
  Future<Either<Failure, String>> loginWithEmailPassword(
      {required String email, required String password}) {
    // TODO: implement loginWithEmailPassword
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, String>> registerWithEmailPassword(
      {required String name,
      required String email,
      required String password}) 
      async{
      try{
        final userId = await remoteDataSource.registerWithEmailPassword(
          name: name, 
          email: email,
           password: password
           );
           return right(userId);
      
      }on ServerExceptions catch (e){
        return left(Failure(e.message));
      }
      }
}
