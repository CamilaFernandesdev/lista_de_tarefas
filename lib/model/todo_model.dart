class ToDoModel {
  final String title;
  bool isCompleted;

  ToDoModel({
    required this.title,
    this.isCompleted = false,
  });

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'isCompleted': isCompleted,
    };
  }

  factory ToDoModel.fromJson(Map<String, dynamic> json) {
    return ToDoModel(
      title: json['title'],
      isCompleted: json['isCompleted'],
    );
  }
}
