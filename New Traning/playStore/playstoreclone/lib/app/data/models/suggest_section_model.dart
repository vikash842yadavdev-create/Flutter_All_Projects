import 'package:playstoreclone/app/core/utils/config/assets.dart';

class SuggestSectionModel {
  final String title;
  final String desc1;
  final String? desc2;
  final String? desc3;
  final String logo;
  final String rating;
  final String sizeInMB;

  new({
    required this.title,
    required this.desc1,
    this.desc2,
    this.desc3,
    required this.logo,
    required this.rating,
    required this.sizeInMB,
  });

  static final List<SuggestSectionModel> suggestList = [
    SuggestSectionModel(
      title: 'Google Photos',
      desc1: 'Photography',
      desc2: 'Cloud Storage',
      desc3: 'Photo Backup',
      logo: Assets.googlePhotosImg,
      rating: '4.6',
      sizeInMB: '80 MB',
    ),

    SuggestSectionModel(
      title: 'Netflix',
      desc1: 'Entertainment',
      desc2: 'Movies',
      desc3: 'TV Shows',
      logo: Assets.netflixImg,
      rating: '4.2',
      sizeInMB: '95 MB',
    ),
    SuggestSectionModel(
      title: 'Canva',
      desc1: 'Graphic Design',
      desc2: 'Photo Editor',
      desc3: 'Templates',
      logo: Assets.canvaImg,
      rating: '4.7',
      sizeInMB: '90 MB',
    ),
    SuggestSectionModel(
      title: 'Instagram',
      desc1: 'Social Media',
      desc2: 'Photo & Video',
      desc3: 'Communication',
      logo: Assets.instagramImg,
      rating: '4.5',
      sizeInMB: '75 MB',
    ),

    SuggestSectionModel(
      title: 'Spotify',
      desc1: 'Music',
      desc2: 'Audio',
      desc3: 'Podcasts',
      logo: Assets.spotifyImg,
      rating: '4.6',
      sizeInMB: '85 MB',
    ),

    SuggestSectionModel(
      title: 'YouTube',
      desc1: 'Video',
      desc2: 'Music',
      desc3: 'Entertainment',
      logo: Assets.youtubeImg,
      rating: '4.4',
      sizeInMB: '120 MB',
    ),

    SuggestSectionModel(
      title: 'WhatsApp',
      desc1: 'Communication',
      desc2: 'Messaging',
      desc3: 'Calls',
      logo: Assets.whatsappImg,
      rating: '4.3',
      sizeInMB: '70 MB',
    ),

    SuggestSectionModel(
      title: 'Telegram',
      desc1: 'Messaging',
      desc2: 'Communication',
      desc3: 'Social',
      logo: Assets.teligramImg,
      rating: '4.4',
      sizeInMB: '65 MB',
    ),

    SuggestSectionModel(
      title: 'Snapseed',
      desc1: 'Photo Editor',
      desc2: 'Photography',
      desc3: 'Filters',
      logo: Assets.snapseedImg,
      rating: '4.5',
      sizeInMB: '30 MB',
    ),

    SuggestSectionModel(
      title: 'Duolingo',
      desc1: 'Education',
      desc2: 'Language Learning',
      desc3: 'Courses',
      logo: Assets.duolingoImg,
      rating: '4.7',
      sizeInMB: '60 MB',
    ),

    SuggestSectionModel(
      title: 'Google Maps',
      desc1: 'Maps',
      desc2: 'Navigation',
      desc3: 'Travel',
      logo: Assets.googleMapImg,
      rating: '4.4',
      sizeInMB: '110 MB',
    ),

    SuggestSectionModel(
      title: 'Pinterest',
      desc1: 'Lifestyle',
      desc2: 'Inspiration',
      desc3: 'Ideas',
      logo: Assets.pintrestImg,
      rating: '4.6',
      sizeInMB: '72 MB',
    ),

    SuggestSectionModel(
      title: 'Microsoft Teams',
      desc1: 'Business',
      desc2: 'Communication',
      desc3: 'Meetings',
      logo: Assets.microSoftTeamImg,
      rating: '4.3',
      sizeInMB: '100 MB',
    ),
  ];
}
