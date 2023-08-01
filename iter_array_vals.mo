import Debug "mo:base/Debug";
import Iter "mo:base/Iter";
import Nat "mo:base/Nat";

actor {
    let array : [Text] = ["Rust", "Motoko", "Typescript", "Python", "C++", "C#"];
    let i = Iter.fromArray(array);
    let s = Iter.size(i);

    public func test() : async () {
       
            Debug.print("Size of array: " # Nat.toText(s));
        
    }
}

// dfx canister call iter_array_vals test
// in the dfx start terminal you'll see the size of the array in a digit