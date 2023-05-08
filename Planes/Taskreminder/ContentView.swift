//
//  ContentView.swift
//  Taskreminder
//
//

import SwiftUI

struct ContentView: View {
    @State private var newTodo = ""
    @State private var allTodos: [TodoItem] = []
    private let todosKey = "TodosKey"
    
    var body: some View {
     NavigationView{
        VStack {
            HStack{
                TextField("Agregar pendientes...",text: $newTodo)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                Button(action:{
                    guard !self.newTodo.isEmpty else { return}
                    self.allTodos.append(TodoItem(todo: self.newTodo))
                    self.newTodo = ""
                    self.saveTodos()
                    //self.loadTodos()
                }){
                    Image(systemName: "plus")
                }.padding(.leading, 5)
            }
            .padding()
            
            List{
                ForEach(allTodos){ TodoItem in
                    Text(TodoItem.todo)
                }.onDelete(perform: deleteTodos)
            }
        }
        .navigationBarTitle("Planes a realizar")
        
     }.onAppear(perform:loadTodos)
    
    }
    
    private func deleteTodos(at offsets: IndexSet){
        self.allTodos.remove(atOffsets: offsets)
        saveTodos()
    }
    private func loadTodos(){
        if let todosData = UserDefaults.standard.value(forKey: todosKey) as? Data{
            if let todosList = try? PropertyListDecoder().decode(Array<TodoItem>.self, from: todosData){
                self.allTodos = todosList
            }
        }
    }
    private func saveTodos(){
        UserDefaults.standard.set(try? PropertyListEncoder().encode(self.allTodos),forKey: todosKey)
    }
}
struct TodoItem: Codable,Identifiable{
    var id = UUID()
    let todo:String
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
