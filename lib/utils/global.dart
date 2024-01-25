import '../model/image_model.dart';

List <Map> festivals=[
  {"image":"assets/image/festivals/diwali/1.jpg","name":"Diwali"},
  {"image":"assets/image/festivals/new_year/1.jpg","name":"New Year"},
  {"image":"assets/image/festivals/holi/1.jpg","name":"Holi"},
  {"image":"assets/image/festivals/makar/1.jpg","name":"Makar Sankantri"},
  {"image":"assets/image/festivals/bhai/1.jpg","name":"Bhai Dooj"},
  {"image":"assets/image/festivals/raksha/1.jpg","name":"Rakshabandhan"},
  {"image":"assets/image/festivals/maha/1.jpg","name":"Maha Shivratri"},
  {"image":"assets/image/festivals/ram/1.jpg","name":"Ram Navmi"},
  {"image":"assets/image/festivals/krishna/1.jpg","name":"Janmashtami"},
  {"image":"assets/image/festivals/25/1.jpg","name":"Christmas"},
];
List<Map> image=[
  {"1":"assets/image/festivals/diwali/1.jpg","2":"assets/image/festivals/diwali/2.jpg","3":"assets/image/festivals/diwali/3.jpg","4":"assets/image/festivals/diwali/4.jpg","5":"assets/image/festivals/diwali/5.jpg","6":"assets/image/festivals/diwali/6.jpg","7":"assets/image/festivals/diwali/7.jpg","8":"assets/image/festivals/diwali/8.jpg","9":"assets/image/festivals/diwali/9.jpg","10":"assets/image/festivals/diwali/10.jpg"},
  {"1":"assets/image/festivals/new_year/1.jpg","2":"assets/image/festivals/new_year/2.jpg","3":"assets/image/festivals/new_year/3.jpg","4":"assets/image/festivals/new_year/4.jpg","5":"assets/image/festivals/new_year/5.jpg","6":"assets/image/festivals/new_year/6.jpg","7":"assets/image/festivals/new_year/7.jpg","8":"assets/image/festivals/new_year/8.jpg","9":"assets/image/festivals/new_year/9.jpg","10":"assets/image/festivals/new_year/10.jpg"},
  {"1":"assets/image/festivals/holi/1.jpg","2":"assets/image/festivals/holi/2.jpg","3":"assets/image/festivals/holi/3.jpg","4":"assets/image/festivals/holi/4.jpg","5":"assets/image/festivals/holi/5.jpg","6":"assets/image/festivals/holi/6.jpg","7":"assets/image/festivals/holi/7.jpg","8":"assets/image/festivals/holi/8.jpg","9":"assets/image/festivals/holi/9.jpg","10":"assets/image/festivals/holi/10.jpg"},
  {"1":"assets/image/festivals/makar/1.jpg","2":"assets/image/festivals/makar/2.jpg","3":"assets/image/festivals/makar/3.jpg","4":"assets/image/festivals/makar/4.jpg","5":"assets/image/festivals/makar/5.jpg","6":"assets/image/festivals/makar/6.jpg","7":"assets/image/festivals/makar/7.jpg","8":"assets/image/festivals/makar/8.jpg","9":"assets/image/festivals/makar/9.jpg","10":"assets/image/festivals/makar/10.jpg"},
  {"1":"assets/image/festivals/bhai/1.jpg","2":"assets/image/festivals/bhai/2.jpg","3":"assets/image/festivals/bhai/3.jpg","4":"assets/image/festivals/bhai/4.jpg","5":"assets/image/festivals/bhai/5.jpg","6":"assets/image/festivals/bhai/6.jpg","7":"assets/image/festivals/bhai/7.jpg","8":"assets/image/festivals/bhai/8.jpg","9":"assets/image/festivals/bhai/9.jpg","10":"assets/image/festivals/bhai/10.jpg"},
  {"1":"assets/image/festivals/raksha/1.jpg","2":"assets/image/festivals/raksha/2.jpg","3":"assets/image/festivals/raksha/3.jpg","4":"assets/image/festivals/raksha/4.jpg","5":"assets/image/festivals/raksha/5.jpg","6":"assets/image/festivals/raksha/6.jpg","7":"assets/image/festivals/raksha/7.jpg","8":"assets/image/festivals/raksha/8.jpg","9":"assets/image/festivals/raksha/9.jpg","10":"assets/image/festivals/raksha/10.jpg"},
  {"1":"assets/image/festivals/maha/1.jpg","2":"assets/image/festivals/maha/2.jpg","3":"assets/image/festivals/maha/3.jpg","4":"assets/image/festivals/maha/4.jpg","5":"assets/image/festivals/maha/5.jpg","6":"assets/image/festivals/maha/6.jpg","7":"assets/image/festivals/maha/7.jpg","8":"assets/image/festivals/maha/8.jpg","9":"assets/image/festivals/maha/9.jpg","10":"assets/image/festivals/maha/10.jpg"},
  {"1":"assets/image/festivals/ram/1.jpg","2":"assets/image/festivals/ram/2.jpg","3":"assets/image/festivals/ram/3.jpg","4":"assets/image/festivals/ram/4.jpg","5":"assets/image/festivals/ram/5.jpg","6":"assets/image/festivals/ram/6.jpg","7":"assets/image/festivals/ram/7.jpg","8":"assets/image/festivals/ram/8.jpg","9":"assets/image/festivals/ram/9.jpg","10":"assets/image/festivals/ram/10.jpg"},
  {"1":"assets/image/festivals/krishna/1.jpg","2":"assets/image/festivals/krishna/2.jpg","3":"assets/image/festivals/krishna/3.jpg","4":"assets/image/festivals/krishna/4.jpg","5":"assets/image/festivals/krishna/5.jpg","6":"assets/image/festivals/krishna/6.jpg","7":"assets/image/festivals/krishna/7.jpg","8":"assets/image/festivals/krishna/8.jpg","9":"assets/image/festivals/krishna/9.jpg","10":"assets/image/festivals/krishna/10.jpg"},
  {"1":"assets/image/festivals/25/1.jpg","2":"assets/image/festivals/25/2.jpg","3":"assets/image/festivals/25/3.jpg","4":"assets/image/festivals/25/4.jpg","5":"assets/image/festivals/25/5.jpg","6":"assets/image/festivals/25/6.jpg","7":"assets/image/festivals/25/7.jpg","8":"assets/image/festivals/25/8.jpg","9":"assets/image/festivals/25/9.jpg","10":"assets/image/festivals/25/10.jpg"},
];
List<ImageModel> model=[];
void use()
{
  model=image.map((e) => ImageModel.setImage(e)).toList();
}