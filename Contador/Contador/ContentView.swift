//
//  ContentView.swift
//  Contador
//
//  Created by IFPB on 28/09/21.
//  Copyright © 2021 IFPB. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    //@State var quantidade: Int = 0
    @ObservedObject var contadorVM: ContadorViewModel
    
    var body: some View {
        VStack{
            contador
            HStack{
                btIncrementa
                btDecrementa
            }
        }

    }
}

extension ContentView{
    var contador: some View{
    Text(self.contadorVM.quantidade.description)
            .fontWeight(.bold)
            .padding()
            .font(.title)
    }
}
extension ContentView{
    var btIncrementa: some View{
        Button("+"){
            self.contadorVM.incrementa()
        }.font(.title)
        .padding(20)
    }
}
extension ContentView{
    var btDecrementa: some View{
        Button("-"){
            self.contadorVM.decrementa()
        }.font(.title)
        .padding(20)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(contadorVM: ContadorViewModel())
    }
}
