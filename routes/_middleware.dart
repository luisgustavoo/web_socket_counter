import 'package:dart_frog/dart_frog.dart';
import 'package:web_socket_counter/counter/middleware/counter_provider.dart';

Handler middleware(Handler handler) {
  return handler.use(counterProvider);
}
