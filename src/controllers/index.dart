import './user_controller.dart';
import 'package:jaguar_reflect/jaguar_reflect.dart';

final appRoutes = [
  ReflectedController(UserController()).routes
];
