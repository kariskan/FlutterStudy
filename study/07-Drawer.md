Drawer
==========
<img width="223" alt="깃" src="https://user-images.githubusercontent.com/73534426/123792121-3ca93a80-d91b-11eb-8e08-49cc230677a3.PNG">   
이미지 출처: 유튜브 코딩셰프<br><br>

ListView
---------
- Drawer 위젯은 child속성으로 ListView 위젯을 가질 수 있다.      
- ListView 란? -> 세로방향으로 여러줄 형태로 요소들을 보여주며,      
복수의 위젯을 나열하는 위젯 리스트가 children 속성을 통해서 호출된다.   
- 이 때 리스트의 한 줄 한 줄을 ListTile이라고 한다.      
- ListTile 안에서도 각 요소의 배치가 필요하다.   

UserAccountsDrawerHeader
---------------
- Drawer 위젯 최상단에 사용자의 정보를 나타내는 위젯이다.
- currentAccountPicture 속성: 사용자의 대표적인 이미지 속성.
- otherAccountsPictures 속성: 다른 사용자의 이미지 속성.
- accountName, accountEmail 속성 등이 있다.
- onDetailsPressed 속성: 이벤트 속성 중 하나로 속성 값으로 함수를 실행시킨다.<br>
생김새는 작은 화살표 표시로 추가적인 정보를 나타낼 때 쓰인다.

ListTile
--------
- Drawer 위젯 안의 내용을 한 줄 한 줄 표현한다.
- leading 속성: 아이콘 버튼이나 간단한 위젯을 왼쪽에 배치할 때 사용
- onTap과 onPressed 속성: 기능은 거의 동일하다.   
onPressed는 보통 버튼에 사용되며, onTap은 어떤 동작에 반응하는 이벤트를 위해서 사용된다.
