//
//  ContentView.swift
//  TestSwipeActions
//
//  Created by D. Prameswara on 04/01/23.
//

import SwiftUI

struct ContentView: View {
    @State private var info = ""
    var body: some View {
        VStack {
            Text("\(info)")           
            List {
                ForEach(0 ..< 10, id: \.self) { i in
                    Text("Item number \(i)")
                        .swipeActions(edge: .trailing, allowsFullSwipe: false) {
                            Button {
                                info = "Mark read item \(i)"
                            } label: {
                                Label(
                                    "Mark read",
                                    systemImage: "envelope.open.fill"
                                )
                            }
                            .tint(.blue)

                            Button {
                                info = "Reply item \(i)"
                            } label: {
                                Label(
                                    "Reply",
                                    systemImage: "envelope.arrow.triangle.branch.fill"
                                )
                            }
                            .tint(.green)
                            
                            Button {
                                info = "Favorite item \(i)"
                            } label: {
                                Text(
                                    "Favorite"
                                )
                            }
                            .tint(.brown)
                        }
                        .swipeActions(edge: .leading) {
                            Button {
                                info = "Archive item \(i)"
                            } label: {
                                Label(
                                    "Archive",
                                    systemImage: "archivebox.fill"
                                )
                            }
                            .tint(.cyan)
                            
                            
                        }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
