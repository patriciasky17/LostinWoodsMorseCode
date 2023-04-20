//
//  GameStage2.swift
//  Mo(r)se
//
//  Created by Patricia Ho on 18/04/23.
//

import SwiftUI
import AVFoundation

struct Modal2AView: View {
    @Binding var isActive: Bool
    
    var body: some View {
        VStack {
            GeometryReader { geometry in
                VStack {
                    Spacer()
                    
                    if #available(iOS 16.0, *) {
                        Text("Stage 2 : Receiving Sign")
                            .textCase(.uppercase)
                            .font(.system(size: 30))
                            .kerning(1)
                            .fontWeight(.semibold)
                            .padding()
                            .foregroundColor(Color.black)
                    } else {
                        Text("Stage 2 : Receiving Sign")
                            .font(.system(size: 30))
                            .padding()
                            .foregroundColor(Color.black)
                    }
                    
                    
                    Text("Pay attention to what your friend is trying to say in morse code\n")
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
                    
                    Text("There will be multiple choices question type in here. Choose the right answer based on the sound that your friend will give to you.")
                    .padding(.bottom, 25)
                    .multilineTextAlignment(.center)
                    .frame(width: geometry.size.width * 0.6)
                    .foregroundColor(Color.black)
                    .cornerRadius(10)
                    
                    if #available(iOS 16.0, *) {
                        Text("Requirement")
                            .textCase(.uppercase)
                            .font(.system(size: 24))
                            .kerning(1)
                            .fontWeight(.semibold)
                            .padding()
                            .foregroundColor(Color.black)
                    } else {
                        Text("Requirement")
                            .font(.system(size: 24))
                            .padding()
                            .foregroundColor(Color.black)
                    }
                    
                    HStack{
                        Text("The gameplay requires audio")
                            .multilineTextAlignment(.center)
                            .foregroundColor(Color.black)
                            .cornerRadius(10)
                        Image(systemName: "speaker.wave.2.fill")
                            .font(.system(size: 24.0))
                            .foregroundColor(Color.black)
                    }
                    .frame(width: geometry.size.width * 0.6)
                                        
                    Spacer()
                    
                    if #available(iOS 16.0, *) {
                        Button("Start The Game") {
                            isActive = false
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
                            isActive = false
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

struct ModalBook2View: View {
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


struct Modal2ResultView: View {
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
                                Text("Stage 2 Done")
                                    .textCase(.uppercase)
                                    .font(.system(size: 30))
                                    .kerning(1)
                                    .fontWeight(.semibold)
                                    .padding()
                                    .foregroundColor(Color.black)
                            } else {
                                Text("Stage 2 Done")
                                    .font(.system(size: 30))
                                    .padding()
                                    .foregroundColor(Color.black)
                            }
                            
                            
                            Text("Now you're done! Tap the button to see the result")
                            .multilineTextAlignment(.center)
                            .frame(width: geometry.size.width * 0.6)
                            .foregroundColor(Color.black)
                            .cornerRadius(10)
                                                
                            Spacer()
                            
                            if #available(iOS 16.0, *) {
                                Button(action: {
                                    navigateToNextView = true
                                }, label: {
                                    Text("See The Result")
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
                                    NavigationLink(destination: StageResult(gameModel: gameModel), isActive: $navigateToNextView) {
                                        EmptyView()
                                    }
                                    .navigationBarHidden(true)
                                )


                            } else {
                                Button(action: {
                                    navigateToNextView = true
                                }, label: {
                                    Text("See The Result")
                                })
                                .textCase(.uppercase)
                                .frame(width: geometry.size.width * 0.6)
                                .padding()
                                .background(Color.black)
                                .foregroundColor(Color.white)
                                .cornerRadius(10)
                                .overlay(
                                    NavigationLink(destination: StageResult(gameModel: gameModel), isActive: $navigateToNextView) {
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

let randomValue = Int.random(in: 0..<4)

struct GameStage2: View {
    @StateObject var gameModel: GameModel
    
    @State var isModal2AActive = true
    @State var isLongPress = false
    @State var isModalResult2Active = false
    @State var isModalBook2 = false
    
    @State private var timeRemaining = 60
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    
    @State private var currentQuestionIndex2 = 0 {
        didSet {
            // Play the sound for the new question
            if currentQuestionIndex2 < 9 {
                let soundFileName = stage2Sounds[randomValue].1[currentQuestionIndex2]
                playSoundMorseCode(fileName: soundFileName)
            }
        }
    }
    @State var answers2 = [String](repeating: "", count: 9)
    
    @State var hasPlayedSoundFirstTime = false
    @State var audioPlayer: AVAudioPlayer!
    
    func playSoundMorseCode(fileName: String){
        let sound = Bundle.main.path(forResource: fileName, ofType: "MP3")
        self.audioPlayer = try! AVAudioPlayer(contentsOf: URL(fileURLWithPath: sound!))
        self.audioPlayer.play()
    }

    
    let stage2Answers: [(Int, [String])] = [
        (1, ["N", "O", "R", "T", "H", "E", "A", "S", "T"]),
        (2, ["S", "O", "U", "T", "H", "E", "A", "S", "T"]),
        (3, ["N", "O", "R", "T", "H", "W", "E", "S", "T"]),
        (4, ["S", "O", "U", "T", "H", "W", "E", "S", "T"])
    ]

    let stage2MultipleChoices: [(Int, [[String]])] = [
        (1, [
            ["N", "S", "O", "U"],
            ["M", "O", "F", "U"],
            ["D", "E", "R", "T"],
            ["P", "L", "T", "H"],
            ["E", "O", "U", "H"],
            ["H", "E", "L", "K"],
            ["O", "A", "E", "N"],
            ["N", "I", "S", "R"],
            ["T", "E", "I", "N"]
        ]),
        (2, [
            ["S", "N", "O", "U"],
            ["U", "M", "O", "F"],
            ["T", "U", "R", "E"],
            ["S", "L", "T", "H"],
            ["H", "E", "U", "O"],
            ["S", "H", "E", "K"],
            ["S", "O", "A", "N"],
            ["S", "I", "M", "R"],
            ["T", "E", "I", "N"]
        ]),
        (3, [
            ["N", "S", "O", "U"],
            ["M", "O", "F", "U"],
            ["D", "E", "R", "T"],
            ["P", "T", "O", "H"],
            ["E", "O", "H", "I"],
            ["H", "W", "E", "K"],
            ["O", "A", "E", "N"],
            ["S", "I", "M", "R"],
            ["T", "E", "I", "N"]
        ]),
        (4, [
            ["S", "N", "O", "U"],
            ["U", "M", "O", "F"],
            ["T", "U", "R", "E"],
            ["S", "L", "T", "H"],
            ["A", "E", "U", "H"],
            ["H", "W", "E", "K"],
            ["S", "O", "E", "N"],
            ["P", "S", "M", "R"],
            ["T", "E", "I", "N"]
        ])
    ]
    
    
    let stage2Sounds: [(Int, [String])] = [
        (1, ["NMorseCode", "OMorseCode", "RMorseCode", "TMorseCode", "HMorseCode", "EMorseCode", "AMorseCode", "SMorseCode", "TMorseCode"]),
        (2, ["SMorseCode", "OMorseCode", "UMorseCode", "TMorseCode", "HMorseCode", "EMorseCode", "AMorseCode", "SMorseCode", "TMorseCode"]),
        (3, ["NMorseCode", "OMorseCode", "RMorseCode", "TMorseCode", "HMorseCode", "WMorseCode", "EMorseCode", "SMorseCode", "TMorseCode"]),
        (4, ["SMorseCode", "OMorseCode", "UMorseCode", "TMorseCode", "HMorseCode", "WMorseCode", "EMorseCode", "SMorseCode", "TMorseCode"])
    ]
    
    var currentQuestion2: String {
        stage2Sounds[randomValue].1[currentQuestionIndex2]
    }
    
    var currentMorseCode2: String {
        stage2Answers[randomValue].1[currentQuestionIndex2]
    }
    
    var isAnswerCorrect2: Bool {
        let userAnswer2 = answers2[currentQuestionIndex2]
        let expectedAnswer2 = currentMorseCode2
        return userAnswer2 == expectedAnswer2
    }
    
    func submitAnswer() {
        if isAnswerCorrect2 {
            gameModel.stage2Score += 1
        }
        currentQuestionIndex2 += 1
        if currentQuestionIndex2 == 9{
            isModalResult2Active = true
        }
    }
    
    func soundFirstTime() {
        let fileName = stage2Sounds[randomValue].1[0]
        if !hasPlayedSoundFirstTime {
            playSoundMorseCode(fileName: fileName)
            hasPlayedSoundFirstTime = true
        }
    }
    
    var body: some View {
        VStack {
            ZStack {
                Color(red: 33/255, green: 33/255, blue: 33/255)
                    .ignoresSafeArea()
                
                GeometryReader { geometry in
                    VStack {
                        Text("Score: \(gameModel.stage2Score)")
                            .foregroundColor(Color.white)
                            .font(.system(size: 30))
                            .padding(.bottom, 2)
                            .padding(.top, 10)
                        
                        Text("Time left: \(timeRemaining) s")
                            .foregroundColor(Color.white)
                            .font(.system(size: 30))
                            .padding(.bottom, 150)
                        
                        
                        ZStack(alignment: .bottomTrailing){
                            Image("Forest_View_Stage")
                                .resizable()
                                .scaledToFit()
                                .frame(width: geometry.size.width * 0.8)
                                
                        }
                        .frame(width: geometry.size.width, height: geometry.size.height * 0.35)
                        .clipped()
                        
                        Spacer()
                        Spacer()
                        
                        HStack {
                            Spacer()
                            
                            Button(action: {
                                // Action to perform when button is tapped
                                isModalBook2 = true

                            }) {
                                Image(systemName: "book")
                                    .font(.system(size: 48))
                                    .foregroundColor(.black)
                                    .frame(width: geometry.size.width * 0.1, height: geometry.size.height * 0.1)
                                    .padding()
                                    .background(Color.white)
                                    .clipShape(Circle())
                            }
                            
                            Spacer ()
                            
                            Button(action: {
                                let soundFileName = stage2Sounds[randomValue].1[currentQuestionIndex2]
                                playSoundMorseCode(fileName: soundFileName)
                                
                            }) {
                                Image(systemName: "speaker.wave.2.fill")
                                    .font(.system(size: 48))
                                    .foregroundColor(.black)
                                    .frame(width: geometry.size.width * 0.1, height: geometry.size.height * 0.1)
                                    .padding()
                                    .background(Color.white)
                                    .clipShape(Circle())
                            }
                            
                            Spacer()
                            
                            Button(action: {
                                isModal2AActive = true
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
                        Spacer()
                        Spacer()
                        
                        GeometryReader { geometry in
                            HStack {
                                Spacer()
                                ForEach(0 ..< 4) { index in
                                    ZStack {
                                        if currentQuestionIndex2 < 9 {
                                            Text(stage2MultipleChoices[randomValue].1[currentQuestionIndex2][index])
                                                .foregroundColor(Color.black)
                                                .font(.system(size: 60))
                                                .frame(width: 140, height: 140)
                                                .background(Color.white)
                                                .cornerRadius(20)
                                        }
                                    }
                                    .padding(3)
                                    .onTapGesture {
                                        let selectedAnswer = stage2MultipleChoices[randomValue].1[currentQuestionIndex2][index]
                                        answers2[currentQuestionIndex2] = selectedAnswer
                                        submitAnswer()
                                    }
                                }
                                Spacer()
                            }
                        }

                        
                    }
                }
                
                if isModal2AActive {
                    Modal2AView(isActive: $isModal2AActive)
                        .background(Color.black.opacity(0.5))
                        .edgesIgnoringSafeArea(.all)
                        .onDisappear() {
                            soundFirstTime()
                            isModal2AActive = false
                        }
                } else if isModalBook2 {
                    ModalBook2View(isActiveBook: $isModalBook2, gameModel: gameModel)
                        .background(Color.black.opacity(0.5))
                        .edgesIgnoringSafeArea(.all)
                } else if isModalResult2Active{
                    Modal2ResultView(isActive: $isModalResult2Active, gameModel: gameModel)
                        .background(Color.black.opacity(0.5))
                        .edgesIgnoringSafeArea(.all)
                }
                
            }
        }
        .onReceive(timer) { _ in
            if !isModal2AActive{
                if timeRemaining > 0 {
                    timeRemaining -= 1
                } else {
                    isModalResult2Active = true
                }
            }
        }
        .navigationBarHidden(true)
    }
}

struct GameStage2_Previews: PreviewProvider {
    static var previews: some View {
        let gameModel = GameModel()
        GameStage2(gameModel: gameModel)
    }
}
