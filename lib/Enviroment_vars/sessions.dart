class SessionsData {

  static final SessionsData _instance = SessionsData._internal();

  factory SessionsData() => _instance;

  SessionsData._internal();

  String mailTestAccount = 'admin@admin.com';
  String passwordTestAccount = 'Password789';
  
}