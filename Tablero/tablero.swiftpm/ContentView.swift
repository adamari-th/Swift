import SwiftUI

struct ContentView: View {
    
    @State var equipoA = 0
    @State var equipoB = 0
    
    @State var tiempo = 0.1
    @State private var isEditing = false
    
    var body: some View {
        
        VStack{
            Text("Tablero")
                .font(.largeTitle)
                .fontWeight(.bold)
        }
        
        
        textoView(equipoA: equipoA, equipoB: equipoB)
        RefereeView(equipoA: $equipoA, equipoB: $equipoB)
        
       // Slider(value: $tiempo)
         //   .padding()
        
        /*Slider( // se trata
                value: $tiempo,
                in: 0...100,
                step: 5
            ) {
                Text("Speed")
            } minimumValueLabel: {
                Text("0")
            } maximumValueLabel: {
                Text("100")
            } onEditingChanged: { editing in
                isEditing = editing
            }
            Text("\(tiempo)")
                .foregroundColor(isEditing ? .red : .blue)*/
        
        Button {
            equipoB -= 1
            equipoA -= 1
        } label: {
            Text("Minimizar")
                .fontWeight(.semibold)
                .padding()
                .background(Color.green)
                .foregroundColor(.black)
                .cornerRadius(10)
        }.padding()
        
    }
}
