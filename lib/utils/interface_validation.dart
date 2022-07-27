import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:hotel_mobile/utils/validations.dart';

class InterfaceValidation {
  String? handleEmail(String value) {}
  String? handleFirst(String value) {}
  String? handleLast(String value) {}
  String? handelPhone(String value) {}
  String? handleBirthday(String value) {}
  String? handleCountry(String value) {}
}

enum FormType{
  firstName,
  lastname,
  email,
  password,
  phone,
  gender,
  country,
  birthday
}

Widget containers(
    TextEditingController controller, FocusNode focus, FormType type , Function(FormType) formValidation) {
  return TextFormField(
    controller: controller,
    cursorColor: Colors.black,
    readOnly:
    FormType.birthday == type || FormType.country == type ? true : false,
    inputFormatters: [
      FilteringTextInputFormatter.deny(' '),
      type == FormType.phone
          ? FilteringTextInputFormatter.allow(RegExp('[0-9]'))
          : type == FormType.email
          ? FilteringTextInputFormatter.allow(RegExp('[0-9a-zA-Z.,@-_]'))
          : FilteringTextInputFormatter.allow(RegExp('[a-zA-Z]')),
    ],
    autovalidateMode: AutovalidateMode.disabled,
    decoration: InputDecoration(
      contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(5),
        borderSide:const BorderSide(color: Colors.red),
      ),
      disabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(5),
        borderSide: const BorderSide(color: Colors.red),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(5),
        borderSide: const BorderSide(color: Colors.red),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(5),
        borderSide: const BorderSide(color: Colors.red),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(5),
        borderSide: const BorderSide(color: Colors.red),
      ),
      filled: true,
      fillColor: Colors.white,
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(5),
        borderSide: const BorderSide(color: Colors.red),
      ),
    ),
    validator: (value) {
      return formValidation(type);
      // return _controller.handleEmail(value!);
    },
  );
}