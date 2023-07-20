void main() {
  final List<Map<String , String>> paymentData = [
    {
      "Object": "Payment",
      "Type": "Bank Transfer",
      "Id": "67890",
      "Amount": "1000",
      "Fee": "5230",
      "Currency": "NGN",
    },
    {
      "Object": "Payment",
      "Type": "Bank Transfer",
      "Id": "67890",
      "Amount": "1000",
      "Fee": "5230",
      "Currency": "NGN",
    },

  ];

  final List<Map<String , dynamic>> cardData = [
    {
      "Object": "Card Transaction",
      "Id": "12345",
      "Amount": "4000",
      "Fee": "0",
      "Currency": "NGN",
    },
    {
      "Object": "Card Transaction",
      "Id": "54321",
      "Amount": "4000",
      "Fee": "0",
      "Currency": "NGN",
    },
    {
      "Object": "Card Transaction",
      "Id": "1234567",
      "Amount": "4000",
      "Fee": "0",
      "Currency": "NGN",
    }

  ];

 // RegExp regex = RegExp(r'[a-zA-Z\s]+');

  checkForValidId(String trnsactionId){
    if(trnsactionId != null){
      if(trnsactionId.contains("c.txn.")){
        String testID = trnsactionId.replaceAll("c.txn.", "");
        var transaction = cardData.firstWhere((element) => element["Id"] == testID, orElse: () => {"Msg":"Inavlid Transaction"});
        print(transaction);
      }
      if(trnsactionId.contains("p")){
         String testID = trnsactionId.replaceAll("p.", "");
        var transaction = paymentData.firstWhere((element) => element["Id"] == testID, orElse: () => {"Msg":"Inavlid Transaction"});
         print(transaction);
      }
    }
}
  checkForValidId("c.txn.12345");

}