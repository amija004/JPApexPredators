//
//  PredatorRow.swift
//  JPApexPredators
//
//  Created by alex on 6/15/23.
//

import SwiftUI

struct PredatorRow: View {
    let predator: ApexPredator
    
    var body: some View {
        HStack {
            // dino image
            Image(predator.name.lowercased().filter {$0 != " "})
                .resizable()
                .scaledToFit()
                .frame(width: 100, height: 100)
                .shadow(color: .white, radius: 1, x: 0, y: 0)
            
            VStack(alignment: .leading){
                // name
                Text(predator.name)
                    .fontWeight(.bold)
                
                // type
                Text(predator.type.capitalized)
                    .font(.subheadline)
                    .fontWeight(.bold)
                    .padding(.horizontal, 13)
                    .padding(.vertical, 5)
                    .overlay(
                        RoundedRectangle(cornerRadius: 20).fill(predator.typeOverlay().opacity(0.33)))
            }
        }
    }
}

struct PredatorRow_Previews: PreviewProvider {
    static var previews: some View {
        let movieScene = MovieScene(id: 3, movie: "Jurassic World: Fallen Kingdom", sceneDescription: "It is revealed that there are surviving Compsognathus populations on Isla Nublar, but will now face an impending danger, alongside many other creatures, in the form of an erupting volcano.\n\nThey are seen running alongside several other species from Mount Sibo.\n\nSeveral Compies have been rescued from the island alongside many other species in order to be sold at auction, and they are later seen running out of the Lockwood Manor after Maisie released all of the captured animals. They eventually eat some of Eli Mills’s remains after the latter was killed and devoured by the T. rex.")
        let predator = ApexPredator(id: 3, name: "Tyrannosaurus Rex", type: "land", movies: ["Jurassic Park","The Lost World: Jurassic Park","Jurassic Park III","Jurassic World", "Jurassic World: Fallen Kingdom"], movieScenes: [movieScene], link: "https://jurassicpark.fandom.com/wiki/Brachiosaurus")
        PredatorRow(predator: predator)
            .preferredColorScheme(.dark)
            .previewLayout(.sizeThatFits)
    }
}
