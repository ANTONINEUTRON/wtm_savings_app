
import 'package:equatable/equatable.dart';

class Invest extends Equatable{
  Invest({
    required this.title,
    required this.returns,
    required this.banner,
  });
  final String title;
  final String returns;
  final String banner;

  @override
  List<Object?> get props => [
    title,returns,banner
  ];
}