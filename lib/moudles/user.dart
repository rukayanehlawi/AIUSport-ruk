library mylibrary.globals;

class User {
  final String profileimg;
  final String username;
  final String email;
  final String info;
  final bool isDarkMode;
  final String weight;
  final String height;


  const User( {
    required this.profileimg,
    required this.username,
    required this.email,
    required this.info,
    required this.isDarkMode,
    required this.weight,
    required this.height,
  });
}