//
//  ContentView.swift
//  Mock_Tinder
//
//  Created by 荒井海斗 on 2022/08/24.
//

import SwiftUI
import UIKit

struct ContentView: View {
    var body: some View {
        
        VStack {
            Spacer()
            ZStack {
                Circle()
                    .stroke(Color(uiColor: UIColor(hex: "EEECEC")), lineWidth: 1.5)
                    .scaledToFit()
                    .frame(width: 140)
                    .background(Circle().fill(Color(uiColor: UIColor(hex: "e1e3e6", alpha: 0.3))))
                    
                    
                    
                Image(systemName: "location.north.circle.fill")
                    .resizable()
                    .frame(width: 60, height: 60)
                    .foregroundColor(Color(uiColor: UIColor(hex: "d7d7d7")))
                    .rotationEffect(Angle(degrees: 180))
                    .scaledToFit()
                
            }
            
            Text("Enable location")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(Color(uiColor: UIColor(hex: "383A38")))
            Text("You'll need to enable your location in order to use Tinder")
                .padding(.vertical, 4)
                .font(.system(size: 14))
                .fontWeight(.medium)
                .frame(width: 236)
                .multilineTextAlignment(.center)
                .foregroundColor(Color.gray)
            
            Spacer()
            Button("ALLOW LOCATION") {
            }
            .padding(EdgeInsets(top: 16, leading: 48, bottom: 16, trailing: 48))
            .font(.system(size: 18, weight: .bold))
            .accentColor(Color.white)
            .background(
                LinearGradient(colors: [Color(uiColor: UIColor(hex: "DF3A74")), Color(uiColor: UIColor(hex: "E06F50"))], startPoint: .leading, endPoint: .trailing)
            )
            .clipShape(Capsule())
            
            HStack {
                Text("TELL ME MORE")
                    .font(.headline)
                    .foregroundColor(Color.gray)
                Image(systemName: "chevron.down")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 10, height: 10)

            }
            .padding(.vertical, 4)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


extension UIColor {
    convenience init(hex: String, alpha: CGFloat = 1.0) {
        let v = Int("000000" + hex, radix: 16) ?? 0
        let r = CGFloat(v / Int(powf(256, 2)) % 256) / 255
        let g = CGFloat(v / Int(powf(256, 1)) % 256) / 255
        let b = CGFloat(v / Int(powf(256, 0)) % 256) / 255
        self.init(red: r, green: g, blue: b, alpha: min(max(alpha, 0), 1))
    }
}

