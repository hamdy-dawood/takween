part of 'supermarket_cubit.dart';

@immutable
sealed class SupermarketState {}

final class SupermarketInitial extends SupermarketState {}
final class ChagePageState extends SupermarketState {}
