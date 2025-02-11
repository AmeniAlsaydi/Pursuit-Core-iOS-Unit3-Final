//
//  ElementsTests.swift
//  ElementsTests
//
//  Created by Amy Alsaydi on 12/19/19.
//  Copyright © 2019 Pursuit. All rights reserved.
//

import XCTest
@testable import Elements

class ElementsTests: XCTestCase {
    func testModel() {
        let data = """
[
{
    "name": "Hydrogen",
    "appearance": "colorless gas",
    "atomic_mass": 1.008,
    "boil": 20.271,
    "category": "diatomic nonmetal",
    "color": null,
    "density": 0.08988,
    "discovered_by": "Henry Cavendish",
    "melt": 13.99,
    "molar_heat": 28.836,
    "named_by": "Antoine Lavoisier",
    "number": 1,
    "period": 1,
    "phase": "Gas",
    "source": "https://en.wikipedia.org/wiki/Hydrogen",
    "spectral_img": "https://en.wikipedia.org/wiki/File:Hydrogen_Spectra.jpg",
    "summary": "Hydrogen is a chemical element with chemical symbol H and atomic number 1. With an atomic weight of 1.00794 u, hydrogen is the lightest element on the periodic table. Its monatomic form (H) is the most abundant chemical substance in the Universe, constituting roughly 75% of all baryonic mass.",
    "symbol": "H",
    "xpos": 1,
    "ypos": 1,
    "shells": [
        1
    ]
},
{
    "name": "Helium",
    "appearance": "colorless gas, exhibiting a red-orange glow when placed in a high-voltage electric field",
    "atomic_mass": 4.0026022,
    "boil": 4.222,
    "category": "noble gas",
    "color": null,
    "density": 0.1786,
    "discovered_by": "Pierre Janssen",
    "melt": 0.95,
    "molar_heat": null,
    "named_by": null,
    "number": 2,
    "period": 1,
    "phase": "Gas",
    "source": "https://en.wikipedia.org/wiki/Helium",
    "spectral_img": "https://en.wikipedia.org/wiki/File:Helium_spectrum.jpg",
    "summary": "Helium is a chemical element with symbol He and atomic number 2. It is a colorless, odorless, tasteless, non-toxic, inert, monatomic gas that heads the noble gas group in the periodic table. Its boiling and melting points are the lowest among all the elements.",
    "symbol": "He",
    "xpos": 18,
    "ypos": 1,
    "shells": [
        2
    ]
}
]
""".data(using: .utf8)!
        let expected = 2
        
        let elements = try! JSONDecoder().decode([Element].self, from: data)
        XCTAssertEqual(elements.count, expected)
        
    }

    


}
