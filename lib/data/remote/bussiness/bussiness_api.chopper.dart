// GENERATED CODE - DO NOT MODIFY BY HAND

part of bussiness_api;

// **************************************************************************
// ChopperGenerator
// **************************************************************************

class _$BusinessAPI extends BusinessAPI {
  _$BusinessAPI([ChopperClient client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = BusinessAPI;

  @override
  Future<Response<ProfileResponse>> getProfile() {
    final $url = '/api/0.4/?randomapi/';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<ProfileResponse, ProfileResponse>($request);
  }
}
