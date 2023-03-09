class Restaurant {
  final String name;
  final String restId;
  final String category;
  final String imageUrl;
  final String mealImageUrl;
  final String rating;
  final String deliveryCost;
  final String deliveryTime;

  Map<String, dynamic> toMap() {
    return {
      'restName': name,
      'restId': restId,
      'restCat': category,
      'restImag': imageUrl,
      'restMaelImag': mealImageUrl,
      'restRat': rating,
      'restDelCost': deliveryCost,
      'restDelTime': deliveryTime,
    };
  }

  static final List<Restaurant> restaurantInfo = [
    const Restaurant(
      name: 'Sushi Art',
      restId: '1',
      category: 'Asian',
      imageUrl:
          'https://images.deliveryhero.io/image/talabat/restaurants/Sushi_Art_Logo_636268284707586912.jpg?width=180',
      mealImageUrl: 'https://pbs.twimg.com/media/DcQrpOiWAAAYsxx.jpg',
      rating: '4.5',
      deliveryCost: '12 SR',
      deliveryTime: '45 mins',
    ),
    const Restaurant(
      name: 'Lapaz Batchoy',
      restId: '3',
      category: 'Asian',
      imageUrl: 'https://images.deliveryhero.io/image/talabat/restaurants/logo2-2_636843872800482194.jpg?width=180',
      mealImageUrl:
          'https://images.deliveryhero.io/image/talabat/Menuitems/PANCHIT_CANTON_637153134953597675.jpg?width=172&amp;height=172',
      rating: '4.2',
      deliveryCost: '8.00 SR',
      deliveryTime: '69 mins',
    ),
    const Restaurant(
      name: 'Grill n Rice Restaurant',
      restId: '4',
      category: 'Arabic, Indian, Asian',
      imageUrl: 'https://images.deliveryhero.io/image/talabat/restaurants/gnr_logo_636553417584753192.jpg?width=180',
      mealImageUrl:
          'https://images.deliveryhero.io/image/talabat/Menuitems/2CC0835BC95FDF73EA10E07252524EAE?width=172&amp;height=172',
      rating: '3.9',
      deliveryCost: '9.00 SR',
      deliveryTime: '60 mins',
    ),
    const Restaurant(
      name: 'Maestro Pizza',
      restId: '5',
      category: 'Pizza, Italian',
      imageUrl:
          'https://images.deliveryhero.io/image/talabat/restaurants/MAESTRO_LOGO-01_637337108095775972.jpg?width=180',
      mealImageUrl:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQu5peH2CV3G3-wkAT5lc8hc4JjCXN8HPbR3g&usqp=CAU',
      rating: '4.2',
      deliveryCost: '17.00 SR',
      deliveryTime: '45 mins',
    ),
    const Restaurant(
      name: 'Hara Masriya',
      restId: '6',
      category: 'Arabic, Egyptian',
      imageUrl:
          'https://images.deliveryhero.io/image/talabat/restaurants/Hara_Masriya_Logo_636269034726647025.jpg?width=180',
      mealImageUrl:
          'https://images.deliveryhero.io/image/talabat/Menuitems/2017-05-03-PHOTO-000_636294856529546122.jpg?width=172&amp;height=172',
      rating: '4.5',
      deliveryCost: '25.00 SR',
      deliveryTime: '75 mins',
    ),
  ];

  const Restaurant({
    required this.name,
    required this.restId,
    required this.category,
    required this.imageUrl,
    required this.mealImageUrl,
    required this.rating,
    required this.deliveryCost,
    required this.deliveryTime,
  });
}

class Meal {
  final String name;
  final String maelId;
  final String description;
  final String imageUrl;
  final String price;

  const Meal({
    required this.name,
    required this.maelId,
    required this.description,
    required this.imageUrl,
    required this.price,
  });
  Map<String, dynamic> toMap() {
    return {
      'mealName': name,
      'mealMaelId': maelId,
      'mealDesc': description,
      'mealImag': imageUrl,
      'mealPrice': price,
    };
  }

  static final List<Meal> meals = [
    const Meal(
      name: 'Pancit Canton Noodles',
      maelId: '12',
      price: '22 RS',
      imageUrl:
          'https://images.deliveryhero.io/image/talabat/Menuitems/PANCHIT_CANTON_637153134953597675.jpg?width=172&amp;height=172',
      description: '',
    ),
    const Meal(
      name: 'Kare Kare Platter',
      maelId: '13',
      price: '41 RS',
      imageUrl:
          'https://images.deliveryhero.io/image/talabat/Menuitems/mmw_637997727278977499?width=172&amp;height=172',
      description: 'Kare kare beef with peanut sauce.',
    ),
    const Meal(
      name: 'Spaghetti Pasta',
      maelId: '14',
      price: '24 RS',
      imageUrl:
          'https://images.deliveryhero.io/image/talabat/Menuitems/SPAGGETI_637153134963772526.jpg?width=172&amp;height=172',
      description: '',
    ),
    const Meal(
      name: 'Fried Duck Platter',
      maelId: '15',
      price: '39 RS',
      imageUrl:
          'https://images.deliveryhero.io/image/talabat/Menuitems/FRIED_DUCKبط_محمر_30_636880115907178047.jpg?width=172&amp;height=172',
      description: '',
    ),
    const Meal(
      name: 'Chicken Biryani',
      maelId: '16',
      price: '22 RS',
      imageUrl:
          'https://images.deliveryhero.io/image/talabat/Menuitems/2CC0835BC95FDF73EA10E07252524EAE?width=172&amp;height=172',
      description:
          'Made with tender chicken, basmati rice, and a blend of spices, it/s a classic dish from the Indian subcontinent, perfect for a main course or as a side dish.',
    ),
    const Meal(
      name: 'Butter Chicken Handi',
      maelId: '17',
      price: '34 RS',
      imageUrl:
          'https://images.deliveryhero.io/image/talabat/Menuitems/B99AF5DC2903FF6A39A3AECC1FBF77AA?width=172&amp;height=172',
      description: '',
    ),
    const Meal(
      name: 'Cheese Naan',
      maelId: '18',
      price: '7 RS',
      imageUrl:
          'https://images.deliveryhero.io/image/talabat/Menuitems/9CB768FA9DF100D94BCC41E521154794?width=172&amp;height=172',
      description: '',
    ),
    const Meal(
      name: 'Prawn Biryani',
      maelId: '19',
      price: '36 RS',
      imageUrl:
          'https://images.deliveryhero.io/image/talabat/Menuitems/2C44A93A6AC209E3DE35502D8EEB9D90?width=172&amp;height=172',
      description: '',
    ),
    const Meal(
      name: 'Take And Bake Pizza',
      maelId: '20',
      price: '25 SR',
      imageUrl:
          'https://images.deliveryhero.io/image/talabat/Menuitems/Margarita__-Take-and_637222181393661681.jpg?width=172&amp;height=172',
      description: 'Thin dough, maestro secret cheese mix and maestro sauce.',
    ),
    const Meal(
      name: 'Vegetarian Pizza Take And Bake',
      maelId: '21',
      price: '25 SR',
      imageUrl:
          'https://images.deliveryhero.io/image/talabat/Menuitems/mmw_637997727278977499?width=172&amp;height=172',
      description: 'Thin dough, cheese mix, tomato, olive, onion, green pepper, mushroom and maestro sauce.',
    ),
    const Meal(
      name: 'Rocca Pizza Take And Bake',
      maelId: '22',
      price: '25 SR',
      imageUrl:
          'https://images.deliveryhero.io/image/talabat/Menuitems/Rocca__-Take-and-Bake_637222181419746688.jpg?width=172&amp;height=172',
      description: 'Ultra thin dough, rocca, parmesan cheese, tomato and balsamic vinegar.',
    ),
    const Meal(
      name: 'Lahbeno Pizza Take And Bake',
      maelId: '23',
      price: '25 SR',
      imageUrl:
          'https://images.deliveryhero.io/image/talabat/Menuitems/Lahapeno__-Take-and-_637222181431608059.jpg?width=172&amp;height=172',
      description:
          'Thin dough, cheese mix, jalapeno pepper, red and green bell pepper, red and green tabasco sauce and maestro sauce.',
    ),
    const Meal(
      name: 'Molokhia Tajine',
      maelId: '24',
      price: '18 RS',
      imageUrl: 'https://www.talabat.com/assets/images/img-placeholder.svg',
      description: '570 Kcal.',
    ),
    const Meal(
      name: 'Orzo Soup',
      maelId: '25',
      price: '12 RS',
      imageUrl: 'https://www.talabat.com/assets/images/img-placeholder.svg',
      description: '35 Kcal..',
    ),
    const Meal(
      name: 'Mango Kunafa',
      maelId: '26',
      price: '19 RS',
      imageUrl: 'https://www.talabat.com/assets/images/img-placeholder.svg',
      description: '440 Kcal.',
    ),
    const Meal(
      name: 'Half Duck With The Rice',
      maelId: '27',
      price: '75 RS',
      imageUrl: 'https://www.talabat.com/assets/images/img-placeholder.svg',
      description: 'Served with Muloukhiya',
    ),
  ];
}
