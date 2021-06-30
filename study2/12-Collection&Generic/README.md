Collection
==
* 데이터들을 모아서 가지고 있는 자료구조

Generic
==
* Collection이 가지고 있는 데이터들의 데이터 타입을 지정
* Generic 기법을 사용한 코드가 그렇지 않은 코드보다 훨씬 간결하고 보기편함.
 
Generic 기법 사용(x)
--
```dart
class Circle{}
class Square{}

class SquareSlot{
  insert(Square sqareSlot){
    
  }
}
class CircleSlot{
  insert(Circle circleSlot){
   
  }
}

void main(){
  var circleSlot = new CircleSlot();
  
  circleSlot.insert(new Circle());
  
  var squareSlot = new SquareSlot();
  
  squareSlot.insert(new Square());
}
```

Generic 기법 사용(o)
--
```dart
 void main(){
  
  var circleSlot = new Slot<Circle>();
  circleSlot.insert(new Circle());
  
  var squareSlot=new Slot<Square>();
  squareSlot.insert(new Square());
}

class Circle{}
class Square{}

class Slot<T>{
  insert(T shape){
  }  
}
```

 
 

