import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ShippingAddressController extends GetxController {
  final List<Map<String, String>> addresses = [
    {
      'name': 'User',
      'address': '123 Main Street',
      'city': 'Mohali',
      'state': 'Punjab',
      'pincode': '301001',
      'phone': '9876543210',
    },
  ];

  int selectedAddressIndex = 0;

  void selectAddress(int index) {
    selectedAddressIndex = index;
    update();
  }

  void deleteAddress(int index) {
    addresses.removeAt(index);

    if (addresses.isEmpty) {
      selectedAddressIndex = -1;
    } else if (selectedAddressIndex >= addresses.length) {
      selectedAddressIndex = 0;
    }

    update();
  }

  void showAddressDialog({int? index}) {
    final bool isEdit = index != null;

    final nameController = TextEditingController(
      text: isEdit ? addresses[index!]['name'] : '',
    );

    final addressController = TextEditingController(
      text: isEdit ? addresses[index!]['address'] : '',
    );

    final cityController = TextEditingController(
      text: isEdit ? addresses[index!]['city'] : '',
    );

    final stateController = TextEditingController(
      text: isEdit ? addresses[index!]['state'] : '',
    );

    final pincodeController = TextEditingController(
      text: isEdit ? addresses[index!]['pincode'] : '',
    );

    final phoneController = TextEditingController(
      text: isEdit ? addresses[index!]['phone'] : '',
    );

    Get.dialog(
      AlertDialog(
        title: Text(isEdit ? 'Edit Address' : 'Add Address'),
        content: SingleChildScrollView(
          child: Column(
            children: [
              _textField(controller: nameController, label: 'Full Name'),

              _textField(controller: addressController, label: 'Address'),

              _textField(controller: cityController, label: 'City'),

              _textField(controller: stateController, label: 'State'),

              _textField(controller: pincodeController, label: 'Pincode'),

              _textField(controller: phoneController, label: 'Phone Number'),
            ],
          ),
        ),
        actions: [
          TextButton(
            onPressed: () {
              Get.back();
            },
            child: const Text('Cancel'),
          ),

          ElevatedButton(
            onPressed: () {
              if (nameController.text.trim().isEmpty ||
                  addressController.text.trim().isEmpty ||
                  cityController.text.trim().isEmpty ||
                  stateController.text.trim().isEmpty ||
                  pincodeController.text.trim().isEmpty ||
                  phoneController.text.trim().isEmpty) {
                Get.snackbar(
                  'Error',
                  'Please fill all fields',
                  snackPosition: SnackPosition.BOTTOM,
                );
                return;
              }

              final newAddress = {
                'name': nameController.text.trim(),
                'address': addressController.text.trim(),
                'city': cityController.text.trim(),
                'state': stateController.text.trim(),
                'pincode': pincodeController.text.trim(),
                'phone': phoneController.text.trim(),
              };

              if (isEdit) {
                addresses[index!] = newAddress;
              } else {
                addresses.add(newAddress);
                selectedAddressIndex = addresses.length - 1;
              }

              update();
              Get.back();
            },
            child: Text(isEdit ? 'Update' : 'Save'),
          ),
        ],
      ),
    );
  }

  Widget _textField({
    required TextEditingController controller,
    required String label,
  }) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          labelText: label,
          border: const OutlineInputBorder(),
        ),
      ),
    );
  }
}
