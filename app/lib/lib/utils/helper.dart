import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

typedef Selector<T, R> = R Function(T);

T blocRead<T>(BuildContext context) => context.read<T>();
T blocWatch<T>(BuildContext context) => context.watch<T>();
R blocSelect<T, R>(BuildContext context, Selector<T, R> selector) =>
    context.select<T, R>(selector);
