// ignore_for_file: public_member_api_docs

import 'package:dart_frog/dart_frog.dart';
import 'package:web_socket_counter/counter/cubit/counter_cubit.dart';

final _counter = CounterCubit();

final counterProvider = provider<CounterCubit>((_) => _counter);
