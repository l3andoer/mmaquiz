import SwiftUI

struct question3: View {
    @State var A: String = "Nick diaz"
    @State var B: String = "spider"
    @State var C: String = "Poatan"
    @State var D: String = "connor"
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
            
            Text("Question1 : which fighter has sold the most PPV in the UFC")
                .font(.custom("times new roman", size: 30))
                .bold()
                .foregroundColor(.white)
        }
        Divider()
        HStack{
            VStack{
                ZStack{
                    Button(action: {
                        
                        print("you selected Nick diaz")
                        checkanswer(choice: "A")
                        Alert.toggle()
                    }, label: {
                        Image("9")
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
                    print("you selected spider")
                    checkanswer(choice: "B")
                    Alert.toggle()
                }, label: {
                    Image("10")
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
        
        VStack{
            HStack{
                
                ZStack{
                    Button(action: {
                        print("you selected Poatan")
                        checkanswer(choice: "C")
                        Alert.toggle()
                    }, label: {
                        Image("11")
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
                        print("you selected connor")
                        checkanswer(choice: "D")
                        Alert2.toggle()
                    }, label: {
                        Image("12")
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
        }
        
        Text(output)
        HStack{
        }
        Text("\(message)")
            .font(.title)
        
        NavigationLink(destination: question4()) { Text("Next question") 
        }
        Spacer()
        
    }
    
    func checkanswer(choice: String){
        if choice == "A"{
            output = "You Are Incorrect"
        }
        if choice == "B"{
            output = "You Are Incorrect"
        }
        if choice == "C"{
            output = "You Are Incorrect"
        }
        if choice == "D"{
            output = "You Are Correct!"
        }
    }
}
