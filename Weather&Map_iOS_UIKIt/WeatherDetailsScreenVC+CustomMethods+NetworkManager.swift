//
//  NetworkManager.swift
//  Weather&Map_iOS_UIKIt
//
//  Created by Jogender Singh on 29/04/24.
//

import Foundation

// MARK: - CREATING EXTENSION OF DETAILSVC
extension WeatherDetailsScreenVC{
    
    // TODO: - CUSTOM INITIAL SETUP
    internal func initialSetup(){
    }
    
    // MARK: - WEB SERVICE METHODS
    // TODO: FETCH DATA FROM API BY NSURLSESSION
    internal func fetchDataViaNSURLSession(){
        guard let endPoint = URL(string: "https://api.weatherapi.com/v1/current.json?key=5d3cfb71ae184507b3144628231407&q=India&aqi=no") else{
            print("endPoint is not valid url")
            return
        }
        
        let session = URLSession.shared
        let task = session.dataTask(with: endPoint) {(data,response,error)in
            if let error = error {
                print("Error: \(error)")
                return
            }
            
            guard let data = data else {
                print("No data received")
                return
            }
            
            do {
                let decoder = JSONDecoder()
                let weatherResponse = try decoder.decode(WeatherResponse.self, from: data)
                
                DispatchQueue.main.async {
                    self.configure(with: weatherResponse)
                }
            }
            catch {
                print("Error decoding JSON: \(error.localizedDescription)")
            }
        }
        task.resume()
    }
    
    // MARK: - USER DEFINED METHODS (UI UPDATE WITH API DATA CONFIGURE())
    // TODO: CONFIGURE WITH<INFO:SuperheroModel?>
    internal func configure(with info:WeatherResponse?){
        if let info = info{
            self.lblCountryName.text = "Country Name: \(info.location.country)"
            self.lblName.text        = "City name: \(info.location.name)"
            self.lblLatitude.text    = "Latitude: \(info.location.lat)"
            self.lblLongitude.text   = "Longitude: \(info.location.lon)"
            self.lblTZ_ID.text       = "TZ_ID: \(info.location.tz_id)"
            self.lblLocalTime.text   = "LocalTime: \(info.location.localtime)"
            self.lblTemp_C.text      = "Temp_C: \(info.current.temp_c)"
            self.lblTemp_F.text      = "Temp_F: \(info.current.temp_f)"
            self.lblIsDay.text       = "IS Day: \(info.current.is_day)"
            self.lblCloud.text       = "Cloud: \(info.current.cloud)"
            self.lblVisible_KM.text  = "Visibility_KM: \(info.current.vis_km)"
            self.lblUV.text          = "UV_Index: \(info.current.uv)"
        }
    }
}
