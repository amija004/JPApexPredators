//
//  PredatorDetail.swift
//  JPApexPredators
//
//  Created by alex on 6/15/23.
//

import SwiftUI

struct PredatorDetail: View {
    let predator: ApexPredator
    var body: some View {
        ScrollView{
            VStack(alignment: .trailing){
                Image(predator.type)
                    .resizable()
                    .scaledToFit()
                
                
                Image(predator.name.lowercased().filter {$0 != " "})
                    .resizable()
                    .scaledToFit()
                    .frame(width: UIScreen.main.bounds.width/1.5, height: UIScreen.main.bounds.height/4)
                    .shadow(color: .black, radius: 6, x:0, y:0)
                    .offset(y:-210)
                    .rotation3DEffect(.degrees(180), axis: (x: 0, y: 1, z: 0))
                VStack(alignment: .leading){
                    Text(predator.name)
                        .font(.largeTitle)
                        .padding(.bottom, 8)
                    
                    Text("Appears In:")
                        .font(.title3)
                    
                    ForEach(predator.movies, id: \.self){ movie in
                        Text("•" + movie)
                            .font(.subheadline)
                    }
                    
                    Text("Movie Moments")
                        .font(.title)
                        .padding(.top, 15)
                    
                    ForEach(predator.movieScenes){ scene in
                        Text(scene.movie)
                            .font(.title2)
                            .padding([.top, .bottom], 1)
                        
                        Text(scene.sceneDescription)
                            .padding(.bottom, 15)
                    }
                    
                    Text("Read More:")
                        .font(.caption)
                    Link(predator.link, destination: URL(string: predator.link)!)
                        .font(.caption)
                        .foregroundColor(.blue)
                }
                .padding(.top, -230)
            }
            .edgesIgnoringSafeArea(.top)
        }
    }
}

struct PredatorDetail_Previews: PreviewProvider {
    static var previews: some View {
        let movieScene1 = MovieScene(id: 1, movie: "Jurassic Park", sceneDescription: "When the inspection team constituting of vertebrate paleontologist Dr. Alan Grant, paleobotanist Dr. Ellie Sattler, chaotician Dr. Ian Malcolm, lawyer Donald Gennaro, and John Hammond's grandchildren Lex and Tim Murphy took a tour of Jurassic Park, initially the Tyrannosaurus was a no-show. Although computer technician Ray Arnold attempted to lure her to her paddock fence by tantalizing her with a goat, the T. rex still refused to answer the call. Alan, observing this, surmised that it was because she wanted to hunt her prey rather than have it offered to her.\n\nLater that night, a tropical storm forced the tour to be turned around sometime after the group visited the Triceratops Paddock. During this time Dennis Nedry shut down all electricity to the park, causing the Ford Explorer Tour Vehicles to shut down in front of the T. rex's paddock with its electrified fencing in the same state. At this point, the T. rex revealed herself to the visitors by eating the goat left by the fence as bait, hunger probably having eclipsing her pride, and then touching the electric fence to see if her enclosure was still electrified. Gennaro, seeing that the fence was disabled left his Explorer and ran to the nearby restroom hut to hide. By that point, the T. rex moved to the disabled fence and ripped it apart with her teeth before stepping out onto the road and roaring triumphantly. After exploring and investigating the Explorers, her attention was caught by the light that was emitted from a flashlight that Lex had turned on in the front Explorer. Unaware that the source of the light was inside the Explorer, she walked right to the front door and peered out into the jungle in front of the Explorer. It was not until Tim slammed the open door next to the T. rex shut that she discovered the source of the light.\n\nNow confident that the light was coming from inside the Explorer and that there were interesting objects inside, the T. rex set to attacking the mysterious vehicle in front of her, searching for a way to get at Lex and Tim to eat them. After failing to get at them through the Explorer's skylight, she flipped the car over and proceeded to savage the undercarriage and right rear tire whilst crushing it under her massive foot. Thanks to the heroic efforts of Alan and Ian, the T. rex was briefly distracted. She followed Ian as he fled toward the Tyrannosaur Paddock Bathroom, where she injured the mathematician by flinging him into the air just as her head came crashing through the door, causing Ian to be buried in the wreckage as the shelter collapsed. The destruction of the building revealed the cowering Gennaro, whom she proceeded to devour while Alan rescued the kids inside the car. Before long, however, the T. rex returned and pushed the vehicle over the cliff while Tim was still inside and pushing Lex and Alan off the edge with the car, though the three survived.\n\nAs Robert Muldoon and Ellie were in the Tyrannosaur Paddock investigating the whereabouts of the survivors and had found Ian, the T. rex attacked the search party. Muldoon and Ellie had heard the T. rex roar several times before during the search and just before her ambush, Ian heard her footsteps. The T. rex attacked suddenly, without warning, crashing through a line of trees where she began chasing them through a tree lined corridor. After a very close chase, she was unsuccessful in catching them and so finally gave up, letting the trio escape to the Visitor Center.\n\nThe next day, during Alan, Tim, and Lex's continued trek to the Visitor Center, they found themselves in the Gallimimus Enclosure, where they witnessed a stampeding herd of Gallimimus. They ran alongside the dinosaurs momentarily before hiding behind a fallen log and watched as the herd was suddenly ambushed by the T. rex who came roaring out of the bushes in their path, stumbling a Gallimimus. This Gallimimus tried to run away, but was too slow to react, and the Tyrannosaur lunged at it, catching the dinosaur in her jaws before proceeding to shake the Gallimimus to death. Alan, Lex, and Tim watched in amazement as the T. rex started to feast on the carcass. Lex begged Alan for them to go, to which Alan obliged. However, Tim continued to stare in fascination and so had to be forcibly taken away by Alan. She never fully consumed this Gallimimus and its remains were still present in the location where it had died by October 6, 2002, almost a decade later.\n\nThe T. rex later made her way to the Visitor Center, entering the lobby through the uncompleted side and grabbed a Velociraptor from mid-air just as it was to pounce on Alan, Ellie, Tim, and Lex, then crushed it in her jaws. Using the distraction that she provided, the humans fled. Meanwhile, another raptor, the Big One pounced on the larger theropod. She snapped at her but could not reach her as the raptor continued to rip and tear madly. Rolling her head, the Big One fell into the T. rex's mouth where she was killed and then thrown against the Tyrannosaurus skeleton, bringing it down with a crash. Having conquered her prey, the T. rex let out a mighty bellow in triumph as the \"When Dinosaurs Ruled the Earth\" banner fell to the ground.")
        let movieScene2 = MovieScene(id: 3, movie: "Jurassic World: Fallen Kingdom", sceneDescription: "It is revealed that there are surviving Compsognathus populations on Isla Nublar, but will now face an impending danger, alongside many other creatures, in the form of an erupting volcano.\n\nThey are seen running alongside several other species from Mount Sibo.\n\nSeveral Compies have been rescued from the island alongside many other species in order to be sold at auction, and they are later seen running out of the Lockwood Manor after Maisie released all of the captured animals. They eventually eat some of Eli Mills’s remains after the latter was killed and devoured by the T. rex.")
        let predator = ApexPredator(id: 3, name: "Tyrannosaurus Rex", type: "land", movies: ["Jurassic Park","The Lost World: Jurassic Park","Jurassic Park III","Jurassic World", "Jurassic World: Fallen Kingdom"], movieScenes: [movieScene1, movieScene2], link: "https://jurassicpark.fandom.com/wiki/Brachiosaurus")
        PredatorDetail(predator: predator)
            .preferredColorScheme(.dark)
    }
}
