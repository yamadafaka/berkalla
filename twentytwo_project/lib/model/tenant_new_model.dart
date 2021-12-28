class TenantNewModel {
  final String id;
  final String tenantName;
  final String owner;
  final String address;
  final String description;

  TenantNewModel({
      required this.id,
      required this.tenantName,
      required this.owner,
      required this.address,
      required this.description});

  factory TenantNewModel.fromJson(Map<String, dynamic> json) {
    return TenantNewModel(
      id: json['id'],
      tenantName: json['tenant_name'],
      owner: json['owner'],
      address: json['address'],
      description: json['description'],
    );
  }
}
