//
//  textoView.swift
//  tablero
//
//  Created by ADMIN UNACH on 24/03/23.
//

import SwiftUI

struct textoView: View {
    
    //NO son binding ya que no se modifica nada en esta vista
    var equipoA: Int
    var equipoB: Int
    
    var body: some View {
        HStack{
            VStack{
                Text("Equipo A")
                    .font(.title2)
                    .fontWeight(.semibold)
                    .foregroundColor(.blue)
                
                Text("\(equipoA)")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.blue)
            }
            
            Spacer()
            VStack{
                Text("Equipo B")
                    .font(.title2)
                    .fontWeight(.semibold)
                    .foregroundColor(.red)
                
                Text("\(equipoB)")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.red)
                
            }
            
            
        } .padding()
    }
}

struct textoView_Previews: PreviewProvider {
    static var previews: some View {
        textoView(equipoA: 100, equipoB: 200)
    }
}
