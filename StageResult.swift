//
//  StageResult.swift
//  Mo(r)se
//
//  Created by Patricia Ho on 18/04/23.
//

import SwiftUI

struct ModalResultView: View {
    @Binding var isActive: Bool
    @ObservedObject var gameModel = GameModel()
    
    var totalScores: Int {
        return gameModel.stage1Score + gameModel.stage2Score
    }
    
    var statuses: (stage1: String, stage2: String) {
        let stage1Status: String
        switch gameModel.stage1Score {
        case 3:
            stage1Status = "Done"
        case 2:
            stage1Status = "Almost"
        default:
            stage1Status = "Failed"
        }
        
        let stage2Status: String
        switch gameModel.stage2Score {
        case ..<4:
            stage2Status = "Failed"
        case 4..<6:
            stage2Status = "Almost"
        default:
            stage2Status = "Done"
        }
        
        return (stage1Status, stage2Status)
    }
    
    var colors: (stage1: Color, stage2: Color) {
        let stage1Color: Color
        switch gameModel.stage1Score {
        case 3:
            stage1Color = .green
        case 2:
            stage1Color = .orange
        default:
            stage1Color = .red
        }
        
        let stage2Color: Color
        switch gameModel.stage2Score {
        case ..<4:
            stage2Color = .red
        case 4..<6:
            stage2Color = .orange
        default:
            stage2Color = .green
        }
        
        return (stage1Color, stage2Color)
    }
    
    var endingIndex: Int {
        switch totalScores {
        case 9...:
            return 0 // Good Ending
        case 5...8:
            return 1 // Normal Ending
        default:
            return 2 // Bad Ending
        }
    }
    
    let endingsTitle: [String] = ["The Good Ending", "The Normal Ending", "The Bad Ending"]
    let endingsDescription: [String] = ["You and your friend are unite again and return to the camp safely", "You two misunderstood the code a little so it might take more time to reunite again", "You two are lost in the woods...."]
    let endingsImage: [String] = ["Good_Ending", "Normal_Ending", "Bad_Ending"]
    
    
    
    var body: some View {
        VStack {
            GeometryReader { geometry in
                VStack {
                    Spacer()
                    if #available(iOS 16.0, *) {
                        Text("Yay, You did It!")
                            .textCase(.uppercase)
                            .font(.system(size: 30))
                            .kerning(1)
                            .fontWeight(.semibold)
                            .padding()
                            .foregroundColor(Color.black)
                    } else {
                        Text("Yay, You did It!")
                            .font(.system(size: 30))
                            .padding()
                            .foregroundColor(Color.black)
                    }
                    
                    
                    Text("Here’s the result of your gameplay\n")
                    .multilineTextAlignment(.center)
                    .frame(width: geometry.size.width * 0.6)
                    .foregroundColor(Color.black)
                    .cornerRadius(10)
                    .padding(.bottom, 2)
                    
                    
                    HStack {
                        Spacer()
                        VStack {
                            if #available(iOS 16.0, *) {
                                Text("Stage 1")
                                    .textCase(.uppercase)
                                    .font(.system(size: 24))
                                    .kerning(1)
                                    .fontWeight(.semibold)
                                    .padding(.bottom, 2)
                                    .foregroundColor(Color.black)
                            } else {
                                Text("Stage 1")
                                    .font(.system(size: 24))
                                    .padding(.bottom, 2)
                                    .foregroundColor(Color.black)
                            }
                            Text("Score: \(gameModel.stage1Score) (\(statuses.stage1))")
                                .font(.system(size: 20))
                                .foregroundColor(colors.stage1)
                        }
                        
                        Spacer()
                        
                        VStack {
                            if #available(iOS 16.0, *) {
                                Text("Stage 2")
                                    .textCase(.uppercase)
                                    .font(.system(size: 24))
                                    .kerning(1)
                                    .fontWeight(.semibold)
                                    .padding(.bottom, 2)
                                    .foregroundColor(Color.black)
                            } else {
                                Text("Stage 2")
                                    .font(.system(size: 24))
                                    .padding(.bottom, 2)
                                    .foregroundColor(Color.black)
                            }
                            Text("Score: \(gameModel.stage2Score) (\(statuses.stage2))")
                                .font(.system(size: 20))
                                .foregroundColor(colors.stage2)
                        }
                        
                        Spacer()
                    }
                    
                    Spacer()
                    
                    if #available(iOS 16.0, *) {
                        Text(endingsTitle[endingIndex])
                            .textCase(.uppercase)
                            .font(.system(size: 24))
                            .kerning(1)
                            .fontWeight(.semibold)
                            .padding([.top, .bottom], 2)
                            .foregroundColor(Color.black)
                    } else {
                        Text(endingsTitle[endingIndex])
                            .font(.system(size: 24))
                            .padding()
                            .foregroundColor(Color.black)
                    }
                    
                    Text(endingsDescription[endingIndex])
                    .padding(.bottom, 25)
                    .multilineTextAlignment(.center)
                    .frame(width: geometry.size.width * 0.6)
                    .foregroundColor(Color.black)
                    .cornerRadius(10)
                    
                    VStack {
                        GeometryReader { geometry in
                            Image(endingsImage[endingIndex])
                                .resizable()
                                .scaledToFit()
                                .frame(width: geometry.size.width, height: 200)
                        }
                        .frame(width: geometry.size.width * 0.4, height: 200)
                    }
                    
                    Spacer()
                    
                    if #available(iOS 16.0, *) {
                        Button("Close The Result") {
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
                        
                        Spacer()
                        
                    } else {
                        Button("Close The Result") {
                            isActive = false
                        }
                        .textCase(.uppercase)
                        .frame(width: geometry.size.width * 0.6)
                        .padding()
                        .background(Color.black)
                        .foregroundColor(Color.white)
                        .cornerRadius(10)
                        
                        Spacer()
                    }
                    
                    
                    
                }
                .frame(width: geometry.size.width * 0.75, height: geometry.size.height * 0.7)
                .background(Color.white)
                .cornerRadius(20)
                .shadow(radius: 10)
                .position(x: geometry.size.width / 2, y: geometry.size.height / 2)
                
                
                
            }
        }
    }
}

struct StageResult: View {
    @State var isModalActive = true
    @StateObject var gameModel: GameModel
    
    var body: some View {
        NavigationView {
            ZStack {
                if isModalActive {
                    Image("Home_Background")
                        .resizable()
                        .scaledToFill()
                        .edgesIgnoringSafeArea(.all)
                        .blur(radius: 20)
                } else {
                    Image("Home_Background")
                        .resizable()
                        .scaledToFill()
                        .edgesIgnoringSafeArea(.all)
                }
                
                VStack {
                    Spacer()
                    
                    if #available(iOS 16.0, *) {
                        Text("Press the button")
                            .font(.system(size: 40))
                            .foregroundColor(.white)
                            .padding(.bottom, 3)
                            .fontWeight(.semibold)
                            .kerning(1)
                        
                        Text("To restart your adventure")
                            .font(.system(size: 30))
                            .foregroundColor(.white)
                            .cornerRadius(10)
                            .padding(.bottom, 50)
                            .fontWeight(.regular)
                            .kerning(1)
                    } else {
                        // Fallback on earlier versions
                        Text("Lost in the Woods:")
                            .font(.system(size: 40))
                            .foregroundColor(.white)
                            .padding(.bottom, 3)
                        
                        Text("A Morse Code Adventure")
                            .font(.system(size: 30))
                            .foregroundColor(.white)
                            .cornerRadius(10)
                            .padding(.bottom, 50)
                    }
                    
                    
                    NavigationLink(
                        destination: ContentView(gameModel: GameModel()),
                        label: {
                            if #available(iOS 16.0, *) {
                                Text("Go Back")
                                    .font(.system(size: 30))
                                    .foregroundColor(Color.black)
                                    .padding([.leading, .trailing], 50)
                                    .padding([.top, .bottom], 20)
                                    .background(Color.white)
                                    .cornerRadius(10)
                                    .kerning(1.0)
                                    .fontWeight(.medium)
                            } else {
                                // Fallback on earlier versions
                                Text("Go Back")
                                    .font(.system(size: 30))
                                    .foregroundColor(Color.black)
                                    .padding([.leading, .trailing], 50)
                                    .padding([.top, .bottom], 20)
                                    .background(Color.white)
                                    .cornerRadius(10)
                            }
                        })
                    .navigationBarHidden(true)
                    
                    Spacer()
                    Spacer()
                    Spacer()
                    Spacer()
                }
                
                if isModalActive {
                    ModalResultView(isActive: $isModalActive, gameModel: gameModel)
                        .background(Color.black.opacity(0.5))
                        .edgesIgnoringSafeArea(.all)
                }
                
            }
        }
        .navigationViewStyle(.stack)
        .navigationBarHidden(true)
    }
}
