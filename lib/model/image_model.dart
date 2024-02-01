class ImageModel
{
  String? i1,i2,i3,i4,i5,i6,i7,i8,i9,i10;
  ImageModel.data({required this.i1,required this.i2,required this.i3,required this.i4,required this.i5,required this.i6,required this.i7,required this.i8,required this.i9,required this.i10});
  factory ImageModel.setImage(Map m1)
  {
    return ImageModel.data(i1: m1["1"], i2: m1["2"], i3: m1["3"], i4: m1["4"], i5: m1["5"], i6: m1["6"], i7: m1["7"], i8: m1["8"], i9: m1["9"], i10: m1["10"]);
  }
  ImageModel();
}
