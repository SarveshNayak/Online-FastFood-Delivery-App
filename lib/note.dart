class Note{

  String _item;
  int _quantity;
  int _price;
  
  Note(this._item,this._quantity,this._price);

  Note.one(this._item,this._quantity,this._price);

  String get item=>_item;
  int get quantity=>_quantity;
  int get price=>_price;

  set item(String newItem){
    if(newItem.length <= 100){
      this._item=newItem;
    }
  }

  set quantity(int newQuantity){
    if(newQuantity<=10000){
      this._quantity=newQuantity;
    }
  }

  set price(int newPrice){
    if(newRate <= 10000){
      this._price=newPrice;
    }
  }

  Map<String,dynamic>toMap(){

    var map=Map<String,dynamic>();
    map['item']=_item;
    map['quantity']=_quantity;
    map['price']=_price;
    return map;
  }
  
  Note.fromMapObject(Map<String,dynamic>map){
    this.item=map['item'];
    this.quantity=map['quantity'];
    this.rate=map['price'];
  }

}