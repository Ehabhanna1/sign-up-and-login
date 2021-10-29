class DataModel{

int id,userId;
String title,body;

DataModel({required this.id,required this.userId,required this.title,required this.body});
factory DataModel.fromMap(Map<String,dynamic>map){
  return DataModel(
      userId : map["userId"] as int,
      id: map["id"] as int,
      title: map["title"] as String,
      body: map["body"] as String);
}
Map <String,dynamic>toMap(){
  return {
    "userId":this.userId,
    "id":this.id,
    "title":this.title,
    "body":this.body,

  } as Map<String,dynamic>;
}
}