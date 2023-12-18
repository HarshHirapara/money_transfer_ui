import 'package:get/get.dart';

class GetXProperty extends GetxController {
  static RxBool isContactSelected = false.obs;
  static RxBool isPhoneNumberSelected = false.obs;
  static RxBool isBankAccountSelected = false.obs;

  static final List<String> dropDownItems = [
    'Dropdown',
    'Option 1',
    'Option 2',
    'Option 3'
  ];
  static RxString dropdownValue = dropDownItems.first.obs;
}
