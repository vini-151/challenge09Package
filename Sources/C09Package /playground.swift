//
//  playground.swift
//  C09Package 
//
//  Created by Vini Oliveira  on 17/10/25.
//

import FoundationModels
import Playgrounds

#Playground {
    let session = LanguageModelSession()
    
    let response = try await session.respond(to: "Diga oi em 3 línguas diferentes")
    
    print(response)
}
