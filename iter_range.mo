import Iter "mo:base/Iter";
import Debug "mo:base/Debug";

actor {
    let i = Iter.range(0, 10);
    public func test() : async () {
        for (number in i) {
            Debug.print(debug_show(number));
        };
    };
}

// dfx canister call iter_range test
// in the dfx start terminal you'll see the numbers 1 - 10