class Post {
  final int? userId;
  final int? id;
  final String? title;
  final String? body;

  const Post({
    this.userId,
    this.id,
    this.title,
    this.body,
  });

  // JSON se Post object banao
factory Post.fromJson(Map<String, dynamic> json) {
  return Post(
    userId: json['userId'] as int?,
    id: json['id'] as int?,
    title: json['title'] as String?,
    body: json['body'] as String?,
  );
}

  // Post object ko JSON mein convert karo
  Map<String, dynamic> toJson() {
    return {
      'userId': userId,
      'id': id,
      'title': title,
      'body': body,
    };
  }

  // Copy with method - kisi ek field ko update karne ke liye
  Post copyWith({
    int? userId,
    int? id,
    String? title,
    String? body,
  }) {
    return Post(
      userId: userId ?? this.userId,
      id: id ?? this.id,
      title: title ?? this.title,
      body: body ?? this.body,
    );
  }

  // Do Post objects ko compare karne ke liye
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Post &&
        other.userId == userId &&
        other.id == id &&
        other.title == title &&
        other.body == body;
  }

  @override
  int get hashCode {
    return userId.hashCode ^ id.hashCode ^ title.hashCode ^ body.hashCode;
  }

  // Debugging ke liye readable output
  @override
  String toString() {
    return 'Post(userId: $userId, id: $id, title: $title, body: $body)';
  }
}