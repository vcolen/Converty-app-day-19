//
//  Convert.swift
//  Converty
//
//  Created by Victor Colen on 19/11/21.
//

import Foundation

struct Convert {
    
    static func convert(_ input: Double, from firstType: String, to secondType: String) -> Double {
        switch firstType {
        case "Celsius":
            switch secondType {
            case "Fahrenheit":
                return convertCelsiusToFahrenheit(input)
            case "Kelvin":
                return convertCelsiusToKelvin(input)
            default:
                return input
            }
            
        case "Fahrenheit":
            switch secondType {
            case "Celsius":
                return convertFahrenheitToCelsius(input)
            case "Kelvin":
                return convertFahrenheitToKelvin(input)
            default:
                return input
            }
            
        case "Kelvin":
            switch secondType {
            case "Celsius":
                return convertKelvinToCelsius(input)
            case "Fahrenheit":
                return convertKelvinToFahrenheit(input)
            default:
                return input
            }
            
        default:
            return input
        }
    }
    
    static private func convertCelsiusToFahrenheit(_ value: Double) -> Double {
        value * 1.8 + 32
    }
    
    static private func convertCelsiusToKelvin(_ value: Double) -> Double {
        value + 273.15
    }
    
    static private func convertFahrenheitToCelsius(_ value: Double) -> Double {
        (value - 32) * 1.8
    }
    
    static private func convertFahrenheitToKelvin(_ value: Double) -> Double {
        (value - 32) * 1.8 + 273.15
    }
    
    static private func convertKelvinToCelsius(_ value: Double) -> Double {
        value - 273.15
    }
    
    static private func convertKelvinToFahrenheit(_ value: Double) -> Double {
        (value - 273) * 1.8 + 32
    }
}


