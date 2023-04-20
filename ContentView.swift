import SwiftUI
import AVFoundation

struct ContentView: View {
    @StateObject var gameModel: GameModel
    
    var body: some View {
        NavigationView {
            ZStack {
                Image("Home_Background")
                    .resizable()
                    .scaledToFill()
                    .edgesIgnoringSafeArea(.all)
                VStack {
                    Spacer()
                    
                    if #available(iOS 16.0, *) {
                        Text("Lost in the Woods:")
                            .font(.system(size: 40))
                            .foregroundColor(.white)
                            .padding(.bottom, 3)
                            .fontWeight(.semibold)
                            .kerning(1)
                        
                        Text("A Morse Code Adventure")
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
                        destination: GameStage1(gameModel: gameModel),
                        label: {
                            if #available(iOS 16.0, *) {
                                Text("START")
                                    .font(.system(size: 40))
                                    .foregroundColor(Color.black)
                                    .padding([.leading, .trailing], 50)
                                    .padding([.top, .bottom], 20)
                                    .background(Color.white)
                                    .cornerRadius(10)
                                    .kerning(2.0)
                                    .fontWeight(.medium)
                            } else {
                                // Fallback on earlier versions
                            }
                        })
                    .navigationBarHidden(true)

                    Spacer()
                    Spacer()
                    Spacer()
                    Spacer()
                }
            }
        
        }
        .navigationViewStyle(.stack)
        .navigationBarHidden(true)
    }
}



