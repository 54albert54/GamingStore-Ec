//
//  EcommerseModels.swift
//  Rickmorty
//
//  Created by Angel alberto Bernechea on 4/17/24.
//

import Foundation

struct ProductFacility {
    var name: String
    var description: String
}

let productFacilities: [ProductFacility] = [
    ProductFacility(
        name: "Same Day Pickup",
        description: "Order now and pick up your product on the same day from our store."
    ),
    ProductFacility(
        name: "Free Shipping",
        description: "Enjoy free shipping on this product. Your order will be delivered within 3-5 business days."
    ),
    ProductFacility(
        name: "24/7 Customer Support",
        description: "Our customer support team is available 24/7 to assist you with any queries or concerns."
    ),
    ProductFacility(
        name: "Easy Returns",
        description: "Not satisfied with your purchase? No worries! We offer hassle-free returns within 30 days."
    ),
    ProductFacility(
        name: "Extended Warranty",
        description: "Protect your investment with an extended warranty plan. Get additional coverage for up to 3 years."
    )
]




struct EcommerseProducts :Identifiable ,Hashable{
    var id = UUID()
    var name:String
    var image:String
    var description:String
    var supplier:String
    var price:Int


    
    static var onlyImages: [String] {
        EcommerseProducts.dummyData.map { $0.image  }
    }
    
    static var dummyData: [EcommerseProducts] = [
        EcommerseProducts(
            name: "PlayStation 5",
            image: "https://falabella.scene7.com/is/image/Falabella/gsc_126614735_4625926_1?wid=800&hei=800&qlt=70",
            description: "Experience lightning-fast loading with an ultra-high-speed SSD, deeper immersion with support for haptic feedback, adaptive triggers, and 3D Audio, and an all-new generation of incredible PlayStation games.",
            supplier: "Sony",
            price: 499
        ),
        EcommerseProducts(
            name: "Xbox Series X",
            image: "https://www.cnet.com/a/img/resize/119f15ab4d78e2542216a218df2fd22ad05e5b85/hub/2020/10/27/8a5b615a-c5ff-4d4d-bdbd-c58e9e6543af/xbox-series-x-s-console-hoyle-studio-promo-23.jpg?auto=webp&fit=crop&height=1200&width=1200",
            description: "Explore vivid game worlds with rich visuals heightened by HDR technology. Xbox Series X delivers a true-to-life gaming experience with lifelike details, high-speed frame rates, and 4K gaming.",
            supplier: "Microsoft",
            price: 499
        ),
        EcommerseProducts(
            name: "Nintendo Switch",
            image: "https://cdn.vox-cdn.com/thumbor/-J7jZcagMS6W6uKoGXzxO8JmiLg=/1400x788/filters:format(jpeg)/cdn.vox-cdn.com/uploads/chorus_asset/file/22701350/switch_oled_model.jpg",
            description: "Enjoy the versatility of gaming at home or on the go with the Nintendo Switch. Play your favorite games in handheld mode, tabletop mode, or TV mode, anytime, anywhere.",
            supplier: "Nintendo",
            price: 299
        ),
        EcommerseProducts(
            name: "Gaming PC",
            image: "https://i.pcmag.com/imagery/reviews/03OnK229C3rV6ceuwnuJvxE-1.fit_lim.size_840x473.v1682519612.jpg",
            description: "Build the ultimate gaming rig with customizable components. Experience unparalleled performance and stunning visuals with a high-end gaming PC tailored to your preferences.",
            supplier: "Various",
            price: 999
        ),
        EcommerseProducts(
            name: "Gaming Monitor",
            image: "https://www.pcworld.com/wp-content/uploads/2023/07/alienware-aw3423dwf-5-4.jpg?quality=50&strip=all&w=1024",
            description: "Get the competitive edge with a high refresh rate gaming monitor. Immerse yourself in smooth gameplay and enjoy crisp, clear visuals with a monitor designed for gaming enthusiasts.",
            supplier: "Various",
            price: 299
        ),
        EcommerseProducts(
            name: "Gaming Keyboard",
            image: "https://resource.logitechg.com/w_692,c_lpad,ar_4:3,q_auto,f_auto,dpr_1.0/d_transparent.gif/content/dam/gaming/en/products/pro-keyboard/pro-keyboard-gallery/us-pro-gaming-keyboard-gallery-topdown.png?v=1",
            description: "Enhance your gaming experience with a mechanical keyboard designed for precision and performance. Dominate the competition with tactile feedback and customizable key layouts.",
            supplier: "Various",
            price: 99
        ),
        EcommerseProducts(
            name: "Gaming Mouse",
            image: "https://pisces.bbystatic.com/image2/BestBuy_US/images/products/6409/6409361_sd.jpg",
            description: "Achieve pinpoint accuracy and responsive control with a high precision gaming mouse. Experience smooth tracking and ergonomic design for extended gaming sessions.",
            supplier: "Various",
            price: 69
        ),
        EcommerseProducts(
            name: "Gaming Headset",
            image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQHZPYcEMC7GDtDkgM2ixaoQtiLiW1LdsMheuE99C4xwBYiJLKXUN9yMmhfTUXock8vp94&usqp=CAU",
            description: "Immerse yourself in the action with an immersive gaming headset. Experience crystal-clear audio and communicate with teammates seamlessly for an unparalleled gaming experience.",
            supplier: "Various",
            price: 129
        ),
        EcommerseProducts(
            name: "Gaming Chair",
            image: "https://assets.wfcdn.com/im/40398055/compr-r85/1320/132042513/latitude-run-adjustable-reclining-faux-leather-swiveling-gaming-chair-game-chair-with-footrest.jpg",
            description: "Stay comfortable during extended gaming sessions with an ergonomic gaming chair. Support your posture and reduce fatigue with adjustable features designed for gamers.",
            supplier: "Various",
            price: 199
        )
    ]

    
}

