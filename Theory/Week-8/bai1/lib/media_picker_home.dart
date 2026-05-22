import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:video_player/video_player.dart';

class MediaPickerHome extends StatefulWidget {
  @override
  _MediaPickerHomeState createState() => _MediaPickerHomeState();
}

class _MediaPickerHomeState extends State<MediaPickerHome> {
  File? _mediaFile;
  VideoPlayerController? _videoController;
  final ImagePicker _picker = ImagePicker();

  /// Request necessary permissions
  Future<bool> _requestPermissions(bool isVideo, bool isCamera) async {
    List<Permission> permissions = [];

    if (isCamera) {
      permissions.add(Permission.camera);
      if (isVideo) {
        permissions.add(Permission.microphone);
      }
    } else {
      if (Platform.isAndroid) {
        permissions.add(Permission.storage);
      } else if (Platform.isIOS) {
        permissions.add(Permission.photos);
      }
    }

    Map<Permission, PermissionStatus> statuses =
        await permissions.request();

    return statuses.values.every((status) => status.isGranted);
  }

  /// Pick image from gallery
  Future<void> _pickImageFromGallery() async {
    if (!await _requestPermissions(false, false)) {
      _showSnackBar('Permission denied');
      return;
    }

    final XFile? pickedFile = await _picker.pickImage(
      source: ImageSource.gallery,
      imageQuality: 100,
      maxWidth: 1920,
      maxHeight: 1080,
    );

    if (pickedFile != null) {
      _loadMedia(File(pickedFile.path), false);
    } else {
      _showSnackBar('No image selected');
    }
  }

  /// Pick video from gallery
  Future<void> _pickVideoFromGallery() async {
    if (!await _requestPermissions(true, false)) {
      _showSnackBar('Permission denied');
      return;
    }

    final XFile? pickedFile = await _picker.pickVideo(
      source: ImageSource.gallery,
    );

    if (pickedFile != null) {
      _loadMedia(File(pickedFile.path), true);
    } else {
      _showSnackBar('No video selected');
    }
  }

  /// Capture image from camera
  Future<void> _captureImageFromCamera() async {
    if (!await _requestPermissions(false, true)) {
      _showSnackBar('Permission denied');
      return;
    }

    final XFile? capturedFile = await _picker.pickImage(
      source: ImageSource.camera,
    );

    if (capturedFile != null) {
      _loadMedia(File(capturedFile.path), false);
    } else {
      _showSnackBar('No image captured');
    }
  }

  /// Capture video from camera
  Future<void> _captureVideoFromCamera() async {
    if (!await _requestPermissions(true, true)) {
      _showSnackBar('Permission denied');
      return;
    }

    final XFile? capturedFile = await _picker.pickVideo(
      source: ImageSource.camera,
    );

    if (capturedFile != null) {
      _loadMedia(File(capturedFile.path), true);
    } else {
      _showSnackBar('No video captured');
    }
  }

  /// Load media (image or video)
  void _loadMedia(File mediaFile, bool isVideo) {
    _videoController?.dispose();

    setState(() {
      _mediaFile = mediaFile;

      if (isVideo || _mediaFile!.path.toLowerCase().endsWith('.mp4')) {
        _videoController = VideoPlayerController.file(_mediaFile!);
        _videoController!.initialize().then((_) {
          setState(() {});
          _videoController!.play();
        }).catchError((error) {
          _showSnackBar('Error playing video: $error');
        });
      } else {
        _videoController = null;
      }
    });
  }
ssssssss
  /// Show snack bar message
  void _showSnackBar(String message) {
    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(message)));
  }

  @override
  void dispose() {
    _videoController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Media Picker App')),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 30),
            // Media display area
            _mediaFile == null
                ? const Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Text('No media selected'),
                  )
                : _videoController != null &&
                        _videoController!.value.isInitialized
                    ? AspectRatio(
                        aspectRatio:
                            _videoController!.value.aspectRatio,
                        child: VideoPlayer(_videoController!),
                      )
                    : Image.file(_mediaFile!, height: 300),
            const SizedBox(height: 20),
            // Buttons
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  ElevatedButton(
                    onPressed: _pickImageFromGallery,
                    child: const Text('Pick Image from Gallery'),
                  ),
                  const SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: _captureImageFromCamera,
                    child: const Text('Capture Image from Camera'),
                  ),
                  const SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: _pickVideoFromGallery,
                    child: const Text('Pick Video from Gallery'),
                  ),
                  const SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: _captureVideoFromCamera,
                    child: const Text('Capture Video from Camera'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}