# 이벤트 발생 시 스크롤을 맨 위로 또는 맨 밑으로 이동


맨 위로 이동
--
```
SchedulerBinding.instance?.addPostFrameCallback((_) {
        scrollController!.animateTo(
            scrollController!.position.minScrollExtent,
            duration: const Duration(milliseconds: 400),
            curve: Curves.fastOutSlowIn);
      });
```

맨 밑으로 이동
--
```
SchedulerBinding.instance?.addPostFrameCallback((_) {
        scrollController!.animateTo(
            scrollController!.position.maxScrollExtent,
            duration: const Duration(milliseconds: 400),
            curve: Curves.fastOutSlowIn);
      });
```

먼저 스크롤을 컨트롤 할 해당 페이지의 controller 속성을 가진 위젯이 있어야한다.   
ScrollController형 변수를 하나 선언해주고, 해당 속성에 입력한다.
