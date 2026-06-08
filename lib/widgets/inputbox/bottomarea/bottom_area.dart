import 'package:flutter/material.dart';

class BottomArea extends StatelessWidget {
  const BottomArea({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 12),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 40,
              height: 4,
              margin: const EdgeInsets.only(bottom: 20),
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.pop(context);
              },
              leading: Container(
                width: 46,
                height: 46,
                decoration: BoxDecoration(
                  color: Color(0xFFF4F4F4),
                  borderRadius: BorderRadius.circular(12),
                ),
                child:
                    Icon(Icons.image_outlined, color: Colors.black87, size: 24),
              ),
              title: Text(
                "Photo",
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
              ),
              subtitle: Text(
                "Choose from your gallery",
                style: TextStyle(color: Colors.grey, fontSize: 13),
              ),
            ),
            const SizedBox(height: 4),
            ListTile(
              onTap: () {
                Navigator.pop(context);
                // logic الملف هون
              },
              leading: Container(
                width: 46,
                height: 46,
                decoration: BoxDecoration(
                  color: Color(0xFFF4F4F4),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Icon(Icons.insert_drive_file_outlined,
                    color: Colors.black87, size: 24),
              ),
              title: Text(
                "File",
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
              ),
              subtitle: Text(
                "Upload a document or PDF",
                style: TextStyle(color: Colors.grey, fontSize: 13),
              ),
            ),
            const SizedBox(height: 8),
          ],
        ),
      ),
    );
  }
}
