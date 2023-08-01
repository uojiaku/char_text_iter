import Iter "mo:base/Iter";
import Option "mo:base/Option";

actor {
    let languages : [Text] = ["Motoko", "Rust", "JavaScript"];
    // let i = Iter.fromArray(languages);
       let i = Iter.fromArray(languages);

    // public func callI() : async ? Text {
    //    return i.next();
    // }

       public func concatenate() : async Text {
            var finalResult : Text = "";
            for (language in i) {
                finalResult := finalResult # language;
        };
        return finalResult
       };
}

//  1st version
//  dfx canister call iter_array_val2 callI
//  in the same terminal it will return the next iterator in the array: opt "Rust"


//  2nd version
//  dfx canister call iter_array_val2 concatenate
//  in the same terminal you will see "MotokoRustJavaScript"