//
//  MotivaGen.swift
//  C09Package 
//
//  Created by Vini Oliveira  on 17/10/25.
//

import FoundationModels
import Foundation

@MainActor
public class MotivaGen  {
    
    init () {
    }
    
    
    
    func generate(input: String) async -> String {
        
        let instructions = """

            Dê uma frase para engajar o usuário a realizar determinada ação.
        
            A frase deve ser engraçada
        
            A frase deve ter um tom de frase dita por uma mãe dando bronca
        
            A frase gerada também deve ser curta, não passando de 25 palavras
        """
        
        
        let session = LanguageModelSession(instructions: instructions)
        
        do{
            let response = try await session.respond(to: "Motive o usuário a \(input)")
            return response.content
        }catch {
            print("erro ao gerar conteúdo")
            return "tente novamente"
        }
        
        
        
    }
    
    
}
