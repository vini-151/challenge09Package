//
//  playground.swift
//  C09Package 
//
//  Created by Vini Oliveira  on 17/10/25.
//

import FoundationModels
import Playgrounds

#Playground {
    
    let instructions = """

        Dê uma frase para engajar o usuário a realizar determinada ação.
    
        A frase deve ser engraçada
    
        A frase deve ter um tom de frase dita por uma mãe bem humorada 
    
        A frase gerada também deve ser curta, não passando de 25 palavras
    """
    
    
    let session = LanguageModelSession(instructions: instructions)
    
    let response = try await session.respond(to: "Motive o usuário a fazer academia")
    
    print(response.content)
}
