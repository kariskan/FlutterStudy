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
