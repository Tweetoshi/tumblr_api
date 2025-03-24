import 'dart:convert';
import 'package:flutter_test/flutter_test.dart';
import 'package:tumblr_api/api/models/blog_model.dart';
import 'dart:io';

void main() {
  group('TumblrBlog Model', () {
    late Map<String, dynamic> jsonData;

    setUp(() {
      final file = File('test/src/api/data/tumblr_blog_example.json');
      jsonData = jsonDecode(file.readAsStringSync()) as Map<String, dynamic>;
    });

    test('fromJson creates correct TumblrBlog instance', () {
      final blog = TumblrBlog.fromJson(jsonData);

      expect(blog.uuid, 't:8SiTSGzFWwzXTOWSOomU7Q');
      expect(blog.name, 'myBlog');
      expect(blog.title, 'My Blog');
      expect(blog.url, 'https://www.tumblr.com/blog/view/myBlog');
      expect(blog.description, 'My Blog Description');
      expect(blog.followers, 3);
      expect(blog.followed, false);
      expect(blog.primary, true);

      // Test avatars
      expect(blog.avatar, isNotNull);
      expect(blog.avatar!.length, 4);

      // Test first avatar
      expect(blog.avatar![0].url,
          'https://64.media.tumblr.com/71887a47775a256a89033bc049326f78/3355121-13/s512x512u_c1/02fc14f7ccb2e827dbd0e6c2e79feb4d8f562222.jpg');
      expect(blog.avatar![0].width, 512);
      expect(blog.avatar![0].height, 512);

      // Test last avatar
      expect(blog.avatar![3].url,
          'https://64.media.tumblr.com/71887a47775a256a89033bc049326f78/3355121-13/s64x64u_c1/7aaaf39b7711878ab74be216448dccae0b9591f9.jpg');
      expect(blog.avatar![3].width, 64);
      expect(blog.avatar![3].height, 64);
    });

    test('toJson creates correct JSON map', () {
      final blog = TumblrBlog.fromJson(jsonData);
      final convertedJson = blog.toJson();

      expect(convertedJson['uuid'], 't:8SiTSGzFWwzXTOWSOomU7Q');
      expect(convertedJson['name'], 'myBlog');
      expect(convertedJson['title'], 'My Blog');
      expect(convertedJson['url'], 'https://www.tumblr.com/blog/view/myBlog');
      expect(convertedJson['description'], 'My Blog Description');
      expect(convertedJson['followers'], 3);
      expect(convertedJson['followed'], false);
      expect(convertedJson['primary'], true);

      // Test avatars
      expect(convertedJson['avatar'], isNotNull);
      expect(convertedJson['avatar'].length, 4);
    });

    test('copyWith creates new instance with updated values', () {
      final blog = TumblrBlog.fromJson(jsonData);
      final updatedBlog =
          blog.copyWith(title: 'Updated Title', followers: 10, followed: true);

      // Check updated values
      expect(updatedBlog.title, 'Updated Title');
      expect(updatedBlog.followers, 10);
      expect(updatedBlog.followed, true);

      // Check values that should remain the same
      expect(updatedBlog.uuid, blog.uuid);
      expect(updatedBlog.name, blog.name);
      expect(updatedBlog.url, blog.url);
      expect(updatedBlog.avatar, blog.avatar);
      expect(updatedBlog.description, blog.description);
      expect(updatedBlog.primary, blog.primary);
    });
    test('handles missing optional fields', () {
      final incompleteJson = {
        'uuid': 't:8SiTSGzFWwzXTOWSOomU7Q',
        'name': 'myBlog',
        'url': 'https://www.tumblr.com/blog/view/myBlog',
      };

      final blog = TumblrBlog.fromJson(incompleteJson);

      expect(blog.uuid, 't:8SiTSGzFWwzXTOWSOomU7Q');
      expect(blog.name, 'myBlog');
      expect(blog.url, 'https://www.tumblr.com/blog/view/myBlog');
      expect(blog.title, null);
      expect(blog.description, null);
      expect(blog.followers, null);
      expect(blog.followed, null);
      expect(blog.avatar, null);
      expect(blog.primary, false); // Default value
    });
  });
}
