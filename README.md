# loader_overlay_helper

## import 
```
import 'package:loader_overlay_helper/loader_overlay_extensions.dart';
import 'package:loader_overlay_helper/loader_overlay_mixin.dart';
```

## initialization

```
GetMaterialApp(/* */).wrapWithGlobalLoaderOverlay();
```

## useage 

``` 
class Name with LoaderOverlayMixin {

 void testLoaderOverlay() {
   showLoading();
   Future.delayed(Duration(seconds: 2),() {
     loadingAddProgress(progress: "this is progress step 1");
   },);
   Future.delayed(Duration(seconds: 4),() {
     loadingAddProgress(progress: "this is progress step 2");
   },);
   Future.delayed(Duration(seconds: 6),() {
     loadingAddProgress(progress: "this is progress step 3");
   },);
   Future.delayed(Duration(seconds: 8),() {
     hideLoading();
   },);
  }

}
```