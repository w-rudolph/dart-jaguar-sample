import 'package:jaguar/jaguar.dart';

@GenController(path: '/api/user')
class UserController extends Controller {

  @Get()
  @Get(path: '/index')
  index() {
    return "hello world";
  }

  @Get(path: '/:id')
  info(Context ctx) {
    return ctx.pathParams;
  }

  @Get(path: '/all')
  all(Context ctx) {
    return Response.json(
      {'code': 0, 'msg': 'all'}, 
      headers: { 'set-cookie': 'x-token=21310' },
    );
  }
}
