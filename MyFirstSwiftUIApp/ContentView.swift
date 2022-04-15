//
//  ContentView.swift
//  MyFirstSwiftUIApp
//
//  Created by John Hur on 2022/04/14.
//

import SwiftUI

struct Data: Identifiable {
    var id = UUID()
    let title: String
    let imageName: String
    let imageDescription: String
    let imageTakenDate: String
}

//MARK: - 메인 화면 뷰
struct ContentView: View {
    
    var items = [Data]()
    
    var body: some View {
        NavigationView {
            List(items) { data in
                // NavigationLink로 다음 화면 데이터 전달
                // UIKit의 Segue
                NavigationLink(destination: DataView(data: data)) {
                    HStack {
                        Image(data.imageName)
                            .resizable().frame(width: 100,
                                               height: 100,
                                               alignment: .center)
                            .cornerRadius(10)
                        
                        
                        Text(data.title)
                            .foregroundColor(.primary)
                            .fontWeight(.black)
                    }
                }
            }
            .navigationBarTitle("Photos")
        }
    }
}

//MARK: - 디테일 화면 뷰
struct DataView: View {
    var data: Data
    
    var body: some View {
        VStack {
            Image(data.imageName)
                .resizable().frame(width: 330,
                                   height: 300,
                                   alignment: .center)
                .aspectRatio(contentMode: .fit)
            
            Text(data.imageDescription)
                .font(.largeTitle)
                .padding(5)
            Spacer()
            
            Text(data.imageTakenDate)
                .padding(5)
            
        }
        .navigationBarTitle(data.title)
    }
}


// 미리보기
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView(items: [
                
                Data(title: "Beach 1",
                     imageName: "beach1",
                     imageDescription: "This is a beach.This is a beach.This is a beach.This is a beach.This is a beach.This is a beach.This is a beach.This is a beach.This is a beach.",
                     imageTakenDate: "1/1/2020"),
                Data(title: "Beach 2",
                     imageName: "beach2",
                     imageDescription: "This is a beach.This is a beach.This is a beach.This is a beach.This is a beach.",
                     imageTakenDate: "1/1/2020"),
                Data(title: "Dog",
                     imageName: "dog",
                     imageDescription: "This is a Dog.This is a Dog.This is a Dog.This is a Dog.This is a Dog.This is a Dog.This is a Dog.This is a Dog.This is a Dog.This is a Dog.This is a Dog.This is a Dog.This is a Dog.This is a Dog.",
                     imageTakenDate: "1/1/2020"),
                Data(title: "Car",
                     imageName: "car",
                     imageDescription: "This is a Car.This is a Car.This is a Car.This is a Car.",
                     imageTakenDate: "1/1/2020"),
                Data(title: "Nature",
                     imageName: "nature",
                     imageDescription: "This is a nature.This is a nature.This is a nature.This is a nature.This is a nature.This is a nature.This is a nature.This is a nature.This is a nature.This is a nature.This is a nature.This is a nature.This is a nature.",
                     imageTakenDate: "1/1/2020"),
                Data(title: "Wedding",
                     imageName: "wedding",
                     imageDescription: "This is a wedding.This is a wedding.This is a wedding.This is a wedding.This is a wedding.This is a wedding.",
                     imageTakenDate: "1/1/2020"),
                Data(title: "Fountain",
                     imageName: "fountain",
                     imageDescription: "This is a Fountain.This is a Fountain.This is a Fountain.This is a Fountain.This is a Fountain.",
                     imageTakenDate: "1/1/2020")
                
            ])
            // 스위프트UI에서 제공하는 가장 강력한 기능
                .environment(\.colorScheme, .dark)

            // 미리보기를 iPhone 11 기기로 설정
                .previewDevice(PreviewDevice(rawValue: "iPhone 11"))
            
            ContentView(items: [
                
                Data(title: "Beach 1",
                     imageName: "beach1",
                     imageDescription: "This is a beach.This is a beach.This is a beach.This is a beach.This is a beach.This is a beach.This is a beach.This is a beach.This is a beach.",
                     imageTakenDate: "1/1/2020"),
                Data(title: "Beach 2",
                     imageName: "beach2",
                     imageDescription: "This is a beach.This is a beach.This is a beach.This is a beach.This is a beach.",
                     imageTakenDate: "1/1/2020"),
                Data(title: "Dog",
                     imageName: "dog",
                     imageDescription: "This is a Dog.This is a Dog.This is a Dog.This is a Dog.This is a Dog.This is a Dog.This is a Dog.This is a Dog.This is a Dog.This is a Dog.This is a Dog.This is a Dog.This is a Dog.This is a Dog.",
                     imageTakenDate: "1/1/2020"),
                Data(title: "Car",
                     imageName: "car",
                     imageDescription: "This is a Car.This is a Car.This is a Car.This is a Car.",
                     imageTakenDate: "1/1/2020"),
                Data(title: "Nature",
                     imageName: "nature",
                     imageDescription: "This is a nature.This is a nature.This is a nature.This is a nature.This is a nature.This is a nature.This is a nature.This is a nature.This is a nature.This is a nature.This is a nature.This is a nature.This is a nature.",
                     imageTakenDate: "1/1/2020"),
                Data(title: "Wedding",
                     imageName: "wedding",
                     imageDescription: "This is a wedding.This is a wedding.This is a wedding.This is a wedding.This is a wedding.This is a wedding.",
                     imageTakenDate: "1/1/2020"),
                Data(title: "Fountain",
                     imageName: "fountain",
                     imageDescription: "This is a Fountain.This is a Fountain.This is a Fountain.This is a Fountain.This is a Fountain.",
                     imageTakenDate: "1/1/2020")
                
            ])
//                .previewDevice("iPad Air (4th generation)")
            // 스위프트UI에서 제공하는 가장 강력한 기능
                .environment(\.colorScheme, .light)

            // 미리보기를 iPhone 11 기기로 설정
                .previewDevice(PreviewDevice(rawValue: "iPhone 11"))
        }
    }
}
