import 'package:e_commerce_app/features/config/theme/app_colors.dart';
import 'package:e_commerce_app/features/modules/profile_module/presentation/controller/shipping_address_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ShippingAddressScreen extends StatelessWidget {
  const ShippingAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ShippingAddressController>(
      init: ShippingAddressController(),
      builder: (controller) {
        return Scaffold(
          backgroundColor: AppColors.white1,

          appBar: AppBar(
            title: Text(
              'Shipping Address',
              style: TextStyle(
                fontSize: 18.sp,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),
            centerTitle: true,
            backgroundColor: AppColors.white1,
            elevation: 0,
            iconTheme: const IconThemeData(color: Colors.black),
          ),

          body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Saved Address',
                  style: TextStyle(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                  ),
                ),

                SizedBox(height: 16.h),

                if (controller.addresses.isEmpty)
                  _emptyAddress()
                else
                  Expanded(
                    child: ListView.builder(
                      physics: const BouncingScrollPhysics(),
                      itemCount: controller.addresses.length,
                      itemBuilder: (context, index) {
                        final address = controller.addresses[index];

                        return _addressCard(
                          controller: controller,
                          index: index,
                          address: address,
                        );
                      },
                    ),
                  ),

                SizedBox(height: 16.h),

                SizedBox(
                  width: double.infinity,
                  height: 50.h,
                  child: ElevatedButton.icon(
                    onPressed: () {
                      controller.showAddressDialog();
                    },
                    icon: const Icon(Icons.add),
                    label: Text(
                      'Add New Address',
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      foregroundColor: Colors.white,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.r),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _addressCard({
    required ShippingAddressController controller,
    required int index,
    required Map<String, String> address,
  }) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(bottom: 14.h),
      padding: EdgeInsets.all(16.w),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.r),
        border: Border.all(color: Colors.grey.shade300),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                width: 38.w,
                height: 38.w,
                decoration: BoxDecoration(
                  color: Colors.grey.shade100,
                  borderRadius: BorderRadius.circular(8.r),
                ),
                child: Icon(
                  Icons.location_on_outlined,
                  size: 20.sp,
                  color: Colors.black,
                ),
              ),

              SizedBox(width: 12.w),

              Expanded(
                child: Text(
                  address['name'] ?? '',
                  style: TextStyle(
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                  ),
                ),
              ),

              PopupMenuButton<String>(
                onSelected: (value) {
                  if (value == 'edit') {
                    controller.showAddressDialog(index: index);
                  } else if (value == 'delete') {
                    controller.deleteAddress(index);
                  }
                },
                itemBuilder: (context) => [
                  const PopupMenuItem(value: 'edit', child: Text('Edit')),
                  const PopupMenuItem(value: 'delete', child: Text('Delete')),
                ],
              ),
            ],
          ),

          SizedBox(height: 14.h),

          Text(
            address['address'] ?? '',
            style: TextStyle(
              fontSize: 13.sp,
              height: 1.5,
              color: Colors.grey.shade700,
            ),
          ),

          SizedBox(height: 6.h),

          Text(
            '${address['city']}, ${address['state']} - ${address['pincode']}',
            style: TextStyle(fontSize: 13.sp, color: Colors.grey.shade700),
          ),

          SizedBox(height: 6.h),

          Text(
            'Phone: ${address['phone']}',
            style: TextStyle(fontSize: 13.sp, color: Colors.grey.shade700),
          ),

          SizedBox(height: 12.h),

          Row(
            children: [
              Checkbox(
                value: controller.selectedAddressIndex == index,
                onChanged: (_) {
                  controller.selectAddress(index);
                },
                activeColor: Colors.black,
              ),
              Text(
                'Use as default address',
                style: TextStyle(fontSize: 12.sp, color: Colors.black),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _emptyAddress() {
    return Expanded(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.location_off_outlined, size: 50.sp, color: Colors.grey),

            SizedBox(height: 12.h),

            Text(
              'No shipping address found',
              style: TextStyle(
                fontSize: 15.sp,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),

            SizedBox(height: 6.h),

            Text(
              'Add an address for faster checkout.',
              style: TextStyle(fontSize: 12.sp, color: Colors.grey.shade600),
            ),
          ],
        ),
      ),
    );
  }
}
