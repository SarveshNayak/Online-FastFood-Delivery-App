class Note{

  String _item;
  int _quantity;
  int _rate;
  
  Note(this._item,this._quantity,this._rate);

  Note.one(this._item,this._quantity,this._rate);

  String get item =>_item;
  int get quantity =>_quantity;
  int get rate =>_rate;

  set item(String newItem){
    if(1==1){
      this._item = newItem;
    }
  }

  set quantity(int newQuantity){
    if(newQuantity<=10000){
      this._quantity=newQuantity;
    }
  }

  set rate(int newRate){
    if(newRate<=10000){
      this._rate=newRate;
    }
  }

  Map<String,dynamic>toMap(){

    var map=Map<String,dynamic>();
    map['item']=_item;
    map['quantity']=_quantity;
    map['rate']=_rate;
    return map;
  }
  
  Note.fromMapObject(Map<String,dynamic>map){
    this.item=map['item'];
    this.quantity=map['quantity'];
    this.rate=map['rate'];
  }

}