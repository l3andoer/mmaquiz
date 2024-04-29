import SwiftUI

struct question2: View {
    @State var A: String = "Alex Pereira"
    @State var B: String = "Francis Ngannou"
    @State var C: String = "Islam Makhachev"
    @State var D: String = "Justin Gaethje"
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
            
            Text("Question1 : Who is Double Champion out of these fighters?")
                .font(.custom("times new roman", size: 30))
                .bold()
                .foregroundColor(.white)
        }
        Divider()
        HStack{
            VStack{
                ZStack{
                    Button(action: {
                        
                        print("you selected Alex Pereira")
                        checkanswer(choice: "A")
                        Alert2.toggle()
                    }, label: {
                        Image("5c")
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
            
            ZStack{
                Button(action: {
                    print("you selected Francis Ngannou")
                    checkanswer(choice: "B")
                    Alert.toggle()
                }, label: {
                    Image("6")
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
                        print("you selected Islam Makhachev")
                        checkanswer(choice: "C")
                        Alert.toggle()
                    }, label: {
                        Image("7")
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
                        print("you selected Justin Gaethje")
                        checkanswer(choice: "D")
                        Alert.toggle()
                    }, label: {
                        Image("8")
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
        
        NavigationLink(destination: question3()) { Text("Next question") 
        }
        Spacer()
        
    }
    
    func checkanswer(choice: String){
        if choice == "A"{
            output = "You Are Correct!"
        }
        if choice == "B"{
            output = "You Are Incorrect"
        }
        if choice == "C"{
            output = "You Are Incorrect"
        }
        if choice == "D"{
            output = "You Are Incorrect"
        }
    }
}
