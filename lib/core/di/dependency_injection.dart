import 'package:get_it/get_it.dart';
import 'package:dio/dio.dart';
import 'package:champs/core/networking/dio_factory.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  Dio dio = DioFactory.getDio();
}
