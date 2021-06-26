Page Design
=====
Padding Widget
----
어떤 특정 지점으로부터 사용하고자 하는 Widget이 떨어져 있는 거리를 지정할 떄 사용한다.   
Padding(padding: EdgeInsets.fromLTRB(left, top, right, bottom)   

mainAxisAlignment 속성
----
앱 스크린 내에서 Widget들을 세로로 정렬할 때 사용한다.   
Column은 위젯들을 세로로만 정렬하지만 mainAxisAlignment는 위젯을 앱 스크린 내에서 세로축으로 상단, 중간, 하단 등으로 정렬할 때 사용된다.   
   
Center Widget은 Child Widget을 단순히 정 중앙에 위치시킨다고 생각하지만, 그렇지 않는 경우도 있다.   
그 예가 Center Widget과 Column Widget이 만날때이다.   
![KakaoTalk_20210531_223741668](https://user-images.githubusercontent.com/73534426/120208718-c4425180-c268-11eb-97af-d50d2c1fd0db.png) (이미지 출처: 유튜브 코딩셰프)
 
   
위의 이미지는 Column Widget 내에서 Child Widget으로 Text Widget을 만들고 실행시킨 모습이다.   
Column Widget은 특별한 제약을 가지고 있다. 그림에서 보다시피,   
가로축 상으로는 제약이 있지만, 세로축 상으로는 제약이 없다.      
   
그래서 Column Widget과 Center Widget이 만나면 Center Widget은 Column Widget에 자식들에 대한 세로축 위치에 대해서는 관여하지 않고,   
현재 Column Widget에 자식 Widget, 세로축 높이에 자동으로 고정된다.   
   
정리하자면 Widget들을 가로축 상으로 정 중앙에 위치시키려면 Center Widget이 필요하고, 세로축 상으로 정 중앙에 위치시키려면 mainAxisAlignment Widget이 필요하다.   
추가로 crossAxisAlignment는 Column내의 모든 Widget들을 정렬한다.
   
SizedBox Widget
------- 
눈에는 안보이는 Box형태의 Widget을 집어넣어서 Widget과 Widget사이에 간격을 설정해준다.   
속성으로는 width, height 등이 있다.   

Divider Widget
--------
수평선을 그림으로써 아래와 위를 구분짓게 하고,   
height속성은 아래 Widget과 위 Widget으로 얼마나 떨어져 있는지를 나타낸다.   
예로, height: 60.0 이면 아래로 30.0, 위로 30.0 만큼 떨어져 있다.   

이미지 파일 삽입
-------
pubspec.yaml 파일에서 assets: 부분을 수정한다.   
여기서 주의해야할 점은 yaml 확장자 파일은 파이썬과 같이 indentation(들여쓰기)에 주의해야한다.
<pre><code>
assets:
  - assets/file_name.확장자 #파일경로
</code></pre>
