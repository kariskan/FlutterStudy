flutter 2.0
=
null safety 의 배경
--
- 변수들은 절대로 null 값을 가질 수 없다. 그래서 변수들을 생성할 때 null safety 를 default로 적용하자.

null safety
--
1. 모든 변수는 null이 될 수 없으며, non-nullable 변수에는 null 값을 할당할 수 없다.
2. non-nullable 변수를 위한 null check 가 필요 없다.
3. Class 내의 non-nullable 변수는 반드시 선언과 동시에 초기화를 시켜야 한다.

? - question mark
--
컴파일러에게 변수에 null 값이 들어올 수도 있다는 것을 알려준다.   
```int? age;```

late
--
```
class Person{
  int age;
  int sum(int age, int num){
    this.age = age;
    int total = age + num;
    return total + age;
  }
}

void main() {
  Person p = Person();
  print(p.sum(100, 50));
}
```
위 코드는 main 메서드 내에서 p 인스턴스가 생성되고, 이를 통해 호출된 sum 메서드가 print 메서드로 출력될 때 age 변수의 값이 할당된다.   
즉, 선언과 동시에 변수값이 할당되는 것이 아니라 나중에 할당 되어야 하는 경우이다.   
이 때는 변수의 타입앞에 late 키워드를 입력한다.<br><br>
```late int age;```<br><br>
dart에게 추후에 변수값을 초기화 하겠다고 알려주는 키워드이다.

! - Exclamation mark
--
```
void main() {
  int x = 50;
  int? y;
  if (x > 0) {
    y = x;
  }
  int value = y;
  print(value);
}
```
위 코드에서 nullable int 타입의 y 변수는 int 타입의 value 변수에 할당될 수 없다고 컴파일 에러가 발생한다.   
즉 nullable 변수는 non-nullable 변수에 할당될 수 없다는 것이다.   
그래서 dart에게 nullable 변수 y는 항상 non-nullable 값을 가질것 이라는 것을 알려주어야 한다.<br><br>
```int value = y!;```

required
--
```
void main() {
  print(add());
}

int add({int a, int b}) {
  int sum = a + b;
  return sum;
}
```
위 코드는 null safety를 적용했을 때 add 메서드의 인자값에 컴파일 에러가 발생한다.   
add 메서드의 인자값은 int 형으로 null 변수를 가질 수 없는 타입이기 때문이다.   
이 때 타입앞에 required 키워드를 추가해준다.<br><br>
```int add({required int a, required int b})```<br><br> 
이 때 반드시 add 메서드에 인자값을 전달해 주어야 한다는 의미이므로<br><br>
```print(add());```<br><br>
코드에서 오류가 발생한다.   
여기서 두 개의 인자 값 중에 하나만 전달되거나,<br><br>
```print(add(a:4));```<br><br>
둘 중 하나라도 null 값이 전달되면<br><br>
```print(add(a: 4, b: null));```<br><br>
컴파일 에러가 발생한다.   

lazy initialization
--
```
class Person {
  int age = calculation();
  void printAge() {
    print('age');
  }
}

int calculation() {
  print('calculate');
  return 30;
}

void main() {
  Person p = Person();
  p.printAge();
  print(p.age);
}
```
위 코드를 실행시키면   
```
calculate
age
30
```   
이 출력된다.   
여기서 late 키워드를 추가해 ```late int age = calculation();``` 으로 변경하면   
main 메서드에서 p 인스턴스를 생성할 때 calculation 메서드는 실행하지 않는다.   
다시 말하자면 age 변수가 처음으로 참조될 때 실행된다.   
따라서 출력은   
```
age
calculate
30
```   
이 출력된다.   
이것을 lazy initialization 이라고 하고, 변수의 초기화가 느리게 갱신된다는 뜻이다.   

null safety migration
--
```dart pub outdated --mode=null-safety```   
사용했던 dependencies 들을 null safety를 지원하는 버전으로 업데이트가 가능한 지 알 수 있다.<br><br>
```dart pub upgrade --null-safety```   
사용했던 dependencies 들을 null safety를 지원하는 버전으로 업그레이드 한다.<br><br>
마지막으로 ```dart pub get``` 명령어를 실행해 동기화한다.<br><br>
```dart migrate```   
를 입력하면 terminal 에 링크가 하나 띄워진다.   
링크를 클릭하면 브라우저를 통해서 migration 진행할 수 있는 페이지로 이동하고, 변경되어야 할 내용을 알려준다.<br><br>
모든 변경이 끝나고 return with changes 버튼을 누르면 코드가 변경된다.
