import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:http/http.dart' as http;
import 'package:mapa_molon/model/fuentes_de_agua_response/fuentes_de_agua_response.dart';

Future<FuentesDeAguaResponse> fetchFuentes() async {
  final response = await http.get(Uri.parse(
      'https://valencia.opendatasoft.com/api/explore/v2.1/catalog/datasets/fonts-daigua-publica-fuentes-de-agua-publica/records?limit=20'));

  if (response.statusCode == 200) {
    return FuentesDeAguaResponse.fromJson(response.body);
  } else {
    throw Exception('Failed to load album');
  }
}

class FuentesAgua extends StatefulWidget {
  const FuentesAgua({super.key});

  @override
  State<FuentesAgua> createState() => _FuentesAguaState();
}

class _FuentesAguaState extends State<FuentesAgua> {
  late Future<FuentesDeAguaResponse> futureTopRatedMovie;
  @override
  void initState() {
    super.initState();
    futureTopRatedMovie = fetchFuentes();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: fetchFuentes(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const CircularProgressIndicator();
        } else if (snapshot.hasError) {
          return Text('Error: ${snapshot.error}');
        } else if (!snapshot.hasData) {
          return const Text('No hay datos');
        } else {
          final fuentesList = snapshot.data!.results;

          return Scaffold(
            body: GoogleMap(
              initialCameraPosition: CameraPosition(
                target: LatLng(snapshot.data!.results![0].geoPoint2d!.lon!,
                    snapshot.data!.results![0].geoPoint2d!.lat!),
              ),
              markers: <Marker>{
                Marker(
                    markerId: MarkerId('<MARKER_ID>'),
                    position: LatLng(
                        snapshot.data!.results![0].geoPoint2d!.lat!,
                        snapshot.data!.results![0].geoPoint2d!.lon!))
              },
            ),
          );
        }
      },
    );
  }
}
