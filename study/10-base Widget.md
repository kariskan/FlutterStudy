base Widget
=
Container
--
- Container 위젯은 '자식 위젯이 없을 경우' 페이지 내에서 가능한 최대의 크기를 차지한다(자식 위젯을 가질 경우 자식 위젯의 크기로 변경된다).
- 자식 위젯이 화면 밖으로 나간 경우, SafeArea 위젯을 사용한다.
- 오직 1개의 child 속성을 가진다.

Column
--
여러개의 위젯들을 세로로 나열한다.<br><br>
일반적으로 Column 위젯은 세로축 방향으로는 가능한 모든 공간을 차지한다. 하지만 가로축 방향으로는 children 속성 위젯들의 최대 크기만큼만 차지한다.<br><br>
여기서 Column 위젯은 세로축에 모든 공간을 차지해 버리기 때문에 Center 위젯으로 감싸도 세로축에 대한 통제권을 잃어버린다.<br><br>
그래서 세로축에 대한 통제를 위해 mainAxisAlignment 속성을 사용한다.<br><br>
- Column 위젯이 children 위젯들의 크기만큼만 차지하게 하려면 mainAxisSize: MainAxisSize.min 속성을 사용한다.
- 정렬 순서를 바꾸려면 verticalDirection 속성을 사용한다.
- 주어진 공간에 같은 간격으로 정렬하려면 mainAxisAlignment: MainAxisAlignment.spaceEvenly 속성을 사용한다.
- 스크린 상, 중, 하에 배치하려면 mainAxisAlignment: MainAxisAlignment.spaceBetween 속성을 사용한다.

레이아웃을 시각적으로 간편하게 보기 위한 사이트
<https://medium.com/flutter-community/flutter-layout-cheat-sheet-5363348d037e/>
