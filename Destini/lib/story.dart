class Story {
  late String _storyTitle;
  late String _choice1;
  late String _choice2;

  Story(
      {required String storyTitle,
      required String choice1,
      required String choice2}) {
    this.choice1 = choice1;
    this.choice2 = choice2;
    this.storyTitle = storyTitle;
  }

  String get choice2 => _choice2;

  set choice2(String value) {
    _choice2 = value;
  }

  String get choice1 => _choice1;

  set choice1(String value) {
    _choice1 = value;
  }

  String get storyTitle => _storyTitle;

  set storyTitle(String value) {
    _storyTitle = value;
  }
}
