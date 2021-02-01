//
//  ContentView.swift
//  SwiftUI03
//
//  Created by Dustin on 2021/02/01.
//

import SwiftUI

struct ContentView: View {
    
    static let dateFormat : DateFormatter =  {
       let formatter = DateFormatter()
        formatter.dateFormat = "YYYY년 M월 d일"
        formatter.dateStyle = .full
        return formatter
    }()
    
    
    var today = Date()
    
    var trueOrFalse : Bool = true
    
    var number : Int = 123
    
    
    var body: some View {
        VStack {
            Text("What is Lorem Ipsum?Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.")
                .tracking(3) //글자 사이 간격
                .font(.system(.largeTitle, design: .rounded))
                .fontWeight(.medium)
                .multilineTextAlignment(.leading)
                .lineLimit(nil) //글자 줄
                .padding(.all , 20)
                .lineSpacing(10) // Line spacing
                .truncationMode(.tail)
                .shadow(color: /*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/, radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/, x: -10, y: 10)
                .background(Color.yellow)
                .cornerRadius(20)
                .padding()
                .background(Color.green)
                .cornerRadius(20)
                .padding()
            

            
            Text("안녕하세요!!").background(Color.gray)
                .foregroundColor(Color.white)
            Text("오늘의 날짜입니다 : \(today , formatter: ContentView.dateFormat)")
            
            
            

        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
