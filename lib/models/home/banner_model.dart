import 'package:equatable/equatable.dart';

class Banners extends Equatable {
  final String imageUrl;
  const Banners({
    required this.imageUrl,
  });
  @override
  List<Object?> get props => [
        imageUrl,
      ];
}

class BannersModel extends Banners {
  const BannersModel({
    required super.imageUrl,
  });
  factory BannersModel.fromJson(Map<String, dynamic> json) {
    return BannersModel(
      imageUrl: json['image'],
    );
  }
}
