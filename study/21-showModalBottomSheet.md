# showModalBottomSheet
```

showModalBottomSheet에서는 context 속성과 builder 속성이 필요하다.   
builder속성에서는 Widget을 반환하고, 그 위젯이 아래에서 위로 떠오르는 Bottom모달 창이 완성된다.

## showModalBottomSheet 내부의 위젯에서 setState 사용법
여기서 쓰이는 BottomSheet은 StatefulWidget 위젯의 일부가 아니다.   
그래서 빌더에 StatefulWidget을 전달하거나 StatefulBuilder를 사용하여 이를 수행한다.


showModalBottomSheet(
                          context: context,
                          builder: (context) {
                            return StatefulBuilder(
                              builder:
                                  (BuildContext context, StateSetter setState) {
                                return Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        CupertinoButton(
                                          padding:
                                              EdgeInsets.fromLTRB(30, 10, 30, 10),
                                          color: Colors.red[200],
                                          child: Text(
                                            'abcde',
                                          ),
                                          onPressed: () {
                                            setState(() {
                                              Fluttertoast.showToast(
                                                msg: 'Button is clicked',
                                                toastLength: Toast.LENGTH_SHORT,
                                              );
                                            });
                                          },
                                        ),
                                      ],
                                    ),
                                  ],
                                );
                              },
                            );
                          },
                        );
```
