# community-coin

Die Idee ist es einen internen Coin für Mitglieder der Hafven Community zu schaffen. 
Der Coin soll einen kleinen Mikro-Markt innerhalb der Community schaffen und die Mitglieder belohne für Interaktionen innerhalb der Community.

Ein mögliches Szenario ist wie folgt:
- jedes Mitglied bekommt am Anfang des Monats seinen Mitgliedsbeitrag als Coins gutgeschrieben
- mit den Coins kann man dann innerhalb der Community Dinge tun:
  - Meetingraum buchen/mieten/bezahlen
  - andere Hafven-Mitglieder für kleine Hilfen belohnen
  - sich vielleicht mal einen Kaffee für Mitglieder im Cafvé gönnen
  - Workshops bei anderen Community-Mitgliedern buchen

Das wirkliche Besondere am Community Coin ist, dass er verfällt. Das motiviert die Mitglieder etwas damit zu machen und ihn nicht einfach anzusammeln. Außerdem stabilisiert es den internen Mikromarkt.

Der Coin soll folgende Eigenschaften haben:
- Crypto-Währung => Blockchain, Token, Tangle-basiert... noch nicht klar, welche Technologie es sein wird
- er zerfällt allmählich, weshalb es sich nicht lohnt ihn zu horten
- er kann mit der Mitgliedskarte ausgegeben werden
- über eine App können sich Mitglieder gegenseitig Coins schicken
- MVP erstmal in swift, um zu sehen, ob das Prinzip erstmal funktioniert

So könnte der Ledger für den Coin aussehen:

*Transaktion ID // Sender // Receiver // Coin Amount // Coin Creation Date // Coin Half-Life // Hash       //*

01             // Max    // Marie    //     5       // 05.01.2019         //   120days      // A2J30EL    //

02             // Max    // Robert   //     7       // 05.01.2019         //   120days      // JNORL93    //

03             // Robert // Marie    //     10      // 05.01.2019         //   120days      // I38JRNM    //

# Ressources

Create an ERC20 Token in less than a minute 
https://medium.com/@vittominacori/create-an-erc20-token-in-less-than-a-minute-2a8751c4d6f4
