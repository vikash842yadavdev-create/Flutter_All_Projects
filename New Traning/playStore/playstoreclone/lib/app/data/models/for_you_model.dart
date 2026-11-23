import 'package:playstoreclone/app/core/utils/config/assets.dart';

class ForYouModel {
  final String bgImage;
  final String bgImageText;
  final String logoImage;
  final String title;
  final String subTitle;
  final String rating;
  final String ratedFor;

  new({
    required this.bgImage,
    required this.bgImageText,
    required this.logoImage,
    required this.title,
    required this.subTitle,
    required this.rating,
    required this.ratedFor,
  });

  static final List<ForYouModel> forYouList = [
    ForYouModel(
      bgImage: Assets.feature2,
      bgImageText: 'Create amazing videos',
      logoImage: Assets.logo_2,
      title: 'Video Editor',
      subTitle: 'Video Editing',
      rating: '4.5',
      ratedFor: '7+',
    ),
    ForYouModel(
      bgImage: Assets.feature5,
      bgImageText: 'Edit your pictures',
      logoImage: Assets.logo_5,
      title: 'Pics Editor',
      subTitle: 'Photo Editor',
      rating: '4.6',
      ratedFor: '3+',
    ),

    ForYouModel(
      bgImage: Assets.feature1,
      bgImageText: 'Edits here for you',
      logoImage: Assets.logo_1,
      title: 'Edits: Video Editor',
      subTitle: 'Edit Videos',
      rating: '4.6',
      ratedFor: '3+',
    ),

    ForYouModel(
      bgImage: Assets.feature3,
      bgImageText: 'Make your photos better',
      logoImage: Assets.logo_3,
      title: 'Photo Editor',
      subTitle: 'Photo Editing',
      rating: '4.7',
      ratedFor: '6+',
    ),

    ForYouModel(
      bgImage: Assets.feature4,
      bgImageText: 'Discover new music',
      logoImage: Assets.logo_4,
      title: 'Music Player',
      subTitle: 'Music & Audio',
      rating: '4.4',
      ratedFor: '9+',
    ),

    ForYouModel(
      bgImage: Assets.feature6,
      bgImageText: 'Create beautiful designs',
      logoImage: Assets.logo_6,
      title: 'Design Studio',
      subTitle: 'Graphic Design',
      rating: '4.8',
      ratedFor: '4+',
    ),

    ForYouModel(
      bgImage: Assets.feature7,
      bgImageText: 'Watch what you love',
      logoImage: Assets.logo_2,
      title: 'Video Player',
      subTitle: 'Entertainment',
      rating: '4.3',
      ratedFor: '8+',
    ),

    ForYouModel(
      bgImage: Assets.feature8,
      bgImageText: 'Stay organized',
      logoImage: Assets.logo_4,
      title: 'Notes App',
      subTitle: 'Productivity',
      rating: '4.5',
      ratedFor: '6+',
    ),

    ForYouModel(
      bgImage: Assets.feature9,
      bgImageText: 'Learn something new',
      logoImage: Assets.logo_6,
      title: 'Learning App',
      subTitle: 'Education',
      rating: '4.7',
      ratedFor: '5+',
    ),

    ForYouModel(
      bgImage: Assets.feature10,
      bgImageText: 'Explore new games',
      logoImage: Assets.logo_1,
      title: 'Game Center',
      subTitle: 'Games',
      rating: '4.6',
      ratedFor: '7+',
    ),
  ];
}
