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
![win](https://github.com/newJunsung/ios-rock-scissor-paper/assets/142188004/39f69d1f-af09-4f90-b659-4d4a871d0f9f)



- **패배**
![lose](https://github.com/newJunsung/ios-rock-scissor-paper/assets/142188004/79a5997b-6f8b-4e8d-9d64-3d5da1debc3a)

- **입력 오류**
![error](https://github.com/newJunsung/ios-rock-scissor-paper/assets/142188004/bd8642fe-119f-45cd-a685-eb47c1b8f9b7)

- **종료**
![exit](https://github.com/newJunsung/ios-rock-scissor-paper/assets/142188004/322a7965-feea-4502-9e5c-fd72d8b9c243)


### 묵찌빠
- **승리**
![PlayerWin](https://github.com/newJunsung/ios-rock-scissor-paper/assets/142188004/ced78369-d1d4-44c6-a69c-058c351b1b81)

- **패배**
![ComputerWin](https://github.com/newJunsung/ios-rock-scissor-paper/assets/142188004/c1f5c275-160e-4d55-8e45-52e6ed515d02)



- **입력 오류**
![InputError](https://github.com/newJunsung/ios-rock-scissor-paper/assets/142188004/dd418627-f582-4df0-a763-a6fff9b41927)


- **종료**
![GameExit](https://github.com/newJunsung/ios-rock-scissor-paper/assets/142188004/305e6684-0c77-467f-9a8c-a1ee9e546907)


[목차로 이동](#목차zap)

## 고민한점:astonished:
* Comparable를 이용한 상성 관계 표현
 <img width="550" alt="스크린샷 2023-09-08 오후 3 47 40" src="https://github.com/newJunsung/ios-rock-scissor-paper/assets/142188004/97fed147-62c4-4a60-beb3-40bea72136d3">
  <br>
가위바위보 프로젝트를 진행하면서 가위바위보의 상성 관계를 어떻게 구현할 것 인가에 대한 고민을 많이 했었다. 처음엔 숫자로 조건을 분기하여 상성 관계를 구현했지만,
Comparable Protocol을 사용해서 상성 관계를 구현하여 코드가 간결해지고 가독성이 더 좋아졌고, 가위바위보 프로젝트에 이어 묵찌빠 프로젝트를 사용할 때에도 상성 관계를 이용하여 코드를 더욱 쉽게 작성할 수 있었다.

[목차로 이동](#목차zap)
