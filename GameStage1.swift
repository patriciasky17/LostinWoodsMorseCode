//
//  GameStage1.swift
//  Mo(r)se
//
//  Created by Patricia Ho on 18/04/23.
//

import SwiftUI

struct ModalAView: View {
    @Binding var isActiveA: Bool
    @Binding var isActiveB: Bool
    
    var body: some View {
        VStack {
            GeometryReader { geometry in
                VStack {
                    Spacer()
                    
                    if #available(iOS 16.0, *) {
                        Text("Background Story")
                            .textCase(.uppercase)
                            .font(.system(size: 30))
                            .kerning(1)
                            .fontWeight(.semibold)
                            .padding()
                            .foregroundColor(Color.black)
                    } else {
                        Text("Background Story")
                            .font(.system(size: 40))
                            .padding()
                            .foregroundColor(Color.black)
                    }
                    
                    
                    Text("Once upon a time, you and your best friend decided to go on a hiking trip in the woods. You both were excited to explore the beautiful scenery and have a great adventure. However, things didn't go as planned, and before you knew it, you found yourselves lost in the dense forest.\n")
                    .multilineTextAlignment(.leading)
                    .frame(width: geometry.size.width * 0.6)
                    .foregroundColor(Color.black)
                    .cornerRadius(10)
                    
                    Text("As you wandered around, trying to find your way back to civilization, you stumbled upon an old abandoned cabin. Inside, you discovered an old radio with morse code capabilities. Excited by the discovery, you both decided to use it to signal for help. With no prior experience in morse code, you both fumbled around trying to figure out the right combinations of dots and dashes to send out a message. ")
                    .multilineTextAlignment(.leading)
                    .frame(width: geometry.size.width * 0.6)
                    .foregroundColor(Color.black)
                    .cornerRadius(10)
                    
                    Spacer()
                    Spacer()
                    
                    if #available(iOS 16.0, *) {
                        Button("CONTINUE") {
                            isActiveA = false
                            isActiveB = true
                        }
                        .frame(width: geometry.size.width * 0.6)
                        .padding()
                        .fontWeight(.semibold)
                        .kerning(1)
                        .background(Color.black)
                        .foregroundColor(Color.white)
                        .cornerRadius(10)
                        
                        
                    } else {
                        Button("CONTINUE") {
                            isActiveA = false
                            isActiveB = true
                        }
                        .frame(width: geometry.size.width * 0.6)
                        .padding()
                        .background(Color.black)
                        .foregroundColor(Color.white)
                        .cornerRadius(10)
                    }
                    
                    Spacer()
                    
                }
                .frame(width: geometry.size.width * 0.75, height: geometry.size.height * 0.5)
                .background(Color.white)
                .cornerRadius(20)
                .shadow(radius: 10)
                .position(x: geometry.size.width / 2, y: geometry.size.height / 2)
                
            }
        }
    }
}

struct ModalBView: View {
    @Binding var isActiveA: Bool
    @Binding var isActiveB: Bool
    
    var body: some View {
        VStack {
            GeometryReader { geometry in
                VStack {
                    Spacer()
                    
                    if #available(iOS 16.0, *) {
                        Text("Stage 1 : Sending Sign")
                            .textCase(.uppercase)
                            .font(.system(size: 30))
                            .kerning(1)
                            .fontWeight(.semibold)
                            .padding()
                            .foregroundColor(Color.black)
                    } else {
                        Text("Stage 1 : Sending Sign")
                            .font(.system(size: 30))
                            .padding()
                            .foregroundColor(Color.black)
                    }
                    
                    
                    Text("Send morse codes to your friend with the flashlight that you bring\n")
                    .multilineTextAlignment(.center)
                    .frame(width: geometry.size.width * 0.6)
                    .foregroundColor(Color.black)
                    .cornerRadius(10)
                    
                    if #available(iOS 16.0, *) {
                        Text("How to play")
                            .textCase(.uppercase)
                            .font(.system(size: 24))
                            .kerning(1)
                            .fontWeight(.semibold)
                            .padding()
                            .foregroundColor(Color.black)
                    } else {
                        Text("How to play")
                            .font(.system(size: 24))
                            .padding()
                            .foregroundColor(Color.black)
                    }
                    
                    Text("There will be a button here, tap for making a dot, and long press for at least one second to make a dash.")
                    .multilineTextAlignment(.center)
                    .frame(width: geometry.size.width * 0.6)
                    .foregroundColor(Color.black)
                    .cornerRadius(10)
                    
                    Spacer()
                    
                    HStack {
                        Spacer()
                        
                        VStack {
                            Circle()
                                .frame(width: 20, height: 20)
                                .foregroundColor(Color.black)
                            Text("Tap")
                                .font(.system(size: 20))
                                .padding()
                                .foregroundColor(Color.black)
                        }
                        
                        Spacer()
                        
                        VStack {
                            Rectangle()
                                .frame(width: 100, height: 20)
                                .foregroundColor(Color.black)
                            Text("Long press (1 sec)")
                                .font(.system(size: 20))
                                .padding()
                                .foregroundColor(Color.black)
                        }
                        
                        Spacer()
                    }
                    Spacer()
                    
                    if #available(iOS 16.0, *) {
                        Button("Start The Game") {
                            isActiveA = false
                            isActiveB = false
                        }
                        .textCase(.uppercase)
                        .frame(width: geometry.size.width * 0.6)
                        .padding()
                        .fontWeight(.semibold)
                        .kerning(1)
                        .background(Color.black)
                        .foregroundColor(Color.white)
                        .cornerRadius(10)
                        
                        
                    } else {
                        Button("Start The Game") {
                            isActiveA = false
                            isActiveB = false
                        }
                        .textCase(.uppercase)
                        .frame(width: geometry.size.width * 0.6)
                        .padding()
                        .background(Color.black)
                        .foregroundColor(Color.white)
                        .cornerRadius(10)
                    }
                    
                    Spacer()
                    
                }
                .frame(width: geometry.size.width * 0.75, height: geometry.size.height * 0.5)
                .background(Color.white)
                .cornerRadius(20)
                .shadow(radius: 10)
                .position(x: geometry.size.width / 2, y: geometry.size.height / 2)
                
            }
        }
    }
}

struct ModalBook1View: View {
    @Binding var isActiveBook: Bool
    @StateObject var gameModel = GameModel()
    
    var body: some View {
        VStack {
            GeometryReader { geometry in
                VStack {
                    Spacer()
                    
                    if #available(iOS 16.0, *) {
                        Text("Dictionary")
                            .textCase(.uppercase)
                            .font(.system(size: 30))
                            .kerning(1)
                            .fontWeight(.semibold)
                            .padding()
                            .foregroundColor(Color.black)
                    } else {
                        Text("Dictionary")
                            .font(.system(size: 30))
                            .padding()
                            .foregroundColor(Color.black)
                    }
                    
                    
                    Text("All of the letters in morse code are here!")
                    .multilineTextAlignment(.center)
                    .frame(width: geometry.size.width * 0.6)
                    .foregroundColor(Color.black)
                    .cornerRadius(10)
                    
                    
                    Spacer()
                    
                    HStack {
                        Spacer()
                        
                        VStack {
                            ForEach(gameModel.morseCodeAll.prefix(13).sorted(by: { $0.key < $1.key }), id: \.key) { dictElement in
                                HStack {
                                    if #available(iOS 16.0, *) {
                                        Text(dictElement.key)
                                            .font(.system(size: 20))
                                            .padding()
                                            .foregroundColor(Color.black)
                                            .fontWeight(.semibold)
                                    } else {
                                        Text(dictElement.key)
                                            .font(.system(size: 20))
                                            .padding()
                                            .foregroundColor(Color.black)
                                    }
                                    Text(dictElement.value)
                                        .font(.system(size: 20))
                                        .padding()
                                        .foregroundColor(Color.black)
                                }
                            }
                        }
                    
                        Spacer()
                        
                        VStack {
                            ForEach(gameModel.morseCodeAll.suffix(13).sorted(by: { $0.key < $1.key }), id: \.key) { dictElement in
                                HStack {
                                    if #available(iOS 16.0, *) {
                                        Text(dictElement.key)
                                            .font(.system(size: 20))
                                            .padding()
                                            .foregroundColor(Color.black)
                                            .fontWeight(.semibold)
                                    } else {
                                        Text(dictElement.key)
                                            .font(.system(size: 20))
                                            .padding()
                                            .foregroundColor(Color.black)
                                    }
                                    Text(dictElement.value)
                                        .font(.system(size: 20))
                                        .padding()
                                        .foregroundColor(Color.black)
                                }
                            }
                        }
                        
                        Spacer()
                    }
                    Spacer()
                    
                    if #available(iOS 16.0, *) {
                        Button("Close The Dictionary") {
                            isActiveBook = false
                        }
                        .textCase(.uppercase)
                        .frame(width: geometry.size.width * 0.6)
                        .padding()
                        .fontWeight(.semibold)
                        .kerning(1)
                        .background(Color.black)
                        .foregroundColor(Color.white)
                        .cornerRadius(10)
                        
                        
                    } else {
                        Button("Close The Dictionary") {
                            isActiveBook = false
                        }
                        .textCase(.uppercase)
                        .frame(width: geometry.size.width * 0.6)
                        .padding()
                        .background(Color.black)
                        .foregroundColor(Color.white)
                        .cornerRadius(10)
                    }
                    
                    Spacer()
                    
                }
                .frame(width: geometry.size.width * 0.75, height: geometry.size.height * 0.8)
                .background(Color.white)
                .cornerRadius(20)
                .shadow(radius: 10)
                .position(x: geometry.size.width / 2, y: geometry.size.height / 2)
                
            }
        }
    }
}

struct Modal1ResultView: View {
    @Binding var isActive: Bool
    @State private var navigateToNextView = false
    @StateObject var gameModel: GameModel
    
    var body: some View {
        NavigationView {
            ZStack {
                Color(red: 33/255, green: 33/255, blue: 33/255)
                    .ignoresSafeArea()
                VStack {
                    GeometryReader { geometry in
                        VStack {
                            Spacer()
                            
                            if #available(iOS 16.0, *) {
                                Text("Stage 1 Done")
                                    .textCase(.uppercase)
                                    .font(.system(size: 30))
                                    .kerning(1)
                                    .fontWeight(.semibold)
                                    .padding()
                                    .foregroundColor(Color.black)
                            } else {
                                Text("Stage 1 Done")
                                    .font(.system(size: 30))
                                    .padding()
                                    .foregroundColor(Color.black)
                            }
                            
                            
                            Text("Tap the button to go to the next stage!")
                            .multilineTextAlignment(.center)
                            .frame(width: geometry.size.width * 0.6)
                            .foregroundColor(Color.black)
                            .cornerRadius(10)
                                                
                            Spacer()
                            
                            if #available(iOS 16.0, *) {
                                Button(action: {
                                    navigateToNextView = true
                                }, label: {
                                    Text("Go To Stage 2")
                                })
                                .textCase(.uppercase)
                                .frame(width: geometry.size.width * 0.6)
                                .padding()
                                .fontWeight(.semibold)
                                .kerning(1)
                                .background(Color.black)
                                .foregroundColor(Color.white)
                                .cornerRadius(10)
                                .overlay(
                                    NavigationLink(destination: GameStage2(gameModel: gameModel), isActive: $navigateToNextView) {
                                        EmptyView()
                                    }
                                    .navigationBarHidden(true)
                                )


                            } else {
                                Button(action: {
                                    navigateToNextView = true
                                }, label: {
                                    Text("Go To Stage 2")
                                })
                                .textCase(.uppercase)
                                .frame(width: geometry.size.width * 0.6)
                                .padding()
                                .background(Color.black)
                                .foregroundColor(Color.white)
                                .cornerRadius(10)
                                .overlay(
                                    NavigationLink(destination: GameStage2(gameModel: gameModel), isActive: $navigateToNextView) {
                                        EmptyView()
                                    }
                                    .navigationBarHidden(true)
                                )
                            }
                            
                            Spacer()
                            
                        }
                        .frame(width: geometry.size.width * 0.75, height: geometry.size.height * 0.3)
                        .background(Color.white)
                        .cornerRadius(20)
                        .shadow(radius: 10)
                        .position(x: geometry.size.width / 2, y: geometry.size.height / 2)
                        
                    }
                    
                }
            }
        }
        .navigationBarHidden(true)
        .navigationViewStyle(.stack)
        
    }
}



struct GameStage1: View {
    @StateObject var gameModel: GameModel
    
    @State var isModalAActive = true
    @State var isModalBActive = false
    @State var isModalResultActive = false
    @State var isModalBook1 = false
    
    @State var isLongPress = false
    @State var isTap = false
    
    @State private var light = false
    
    @State private var timeRemaining = 45
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    
    @State private var currentQuestionIndex = 0
    @State private var answers: [String] = []

    private var answersCount: Int {
        answers.count
    }
    
    let questionsStage1 = ["S", "O", "S"]
    let answersStage1 = ["...", "___", "..." ]
    
    var currentQuestion: String {
        questionsStage1[currentQuestionIndex]
    }
    
    var currentMorseCode: String {
        answersStage1[currentQuestionIndex]
    }
    
    var isAnswerCorrect: Bool {
        let userAnswer = answers.joined()
        let expectedAnswer = currentMorseCode
        return userAnswer == expectedAnswer
    }
    
    func wrongAnswer() {
        gameModel.stage1Score = 0
        currentQuestionIndex = 0
        answers.removeAll()
    }
    
    func submitAnswer() {
        currentQuestionIndex += 1
        answers.removeAll()
    }
    
    func answerCheckerStage1() {
        if answersCount == 3 {
            if isAnswerCorrect {
                gameModel.stage1Score += 1
                submitAnswer()
                if currentQuestionIndex == questionsStage1.count{
                    isModalResultActive = true
                }
            } else {
                wrongAnswer()
            }
        }
    }
    
    
    var body: some View {
        VStack {
            ZStack {
                Color(red: 33/255, green: 33/255, blue: 33/255)
                    .ignoresSafeArea()
                
                GeometryReader { geometry in
                    VStack {
                        Text("Score: \(gameModel.stage1Score)")
                            .foregroundColor(Color.white)
                            .font(.system(size: 30))
                            .padding(.bottom, 2)
                            .padding(.top, 10)
                        
                        Text("Time left: \(timeRemaining) s")
                            .foregroundColor(Color.white)
                            .font(.system(size: 30))
                            .padding(.bottom, 2)
                        
                        if currentQuestionIndex < 3 {
                            Text(currentQuestion)
                                .foregroundColor(Color.white)
                                .font(.system(size: 96))
                        } else {
                            Text("Done!")
                                .foregroundColor(Color.white)
                                .font(.system(size: 96))
                        }
                        
                        
                        
                        ZStack(alignment: .bottomTrailing){
                            Image("Forest_View_Stage")
                                .resizable()
                                .scaledToFit()
                                .frame(width: geometry.size.width * 0.8)
                            
                            ZStack(alignment: .bottomTrailing){
                                if light {
                                    ZStack {
                                        Image("Light")
                                            .resizable()
                                            .scaledToFit()
                                            .padding(.trailing, 155)
                                            .padding(.bottom, 110)
                                        
                                    }
                                    .frame(width: geometry.size.width * 0.65, alignment: .topLeading)
                                }
                                Image("Flashlight")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: geometry.size.width * 0.3, height: geometry.size.height * 0.175)
                            }
                            .cornerRadius(100)
                            .offset(x: geometry.size.width * 0.05, y: geometry.size.height * 0.075)
                            .clipped()
                                
                        }
                        .frame(width: geometry.size.width, height: geometry.size.height * 0.35)
                        .clipped()
                        
                        Spacer()
                        
                        HStack {
                            Spacer()
                            Button(action: {
                                // Action to perform when button is tapped
                                isModalBook1 = true
                            }) {
                                Image(systemName: "book")
                                    .font(.system(size: 48))
                                    .foregroundColor(.black)
                                    .frame(width: geometry.size.width * 0.1, height: geometry.size.height * 0.1)
                                    .padding()
                                    .background(Color.white)
                                    .clipShape(Circle())
                            }
                            
                            Spacer()
                            
                            HStack {
                                ForEach(answers, id: \.self) { answer in
                                    Text(answer)
                                        .foregroundColor(Color.white)
                                        .font(.system(size: 60))
                                }
                                .onChange(of: answers) { _ in
                                    answerCheckerStage1()
                                }
                            }
                            
                            Spacer()
                            
                            Button(action: {
                                isModalBActive = true
                            }) {
                                Image(systemName: "info.circle")
                                    .font(.system(size: 48))
                                    .foregroundColor(.black)
                                    .frame(width: geometry.size.width * 0.1, height: geometry.size.height * 0.1)
                                    .padding()
                                    .background(Color.white)
                                    .clipShape(Circle())
                            }
                            
                            Spacer()
                            
                        }
                            
                        Spacer()
                        
                        ZStack {
                            Button(action: {
                                // Action to perform when button is tapped or long pressed
                                
                            }) {
                                Image(systemName: "light.beacon.max")
                                    .font(.system(size: 64))
                                    .foregroundColor(.black)
                                    .frame(width: geometry.size.width * 0.1, height: geometry.size.height * 0.1)
                                    .padding()
                                    .background(Color.white)
                            }
                        
                            .frame(width: 150, height: 150)
                            .background(Color.white)
                            .cornerRadius(1000)
                            .foregroundColor(.yellow)
                            .padding()
                            .overlay(
                                Circle()
                                    .stroke(Color.white, lineWidth: 5)
                            )
                            .simultaneousGesture(TapGesture()
                                .onEnded { _ in
                                    light = true
                                    isTap = true
                                    isLongPress = false
                                    if isTap == true && isLongPress == false {
                                        answers.append(".")
                                    }
                                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
                                        light = false
                                        isTap = false
                                    }
                                }
                            )
                        }
                        .simultaneousGesture(
                            LongPressGesture(minimumDuration: 0.5)
                                .onEnded { _ in
                                    isLongPress = true
                                    light = true
                                    isTap = false
                                    if isTap == false && isLongPress == true {
                                        answers.append("_")
                                    }
                                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                                        light = false
                                        isLongPress = false
                                    }
                                }
                        )
                        
                        
                        
                        
                        Spacer()
                        
                        
                    }
                }

                
                if isModalAActive {
                    ModalAView(isActiveA: $isModalAActive, isActiveB: $isModalBActive)
                        .background(Color.black.opacity(0.5))
                        .edgesIgnoringSafeArea(.all)
                } else if isModalBActive {
                    ModalBView(isActiveA: $isModalAActive, isActiveB: $isModalBActive)
                        .background(Color.black.opacity(0.5))
                        .edgesIgnoringSafeArea(.all)
                } else if isModalBook1 {
                    ModalBook1View(isActiveBook: $isModalBook1, gameModel: gameModel)
                        .background(Color.black.opacity(0.5))
                        .edgesIgnoringSafeArea(.all)
                } else if isModalResultActive {
                    Modal1ResultView(isActive: $isModalResultActive, gameModel: gameModel)
                        .background(Color.black.opacity(0.5))
                        .edgesIgnoringSafeArea(.all)
                }
                
            }
        }
        .onReceive(timer) { _ in
            if !isModalAActive && !isModalBActive{
                if timeRemaining > 0 {
                    timeRemaining -= 1
                } else {
                    isModalResultActive = true
                }
            }
        }
        .navigationBarHidden(true)
    }
}

struct GameStage1_Previews: PreviewProvider {
    static var previews: some View {
        let gameModel = GameModel()
        GameStage1(gameModel: gameModel)
    }
}
