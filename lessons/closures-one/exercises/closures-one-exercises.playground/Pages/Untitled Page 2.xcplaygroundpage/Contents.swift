////: [Previous](@previous)
//
//import Foundation
//
//var str = "Hello, playground"
//
////: [Next](@next)
//let firstAndLastTuples = [("Johann S.", "Bach"),
//                          ("Claudio", "Monteverdi"),
//                          ("Duke", "Ellington"),
//                          ("W. A.", "Mozart"),
//                          ("Nicolai","Rimsky-Korsakov"),
//                          ("Scott","Joplin"),
//                          ("Josquin","Des Prez")]
//
//// sort the array of tuples by last name. Print the sorted array using string interpolation so that
//// the output looks like:
//// Bach, Johann S.
//// Des Prez, Josquin
//// .
//// .
//// .
//
//let sortedTuples = firstAndLastTuples.sort {(first: (String,String), last: (String,String)) -> Bool in
//    return first.1 < last.1
//    
//}
//
//
//
//
//let sorted = firstAndLastTuples.sort {(first: (String,String), last: (String,String)) -> Bool in
//    return first.1 < last.1
//    
//}
//for tuple in sorted {
//    print("\(tuple.1), \(tuple.0)")
//}

let ac32folks = [("Amber", "Spadafora",	3201),
                 ("Ana", "Ma",	3202),
                 ("Annie", "Tung",	3203),
                 ("Cristopher", "Chavez", 3204),
                 ("Eashir", "Arafat", 3205),
                 ("Edward", "Anchundia", 3206),
                 ("Emily", "Chu", 3207),
                 ("Eric", "Chang", 3208),
                 ("Erica", "Stevens", 3209),
                 ("Fernando", "Ventura", 3210),
                 ("Harichandan", "Singh", 3211),
                 ("Ilmira", "Estil", 3212),
                 ("Jermaine", "Kelly", 3213),
                 ("Gabriel", "Breshears", 3214),
                 ("Kadell", "Gregory", 3215),
                 ("Kareem", "James", 3216),
                 ("Karen", "Fuentes", 3217),
                 ("Leandro", "Nunez", 3218),
                 ("Liam", "Kane", 3219),
                 ("Luz", "Herrera", 3220),
                 ("Madushani", "Liyanage", 3221),
                 ("Marcel", "Chaucer", 3222),
                 ("Margaret", "Ikeda", 3223),
                 ("Maria", "Scutaru", 3224),
                 ("Marty", "Avedon", 3225),
                 ("Michael", "Pinnock", 3226),
                 ("Miti", "Shah", 3227),
                 ("Rukiye", "Karadeniz", 3228),
                 ("Sabrina", "Ip", 3229),
                 ("Simone", "Grant", 3230),
                 ("Sophia", "Barrett", 3231),
                 ("Thinley", "Dorjee", 3232),
                 ("Tom", "Seymour", 3233),
                 ("Tong", "Lin", 3234),
                 ("Tyler", "Newton", 3235),
                 ("Victor", "Zhong", 3236)]

let kareemWins = ac32folks.filter { (a) -> Bool in
a.0 == "Kareem"
}


