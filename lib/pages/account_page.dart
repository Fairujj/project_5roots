import 'package:flutter/material.dart';
import 'package:project_5roots/my%20account/payment_method.dart';


class AccountPage extends StatefulWidget {
  const AccountPage({super.key});
  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 0, 47, 83),
      

      appBar: AppBar(title: const Text('Manage Account'),
      leading: Icon(Icons.person) ,
      ),

      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: ListView(
          children: [

            // Payment Section
            Card(
              elevation: 4,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              child: ListTile(
                leading: const Icon(Icons.payment, color: Colors.teal),
                title: const Text('My Payment'),
                subtitle: const Text('Add Payment Method'),
                trailing: const Icon(Icons.arrow_forward_ios),
                onTap: () {
  ScaffoldMessenger.of(context).showSnackBar(
    const SnackBar(
      content: Text('You clicked My Payment'),
      duration: Duration(seconds: 2),
    ),
  );
              
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const PaymentmethodPage()),
  );
},
                
              ),
            ),
            const SizedBox(height: 12),

            // 📦 Track My Order Section
            Card(
              elevation: 4,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              child: ListTile(
                leading: const Icon(Icons.track_changes, color: Colors.blueAccent),
                title: const Text('Track My Order'),
                subtitle: const Text('Check delivery status'),
                trailing: const Icon(Icons.arrow_forward_ios),
                onTap: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('You clicked Track My Order'),
                      duration: Duration(seconds: 2),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 12),

            // 🔗 Aus Post Section
            Card(
              elevation: 4,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              child: ListTile(
                leading: const Icon(Icons.link, color: Colors.orange),
                title: const Text('Aus Post'),
                subtitle: const Text('Hi Fairuj, check the link below.'),
                trailing: const Icon(Icons.arrow_forward_ios),
                onTap: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('You clicked Aus Post'),
                      duration: Duration(seconds: 2),
                    ),
                  );
                },
              ),
            ),

          ],
        ),
      ),
    );
  }
}














