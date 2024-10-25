import Nat "mo:base/Nat";

actor MultiplicationTable {
    public func generateTable(num: Nat): async Text {
        var i: Nat = 1;
        var result: Text = "";
        
        while (i <= 13) {
            let product = num * i;
            result := result # Nat.toText(num) # " x " # Nat.toText(i) # " = " # Nat.toText(product) # "\n";
            i += 1;
        };
        
        return result;
    };
};
