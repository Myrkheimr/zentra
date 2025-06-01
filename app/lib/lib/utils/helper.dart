import 'package:auto_route/auto_route.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

typedef Selector<T, R> = R Function(T);

// BLoC
T blocRead<T>(BuildContext context) => context.read<T>();
T blocWatch<T>(BuildContext context) => context.watch<T>();
R blocSelect<T, R>(BuildContext context, Selector<T, R> selector) =>
    context.select<T, R>(selector);

// AutoRouter
StackRouter routerOf(BuildContext context, {bool watch = false}) =>
    AutoRouter.of(context, watch: watch);

StackRouter? innerRouterOf(BuildContext context, String routeName) =>
    AutoRouter.innerRouterOf(context, routeName);

T? parentRouterOf<T extends RoutingController>(BuildContext context) =>
    AutoRouter.of(context).parent<T>();
