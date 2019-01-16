import Cocoa
import Foundation

let HL30days = (365*24*60*60)/12 // half-life of 30 days
let HL15days = (365*24*60*60)/24 // half-life of 15 days
let HL2days = 2*24*60*60

struct Coins {
    var creationDate = 0.0;
    var amount = 0;
    var halfLife = 0;
}

struct Transaction {
    var previousHash: String
    var sender: String
    var receiver: String
    var coinAmount: Int
    var coinCreationDate: Double
    var halfLife: Int
    var ownHash: String
}

func createCoins(amount: Int, hl: Int) -> Coins {
    var newCoins = Coins()
    newCoins.creationDate = NSDate().timeIntervalSince1970
    
    newCoins.amount = amount
    
    newCoins.halfLife = hl
    return newCoins
}

func getValue(coins: Coins) -> Double {
    var value: Double
    let amount = Double(coins.amount)
    let hl = Double(coins.halfLife)
    let lambda = 0.693 / hl
    let life = NSDate().timeIntervalSince1970 - coins.creationDate
    value = amount * exp(-lambda * life)
    
    return value
}

let coinBatch01 = createCoins(amount:100, hl:HL30days)
print("Es wurden ",coinBatch01.amount," Coins mit HWZ 30 Tage erstellt.")

let coinBatch02 = createCoins(amount:100, hl:HL2days)
print("Es wurden ",coinBatch02.amount," Coins mit HWZ 2 Tage erstellt.")

for i in 1...10 {
    print(10-i)
    sleep(1)
}

print("Es sind immernoch ",coinBatch01.amount," von der Batch 01 vorhanden.")
print("Es sind immernoch ",coinBatch02.amount," von der Batch 02 vorhanden.")

print("Der Wert der Batch 01 Coins beträgt nun: ",getValue(coins:coinBatch01))
print("Der Wert der Batch 02 Coins beträgt nun: ",getValue(coins:coinBatch02))
