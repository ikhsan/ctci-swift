import HardQuestions
import XCTest

class HardQuestions: XCTestCase {

    /**
     17.7: Baby Names

     Each year, the government releases a list of the 10000 most common baby names and their frequencies (the number of babies with that name). The only problem with this is that some names have multiple spellings. For example, "John" and "Jon" are essentially the same name but would be listed separately in the list. Given two lists, one of names/frequencies and the other of pairs of equivalent names, write an algorithm to print a new list of the true frequency of each name. Note that if John and Jon are synonyms, and Jon and Johnny are synonyms, then John and Johnny are sysnonyms. (Is it both transitive and symmetric.) In the final list, any name can be used as the "real" name.
    */
    func test_17_7_BabyNames() {
        let result = countBabyNames(
            names: [("John", 15), ("Jon", 12), ("Chris", 13), ("Kris", 4), ("Christopher", 19)],
            synonyms: [("Jon", "John"), ("John", "Johnny"), ("Chris", "Kris"), ("Chris", "Christopher")]
        )
        XCTAssertEqual(result["John"], 27)
        XCTAssertEqual(result["Chris"], 36)
    }

    /**
     17.21: Volume of Histogram

     Imagine a histogram (bar graph). Design an algorithm to compute the volume of water it could hold if someone poured water acress the top. You can assume that each histogram bar has width 1.
    */

    func test_17_21_VolumeOfHistogram() {
        XCTAssertEqual(calculateVolume(histogram: [2, 0, 2]), 2)
        XCTAssertEqual(calculateVolume(histogram: [3, 0, 0, 2, 0, 4]), 10)
        XCTAssertEqual(calculateVolume(histogram: [0, 1, 0, 2, 1, 0, 1, 3, 2, 1, 2, 1]), 6)
        XCTAssertEqual(calculateVolume(histogram: [0, 0, 4, 0, 0, 6, 0, 0, 3, 0, 5, 0, 1, 0, 0, 0]), 26)
    }
}
