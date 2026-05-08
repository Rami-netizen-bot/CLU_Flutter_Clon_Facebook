import 'dart:io';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  File? _image;
  final ImagePicker _picker = ImagePicker();
  Future<void> _pickImage() async {
    try {
      final XFile? selectedImage = await _picker.pickImage(
        source: ImageSource.gallery,
      );
      if (selectedImage == null) return;
      setState(() {
        _image = File(selectedImage.path);
      });
    } catch (error) {
      if (!mounted) return;
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text('Could not pick image: $error')));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildCoverAndProfileImage(context),
            _buildProfileInfo(context),
            _buildActionButton(),
            _buildTabSection(),
            _buildDatailScreen(),
          ],
        ),
      ),
    );
  }

  Widget _buildCoverAndProfileImage(BuildContext context) {
    final ImageProvider profileImage = _image == null
        ? const AssetImage('assets/images/Profile1.jpg')
        : FileImage(_image!);

    return Stack(
      alignment: Alignment.topCenter,
      clipBehavior: Clip.none,
      children: [
        Container(
          height: 200,
          width: double.infinity,
          decoration: const BoxDecoration(color: Colors.black87),
        ),
        Text(
          'Cover Photo',
          style: GoogleFonts.lato(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        Positioned(
          top: 120,
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              GestureDetector(
                onTap: _pickImage,
                child: CircleAvatar(
                  radius: 85,
                  backgroundColor: Colors.blueGrey,
                  child: CircleAvatar(
                    radius: 80,
                    backgroundColor: Colors.cyan,
                    backgroundImage: profileImage,
                  ),
                ),
              ),
              Positioned(
                top: 5,
                left: -20,
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 6,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    'Edit Profile',
                    style: TextStyle(
                      fontSize: 12,
                      color: Theme.of(context).textTheme.bodyLarge?.color,
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 6,
                right: 5,
                child: GestureDetector(
                  onTap: _pickImage,
                  child: CircleAvatar(
                    radius: 15,
                    backgroundColor: Colors.grey[200],
                    child: const Icon(Icons.add, size: 18, color: Colors.black),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

Widget _buildProfileInfo(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.fromLTRB(16, 70, 16, 0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            const Text(
              'Ramy',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            const SizedBox(width: 5),
            Text(
              '...',
              style: TextStyle(
                fontSize: 28,
                color: Theme.of(context).textTheme.bodyLarge?.color,
              ),
            ),
          ],
        ),
        const SizedBox(height: 7),
        Text(
          '948 friends',
          style: TextStyle(
            fontSize: 16,
            color: Theme.of(context).textTheme.bodyLarge?.color,
          ),
        ),
        const SizedBox(height: 12),
        Text(
          'You become what do you think',
          style: TextStyle(
            fontSize: 16,
            color: Theme.of(context).textTheme.bodyLarge?.color,
          ),
        ),
      ],
    ),
  );
}

Widget _buildActionButton() {
  return Padding(
    padding: const EdgeInsets.all(16),
    child: Column(
      children: [
        ElevatedButton.icon(
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFF1877F2),
            elevation: 0,
            minimumSize: const Size(double.infinity, 45),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          onPressed: () {
            print('Add to Story');
          },
          label: const Text(
            'Add to Story',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          icon: const Icon(Icons.add_circle, color: Colors.white),
        ),
        const SizedBox(height: 10),
        Row(
          children: [
            Expanded(
              child: ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFE4E6EB),
                  elevation: 0,
                  minimumSize: const Size(0, 45),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                onPressed: () => print('Edit Profile'),
                label: const Text(
                  'Edit Profile',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                icon: const Icon(Icons.edit, size: 18),
              ),
            ),
            const SizedBox(width: 8),
            GestureDetector(
              onTap: () => print('Menu Tapped'),
              child: Container(
                height: 45,
                width: 55,
                decoration: BoxDecoration(
                  color: const Color(0xFFE4E6EB),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Icon(Icons.more_horiz, color: Colors.black),
              ),
            ),
          ],
        ),
      ],
    ),
  );
}

Widget _profileTab(String label, {bool isActive = false}) {
  return Container(
    margin: const EdgeInsets.only(right: 20),
    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
    decoration: BoxDecoration(
      color: isActive ? Colors.blue[700] : Colors.transparent,
      borderRadius: BorderRadius.circular(20),
    ),
    child: Text(
      label,
      style: TextStyle(
        color: isActive ? Colors.blue[700] : Colors.grey[700],
        fontWeight: FontWeight.bold,
        fontSize: 16,
      ),
    ),
  );
}

Widget _buildTabSection() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
    child: Row(
      children: [
        _profileTab('Posts'),
        _profileTab('Photos'),
        _profileTab('Reels'),
      ],
    ),
  );
}

Widget _buildDatailScreen() {
  return Padding(
    padding: const EdgeInsets.all(16),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Detail Screen',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 12),
        _detailRow(Icons.link, 'Thavrin'),
        _detailRow(Icons.school, 'Chenna University'),
      ],
    ),
  );
}

Widget _detailRow(IconData icon, String text) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 12),
    child: Row(
      children: [
        Icon(icon, color: Colors.grey[600]),
        const SizedBox(width: 12),
        Expanded(child: Text(text, style: const TextStyle(fontSize: 16))),
      ],
    ),
  );
}
