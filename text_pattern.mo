import Text "mo:base/Text";
import Char "mo:base/Char";

actor {
    type Pattern = Text.Pattern;
    let p : Pattern = #char('c');
    let p2 : Pattern = #text("oto");
    let p3 : Pattern = #predicate(Char.isDigit);
    let text : Text = "Motoko";
    let text2 : Text = "Bootcamp";
    let text3 : Text = "Bootcamp 2023";


    public func test() : async Bool {
       // return(Text.contains(text2, p))
       // return(Text.contains(text, p2))
          return(Text.contains(text3, p3))

    };
}


// dfx canister call text_pattern test
// return a true boolean