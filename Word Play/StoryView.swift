//
//  StoryView.swift
//  Word Play
//
//  Created by Student on 10/6/21.
//

import SwiftUI

struct StoryView: View {
    var body: some View {
        Text(writeStory())
    }
    let words : Words
    func writeStory() -> String {
        return "Fall has arrived with a chill in the \(words.noun0)." +
        "The leaves are turning \(words.color0) and \(words.color1). " +
        "Night time comes quicker, which usually means \(words.noun1)! " +
        "But today was a \(words.adjective0) day. My \(words.noun2) went to " +
        "the \(words.vegetable0) patch. The farmer took us on a hay " +
        "\(words.verb) to a big \(words.adjective1) field. we all got to " +
        "pick a \(words.vegetable1) that was \(words.adjective2)! Yes, night " +
        "comes quicker now that it's fall. But tonight my " +
        "\(words.vegetable1) sits by my \(words.noun3). Wow, what " +
        "a \(words.adjective3) day!"
        
    }
}



struct StoryView_Previews: PreviewProvider {
    static var previews: some View {
        StoryView(words: Words())
    }
}

