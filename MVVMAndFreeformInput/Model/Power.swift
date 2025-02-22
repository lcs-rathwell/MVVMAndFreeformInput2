//
//  Power.swift
//  MVVMAndFreeformInput
//
//  Created by Jack William Rathwell on 2025-02-20.
//

import Foundation

struct Power {
    
    //MARK: Stored Properties
    
    var base: Double
    var exponent: Int
           
    // MARK: Computed properties
    var result: Double {
        
        if exponent == 0 {
            return 1.0
        } else {
            var solution = 1.0
            
            // Repeatedly multiply the base by itself
            // as many more times as needed
            for _ in 1...abs(exponent) {
                solution *= base
            }
            // Return the solution
            return solution
        }
    }
    
    var formattedBase: String {
            return base < 0 ? "(\(base))" : "\(base)"
        }
}
