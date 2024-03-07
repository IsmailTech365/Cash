// ignore_for_file: camel_case_types

import 'package:get/get.dart';

class Mylocal implements Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'ar': {
          'Home Page': 'الصفحة الرئيسية',
          'Welcome': 'مرحباً',
          'Log In': 'تسجيل الدخول',
          'Sign Up': 'إنشاء حساب',
          'Login to your account': 'تسجيل دخول الى حسابك',
          'Email': 'الإيميل',
          'Password': 'كلمة المرور',
          'Confirm Password': 'تأكيد كلمة المرور',
          'Dont have an account?': 'ليس لديك حساب؟',
          'Already have an account?': 'هل لديك حساب ؟',
          'Create an account, Its free': 'إنشاء حساب جديد, إنه مجاني',
          'Automatic identity verification which enables you to verify your identity':
              'التحقق التلقائي من الهوية الذي يمكّنك من التحقق من هويتك',
          'Barcode Log In': 'تسجيل الدخول عبر الباركورد',
          'Services': 'الخدمات',
          'PIN': 'المعرف الشخصي',
        },
        'en': {
          'Home Page': 'Home Page',
          'Welcome': 'Welcome',
          'Log In': 'Log In',
          'Sign Up': 'Sign Up',
          'Login to your account': 'Login to your account',
          'Email': 'Email',
          'Password': 'Password',
          'Confirm Password': 'Confirm Password',
          'Dont have an account?': 'Dont have an account?',
          'Already have an account?': 'Already have an account?',
          'Create an account, Its free': 'Create an account, Its free',
          'Barcode Log In': 'Barcode LogIn',
          'Services': 'Services',
          'PIN': 'PIN',
        },
      };
}
