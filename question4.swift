import SwiftUI

struct question4: View {
    @State var A: String = "Kevin randleman"
    @State var B: String = "DC"
    @State var C: String = "ngannou"
    @State var D: String = "khabib"
    @State var output: String = ""
    @State var Alert: Bool = false
    @State var Alert2: Bool = false
    @State var name: String = ""
    @State var message: String = ""
    var body: some View {
        
        ZStack {
            
            RoundedRectangle(cornerRadius: 8.0)
                .stroke(style: StrokeStyle())
                .frame(width:.infinity, height: 100)
                .foregroundColor(.yellow)
            
            Text("Question1 : Who did Jon Jones fight twice to make one of the greatest rivalries in UFC history?")
                .font(.custom("times new roman", size: 30))
                .bold()
                .foregroundColor(.white)
        }
        Divider()
        HStack{
            VStack{
                ZStack{
                    Button(action: {
                        
                        print("you selected Kevin randleman")
                        checkanswer(choice: "A")
                        Alert.toggle()
                    }, label: {
                        Image("13")
                            .resizable()
                            .frame(width: 150, height: 150)
                            .clipShape(Circle())
                            .padding()
                        
                    })
                    .alert("Incorrect", isPresented: $Alert){
                        Button("Try Again \(message)"){
                            print("Alert dismissed")
                        }
                    }
                } 
            }
            
            ZStack{
                Button(action: {
                    print("you selected DC")
                    checkanswer(choice: "B")
                    Alert2.toggle()
                }, label: {
                    Image("14")
                        .resizable()
                        .frame(width: 150, height: 150)
                        .clipShape(Circle())
                        .padding()
                    
                })
                .alert("NICE! \(message)", isPresented: $Alert2){
                    Button("next"){
                        print("Alert dismissed")
                    }
                }
            }
        }
        
        VStack{
            HStack{
                
                ZStack{
                    Button(action: {
                        print("you selected ngannou")
                        checkanswer(choice: "C")
                        Alert.toggle()
                    }, label: {
                        Image("15")
                            .resizable()
                            .frame(width: 150, height: 150)
                            .clipShape(Circle())
                            .padding()
                        
                    })
                    .alert("Incorrect", isPresented: $Alert){
                        Button("Try Again \(message)"){
                            print("Alert dismissed")
                        }
                    }
                }
                ZStack{
                    Button(action: {
                        print("you selected khabib")
                        checkanswer(choice: "D")
                        Alert.toggle()
                    }, label: {
                        Image("16")
                            .resizable()
                            .frame(width: 150, height: 150)
                            .clipShape(Circle())
                            .padding()
                    })
                    .alert("Incorrect", isPresented: $Alert){
                        Button("Try Again \(message)"){
                            print("Alert dismissed")
                        }
                    }
                }
            }
        }
        
        Text(output)
        HStack{
        }
        Text("\(message)")
            .font(.title)
        Spacer()
        
    }
    
    func checkanswer(choice: String){
        if choice == "A"{
            output = "You Are Incorrect"
        }
        if choice == "B"{
            output = "You Are Correct!"
        }
        if choice == "C"{
            output = "You Are Incorrect"
        }
        if choice == "D"{
            output = "You Are Incorrect"
        }
    }
}
