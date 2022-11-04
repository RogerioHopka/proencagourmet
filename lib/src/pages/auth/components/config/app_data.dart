import 'package:proencagourmet/src/models/item_model.dart';

ItemModel amanteigados = ItemModel(
  itemName: 'Amateigados',
  imgUrl: 'assets\produtcs\amateigados.jpeg',
  unit: '1 Kg',
  price: 60.0,
  description: 'Biscoito Amanteigado',
);
ItemModel bombas = ItemModel(
  itemName: 'Bombas',
  imgUrl: 'assets\produtcs\bombas.jpg',
  unit: '1 Kg',
  price: 60.0,
  description: 'Bomba de Chocolate',
);
ItemModel brownie = ItemModel(
  itemName: 'Brownie',
  imgUrl: 'assets\produtcs\brownie.jpg',
  unit: '1 Kg',
  price: 60.0,
  description: 'Brownie de Chocolate',
);
ItemModel goiabinha = ItemModel(
  itemName: 'Goiabinha',
  imgUrl: 'assets\produtcs\goiabinha.jpeg',
  unit: '1 Kg',
  price: 60.0,
  description: 'Goiabinha Amanteigado',
);

List<ItemModel> items = [
  amanteigados,
  bombas,
  brownie,
  goiabinha,
];

List<String> categories = [
  'Amanteigados',
  'Bombas',
  'Brownies',
  'Goiabinhas',
];
