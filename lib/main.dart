
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ContactsPage(),
    );
  }
}

class ContactsPage extends StatelessWidget {
  const ContactsPage({super.key});

  final List<Map<String, String>> contacts = const [
    {'name': 'Бекзат Осмонов', 'phone': '+996 700 123 456'},
    {'name': 'Нурбек Токтосунов', 'phone': '+996 555 234 567'},
    {'name': 'Айбек Маматов', 'phone': '+996 777 345 678'},
    {'name': 'Эрлан Садыков', 'phone': '+996 500 456 789'},
    {'name': 'Азамат Жумабеков', 'phone': '+996 707 567 890'},
    {'name': 'Данияр Абдылдаев', 'phone': '+996 550 678 901'},
    {'name': 'Руслан Иманалиев', 'phone': '+996 990 789 012'},
    {'name': 'Тимур Кадыров', 'phone': '+996 770 890 123'},
    {'name': 'Элдияр Бакытов', 'phone': '+996 555 901 234'},
    {'name': 'Мирлан Асанов', 'phone': '+996 700 112 233'},
    {'name': 'Айсулуу Касымова', 'phone': '+996 501 223 344'},
    {'name': 'Алина Исакова', 'phone': '+996 777 334 455'},
    {'name': 'Нурзат Абдиева', 'phone': '+996 550 445 566'},
    {'name': 'Жанара Осмонова', 'phone': '+996 702 556 677'},
  ];

  @override
  Widget build(BuildContext context) {
    final colors = [
      Colors.blue,
      Colors.purple,
      Colors.orange,
      Colors.green,
      Colors.pink,
      Colors.teal,
      Colors.indigo,
    ];

    return Scaffold(
      backgroundColor: const Color(0xFFF5F6FA),

      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          'Контакты',
          style: TextStyle(
            color: Colors.black,
            fontSize: 26,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),

      body: Column(
        children: [
          // Заголовок списка
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 16,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Все контакты',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  '${contacts.length} контактов',
                  style: const TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),

          // Список контактов
          Expanded(
            child: ListView.builder(
              itemCount: contacts.length,
              itemBuilder: (context, index) {
                final contact = contacts[index];

                return Card(
                  color: Colors.white,
                  margin: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 5,
                  ),
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),

                  child: ListTile(
                    contentPadding: const EdgeInsets.all(10),

                    leading: CircleAvatar(
                      radius: 27,
                      backgroundColor:
                          colors[index % colors.length],
                      child: Text(
                        contact['name']![0],
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),

                    title: Text(
                      contact['name']!,
                      style: const TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                      ),
                    ),

                    subtitle: Text(
                      contact['phone']!,
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
