//
//  RegisterViewModel.swift
//  iOS-Starter
//
//  Created by Crocodic MBP-2 on 7/21/18.
//  Copyright © 2018 Crocodic. All rights reserved.
//

import Foundation

class RegisterVM {
    init() {
        
    }
    
    /// Send request to server
    ///
    /// - Parameters:
    ///   - userid: User identity difference in every user (ex: email, code)
    ///   - password: Password for userid
    ///   - error: Action when request error
    ///   - success: Action when request success
    func register(userid: String, password: String, error: ((String) -> Void)?, success: ((String) -> Void)?) {
        if userid.isEmpty || password.isEmpty {
            error?(ErrorConstant.completeForm)
            return
        }
        if password.count < 6 {
            error?(ErrorConstant.passwordLength)
            return
        }
        
        success?("Sukses")
        
        // Make request to server
//        ApiHelper.shared.example(value: <#T##String#>) { (json, isSuccess, message) in
//            is isSuccess {
//                success?("Sukses")
//            } else {
//                error?(message)
//            }
//        }
    }
}
