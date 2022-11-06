class ProductModel {
  String title;
  String author;
  String imageAsset;
  String price;
  String category;
  bool? trending;

  ProductModel({
    required this.title,
    required this.author,
    required this.imageAsset,
    required this.price,
    required this.category,
    required this.trending,
  });
}

var productList = [
  ProductModel(
    title: 'Metaverse Concept',
    author: 'freepik',
    imageAsset:
        'https://user-images.githubusercontent.com/74250778/181471641-163b859c-4537-4e03-9bc9-37544486bb29.jpg',
    price: '3.5',
    category: 'Art',
    trending: true,
  ),
  ProductModel(
    title: 'Cool Geometric',
    author: 'wirestock',
    imageAsset:
        'https://user-images.githubusercontent.com/74250778/181471688-dab83dce-f3eb-431e-a833-48e677065369.jpg',
    price: '3.8',
    category: 'Art',
    trending: true,
  ),
  ProductModel(
    title: 'Man Skateboarding In Future',
    author: 'vectorpocket',
    imageAsset:
        'https://user-images.githubusercontent.com/74250778/181471310-0ee6772d-04dc-4b76-8a96-96f4d01c4930.jpg',
    price: '3.8',
    category: 'Art',
    trending: false,
  ),
  ProductModel(
    title: 'Wearing Smart Glasses',
    author: 'rawpixel',
    imageAsset:
        'https://user-images.githubusercontent.com/74250778/181473716-2511c568-11bb-4a16-81e9-7d6fd5ad0b6f.jpg',
    price: '5',
    category: 'Photography',
    trending: false,
  ),
];
