import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoryTabs extends StatefulWidget {
  const CategoryTabs({super.key});

  @override
  State<CategoryTabs> createState() => _CategoryTabsState();
}

class _CategoryTabsState extends State<CategoryTabs> {
  int selectedIndex = 0;

  final List<String> tabs = [
    'For you',
    'Top Charts',
    'Childrens',
    'Categories',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: List.generate(tabs.length, (index) {
            final isSelected = selectedIndex == index;

            return GestureDetector(
              onTap: () {
                setState(() {
                  if (selectedIndex == index) return;
                  selectedIndex = index;
                });
              },
              child: Container(
                width: 85.w,
                height: 30.h,
                alignment: Alignment.center,
                child: Text(
                  tabs[index],
                  style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                    color: isSelected ? Colors.blue : Colors.grey.shade600,
                  ),
                ),
              ),
            );
          }),
        ),

        // Bottom line + moving indicator
        SizedBox(
          height: 3.h,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              // Grey full line
              Container(
                height: 0.5.h,
                width: double.infinity,
                color: Colors.grey.shade300,
              ),

              // Blue moving indicator
              AnimatedPositioned(
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeInOut,
                left: (selectedIndex * 85.w) + 21.25.w,
                bottom: 0.5.h,
                child: Container(
                  width: 42.5.w,
                  height: 2.h,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
