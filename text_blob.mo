import Text "mo:base/Text";

actor {

    public func text_to_blob(t: Text) : async Blob{
        Text.encodeUtf8(t);
    };

    public func blob_to_text(b : Blob) : async ? Text {
        Text.decodeUtf8(b);
    }
}

// dfx canister call text_to_blob text_to_blob '("kedu")' --output raw
// dfx canister call text_blob blob_to_text '(blob "kedu")'
