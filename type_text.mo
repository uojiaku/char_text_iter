import Nat "mo:base/Nat";
import Principal "mo:base/Principal";

actor {
    type StudentID = Nat;

    type Team = {
        #penguin;
        #dragons;
    };

    type Student = {
        name : Text;
        score : Nat;
        graduated : Bool;
        principalId : Principal;
        team : Team;
    };

    public func showPrincipalStudent(s : Student) : async Principal {
        s.principalId;
    };
}

// use the candid UI and fill in the fields
// use dfx identity get-principal to get principal id