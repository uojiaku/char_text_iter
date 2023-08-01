import Char "mo:base/Char";
import Debug "mo:base/Debug";
actor {
    let d : Char = 'D';
    public func test() : async () {
        Debug.print(debug_show(Char.toNat32(d)))
    }
}

// output of -- dfx canister call show_char test -- is shown in the dfx start terminal 