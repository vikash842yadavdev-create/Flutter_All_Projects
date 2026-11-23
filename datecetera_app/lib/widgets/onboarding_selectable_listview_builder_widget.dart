import 'package:datecetera_app/widgets/onboaring_selectable_tile_widget.dart';
import 'package:flutter/material.dart';

@immutable
class OnboardingSelectableListviewBuilder extends StatefulWidget {
  List commonList ;
  int? selectedIndex;
  OnboardingSelectableListviewBuilder({super.key, required this.commonList, required this.selectedIndex});

  @override
  State<OnboardingSelectableListviewBuilder> createState() =>
      _OnboardingSelectableListviewBuilderState();
}

class _OnboardingSelectableListviewBuilderState
    extends State<OnboardingSelectableListviewBuilder> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      itemBuilder: (context, index) {
        return InkWell(
          splashFactory: NoSplash.splashFactory,

          onTap: () {
            setState(() {
              widget.selectedIndex = index;
            });
          },
          child: OnboaringSelectableTile(
            isSelected: widget.selectedIndex == index,
            title: widget.commonList[index],
          ),
        );
      },
      itemCount: widget.commonList.length,
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
    );
  }
}
