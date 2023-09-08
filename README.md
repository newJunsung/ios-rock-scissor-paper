# 묵찌빠 프로젝트 :fist::v::hand:
### 목차:zap:
- [팀원](#팀원sunglasses)
- [파일구조](#파일구조file_folder)
- [흐름도](#흐름도ocean)
- [실행화면](#실행화면video_game)
- [고민한점](#고민한점astonished)


## 팀원:sunglasses:

| 프로필 사진 | <img src="https://avatars.githubusercontent.com/u/107932188?v=4" width="90" height="90"> | <img src="https://avatars.githubusercontent.com/u/142188004?v=4" width="90" height="90"> |
| ---- | ----------- | --------- |
| in Github | @newJunsung | @SimJaeHyeok |
| in SeSAC | 뉴준성 | JaeHyeok |

[목차로 이동](#목차zap)

## 파일구조:file_folder:
- RockPaperScissors
  + BattleResult.swift
  + main.swift
  + PlayingGameException.swift
  + RockPaperScissors.swift
  + RockPaperScissors.swift

[목차로 이동](#목차zap)

## 흐름도:ocean:
```mermaid
flowchart LR

A[Input] -->B[battle]
B --> C{BattleResult}
C -->|Win| D[Player turn]
C -->|Lose| E[Computer turn]
C -->|Draw| A
D --> F[Input]
E --> F[Input]
F --> G[Battle]
G --> H{BattleResult}
H --> |Draw| I[Turn owner win!]
H --> |Win, Player turn| F
H --> |Lose, Computer turn| F
```

[목차로 이동](#목차zap)

## 실행화면:video_game:
### 가위바위보
- **승리**
<img width="976" alt="스크린샷 2023-09-08 오후 3 35 42" src="https://github.com/newJunsung/ios-rock-scissor-paper/assets/107932188/40e00d7c-0609-4275-8caa-877cac5bc308">

- **패배**
<img width="976" alt="스크린샷 2023-09-08 오후 3 34 57" src="https://github.com/newJunsung/ios-rock-scissor-paper/assets/107932188/239cc454-02e8-4fdb-9c9c-41c20ea0a78a">

- **입력 오류**
<img width="976" alt="스크린샷 2023-09-08 오후 3 41 59" src="https://github.com/newJunsung/ios-rock-scissor-paper/assets/107932188/40f72d48-90fc-4c3d-9fc9-7d530502e05b">

- **종료**
<img width="976" alt="스크린샷 2023-09-08 오후 3 35 30" src="https://github.com/newJunsung/ios-rock-scissor-paper/assets/107932188/0f380d66-8730-407b-8a78-3b260726ebed">

### 묵찌빠
- **승리**
<img width="976" alt="스크린샷 2023-09-08 오후 3 38 22" src="https://github.com/newJunsung/ios-rock-scissor-paper/assets/107932188/5c54bee0-a294-4ce1-ac44-72d93d2683de">

- **패배**
<img width="976" alt="image" src="https://github.com/newJunsung/ios-rock-scissor-paper/assets/107932188/12f8768a-b595-47f5-b8c4-7949d5449803">

- **입력 오류**
<img width="976" alt="image" src="https://github.com/newJunsung/ios-rock-scissor-paper/assets/107932188/2bc86083-76ac-4a7a-8161-242f4d043a51">

- **종료**
<img width="976" alt="image" src="https://github.com/newJunsung/ios-rock-scissor-paper/assets/107932188/dc63ad13-99b1-4791-bff2-169e020dfdd9">

[목차로 이동](#목차zap)

## 고민한점:astonished:
* Comparable를 이용한 상성 관계 표현
 <img width="550" alt="스크린샷 2023-09-08 오후 3 47 40" src="https://github.com/newJunsung/ios-rock-scissor-paper/assets/142188004/97fed147-62c4-4a60-beb3-40bea72136d3">
  <br>
가위바위보 프로젝트를 진행하면서 가위바위보의 상성 관계를 어떻게 구현할 것 인가에 대한 고민을 많이 했었다. 처음엔 숫자로 조건을 분기하여 상성 관계를 구현했지만,
Comparable Protocol을 사용해서 상성 관계를 구현하여 코드가 간결해지고 가독성이 더 좋아졌고, 가위바위보 프로젝트에 이어 묵찌빠 프로젝트를 사용할 때에도 상성 관계를 이용하여 코드를 더욱 쉽게 작성할 수 있었다.

[목차로 이동](#목차zap)
