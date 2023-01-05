class News {
  final String? bodyText;
  final DateTime? responseExpiryDate;
  //final List<AttachmentBase>? attachments;
  final int id;
  final int categoryId;
  final String categoryDescription;
  final DateTime createdAt;
  final DateTime? sentAt;
  final String? subject;
  final bool isCanceled;
  final bool enableResponse;
  final String? image;
  final String? details;

  News({
    required this.details,
    this.image,
    this.bodyText,
    this.responseExpiryDate,
    // this.attachments,
    required this.id,
    required this.categoryId,
    required this.categoryDescription,
    required this.createdAt,
    this.sentAt,
    this.subject,
    required this.isCanceled,
    required this.enableResponse,
  });
}
