class TenantPopularModel {
  final String id;
  final String tenantName;
  final String owner;
  final String address;
  final String description;

  TenantPopularModel({
      required this.id,
      required this.tenantName,
      required this.owner,
      required this.address,
      required this.description});

  factory TenantPopularModel.fromJson(Map<String, dynamic> json) {
    return TenantPopularModel(
      id: json['id'],
      tenantName: json['tenant_name'],
      owner: json['owner'],
      address: json['address'],
      description: json['description'],
    );
  }
}
