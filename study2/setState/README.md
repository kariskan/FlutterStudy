setState() 이란?
==

- ```setState()``` 함수 안에서의 호출은 ```State``` 에서 무언가 변경된 사항이 있음을 ```Flutter Framework``` 에 알려주는 역할이다.
- 이로 인해 ```UI``` 에 변경된 값이 반영될 수 있도록 ```build``` 메소드가 다시 실행된다.

예제
--

아래는 버튼을 누르면 count가 1씩 증가되도록 만든 코드이다.

```dart
lass _ZeddPageState extends State<ZeddPage> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(children: [
      Text("$count"),
      CupertinoButton(child: Text("버튼 제목"), onPressed: this.incrementCounter)
    ]));
  }

  void incrementCounter() {
    setState(() {
      this.count++;
    });
  }
}
```

- ```setState()``` 를 사용하지 않고 count를 증가시키면 ```build``` 메소드가 다시 호출되지 않으므로, UI가 변경되지 않는다.




