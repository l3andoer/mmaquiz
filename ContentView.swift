import SwiftUI

struct ContentView: View {
    @State var A: String = "Khabib Nurmagomedov"
    @State var B: String = "Ilia Topuria"
    @State var C: String = "Jon Jones"
    @State var D: String = "Charles Oliviera"
    @State var output: String = ""
    @State var Alert: Bool = false
    @State var Alert2: Bool = false
    @State var name: String = ""
    @State var message: String = ""
    var body: some View {
       
            Text("mma quiz")
                .font(.custom("Dream MMA", size: 50))
                .bold()
                .padding(.top, 23)
            Divider()
            TextField("Enter name", text: $name)
                .textFieldStyle(.roundedBorder)
                .autocorrectionDisabled()
                .textInputAutocapitalization(.words)
            Button("Submit"){
                message = "\(name)"
                name = ""
            }
            .foregroundColor(.blue)
        NavigationStack{
            ZStack {
                
                RoundedRectangle(cornerRadius: 8.0)
                    .stroke(style: StrokeStyle())
                    .frame(width:.infinity, height: 100)
                    .foregroundColor(.yellow)
                
                Text("Question1 : Who is the youngest UFC champion?")
                    .font(.custom("times new roman", size: 30))
                    .bold()
                    .foregroundColor(.white)
            }
            Divider()
            HStack{
                VStack{
                    ZStack{
                        Button(action: {
                            
                            print("you selected Khabib Nurmagomedov")
                            checkanswer(choice: "A")
                            Alert.toggle()
                        }, label: {
                            Image("1")
                                .resizable()
                                .frame(width: 150, height: 150)
                                .clipShape(Circle())
                                .padding()
                            
                        })
                    } 
                    .alert("Incorrect", isPresented: $Alert){
                        Button("Try Again \(message)"){
                            print("Alert Dismissed")
                        }
                    }
                }
                
                ZStack{
                    Button(action: {
                        print("you selected Ilia Topuria")
                        checkanswer(choice: "B")
                        Alert.toggle()
                    }, label: {
                        Image("2")
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
                            print("you selected Jon Jones")
                            checkanswer(choice: "C")
                            Alert2.toggle()
                        }, label: {
                            Image("3c")
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
                    ZStack{
                        Button(action: {
                            print("you selected Charles Oliviera")
                            checkanswer(choice: "D")
                            Alert.toggle()
                        }, label: {
                            Image("4")
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
                Text("\(message)")
                    .font(.title)
            }
            
            NavigationLink(destination: question2()) { Text("Next question") 
            }
            
            //        Button("reset name") { 
            //            output = ""
            //            message = ""
            //        }
            // add this on the last slide so new people can try
            Spacer()
        }
    }

    func checkanswer(choice: String){
        if choice == "A"{
            output = "You Are Incorrect"
        }
        if choice == "B"{
            output = "You Are Incorrect"
        }
        if choice == "C"{
            output = "You Are Correct!"
        }
        if choice == "D"{
            output = "You Are Incorrect"
        }
    }
    }
