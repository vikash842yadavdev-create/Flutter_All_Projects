import 'package:playstoreclone/app/core/utils/config/assets.dart';

class RecommendedSectionModel {
  final String logo;
  final String title;
  final String rating;

  new({required this.logo, required this.title, required this.rating});
  static final List<RecommendedSectionModel> recommendedList = [
    RecommendedSectionModel(
      logo: Assets.instagramImg,
      title: 'Instagram',
      rating: '4.5',
    ),

    RecommendedSectionModel(
      logo: Assets.spotifyImg,
      title: 'Spotify',
      rating: '4.6',
    ),

    RecommendedSectionModel(
      logo: Assets.youtubeImg,
      title: 'YouTube',
      rating: '4.4',
    ),

    RecommendedSectionModel(
      logo: Assets.whatsappImg,
      title: 'WhatsApp',
      rating: '4.3',
    ),

    RecommendedSectionModel(
      logo: Assets.canvaImg,
      title: 'Canva',
      rating: '4.7',
    ),

    RecommendedSectionModel(
      logo: Assets.netflixImg,
      title: 'Netflix',
      rating: '4.2',
    ),

    RecommendedSectionModel(
      logo: Assets.googlePhotosImg,
      title: 'Google Photos',
      rating: '4.6',
    ),

    RecommendedSectionModel(
      logo: Assets.teligramImg,
      title: 'Telegram',
      rating: '4.4',
    ),

    RecommendedSectionModel(
      logo: Assets.snapseedImg,
      title: 'Snapseed',
      rating: '4.5',
    ),

    RecommendedSectionModel(
      logo: Assets.duolingoImg,
      title: 'Duolingo',
      rating: '4.7',
    ),

    RecommendedSectionModel(
      logo: Assets.googleMapImg,
      title: 'Google Maps',
      rating: '4.4',
    ),

    RecommendedSectionModel(
      logo: Assets.pintrestImg,
      title: 'Pinterest',
      rating: '4.6',
    ),

    RecommendedSectionModel(
      logo: Assets.microSoftTeamImg,
      title: 'Microsoft Teams',
      rating: '4.3',
    ),
  ];
}
