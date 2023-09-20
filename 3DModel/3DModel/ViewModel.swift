//
//  ViewModel.swift
//  3DModel
//
//  Created by Ganesh on 21/09/23.
//

import Foundation

class ViewModel: ObservableObject{
    
    @Published var models:[ModelUrl] = []
    
    init(){
        getModels()
    }
    
    func getModels(){
        models = ModelUrl.getData()
    }
    
}

struct ModelUrl: Hashable{
    let url:String
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(url)
    }
    
   static func getData() -> [ModelUrl]{
        return [
            ModelUrl(url:  "https://developer.apple.com/augmented-reality/quick-look/models/teapot/teapot.usdz"),
            ModelUrl(url:  "https://developer.apple.com/augmented-reality/quick-look/models/cupandsaucer/cup_saucer_set.usdz"),
            ModelUrl(url: "https://developer.apple.com/augmented-reality/quick-look/models/tulip/flower_tulip.usdz"),
            ModelUrl(url: "https://developer.apple.com/augmented-reality/quick-look/models/redchair/chair_swan.usdz"),
            ModelUrl(url: "https://developer.apple.com/augmented-reality/quick-look/models/wateringcan/wateringcan.usdz"),
            ModelUrl(url: "https://developer.apple.com/augmented-reality/quick-look/models/gramophone/gramophone.usdz"),
            ModelUrl(url: "https://developer.apple.com/augmented-reality/quick-look/models/retrotv/tv_retro.usdz"),
            ModelUrl(url: "https://developer.apple.com/augmented-reality/quick-look/models/stratocaster/fender_stratocaster.usdz"),
            ModelUrl(url: "https://developer.apple.com/augmented-reality/quick-look/models/vintagerobot2k/robot_walk_idle.usdz"),
            ModelUrl(url: "https://developer.apple.com/augmented-reality/quick-look/models/toycar/toy_car.usdz"),
            ModelUrl(url: "https://developer.apple.com/augmented-reality/quick-look/models/drummertoy/toy_drummer_idle.usdz"),
            ModelUrl(url: "https://developer.apple.com/augmented-reality/quick-look/models/biplane/toy_biplane_idle.usdz"),
            ModelUrl(url: "https://developer.apple.com/augmented-reality/quick-look/models/nike-pegasus/sneaker_pegasustrail.usdz"),
            ModelUrl(url: "https://developer.apple.com/augmented-reality/quick-look/models/nike-air-force/sneaker_airforce.usdz"),
            ModelUrl(url: "https://developer.apple.com/augmented-reality/quick-look/models/meringue/pie_lemon_meringue.usdz"),
        ]
    }
}
