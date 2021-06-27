Row Widget(행 위젯)
--
기본적인 사용법은 간단하다. Row를 하나 선언하고, 자식 요소를 넣으면 된다.

```dart
Row(
  children: [
    FlutterLogo(),
    Text('Hello, Flutter Beginner!'),
    Icon(Icons.sentiment_very_satisfied),
  ]
)
```
이렇게 하면 아래 이미지와 같은 레이아웃이 형성된다.

![image](https://user-images.githubusercontent.com/74492426/123543904-bd393100-d78b-11eb-86ac-6f797662a773.png)

**mainAxisAlignment** 속성을 사용하면 주 축을 기준으로 정렬을 수정하는 것이 가능하며, 교차 축 정렬은 **crossAxisAlignment** 속성을 사용할 수 있다.

```dart
Row(
  mainAxisAlignment: MainAxisAlignment.center, // 주 축 기준 중앙
  crossAxisAlignment: CrossAxisAlignment.center, // 교차 축 기준 중앙
  children: [
    FlutterLogo(),
    Text('Hello, Flutter Beginner!'),
    Icon(Icons.sentiment_very_satisfied),
  ]
)
```

MainAxisAlignment
--
주 축 정렬을 수정 할 때 사용하는 ```enum``` 이다.
* ```start``` - 시작 정렬
* ```end``` - 끝 정렬
* ```center``` - 중앙 정렬
* ```spaceAround``` - 중간 여백은 동일하나, 첫번째와 마지막 여백은 중간 여백의 절반
* ```spaceBetween``` - 양 끝은 붙이고, 중간 여백만 동일하게
* ```spaceEvenly``` - 첫번째, 중간, 마지막 여백이 모두 동일하게

crossAxisAlignment
--
교차 축 정렬을 수정할 때 사용하는 ```enum```이다.
* ```start``` - 시작 정렬
* ```end``` - 끝 정렬
* ```center``` - 중앙 정렬
* ```stretch``` - 가능한 크기만큼 자식 요소의 크기를 키운다.

```dart
Row(
  children: <Widget>[
    Expanded(
      child: FlutterLogo()
    ),
    Expanded(
      child: Text('Hello, Flutter Beginner!')
    ),
    Expanded(
      child: Icon(Icons.sentiment_very_satisfied),
    )
  ]
)
```
이렇게 하면 세개의 자식이 서로 같은 너비를 가지면서 배치된다.

![image](https://user-images.githubusercontent.com/74492426/123544542-b829b100-d78e-11eb-89fb-45eb416339db.png)

Column Widget(열 위젯)
---
Column 위젯은 Row 위젯과 거의 동일하다. 다만 주 축이 수평이 아니라 수직일 뿐이다. 대부분의 사용법은 Row와 동일하다.

```dart
Column(
  children: [
    FlutterLogo(),
    Text('Hello, Flutter Beginner!'),
    Icon(Icons.sentiment_very_satisfied),
  ]
)
```
이렇게 하면 아이템들이 수평이 아니라 수직으로 정렬된다.

![image](https://user-images.githubusercontent.com/74492426/123544581-f0c98a80-d78e-11eb-9c55-b8268f1b514d.png)

수직으로 정렬되는 아이템들을 Row와 마찬가지로 **MainAxis*와 **CrossAxis**를 이용해서 수정이 가능하다, 한가지 주의해야 할 점은 이제 **MainAxis**가 수직을 기준으로 정렬하고 **CrossAxis**가 수평을 기준으로 정렬한다는 것이다.

예를 들어 MainAxisAlignment를 center로 하면,
```dart
Column(
  mainAxisAlignment: MainAxisAlignment.center, // 주 축 기준 중앙
  children:[
    FlutterLogo(),
    Text('Hello, Flutter Beginner!'),
    Icon(Icons.sentiment_very_satisfied),
  ]
)
```
아래 이미지와 같은 결과물이 나온다.

![image](https://user-images.githubusercontent.com/74492426/123544660-46059c00-d78f-11eb-98e7-8177d0fe76ec.png)

따라서 Row 위젯과 Column 위젯을 사용할 때에는 주 축이 어떤 방향인 지, 어떤 식으로 활용 가능한 지 고민해가면서 작성하는 것이 중요하다.

ex)
```dart
Row(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children: [
    Column(
      children: [
        Icon(Icons.call),
        Text('전화')
      ],
    ),
    Column(
      children: [
        Icon(Icons.directions),
        Text('경로')
      ],
    ),
    Column(
      children: [
        Icon(Icons.share),
        Text('공유')
      ],
    )
  ],
),
```

![image](https://user-images.githubusercontent.com/74492426/123544773-c7f5c500-d78f-11eb-94fa-15bd758c4bd5.png)



