// Mocks generated by Mockito 5.4.5 from annotations
// in tumblr_api/test/src/api/blog/blog_service_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i7;

import 'package:dio/dio.dart' as _i2;
import 'package:mockito/mockito.dart' as _i1;
import 'package:mockito/src/dummies.dart' as _i10;
import 'package:tumblr_api/api/blog/blog_service.dart' as _i8;
import 'package:tumblr_api/api/models/blog_model.dart' as _i3;
import 'package:tumblr_api/api/models/content_block_model.dart' as _i9;
import 'package:tumblr_api/api/models/notes_model.dart' as _i5;
import 'package:tumblr_api/api/models/tumblr_post_model.dart' as _i4;
import 'package:tumblr_api/base_api.dart' as _i6;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: deprecated_member_use
// ignore_for_file: deprecated_member_use_from_same_package
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: must_be_immutable
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

class _FakeResponse_0<T> extends _i1.SmartFake implements _i2.Response<T> {
  _FakeResponse_0(Object parent, Invocation parentInvocation)
    : super(parent, parentInvocation);
}

class _FakeTumblrBlog_1 extends _i1.SmartFake implements _i3.TumblrBlog {
  _FakeTumblrBlog_1(Object parent, Invocation parentInvocation)
    : super(parent, parentInvocation);
}

class _FakeTumblrPost_2 extends _i1.SmartFake implements _i4.TumblrPost {
  _FakeTumblrPost_2(Object parent, Invocation parentInvocation)
    : super(parent, parentInvocation);
}

class _FakeNotesResponse_3 extends _i1.SmartFake implements _i5.NotesResponse {
  _FakeNotesResponse_3(Object parent, Invocation parentInvocation)
    : super(parent, parentInvocation);
}

/// A class which mocks [BaseService].
///
/// See the documentation for Mockito's code generation for more information.
class MockBaseService extends _i1.Mock implements _i6.BaseService {
  MockBaseService() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i7.Future<_i2.Response<dynamic>> get(
    String? unencodedPath, {
    Map<String, String>? headers = const {},
    Map<String, dynamic>? queryParameters = const {},
  }) =>
      (super.noSuchMethod(
            Invocation.method(
              #get,
              [unencodedPath],
              {#headers: headers, #queryParameters: queryParameters},
            ),
            returnValue: _i7.Future<_i2.Response<dynamic>>.value(
              _FakeResponse_0<dynamic>(
                this,
                Invocation.method(
                  #get,
                  [unencodedPath],
                  {#headers: headers, #queryParameters: queryParameters},
                ),
              ),
            ),
          )
          as _i7.Future<_i2.Response<dynamic>>);

  @override
  _i7.Future<_i2.Response<dynamic>> post(
    String? unencodedPath, {
    Map<String, dynamic>? queryParameters = const {},
    Map<String, dynamic>? body = const {},
  }) =>
      (super.noSuchMethod(
            Invocation.method(
              #post,
              [unencodedPath],
              {#queryParameters: queryParameters, #body: body},
            ),
            returnValue: _i7.Future<_i2.Response<dynamic>>.value(
              _FakeResponse_0<dynamic>(
                this,
                Invocation.method(
                  #post,
                  [unencodedPath],
                  {#queryParameters: queryParameters, #body: body},
                ),
              ),
            ),
          )
          as _i7.Future<_i2.Response<dynamic>>);
}

/// A class which mocks [BlogService].
///
/// See the documentation for Mockito's code generation for more information.
class MockBlogService extends _i1.Mock implements _i8.BlogService {
  MockBlogService() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i7.Future<_i3.TumblrBlog> getInfo(String? blogIdentifier) =>
      (super.noSuchMethod(
            Invocation.method(#getInfo, [blogIdentifier]),
            returnValue: _i7.Future<_i3.TumblrBlog>.value(
              _FakeTumblrBlog_1(
                this,
                Invocation.method(#getInfo, [blogIdentifier]),
              ),
            ),
          )
          as _i7.Future<_i3.TumblrBlog>);

  @override
  _i7.Future<List<_i4.TumblrPost>> getPosts(
    String? blogIdentifier, {
    String? type,
    String? tag,
    int? limit = 20,
    int? offset = 0,
    String? filter,
  }) =>
      (super.noSuchMethod(
            Invocation.method(
              #getPosts,
              [blogIdentifier],
              {
                #type: type,
                #tag: tag,
                #limit: limit,
                #offset: offset,
                #filter: filter,
              },
            ),
            returnValue: _i7.Future<List<_i4.TumblrPost>>.value(
              <_i4.TumblrPost>[],
            ),
          )
          as _i7.Future<List<_i4.TumblrPost>>);

  @override
  _i7.Future<_i4.TumblrPost> getPostById(
    String? blogIdentifier,
    String? postId, {
    List<String>? fields,
  }) =>
      (super.noSuchMethod(
            Invocation.method(
              #getPostById,
              [blogIdentifier, postId],
              {#fields: fields},
            ),
            returnValue: _i7.Future<_i4.TumblrPost>.value(
              _FakeTumblrPost_2(
                this,
                Invocation.method(
                  #getPostById,
                  [blogIdentifier, postId],
                  {#fields: fields},
                ),
              ),
            ),
          )
          as _i7.Future<_i4.TumblrPost>);

  @override
  _i7.Future<String> createPost({
    required String? blogIdentifier,
    required List<_i9.ContentBlock>? content,
    String? parentPostId,
    String? parentBlogUuid,
    List<_i9.LayoutBlock>? layout,
    String? state = 'published',
    List<String>? tags,
    String? publishOn,
    String? date,
  }) =>
      (super.noSuchMethod(
            Invocation.method(#createPost, [], {
              #blogIdentifier: blogIdentifier,
              #content: content,
              #parentPostId: parentPostId,
              #parentBlogUuid: parentBlogUuid,
              #layout: layout,
              #state: state,
              #tags: tags,
              #publishOn: publishOn,
              #date: date,
            }),
            returnValue: _i7.Future<String>.value(
              _i10.dummyValue<String>(
                this,
                Invocation.method(#createPost, [], {
                  #blogIdentifier: blogIdentifier,
                  #content: content,
                  #parentPostId: parentPostId,
                  #parentBlogUuid: parentBlogUuid,
                  #layout: layout,
                  #state: state,
                  #tags: tags,
                  #publishOn: publishOn,
                  #date: date,
                }),
              ),
            ),
          )
          as _i7.Future<String>);

  @override
  _i7.Future<_i5.NotesResponse> getNotes(
    String? blogIdentifier,
    String? postId, {
    int? beforeTimestamp,
    _i5.NoteMode? mode,
    List<String>? types,
  }) =>
      (super.noSuchMethod(
            Invocation.method(
              #getNotes,
              [blogIdentifier, postId],
              {#beforeTimestamp: beforeTimestamp, #mode: mode, #types: types},
            ),
            returnValue: _i7.Future<_i5.NotesResponse>.value(
              _FakeNotesResponse_3(
                this,
                Invocation.method(
                  #getNotes,
                  [blogIdentifier, postId],
                  {
                    #beforeTimestamp: beforeTimestamp,
                    #mode: mode,
                    #types: types,
                  },
                ),
              ),
            ),
          )
          as _i7.Future<_i5.NotesResponse>);

  @override
  _i7.Future<dynamic> getNotifications(
    String? blogIdentifier, {
    List<String>? types,
    int? beforeTime,
    String? cursor,
    int? limit = 20,
  }) =>
      (super.noSuchMethod(
            Invocation.method(
              #getNotifications,
              [blogIdentifier],
              {
                #types: types,
                #beforeTime: beforeTime,
                #cursor: cursor,
                #limit: limit,
              },
            ),
            returnValue: _i7.Future<dynamic>.value(),
          )
          as _i7.Future<dynamic>);
}
