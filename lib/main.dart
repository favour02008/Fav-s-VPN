import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() => runApp(const FavVPNApp());

class FavVPNApp extends StatelessWidget {
  const FavVPNApp({super.key});
    @override
      Widget build(BuildContext context) {
          return MaterialApp(
                debugShowCheckedModeBanner: false,
                      home: const VPNHome(),
                          );
                            }
                            }

                            class VPNHome extends StatefulWidget {
                              const VPNHome({super.key});
                                @override
                                  State<VPNHome> createState() => _VPNHomeState();
                                  }

                                  class _VPNHomeState extends State<VPNHome> {
                                    bool isPremium = false;
                                      bool isConnected = false;

                                        void openWhatsApp() async {
                                            final url = Uri.parse("https://wa.me/233200875946?text=I%20paid%203%20GHS%20for%20VPN%20Premium");
                                                await launchUrl(url, mode: LaunchMode.externalApplication);
                                                  }

                                                    @override
                                                      Widget build(BuildContext context) {
                                                          return Scaffold(
                                                                appBar: AppBar(title: const Text("Fav's Ghana VPN"), backgroundColor: Colors.green),
                                                                      body: Center(
                                                                              child: Column(
                                                                                        mainAxisAlignment: MainAxisAlignment.center,
                                                                                                  children: [
                                                                                                              Icon(isConnected ? Icons.vpn_lock : Icons.vpn_lock_outlined, size: 100, color: isConnected ? Colors.green : Colors.grey),
                                                                                                                          const SizedBox(height: 20),
                                                                                                                                      Text(isConnected ? "Connected" : "Disconnected", style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                                                                                                                                                  const SizedBox(height: 20),
                                                                                                                                                              ElevatedButton(
                                                                                                                                                                            onPressed: () => setState(() => isConnected = !isConnected),
                                                                                                                                                                                          child: Text(isConnected ? "DISCONNECT" : "CONNECT VPN"),
                                                                                                                                                                                                      ),
                                                                                                                                                                                                                  const SizedBox(height: 20),
                                                                                                                                                                                                                              TextButton(onPressed: openWhatsApp, child: const Text("WhatsApp for Code")),
                                                                                                                                                                                                                                          const SizedBox(height: 10),
                                                                                                                                                                                                                                                      ElevatedButton(
                                                                                                                                                                                                                                                                    onPressed: () => setState(() => isPremium = true),
                                                                                                                                                                                                                                                                                  child: const Text("Get Premium - 3 GHS"),
                                                                                                                                                                                                                                                                                              ),
                                                                                                                                                                                                                                                                                                          if (isPremium) const Text("Premium Activated!", style: TextStyle(color: Colors.green)),
                                                                                                                                                                                                                                                                                                                    ],
                                                                                                                                                                                                                                                                                                                            ),
                                                                                                                                                                                                                                                                                                                                  ),
                                                                                                                                                                                                                                                                                                                                      );
                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                        }
