import 'package:jaguar/jaguar.dart';
import './controllers/index.dart';

void main() async {
  final server = Jaguar(port: 3000);
  appRoutes.forEach((route) {
    server.add(route);
  });
  await server.serve();
  print('Server running at port 3000');
}
