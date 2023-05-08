//
//  RefereeView.swift
//  tablero
//
//  Created by ADMIN UNACH on 23/03/23.
//

import SwiftUI

struct RefereeView: View {
    
    //Estos son binding ya que se modifica lo que no le pertenece
    @Binding var equipoA: Int  //binding => son conexiones a estados
    @Binding var equipoB: Int
    
    
    var body: some View {
        HStack(spacing: 65){
            Button {
                equipoA += 1
            } label: {
                Text("+1 Equipo A")
                    .fontWeight(.semibold)
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            
            Button {
                equipoB += 1
            } label: {
                Text("+1 Equipo B")
                    .fontWeight(.semibold)
                    .padding()
                    .background(Color.red)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            
        }
        
    }
}

struct RefereeView_Previews: PreviewProvider {
    static var previews: some View {
        RefereeView(equipoA: .constant(0), equipoB: .constant(0))
    }
}
