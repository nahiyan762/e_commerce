class Product extends Object {
  List<String> images;
  String id;
  String name;
  String slug;
  String categorySlug;
  String brandSlug;
  double maxPrice;
  double minPrice;
  double discountedPrice;

  Product({
    required this.images,
    required this.id,
    required this.name,
    required this.slug,
    required this.categorySlug,
    required this.brandSlug,
    required this.maxPrice,
    required this.minPrice,
    required this.discountedPrice
});

  factory Product.fromJson(final json) {
    return Product(images: json["images"],
        id: json["_id"],
        name: json["name"],
        slug: json["slug"],
        categorySlug: json["category_slug"],
        brandSlug: json["brand_slug"],
        maxPrice: json["max_price"].toDouble(),
        minPrice: json["min_price"].toDouble(),
        discountedPrice: json["discounted_price"].toDouble()
    );
  }
}