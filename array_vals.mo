import Debug "mo:base/Debug";
import Text "mo:base/Text";

actor {
    let array : [Text] = ["Rust", "Motoko", "Typescript", "Python", "C++", "C#"];
    
    public func test() : async () {
        for(language in array.vals()) {
            Debug.print("Kedu " # language);
        }
    }
}

// dfx canister call array_vals test
// in the dfx start terminal you'll see greetings