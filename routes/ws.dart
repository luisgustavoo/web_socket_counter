import 'package:dart_frog/dart_frog.dart';
import 'package:dart_frog_web_socket/dart_frog_web_socket.dart';
import 'package:web_socket_counter/counter/cubit/counter_cubit.dart';

Future<Response> onRequest(RequestContext context) async {
  final handler = webSocketHandler(
    (channel, protocol) {
      final cubit = context.read<CounterCubit>()..subscribe(channel);

      channel.sink.add('${cubit.state}');

      channel.stream.listen(
        (event) {
          switch (event) {
            case '__increment__':
              cubit.increment();

            case '__decrement__':
              cubit.decrement();

            default:
              break;
          }
        },
        onDone: () => cubit.unsubscribe(channel),
      );
    },
  );

  return handler(context);
}
