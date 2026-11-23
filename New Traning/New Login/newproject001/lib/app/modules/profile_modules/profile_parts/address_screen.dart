import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:newproject001/app/global_widgets/widgets/back_widget.dart';
import 'package:newproject001/app/global_widgets/widgets/custom_elivated_button_widget.dart';
import 'package:newproject001/app/global_widgets/widgets/profile_details_fields_widget.dart';
import 'package:newproject001/app/modules/home_module/models/user_profile_model.dart';

class AddressScreen extends StatelessWidget {
  const AddressScreen({
    super.key,
    required this.userdata,
    required this.userNo,
  });

  final List<UserProfileModel> userdata;
  final int userNo;

  @override
  Widget build(BuildContext context) {
    final user = userdata[userNo];
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.all(12),

        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 24.h),
              Padding(padding: const EdgeInsets.all(8.0), child: BackWidget()),
              SizedBox(height: 16.h),
              ProfileDetailsFieldsWidget(
                title: 'Address',
                description: user.address.address,
                check: false,
                small: true,
              ),
              SizedBox(height: 8.h),
              ProfileDetailsFieldsWidget(
                title: 'City',
                description: user.address.city,
                check: false,
                small: true,
              ),
              SizedBox(height: 8.h),
              ProfileDetailsFieldsWidget(
                title: 'State',
                description: user.address.state,
                check: false,
                small: true,
              ),
              SizedBox(height: 8.h),
              ProfileDetailsFieldsWidget(
                title: 'State Codes',
                description: user.address.stateCode,
                check: false,
                small: true,
              ),
              SizedBox(height: 8.h),
              ProfileDetailsFieldsWidget(
                title: 'Postal Code',
                description: user.address.postalCode,
                check: false,
                small: true,
              ),
              SizedBox(height: 8.h),
              ProfileDetailsFieldsWidget(
                title: 'Country',
                description: user.address.country,
                check: false,
                small: true,
              ),
              SizedBox(height: 8.h),
              Row(
                children: [
                  ProfileDetailsFieldsWidget(
                    title: 'Latitude',
                    description: user.address.coordinates.lat.toString(),
                    check: false,
                    small: false,
                  ),
                  ProfileDetailsFieldsWidget(
                    title: 'Longitude',
                    description: user.address.coordinates.lng.toString(),
                    check: false,
                    small: false,
                  ),
                ],
              ),
          
              SizedBox(height: 32.h),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4),
                child: CustomElivatedButton(title: 'Edit Details', onTap: () {}),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
