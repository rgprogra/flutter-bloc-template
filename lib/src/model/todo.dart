class TodoModel {
  int reviewId;
  int profileId;
  String userId;
  String description;
  int score; //1,2,3,4,5
  DateTime dateCreated;

  TodoModel({
    this.reviewId,
    this.profileId,
    this.userId,
    this.description,
    this.score,
    this.dateCreated,
    // more constructor attributes here
  });

  Map<String, dynamic> asMap() {
    return {
      'review_id': reviewId?.toString(),
      'profile_id': profileId?.toString(),
      'user_id': userId,
      'description': description,
      'score': score?.toString(),
      'date_created': dateCreated?.toString(),
      // add more attributes here
    };
  }

  void readFromMap(Map<String, dynamic> object) {
    reviewId = int.tryParse(object['review_id']?.toString() ?? '');
    profileId = int.tryParse(object['profile_id']?.toString() ?? '');
    userId = object['user_id']?.toString();
    description = object['description']?.toString();
    score = int.tryParse(object['score']?.toString() ?? '');
    dateCreated = DateTime.tryParse(object['date_created']?.toString() ?? '');
  }
}
