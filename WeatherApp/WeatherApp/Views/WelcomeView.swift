//
//  WelcomeView.swift
//  WeatherApp
//
//  Created by Sergei  Sosnovich on 13.09.23.
//

import SwiftUI
import CoreLocationUI

struct WelcomeView: View {
    @EnvironmentObject var locationManager:
    LocationManager
    
    var body: some View {
        VStack {
            VStack(spacing: 20) {
                Text("Welcome to the Weather App")
                    .bold().font(.title)
                
                Text("Please share your corrent location to get the weather in your area")
                    .padding()
            }
            .multilineTextAlignment(.center)
            .padding()
            
            LocationButton(.shareCurrentLocation){
                locationManager.requestLocation()
            }
            .cornerRadius(30)
            .symbolVariant(.fill)
            .foregroundColor(.white)
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
