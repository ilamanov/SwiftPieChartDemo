//
//  ContentView.swift
//  SwiftPieChartDemo
//
//  Created by Nazar Ilamanov on 4/24/21.
//

import SwiftUI
import SwiftPieChart

struct ContentView: View {
    var body: some View {
        VStack {
            Spacer()
                .frame(height: 150.0)
            Text("Spent this month")
                .font(.largeTitle)
                .foregroundColor(.white)
            PieChartView(values: [1300, 500, 300], names: ["Rent", "Transport", "Education"], formatter: {value in String(format: "$%.2f", value)})
                .padding(7.0)
        }
        .background(Color(red: 21 / 255, green: 24 / 255, blue: 30 / 255, opacity: 1.0))
        .edgesIgnoringSafeArea([.top, .bottom])
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
