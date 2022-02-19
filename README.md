## Inspiration
The inspiration came from an art student who needed to use Arduino and sensors to create an interactive art installation during a term-end exhibition. However, in the process they encountered many circuit wiring problems, all of which are very basic. Therefore, I want to make a prototype through this puzzle game hack to see if it can be applied to teaching.

靈感來自於，在一次學期末的展覽時，藝術系的學生需要使用Arduino與感測器來做出可互動的藝術裝置。然而在過程當中他們遇到了許多電路接線的問題，都是很基本的問題。因此我才想透過此次的puzzle game hack做出一個prototype看看是否能夠應用於教學上。
## What it does
It is a circuit puzzle game. In the process of playing, you need to connect the IO pins that cooperate with each other. When you connect incorrectly, a message box will pop up to tell you what errors may occur when you connect incorrectly.

他是一個電路puzzle game, 在遊玩的過程中，你需要將互相配合的io腳位連接起來，當你連接錯誤時，會有訊息盒跳出來告訴你當接錯時可能發生什麼錯誤。
## How we built it
The game consists of eight squares moving in nine grids. Currently there is only one level, which is the wiring diagram of Wemos D1 mini and BNO055 (IMU) inertial sensor. Players need to connect each IO pin according to the correct wiring diagram to learn the basics. circuit knowledge.

遊戲由八個方塊在九個格子裡面移動，目前只有一個關卡，是Wemos D1 mini 與 BNO055 (IMU) 慣性感測器的接線示意圖，玩家需要依照正確的接線圖連接各個IO腳位，學習基礎的電路知識。
## Challenges we ran into
Since I only have a background in mechanics and multimedia, I used to develop VR applications mostly through Unity. I have only used Flutter and Firebase to implement an app that displays patient physiological information before, so I am a complete rookie. First, I read Pola's Code (https://www.youtube.com/watch?v=fDj6Eu- 5oZE&t=592s) Youtube video to learn how to develop a basic puzzle game with flutter. After that, I will judge through simple mathematical logic, under which conditions the VCC block and the GND block will be connected together and send out a teaching prompt message, etc.. . The process of developing by myself is very interesting and challenging, and I also benefit a lot from the knowledge of Flutter.

由於我是機械與多媒體的背景，過往大部分是透過Unity開發VR應用。之前只使用過Flutter與Firebase實做過一個顯示病人生理資訊的App，因此我算是完全的菜鳥吧，首先我是看了 Pola's Code (https://www.youtube.com/watch?v=fDj6Eu-5oZE&t=592s) 的Youtube影片學習如何開發一個基礎的puzzle game with flutter. 之後我再透過簡單的數學邏輯判斷，何種條件下VCC的方塊與GND方塊會連在一起並發出教學提示訊息等... 自己開發的過程覺得十分有趣也很有挑戰性，對於Flutter的知識也獲益良多。
## Accomplishments that we're proud of
STEM education is one of the most important educational policies today. However, there are currently only a few games related to circuit teaching on the market, and the gameplay and interface are not suitable for novices or people with no relevant background to play. Therefore, this puzzle game is a puzzle game that I think is a great help for students from elementary school and even university to learn basic circuit knowledge, which is our pride.

STEM的教育是現今重要的教育政策之一。然而目前市面上只有少數電路教學的相關遊戲，而且在遊玩與介面上並不適合新手或是沒有相關背景的人遊玩。因此這個 puzzle game 是一個我覺得不管對於國小甚至到大學的學生在學習基礎的電路知識有著重大的幫助是我們的驕傲。

## What we learned
Since I have no relevant background in computer science, and this is the second time I use Flutter to develop an app, during the process I asked many friends to discuss how to design a comparison that can be accepted by children. Of course, the current interface is still very simple, but I have also learned that it is necessary to Developing an app is not just about ideas, but also needs to communicate with people from different backgrounds, UI/UX, science educators, etc.. I think what I have learned the most is to accommodate many ideas, communicate with people, and filter out feasible solutions and actually do it.

由於沒有電腦科學的相關背景，並且這是第二次使用Flutter開發App，過程中我找了許多朋友討論怎麼設計比較可以讓小朋友接受，當然目前的介面還是很樸素的，但我也學習到了要開發一個App不只是有點子，還需要與不同背景的人相互溝通，UI/UX, 科學教育人員 etc.. ，我想我學到最多的是包容許多想法，與人溝通，篩選出可行的方案併實做出來。

## What's next for Circuit Puzzle for Arduino Sensors
In the next step, I hope to design the interface and puzzle blocks of the entire App to be more beautiful, and add other Arduino and sensor levels, and try to design some basic Temperature sensor, Flex sensor, Force sensor etc.. within the checkpoint. 

在接下來，希望能夠把整個App的介面與拼圖塊設計得更好看，並新增其他Arduino與感測器的關卡，盡量能將一些基礎的 Temperature sensor, Flex sensor, Force sensor etc.. 設計進關卡內。