class PhotoRepository {
  List<String> getAllPhoto() {
    return List<String>.generate(8, (index) => 'photo_${index+1}.png');
  }

  String getTodayPhoto() {
    return 'photo_today.png';
  }
}