import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:tumblr_api/api/models/content_block_model.dart';
import 'package:tumblr_api/api/models/media_object.dart';

void main() {
  group('ContentBlock JSON serialization', () {
    test('should deserialize and serialize an image block', () {
      // Sample JSON content from tumblr_post_example.json
      final jsonMap = {
        "type": "image",
        "media": [
          {
            "url":
                "https://64.media.tumblr.com/f81cab850b49bc587e6639048ad34092/943c9ac3b6425136-51/s1280x1920/293ee23ad5e2e1ee51eb94d31458e68a78649325.png",
            "type": "image/png",
            "width": 1052,
            "height": 386,
            "has_original_dimensions": true
          },
          {
            "url":
                "https://64.media.tumblr.com/f81cab850b49bc587e6639048ad34092/943c9ac3b6425136-51/s640x960/598f0c45ad2e14569be69812dcbdfc931fed3d0d.png",
            "type": "image/png",
            "width": 640,
            "height": 235
          }
        ],
        "colors": {
          "c0": "000000",
          "c1": "050505",
          "c2": "2b174f",
          "c3": "683b46",
          "c4": "4d0807"
        }
      };

      // Deserialize the JSON into a ContentBlock
      final contentBlock = ContentBlock.fromJson(jsonMap);

      // Verify it was properly deserialized
      expect(contentBlock, isA<ImageContentBlock>());
      final imageBlock = contentBlock as ImageContentBlock;
      expect(imageBlock.media.length, 2);
      expect(imageBlock.media[0].url,
          "https://64.media.tumblr.com/f81cab850b49bc587e6639048ad34092/943c9ac3b6425136-51/s1280x1920/293ee23ad5e2e1ee51eb94d31458e68a78649325.png");
      expect(imageBlock.colors?["c0"], "000000");

      // Serialize back to JSON
      final serializedJson = contentBlock.toJson();

      // Verify the serialized JSON matches the original
      expect(serializedJson["type"], "image");
      expect(serializedJson["media"].length, 2);
      expect(serializedJson["colors"]["c2"], "2b174f");
    });

    test('should deserialize and serialize a text block', () {
      // Sample JSON content from tumblr_post_example.json
      final jsonMap = {
        "type": "text",
        "text": "submitted by @local-robotgirlthing",
        "formatting": [
          {
            "start": 13,
            "end": 34,
            "type": "mention",
            "blog": {
              "name": "local-robotgirlthing",
              "url": "https://www.tumblr.com/blog/view/local-robotgirlthing/",
              "uuid": "t:GG3KJ8-kIvVvOtQy0J2l2A"
            }
          }
        ]
      };

      // Deserialize the JSON into a ContentBlock
      final contentBlock = ContentBlock.fromJson(jsonMap);

      // Verify it was properly deserialized
      expect(contentBlock, isA<TextContentBlock>());
      final textBlock = contentBlock as TextContentBlock;
      expect(textBlock.text, "submitted by @local-robotgirlthing");
      expect(textBlock.formatting?.length, 1);
      expect(textBlock.formatting?[0].start, 13);
      expect(textBlock.formatting?[0].end, 34);
      expect(textBlock.formatting?[0].type, "mention");

      // Serialize back to JSON
      final serializedJson = contentBlock.toJson();

      // Verify the serialized JSON matches the original
      expect(serializedJson["type"], "text");
      expect(serializedJson["text"], "submitted by @local-robotgirlthing");
    });

    test('should handle unknown content block types gracefully', () {
      // Sample JSON with an unsupported type
      final jsonMap = {
        "type": "poll",
        "question": "What is your main indoor lighting preference at home?",
        "answers": [
          {
            "client_id": "f2ba0698-fae2-40ff-81cb-85fa523d595a",
            "answer_text": "Bright white overhead lighting"
          },
          {
            "client_id": "98983ad7-9f68-4c55-bb3b-e1c42506076e",
            "answer_text": "Warm/yellow overhead lighting"
          }
        ]
      };

      // Deserialize the JSON into a ContentBlock
      final contentBlock = ContentBlock.fromJson(jsonMap);

      // Verify it was deserialized as a GenericContentBlock
      expect(contentBlock, isA<GenericContentBlock>());
      final genericBlock = contentBlock as GenericContentBlock;
      expect(genericBlock.type, "poll");

      // Serialize back to JSON
      final serializedJson = contentBlock.toJson();

      // Verify the serialized JSON preserves the type
      expect(serializedJson["type"], "poll");
    });
  });

  group('LayoutBlock JSON serialization', () {
    test('should deserialize and serialize a rows layout block', () {
      final jsonMap = {
        "type": "rows",
        "display": [
          {
            "blocks": [0],
            "mode": {"type": "carousel"}
          },
          {
            "blocks": [1]
          }
        ],
        "truncate_after": 2
      };

      // Deserialize the JSON
      final layoutBlock = LayoutBlock.fromJson(jsonMap);

      // Verify it was properly deserialized
      expect(layoutBlock, isA<RowsLayoutBlock>());
      final rowsBlock = layoutBlock as RowsLayoutBlock;
      expect(rowsBlock.display.length, 2);
      expect(rowsBlock.display[0].blocks, [0]);
      expect(rowsBlock.display[0].mode?.type, "carousel");
      expect(rowsBlock.truncateAfter, 2);

      // Serialize back to JSON
      final serializedJson = layoutBlock.toJson();

      // Verify the serialized JSON
      expect(serializedJson["type"], "rows");
      expect(serializedJson["display"].length, 2);
      expect(serializedJson["truncate_after"], 2);
    });
  });
}
