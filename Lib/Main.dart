void payWithMoMo() {
  // Your MoMo number
  String momoNumber = "0200879546";
  String amount = "3";
  
  // Show dialog
  showDialog(
    context: context,
    builder: (_) => AlertDialog(
      title: Text("Pay 3 GHS with MoMo"),
      content: Text(
        "1. Dial *170#\n"
        "2. Send $amount GHS to $momoNumber\n"
        "3. Name: Ghana VPN\n\n"
        "After payment, WhatsApp us your MoMo name to get unlock code!"
      ),
      actions: [
        TextButton(
          onPressed: () => launchWhatsApp("233200879546", "I paid 3 GHS for Ghana VPN Premium"),
          child: Text("WhatsApp for Code")
        )
      ]
    )
  );
}

void unlockPremium(String code) {
  if(code == "GHANA3" || code == "GH3PREMIUM") {
    // Unlock all servers
    setState(()=> isPremium = true);
    // Save locally
    savePremiumStatus();
  }
}
