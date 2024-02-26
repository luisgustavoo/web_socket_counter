// ignore_for_file: public_member_api_docs

part of 'counter_cubit.dart';

class CounterState extends Equatable {
  const CounterState({
    required this.count,
  });

  const CounterState.initial()
      : this(
          count: 0,
        );

  final int count;

  @override
  List<Object?> get props => [count];
  CounterState copyWith({int? count}) {
    return CounterState(count: count ?? this.count);
  }
}
