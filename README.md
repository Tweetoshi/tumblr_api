
# tumblr_api

A Flutter package providing a complete, type-safe wrapper for the Tumblr API v2, making it easy to integrate Tumblr functionality into your Flutter applications.

## Features

- 🔑 **OAuth2 Authentication**: Simple and secure authentication with Tumblr API
- 📝 **Complete API Coverage**:
  - Blog operations (get info, fetch posts, create posts, get notes)
  - User interactions (profile, dashboard, follow/unfollow, like/unlike)
  - Community features (list communities, get community timeline)
  - Tag-based post retrieval
- 🧩 **Modern Post Format**: Full support for Tumblr's Neue Post Format (NPF)
- 🧰 **Type-Safe Models**: Fully typed API responses using Freezed for immutable models
- 📱 **Cross-Platform**: Works on all platforms supported by Flutter

## Getting Started

Add the package to your `pubspec.yaml`:

```yaml
dependencies:
  tumblr_api: ^0.0.1
```

### Prerequisites

To use this package, you'll need:

- A Tumblr API key (obtain from [Tumblr API Console](https://www.tumblr.com/oauth/apps))
- Flutter 3.24.1 or higher
- Dart 3.5.0 or higher

## Usage

### Authentication

```dart
import 'package:tumblr_api/auth/oauth2_client.dart';
import 'package:tumblr_api/auth/token_response.dart';

// Initialize the OAuth client
final oauthClient = TumblrOAuth2Client(
  clientId: 'YOUR_CLIENT_ID',
  clientSecret: 'YOUR_CLIENT_SECRET',
  redirectUri: 'YOUR_REDIRECT_URI',
  authorizationEndpoint: 'https://www.tumblr.com/oauth2/authorize',
  tokenEndpoint: 'https://api.tumblr.com/v2/oauth2/token',
);

// Authenticate user
final tokenResponse = await oauthClient.authenticate(
  callbackUrlScheme: 'your-scheme',
  scopes: ['basic', 'write', 'offline_access'],
);

// Store the access token for later use
final accessToken = tokenResponse.accessToken;
```

### Initializing the API Client

The package provides a unified `TumblrApi` class to access all API services:

```dart
import 'package:tumblr_api/api/tumblr_api.dart';

// Initialize the API client with your access token
final tumblrApi = TumblrApi(accessToken);

// Access various services through the API client
final userService = tumblrApi.user;
final blogService = tumblrApi.blog;
final tagService = tumblrApi.tag;
final communitiesService = tumblrApi.communities;
```

### Working with Blogs

```dart
// Using the blog service through the API client
final blog = await tumblrApi.blog.getInfo('staff.tumblr.com');
print('Blog name: ${blog.name}');
print('Total posts: ${blog.posts}');

// Get blog posts
final posts = await tumblrApi.blog.getPosts(
  'staff.tumblr.com',
  limit: 10,
);

// Create a new post
final postId = await tumblrApi.blog.createPost(
  blogIdentifier: 'your-blog.tumblr.com',
  content: [
    TextBlock(text: 'Hello, Tumblr!'),
    // Add more content blocks as needed
  ],
  tags: ['flutter', 'coding'],
);
```

### User Operations

```dart
// Get the user's profile
final user = await tumblrApi.user.getUserProfile();
print('User name: ${user.name}');

// Get the dashboard posts
final dashboardPosts = await tumblrApi.user.getDashboardPosts(
  limit: 20,
  npf: true,
);

// Follow a blog
await tumblrApi.user.followBlog('staff.tumblr.com');

// Like a post
await tumblrApi.user.likePost('123456789', 'reblog_key');
```

### Working with Tags

```dart
// Get posts with a specific tag
final posts = await tumblrApi.tag.getTaggedPosts(
  'flutter',
  limit: 10,
);
```

### Community Features

```dart
// Get list of joined communities
final communities = await tumblrApi.communities.getCommunities();

// Get community timeline
final timeline = await tumblrApi.communities.getCommunityTimeline('programming');
```

## API Structure

The package follows a service-based architecture, unified under the `TumblrApi` class:

- `tumblrApi.blog`: For blog-related operations
- `tumblrApi.user`: For user-related operations
- `tumblrApi.tag`: For tag-related operations
- `tumblrApi.communities`: For community-related operations

Each service provides methods that closely match the Tumblr API endpoints while providing type-safe responses.

## Additional Information

This package is a wrapper around the [Tumblr API v2](https://www.tumblr.com/docs/en/api/v2) with full support for the Neue Post Format.

### Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

### License

This project is licensed under the MIT License - see the LICENSE file for details.
