import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class FoodReviewScreen extends StatefulWidget {
  const FoodReviewScreen({super.key});

  @override
  State<FoodReviewScreen> createState() => _FoodReviewScreenState();
}

class _FoodReviewScreenState extends State<FoodReviewScreen> {
  double zoomLevel = 13.0;

  double get mapHeight {
    // ارتفاع ديناميكي حسب الزوم، بين 220 و 400
    return (220 + (zoomLevel - 13) * 100).h.clamp(220.h, 400.h);
  }

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (_, __) => Scaffold(
        backgroundColor: Colors.grey[100],
        body: Column(
          children: [
            SizedBox(
              height: mapHeight,
              width: double.infinity,
              child: GoogleMap(
                initialCameraPosition: CameraPosition(
                  target: const LatLng(-31.9505, 115.8605), // Perth
                  zoom: zoomLevel,
                ),
                onCameraMove: (position) {
                  setState(() {
                    zoomLevel = position.zoom;
                  });
                },
                zoomControlsEnabled: true,
                zoomGesturesEnabled: true,
                scrollGesturesEnabled: true,
                rotateGesturesEnabled: true,
                tiltGesturesEnabled: true,
                mapType: MapType.normal,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Ratings & Reviews',
                  style:
                      TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Expanded(
              child: ListView(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                children: [
                  ReviewCard(
                    name: 'Susie Bridges',
                    rating: 5.0,
                    comment:
                        'Great food I like this place, I think best place of Colorado. Chilling with Friends :)',
                    imageUrls: List.generate(
                      6,
                      (i) => 'assets/image/home${i + 1}.png',
                    ),
                  ),
                  ReviewCard(
                    name: 'Rodney Miller',
                    rating: 4.8,
                    comment:
                        'One of the best and so much good food corner in Colorado. Specially the burger, Lemonade.',
                  ),
                  ReviewCard(
                    name: 'Larry Bowers',
                    rating: 5.0,
                    comment:
                        'Great food I like this place, I think best place of Colorado. Chilling with Friends :)',
                  ),
                  SizedBox(height: 20.h),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange,
                      minimumSize: Size(double.infinity, 50.h),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.r),
                      ),
                    ),
                    child: Text(
                      'BROWSE FOOD',
                      style: TextStyle(
                          fontSize: 16.sp, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(height: 20.h),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ReviewCard extends StatelessWidget {
  final String name;
  final double rating;
  final String comment;
  final List<String>? imageUrls;

  const ReviewCard({
    super.key,
    required this.name,
    required this.rating,
    required this.comment,
    this.imageUrls,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 16.h),
      padding: EdgeInsets.all(12.w),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.9),
        borderRadius: BorderRadius.circular(12.r),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 6,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const CircleAvatar(radius: 16, backgroundColor: Colors.grey),
              SizedBox(width: 8.w),
              Text(name,
                  style:
                      TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold)),
              const Spacer(),
              Icon(Icons.star, color: Colors.amber, size: 20.sp),
              Text(rating.toString(), style: TextStyle(fontSize: 14.sp)),
            ],
          ),
          SizedBox(height: 8.h),
          Text(comment, style: TextStyle(fontSize: 14.sp)),
          if (imageUrls != null) ...[
            SizedBox(height: 8.h),
            Wrap(
              spacing: 8.w,
              runSpacing: 8.h,
              children: imageUrls!
                  .map((url) => ClipRRect(
                        borderRadius: BorderRadius.circular(8.r),
                        child: Image.asset(
                          url,
                          width: 80.w,
                          height: 80.h,
                          fit: BoxFit.cover,
                        ),
                      ))
                  .toList(),
            ),
          ],
        ],
      ),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';
// import 'package:flutter_polyline_points/flutter_polyline_points.dart';
// import 'package:http/http.dart' as http;
// import 'dart:convert';

// class RouteMap extends StatefulWidget {
//   const RouteMap({super.key});

//   @override
//   State<RouteMap> createState() => _RouteMapState();
// }

// class _RouteMapState extends State<RouteMap> {
//   late GoogleMapController mapController;
//   final LatLng origin = const LatLng(25.276987, 55.296249); // دبي
//   final LatLng destination = const LatLng(25.204849, 55.270783); // نقطة أخرى
//   final List<LatLng> polylineCoordinates = [];
//   final Set<Polyline> polylines = {};

//   @override
//   void initState() {
//     super.initState();
//     getRoute();
//   }

//   Future<void> getRoute() async {
//     const apiKey = 'YOUR_API_KEY';
//     final url =
//         'https://maps.googleapis.com/maps/api/directions/json?origin=${origin.latitude},${origin.longitude}&destination=${destination.latitude},${destination.longitude}&key=$apiKey';

//     final response = await http.get(Uri.parse(url));
//     final data = json.decode(response.body);

//     if (data['routes'].isNotEmpty) {
//       final points = PolylinePoints().decodePolyline(
//         data['routes'][0]['overview_polyline']['points'],
//       );

//       polylineCoordinates.clear();
//       for (var point in points) {
//         polylineCoordinates.add(LatLng(point.latitude, point.longitude));
//       }

//       setState(() {
//         polylines.add(
//           Polyline(
//             polylineId: const PolylineId('route'),
//             points: polylineCoordinates,
//             color: Colors.blue,
//             width: 5,
//           ),
//         );
//       });
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: GoogleMap(
//         initialCameraPosition: CameraPosition(target: origin, zoom: 13),
//         onMapCreated: (controller) => mapController = controller,
//         polylines: polylines,
//         markers: {
//           Marker(markerId: const MarkerId('origin'), position: origin),
//           Marker(markerId: const MarkerId('destination'), position: destination),
//         },
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';
// import 'package:flutter_polyline_points/flutter_polyline_points.dart';
// import 'package:http/http.dart' as http;
// import 'dart:convert';

// class FoodReviewScreen extends StatefulWidget {
//   const FoodReviewScreen({super.key});

//   @override
//   State<FoodReviewScreen> createState() => _RouteMapState();
// }

// class _RouteMapState extends State<FoodReviewScreen> {
//   late GoogleMapController mapController;
//   final LatLng origin = const LatLng(25.276987, 55.296249); // دبي
//   final LatLng destination = const LatLng(25.204849, 55.270783); // نقطة أخرى
//   final List<LatLng> polylineCoordinates = [];
//   final Set<Polyline> polylines = {};

//   @override
//   void initState() {
//     super.initState();
//     getRoute();
//   }

//   Future<void> getRoute() async {
//     const apiKey = 'AIzaSyBJjDpq0S-cRzOkfeC2NtIvch3sVxXmWjs';
//     final url =
//         'https://maps.googleapis.com/maps/api/directions/json?origin=${origin.latitude},${origin.longitude}&destination=${destination.latitude},${destination.longitude}&key=$apiKey';

//     final response = await http.get(Uri.parse(url));
//     final data = json.decode(response.body);

//     if (data['routes'].isNotEmpty) {
//       final points = PolylinePoints.decodePolyline(
//         data['routes'][0]['overview_polyline']['points'],
//       );

//       polylineCoordinates.clear();
//       for (var point in points) {
//         polylineCoordinates.add(LatLng(point.latitude, point.longitude));
//       }

//       setState(() {
//         polylines.add(
//           Polyline(
//             polylineId: const PolylineId('route'),
//             points: polylineCoordinates,
//             color: Colors.blue,
//             width: 5,
//           ),
//         );
//       });
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: GoogleMap(
//         initialCameraPosition: CameraPosition(target: origin, zoom: 13),
//         onMapCreated: (controller) => mapController = controller,
//         polylines: polylines,
//         markers: {
//           Marker(markerId: const MarkerId('origin'), position: origin),
//           Marker(
//               markerId: const MarkerId('destination'), position: destination),
//         },
//       ),
//     );
//   }
// }
