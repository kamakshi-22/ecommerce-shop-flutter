class Product {
  final String productName;
  final String productImageUrl;
  final String currentPrice;
  final String oldPrice;
  final bool isLiked;

  const Product({
    required this.productName,
    required this.productImageUrl,
    required this.currentPrice,
    required this.oldPrice,
    required this.isLiked,
  });
}

class Category {
  final String categoryName;
  final String productCount;
  final String thumbnailImage;

  const Category(
      {required this.categoryName,
      required this.productCount,
      required this.thumbnailImage});
}

// List of Categories
final categories = [
  const Category(
      categoryName: "T-SHIRT",
      productCount: "250",
      thumbnailImage:
          "https://images.unsplash.com/photo-1523381210434-271e8be1f52b?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3wxMTgwOTN8MHwxfHNlYXJjaHw4fHxUU0hJUlR8ZW58MHx8fHwxNjg5ODQ0Mzc0fDA&ixlib=rb-4.0.3&q=80&w=1080"),
  const Category(
      categoryName: "SHOES",
      productCount: "250",
      thumbnailImage:
          "https://images.unsplash.com/photo-1523381210434-271e8be1f52b?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3wxMTgwOTN8MHwxfHNlYXJjaHw4fHxUU0hJUlR8ZW58MHx8fHwxNjg5ODQ0Mzc0fDA&ixlib=rb-4.0.3&q=80&w=1080"),
  const Category(
      categoryName: "HOODIE",
      productCount: "250",
      thumbnailImage:
          "https://images.unsplash.com/photo-1523381210434-271e8be1f52b?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3wxMTgwOTN8MHwxfHNlYXJjaHw4fHxUU0hJUlR8ZW58MHx8fHwxNjg5ODQ0Mzc0fDA&ixlib=rb-4.0.3&q=80&w=1080"),
  const Category(
      categoryName: "SHOES",
      productCount: "250",
      thumbnailImage:
          "https://images.unsplash.com/photo-1523381210434-271e8be1f52b?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3wxMTgwOTN8MHwxfHNlYXJjaHw4fHxUU0hJUlR8ZW58MHx8fHwxNjg5ODQ0Mzc0fDA&ixlib=rb-4.0.3&q=80&w=1080"),
];

// List of Products
final products = [
  const Product(
      productName: "MNML - Oversized Tshirt",
      productImageUrl:
          "https://images.unsplash.com/photo-1550614000-4895a10e1bfd?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3wxMTgwOTN8MHwxfHNlYXJjaHwyNHx8ZmFzaGlvbnxlbnwwfHx8fDE2ODk4NDU1NTB8MA&ixlib=rb-4.0.3&q=80&w=1080",
      currentPrice: "500",
      oldPrice: "400",
      isLiked: false),
  const Product(
      productName: "MNML - Oversized Tshirt",
      productImageUrl:
          "https://plus.unsplash.com/premium_photo-1664867432853-4b786b5ada37?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3wxMTgwOTN8MXwxfHNlYXJjaHw4fHxmYXNoaW9ufGVufDB8fHx8MTY4OTg0NTUzMXww&ixlib=rb-4.0.3&q=80&w=1080",
      currentPrice: "500",
      oldPrice: "400",
      isLiked: false),
  const Product(
      productName: "MNML - Oversized Tshirt",
      productImageUrl:
          "https://images.unsplash.com/photo-1581044777550-4cfa60707c03?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3wxMTgwOTN8MHwxfHNlYXJjaHw3fHxmYXNoaW9ufGVufDB8fHx8MTY4OTg0NTUzMXww&ixlib=rb-4.0.3&q=80&w=1080",
      currentPrice: "500",
      oldPrice: "400",
      isLiked: false),
  const Product(
      productName: "MNML - Oversized Tshirt",
      productImageUrl:
          "https://images.unsplash.com/photo-1529139574466-a303027c1d8b?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3wxMTgwOTN8MHwxfHNlYXJjaHwzfHxmYXNoaW9ufGVufDB8fHx8MTY4OTg0NTUzMXww&ixlib=rb-4.0.3&q=80&w=1080",
      currentPrice: "500",
      oldPrice: "400",
      isLiked: false),
  const Product(
      productName: "MNML - Oversized Tshirt",
      productImageUrl:
          "https://images.unsplash.com/photo-1559127452-7a36e5f88484?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3wxMTgwOTN8MHwxfHNlYXJjaHw4Nnx8b3ZlcnNpemVkfGVufDB8fHx8MTY4OTg0NDU0MHww&ixlib=rb-4.0.3&q=80&w=1080",
      currentPrice: "500",
      oldPrice: "400",
      isLiked: false),
  const Product(
      productName: "MNML - Oversized Tshirt",
      productImageUrl:
          "https://images.unsplash.com/photo-1515886657613-9f3515b0c78f?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3wxMTgwOTN8MHwxfHNlYXJjaHwyfHxmYXNoaW9ufGVufDB8fHx8MTY4OTg0NTUzMXww&ixlib=rb-4.0.3&q=80&w=1080",
      currentPrice: "500",
      oldPrice: "400",
      isLiked: false),
];
