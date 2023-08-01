import Debug "mo:base/Debug";

actor {
    let t : Text = "motoko";

    public func test() : async () {
        for (letter in t.chars()) {
            Debug.print(debug_show(letter));
        }
    }
}

// dfx canister call iter_letters test
// in the dfx start terminal you'll see the letters