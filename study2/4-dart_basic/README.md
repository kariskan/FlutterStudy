기존
--

Person안에 (String name,int age,String sex) 로만 되어 있다면 모든 값을 지정 해 줘야 하지만

({String name,int age,String sex})로 감싸준다면 원하는 값만 지정해 줄 수 있다.

```dart

class Person{
  String name;
  int age;
  String sex;
  
  Person(String name,int age,String sex){ // => ({String name,int age,String sex})
    this.name=name;
    this.age=age;
    this.sex=sex;
  }
}

void main(){
  Person p1=new Person(age:30);
  Person p2=new Person(sex:'male');
  print(p1.age);
  print(p2.sex);
}
```

변경(2021.07.04)
--
위 까지가 이전 버전의 코드이고 flutte가 2.x 이상의 버전으로 업데이트 됨에 따라 우리가 기존에 익숙했던
```dart
class ExampleData{
  String title;
  Widget route;
   ExampleData({this.title, this.route});
  }
```
이와 같은 코드는 더 이상 사용할 수 없게 되었다.

대신 아래와 같이 required를 사용하거나 null값이 들어갈 수 있다고 표시를 해주거나 deafult값을 주어야 한다.
```dart
//먼저 required를 사용하는 방법으로
class ExampleData{
  String title;
  Widget route;
  
  ExampleData({required this.title, required this.route});
  //@required가 아닌 required입니다
 }
 
 //Null값이 들어갈 수 있을 땐 ?를 붙여준다.
 class ExampleData{
  String? title;
  Widget? route;
  
  ExampleData({this.title, this.route});
}
  
//초기값 부여
class ExampleData{
  String title;
  Widget route;
  
  ExampleData({this.title = '', this.route = const Spacer()});
}
  





