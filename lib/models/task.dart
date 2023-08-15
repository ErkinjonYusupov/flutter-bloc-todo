class Task {
  final String title;
  bool? isDone;
  bool? isDeleted;
  Task({required this.title, this.isDeleted, this.isDone}) {
    isDone = isDone ?? false;
    isDeleted = isDeleted ?? false;
  }
  Task copyWith({
    String? title,
    bool? isDone,
    bool? isDeleted,
  }) {
    return Task(
        title: title ?? this.title,
        isDone: isDone ?? this.isDone,
        isDeleted: isDeleted ?? this.isDeleted);
  }

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'isDone': isDone,
      'isDeleted': isDeleted,
    };
  }

  factory Task.fromMap(Map<String, dynamic> map) {
    return Task(
        title: map['title'] ?? '',
        isDeleted: map['isDeleted'],
        isDone: map['isDone']);
  }
}
