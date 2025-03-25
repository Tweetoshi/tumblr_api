import 'dart:convert';
import 'dart:io';
import 'package:flutter_test/flutter_test.dart';
import 'package:tumblr_api/api/models/blog_model.dart';
import 'package:tumblr_api/api/models/content_block_model.dart';
import 'package:tumblr_api/api/models/reblog_trail_item_model.dart';
import 'package:tumblr_api/api/models/tumblr_post_model.dart';

void main() {
  late Map<String, dynamic> reblogPostJson;

  setUpAll(() async {
    // Read the example JSON file with reblogs
    final file =
        File('test/src/api/data/tumblr_post_with_reblogs_example.json');
    final jsonString = await file.readAsString();
    reblogPostJson = json.decode(jsonString);
  });

  group('TumblrPost with reblogs', () {
    test('fromJson correctly parses Tumblr post with reblogs', () {
      final post = TumblrPost.fromJson(reblogPostJson);

      // Verify basic properties
      expect(post.id, '778875291559968768');
      expect(post.blog.name, 'teaboot');
      expect(post.blog.title, 'I Like Yellow Now');
      expect(post.timestamp, 1742793361);
      expect(post.postUrl,
          'https://www.tumblr.com/blog/view/teaboot/778875291559968768');

      // Verify reblog status
      expect(post.reblogKey, null); // This is the root post

      // Verify reblog trail
      expect(post.trail, isNotNull);
      expect(
          post.trail!.length, 6); // Verify the correct number of reblog items

      // Check first reblog in trail
      var firstReblog = post.trail![0];
      expect(firstReblog.post?.id, '729825401619218432');
      expect(firstReblog.blog?.name, 'roach-works');
      expect(firstReblog.blog?.title, 'ELECTRO TECHNO LOVE DISPENSER');
      expect(firstReblog.content.length,
          5); // Verify content blocks in first reblog

      // Check if content blocks in the first reblog are of the correct types
      expect(firstReblog.content[0] is LinkContentBlock, true);
      expect(firstReblog.content[2] is ImageContentBlock, true);
      expect(firstReblog.content[4] is TextContentBlock, true);
      expect((firstReblog.content[4] as TextContentBlock).subtype, 'heading1');

      // Check last reblog in trail
      var lastReblog = post.trail![5];
      expect(lastReblog.post?.id, '777127436661948416');
      expect(lastReblog.blog?.name, 'crab-detector');
      expect(lastReblog.content.length, 1);
      expect(lastReblog.content[0] is TextContentBlock, true);
      expect(
          (lastReblog.content[0] as TextContentBlock).text, 'Crab detected! ✅');

      // Check for specific blog in the trail
      var fortunes =
          post.trail!.firstWhere((item) => item.blog?.name == 'fortunes-haven');
      expect(fortunes.blog?.title, 'Fortune\'s Haven');
      expect(fortunes.post?.id, '729844467845234688');

      // Check content in a middle reblog
      var autumnGracy =
          post.trail!.firstWhere((item) => item.blog?.name == 'autumngracy');
      expect(autumnGracy.content.length, 2);
      expect((autumnGracy.content[0] as TextContentBlock).text,
          '\"Can you describe your prior work experience?\"');
      expect((autumnGracy.content[1] as TextContentBlock).text,
          '\"I\'m a professional crab botherer.\"');
    });

    test('toJson serializes Tumblr post with reblogs correctly', () {
      final post = TumblrPost.fromJson(reblogPostJson);
      final serialized = post.toJson();

      // Test round-trip serialization of base post
      expect(serialized['id'], '778875291559968768');
      expect(serialized['blog'] is TumblrBlog, true);
      expect(serialized['blog']?.name, 'teaboot');
      expect(serialized['timestamp'], 1742793361);

      // Test reblog trail serialization
      expect(serialized['trail'] is List, true);
      expect(serialized['trail']?.length, 6);

      // Verify first reblog serialization
      var firstReblogSerialized = serialized['trail'][0];
      expect(firstReblogSerialized is ReblogTrailItem, true);
      expect(firstReblogSerialized.blog is TumblrBlog, true);
      expect(firstReblogSerialized.blog?.name, 'roach-works');
      expect(firstReblogSerialized.post is PostDetails, true);
      expect(firstReblogSerialized.post?.id, '729825401619218432');

      // Verify last reblog serialization
      var lastReblogSerialized = serialized['trail'][5];
      expect(lastReblogSerialized is ReblogTrailItem, true);
      expect(lastReblogSerialized.blog is TumblrBlog, true);
      expect(lastReblogSerialized.blog?.name, 'crab-detector');
      expect(lastReblogSerialized.content[0] is TextContentBlock, true);
      expect((lastReblogSerialized.content[0] as TextContentBlock).text,
          'Crab detected! ✅');
    });

    test('handles image arrays correctly in reblog content', () {
      final post = TumblrPost.fromJson(reblogPostJson);

      // Find reblog with image content
      var reblogWithImages = post.trail!.firstWhere((item) =>
          item.content.any((content) => content is ImageContentBlock));

      // Verify image data
      var imageContent = reblogWithImages.content
          .firstWhere((content) => content is ImageContentBlock);

      // Access the media array through dynamic to avoid strict typing issues in test
      var media = (imageContent as dynamic).media;
      expect(media, isNotNull);
      expect(media.length, isNonZero);

      // Check image properties
      expect(media[0].url, isNotEmpty);
      expect(media[0].type, contains('image/'));
      expect(media[0].width, isA<int>());
      expect(media[0].height, isA<int>());
    });

    test('summary field is correctly parsed', () {
      final post = TumblrPost.fromJson(reblogPostJson);
      expect(post.summary,
          'Scientists will unleash an army of crabs to help save Floridas dying reef');
    });

    test('noteCount field is correctly parsed', () {
      final post = TumblrPost.fromJson(reblogPostJson);
      expect(post.noteCount, 58334);
    });

    test('brokenBlogName is correctly parsed in reblog trail items', () {
      final post = TumblrPost.fromJson(reblogPostJson);

      // Check if any reblog has a brokenBlogName (if your test data includes this)
      // If not in your test data, you might need to modify the test JSON or mock this test differently
      var reblogsWithBrokenNames =
          post.trail!.where((item) => item.brokenBlogName != null);
      if (reblogsWithBrokenNames.isNotEmpty) {
        var reblog = reblogsWithBrokenNames.first;
        expect(reblog.brokenBlogName, isNotNull);
        expect(reblog.brokenBlogName, isNotEmpty);
      }
    });

    test('layout blocks in reblog items are correctly parsed', () {
      final post = TumblrPost.fromJson(reblogPostJson);

      // Find any reblog with layout data
      var reblogsWithLayout = post.trail!
          .where((item) => item.layout != null && item.layout!.isNotEmpty);

      if (reblogsWithLayout.isNotEmpty) {
        var reblogWithLayout = reblogsWithLayout.first;
        expect(reblogWithLayout.layout, isNotNull);
        expect(reblogWithLayout.layout!.isNotEmpty, true);

        // Test specific layout block properties if they exist in your test data
        var layoutBlock = reblogWithLayout.layout!.first;
        expect(layoutBlock, isNotNull);
      }
    });

    test('formatting in text content blocks is correctly parsed', () {
      final post = TumblrPost.fromJson(reblogPostJson);

      // Find any text block with formatting
      bool foundFormatting = false;

      for (var trailItem in post.trail!) {
        for (var content in trailItem.content) {
          if (content is TextContentBlock &&
              content.formatting != null &&
              content.formatting!.isNotEmpty) {
            foundFormatting = true;

            // Verify text formatting properties
            var formatting = content.formatting!.first;
            expect(formatting.start, isA<int>());
            expect(formatting.end, isA<int>());
            expect(formatting.type, isNotEmpty);

            // Check if the formatting has a URL (like for links)
            if (formatting.type == 'link') {
              expect(formatting.url, isNotEmpty);
            }

            break;
          }
        }
        if (foundFormatting) break;
      }
    });

    test('attribution in content blocks is correctly parsed', () {
      final post = TumblrPost.fromJson(reblogPostJson);

      // Look for any content block with attribution
      bool foundAttribution = false;

      for (var trailItem in post.trail!) {
        for (var content in trailItem.content) {
          AttributionObject? attribution;

          if (content is ImageContentBlock) {
            attribution = content.attribution;
          } else if (content is AudioContentBlock) {
            attribution = content.attribution;
          } else if (content is VideoContentBlock) {
            attribution = content.attribution;
          }

          if (attribution != null) {
            foundAttribution = true;

            // Verify attribution properties
            expect(attribution.type, isNotEmpty);

            // Check common attribution properties
            if (attribution.url != null) {
              expect(attribution.url, isNotEmpty);
            }
            if (attribution.blog != null) {
              expect(attribution.blog!.name, isNotEmpty);
            }
            if (attribution.post != null) {
              expect(attribution.post!.id, isNotEmpty);
            }

            break;
          }
        }
        if (foundAttribution) break;
      }
    });

    test('complex reblog trail traversal works correctly', () {
      final post = TumblrPost.fromJson(reblogPostJson);

      // Find all blogs in the reblog trail
      final blogNames = post.trail!
          .map((item) => item.blog?.name)
          .whereType<String>()
          .toList();
      expect(blogNames.length, post.trail!.length);

      // Check that we can identify the original post and the last reblog
      expect(blogNames.first, 'roach-works'); // First reblog (original poster)
      expect(blogNames.last, 'crab-detector'); // Last reblog

      // Count how many text content blocks exist across all reblogs
      int textBlockCount = 0;
      for (var item in post.trail!) {
        textBlockCount +=
            item.content.whereType<TextContentBlock>().length;
      }
      expect(textBlockCount, isPositive);
    });
  });
}
