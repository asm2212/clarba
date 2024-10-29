import 'package:clarba/core/error/execptions.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

abstract class AutoRemoteDataSource{
  Future<String> registerWithEmailPassword({
    required String name,
    required String email,
    required String password,
  });
    Future<String> loginWithEmailPassword({
    required String email,
    required String password,
  });
}

class AutoRemoteDataSourceImpl implements AutoRemoteDataSource{
  final SupabaseClient supabaseClient;
  AutoRemoteDataSourceImpl(this.supabaseClient); 
  @override
  Future<String> loginWithEmailPassword({
    required String email, 
    required String password}) {
    // TODO: implement loginWithEmailPassword
    throw UnimplementedError();
  }

  @override
  Future<String> registerWithEmailPassword({
    required String name, 
    required String email, 
    required String password}) async {
      try{
       final response = await supabaseClient.auth.signUp(
      password: password,
      email: email,
      data: {
        'name': name,
      },
      );
      if(response.user == null){
        throw const ServerExceptions("User is null!");
      }
      return response.user!.id;
      } catch(e){
        throw ServerExceptions(e.toString());
      }
  }
}