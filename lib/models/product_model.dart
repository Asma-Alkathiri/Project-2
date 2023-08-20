class ProductModel {
  int? id;
  String? title;
  int? quantity;
  String? subTitle;
  int? price;
  String? image;

  ProductModel(
      {this.id, this.title, this.quantity, this.subTitle, this.price, this.image});

  ProductModel.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    id = json['id'];
    quantity = json['quantity'];
    subTitle = json['subTitle'];
    price = json['price'];
    image = json['image'];
  }

  // Map<String, dynamic> toJson() {
  //   final Map<String, dynamic> data =  Map<String, dynamic>();
  //   data['title'] = this.title;
  //   data['quantity'] = this.quantity;
  //   data['subTitle'] = this.subTitle;
  //   data['price'] = this.price;
  //   data['image'] = this.image;
  //   return data;
  // }
}
