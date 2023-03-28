; ModuleID = 'obj/Release/android/marshal_methods.armeabi-v7a.ll'
source_filename = "obj/Release/android/marshal_methods.armeabi-v7a.ll"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-android"


%struct.MonoImage = type opaque

%struct.MonoClass = type opaque

%struct.MarshalMethodsManagedClass = type {
	i32,; uint32_t token
	%struct.MonoClass*; MonoClass* klass
}

%struct.MarshalMethodName = type {
	i64,; uint64_t id
	i8*; char* name
}

%class._JNIEnv = type opaque

%class._jobject = type {
	i8; uint8_t b
}

%class._jclass = type {
	i8; uint8_t b
}

%class._jstring = type {
	i8; uint8_t b
}

%class._jthrowable = type {
	i8; uint8_t b
}

%class._jarray = type {
	i8; uint8_t b
}

%class._jobjectArray = type {
	i8; uint8_t b
}

%class._jbooleanArray = type {
	i8; uint8_t b
}

%class._jbyteArray = type {
	i8; uint8_t b
}

%class._jcharArray = type {
	i8; uint8_t b
}

%class._jshortArray = type {
	i8; uint8_t b
}

%class._jintArray = type {
	i8; uint8_t b
}

%class._jlongArray = type {
	i8; uint8_t b
}

%class._jfloatArray = type {
	i8; uint8_t b
}

%class._jdoubleArray = type {
	i8; uint8_t b
}

; assembly_image_cache
@assembly_image_cache = local_unnamed_addr global [0 x %struct.MonoImage*] zeroinitializer, align 4
; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = local_unnamed_addr constant [126 x i32] [
	i32 34715100, ; 0: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 55
	i32 39109920, ; 1: Newtonsoft.Json.dll => 0x254c520 => 11
	i32 53195887, ; 2: Plugin.Toast.Abstractions => 0x32bb46f => 14
	i32 57263871, ; 3: Xamarin.Forms.Core.dll => 0x369c6ff => 50
	i32 182336117, ; 4: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 47
	i32 209399409, ; 5: Xamarin.AndroidX.Browser.dll => 0xc7b2e71 => 33
	i32 232815796, ; 6: System.Web.Services => 0xde07cb4 => 59
	i32 241307327, ; 7: FirstXamarinApp.Android.dll => 0xe620ebf => 0
	i32 318968648, ; 8: Xamarin.AndroidX.Activity.dll => 0x13031348 => 30
	i32 321597661, ; 9: System.Numerics => 0x132b30dd => 24
	i32 342366114, ; 10: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 41
	i32 412528634, ; 11: FirstXamarinApp => 0x1896affa => 4
	i32 442521989, ; 12: Xamarin.Essentials => 0x1a605985 => 49
	i32 450948140, ; 13: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 39
	i32 465846621, ; 14: mscorlib => 0x1bc4415d => 10
	i32 469710990, ; 15: System.dll => 0x1bff388e => 23
	i32 525008092, ; 16: SkiaSharp.dll => 0x1f4afcdc => 18
	i32 548916678, ; 17: Microsoft.Bcl.AsyncInterfaces => 0x20b7cdc6 => 8
	i32 627609679, ; 18: Xamarin.AndroidX.CustomView => 0x2568904f => 37
	i32 662205335, ; 19: System.Text.Encodings.Web.dll => 0x27787397 => 26
	i32 690569205, ; 20: System.Xml.Linq.dll => 0x29293ff5 => 29
	i32 809851609, ; 21: System.Drawing.Common.dll => 0x30455ad9 => 1
	i32 902159924, ; 22: Rg.Plugins.Popup => 0x35c5de34 => 17
	i32 913382283, ; 23: Plugin.Settings => 0x36711b8b => 13
	i32 928116545, ; 24: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 55
	i32 955402788, ; 25: Newtonsoft.Json => 0x38f24a24 => 11
	i32 967690846, ; 26: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 41
	i32 974778368, ; 27: FormsViewGroup.dll => 0x3a19f000 => 5
	i32 1012816738, ; 28: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 46
	i32 1035644815, ; 29: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 32
	i32 1036786681, ; 30: Plugin.Toast => 0x3dcc1bf9 => 15
	i32 1042160112, ; 31: Xamarin.Forms.Platform.dll => 0x3e1e19f0 => 52
	i32 1052210849, ; 32: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 43
	i32 1098259244, ; 33: System => 0x41761b2c => 23
	i32 1293217323, ; 34: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 38
	i32 1359630678, ; 35: XFShimmerLayout => 0x510a5156 => 57
	i32 1365406463, ; 36: System.ServiceModel.Internals.dll => 0x516272ff => 60
	i32 1376866003, ; 37: Xamarin.AndroidX.SavedState => 0x52114ed3 => 46
	i32 1380568550, ; 38: XFShimmerLayout.dll => 0x5249cde6 => 57
	i32 1395363092, ; 39: Plugin.Settings.dll => 0x532b8d14 => 13
	i32 1406073936, ; 40: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 35
	i32 1411638395, ; 41: System.Runtime.CompilerServices.Unsafe => 0x5423e47b => 25
	i32 1426028455, ; 42: Plugin.Toast.dll => 0x54ff77a7 => 15
	i32 1460219004, ; 43: Xamarin.Forms.Xaml => 0x57092c7c => 53
	i32 1469204771, ; 44: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 31
	i32 1565248321, ; 45: Plugin.Settings.Abstractions => 0x5d4bcb41 => 12
	i32 1592978981, ; 46: System.Runtime.Serialization.dll => 0x5ef2ee25 => 3
	i32 1622152042, ; 47: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 44
	i32 1639515021, ; 48: System.Net.Http.dll => 0x61b9038d => 2
	i32 1658251792, ; 49: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 54
	i32 1722051300, ; 50: SkiaSharp.Views.Forms => 0x66a46ae4 => 20
	i32 1729485958, ; 51: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 34
	i32 1766324549, ; 52: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 47
	i32 1776026572, ; 53: System.Core.dll => 0x69dc03cc => 22
	i32 1788241197, ; 54: Xamarin.AndroidX.Fragment => 0x6a96652d => 39
	i32 1796167890, ; 55: Microsoft.Bcl.AsyncInterfaces.dll => 0x6b0f58d2 => 8
	i32 1808609942, ; 56: Xamarin.AndroidX.Loader => 0x6bcd3296 => 44
	i32 1813201214, ; 57: Xamarin.Google.Android.Material => 0x6c13413e => 54
	i32 1867746548, ; 58: Xamarin.Essentials.dll => 0x6f538cf4 => 49
	i32 1878053835, ; 59: Xamarin.Forms.Xaml.dll => 0x6ff0d3cb => 53
	i32 2011961780, ; 60: System.Buffers.dll => 0x77ec19b4 => 21
	i32 2019465201, ; 61: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 43
	i32 2055257422, ; 62: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 42
	i32 2097448633, ; 63: Xamarin.AndroidX.Legacy.Support.Core.UI => 0x7d0486b9 => 40
	i32 2126786730, ; 64: Xamarin.Forms.Platform.Android => 0x7ec430aa => 51
	i32 2201231467, ; 65: System.Net.Http => 0x8334206b => 2
	i32 2279755925, ; 66: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 45
	i32 2471215200, ; 67: ImageCircle.Forms.Plugin => 0x934bc060 => 6
	i32 2475788418, ; 68: Java.Interop.dll => 0x93918882 => 7
	i32 2570120770, ; 69: System.Text.Encodings.Web => 0x9930ee42 => 26
	i32 2732626843, ; 70: Xamarin.AndroidX.Activity => 0xa2e0939b => 30
	i32 2737747696, ; 71: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 31
	i32 2766581644, ; 72: Xamarin.Forms.Core => 0xa4e6af8c => 50
	i32 2778768386, ; 73: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 48
	i32 2795602088, ; 74: SkiaSharp.Views.Android.dll => 0xa6a180a8 => 19
	i32 2810250172, ; 75: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 35
	i32 2819470561, ; 76: System.Xml.dll => 0xa80db4e1 => 28
	i32 2853208004, ; 77: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 48
	i32 2861816565, ; 78: Rg.Plugins.Popup.dll => 0xaa93daf5 => 17
	i32 2867931758, ; 79: Plugin.Toast.Abstractions.dll => 0xaaf12a6e => 14
	i32 2905242038, ; 80: mscorlib.dll => 0xad2a79b6 => 10
	i32 2912489636, ; 81: SkiaSharp.Views.Android => 0xad9910a4 => 19
	i32 2974793899, ; 82: SkiaSharp.Views.Forms.dll => 0xb14fc0ab => 20
	i32 2978675010, ; 83: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 38
	i32 3044182254, ; 84: FormsViewGroup => 0xb57288ee => 5
	i32 3058099980, ; 85: Xamarin.GooglePlayServices.Tasks => 0xb646e70c => 56
	i32 3111772706, ; 86: System.Runtime.Serialization => 0xb979e222 => 3
	i32 3124832203, ; 87: System.Threading.Tasks.Extensions => 0xba4127cb => 61
	i32 3204380047, ; 88: System.Data.dll => 0xbefef58f => 58
	i32 3247949154, ; 89: Mono.Security => 0xc197c562 => 62
	i32 3249260365, ; 90: RestSharp.dll => 0xc1abc74d => 16
	i32 3258312781, ; 91: Xamarin.AndroidX.CardView => 0xc235e84d => 34
	i32 3265893370, ; 92: System.Threading.Tasks.Extensions.dll => 0xc2a993fa => 61
	i32 3317135071, ; 93: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 37
	i32 3317144872, ; 94: System.Data => 0xc5b79d28 => 58
	i32 3326450334, ; 95: FirstXamarinApp.Android => 0xc6459a9e => 0
	i32 3340387945, ; 96: SkiaSharp => 0xc71a4669 => 18
	i32 3353484488, ; 97: Xamarin.AndroidX.Legacy.Support.Core.UI.dll => 0xc7e21cc8 => 40
	i32 3358260929, ; 98: System.Text.Json => 0xc82afec1 => 27
	i32 3362522851, ; 99: Xamarin.AndroidX.Core => 0xc86c06e3 => 36
	i32 3366347497, ; 100: Java.Interop => 0xc8a662e9 => 7
	i32 3374999561, ; 101: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 45
	i32 3395150330, ; 102: System.Runtime.CompilerServices.Unsafe.dll => 0xca5de1fa => 25
	i32 3404865022, ; 103: System.ServiceModel.Internals => 0xcaf21dfe => 60
	i32 3429136800, ; 104: System.Xml => 0xcc6479a0 => 28
	i32 3476120550, ; 105: Mono.Android => 0xcf3163e6 => 9
	i32 3483112796, ; 106: ImageCircle.Forms.Plugin.dll => 0xcf9c155c => 6
	i32 3485117614, ; 107: System.Text.Json.dll => 0xcfbaacae => 27
	i32 3486231360, ; 108: Plugin.Settings.Abstractions.dll => 0xcfcbab40 => 12
	i32 3509114376, ; 109: System.Xml.Linq => 0xd128d608 => 29
	i32 3536029504, ; 110: Xamarin.Forms.Platform.Android.dll => 0xd2c38740 => 51
	i32 3632359727, ; 111: Xamarin.Forms.Platform => 0xd881692f => 52
	i32 3641597786, ; 112: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 42
	i32 3672681054, ; 113: Mono.Android.dll => 0xdae8aa5e => 9
	i32 3676310014, ; 114: System.Web.Services.dll => 0xdb2009fe => 59
	i32 3682565725, ; 115: Xamarin.AndroidX.Browser => 0xdb7f7e5d => 33
	i32 3689375977, ; 116: System.Drawing.Common => 0xdbe768e9 => 1
	i32 3816437471, ; 117: RestSharp => 0xe37a36df => 16
	i32 3829621856, ; 118: System.Numerics.dll => 0xe4436460 => 24
	i32 3896760992, ; 119: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 36
	i32 3917061675, ; 120: FirstXamarinApp.dll => 0xe9799e2b => 4
	i32 3955647286, ; 121: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 32
	i32 3970018735, ; 122: Xamarin.GooglePlayServices.Tasks.dll => 0xeca1adaf => 56
	i32 4105002889, ; 123: Mono.Security.dll => 0xf4ad5f89 => 62
	i32 4151237749, ; 124: System.Core => 0xf76edc75 => 22
	i32 4260525087 ; 125: System.Buffers => 0xfdf2741f => 21
], align 4
@assembly_image_cache_indices = local_unnamed_addr constant [126 x i32] [
	i32 55, i32 11, i32 14, i32 50, i32 47, i32 33, i32 59, i32 0, ; 0..7
	i32 30, i32 24, i32 41, i32 4, i32 49, i32 39, i32 10, i32 23, ; 8..15
	i32 18, i32 8, i32 37, i32 26, i32 29, i32 1, i32 17, i32 13, ; 16..23
	i32 55, i32 11, i32 41, i32 5, i32 46, i32 32, i32 15, i32 52, ; 24..31
	i32 43, i32 23, i32 38, i32 57, i32 60, i32 46, i32 57, i32 13, ; 32..39
	i32 35, i32 25, i32 15, i32 53, i32 31, i32 12, i32 3, i32 44, ; 40..47
	i32 2, i32 54, i32 20, i32 34, i32 47, i32 22, i32 39, i32 8, ; 48..55
	i32 44, i32 54, i32 49, i32 53, i32 21, i32 43, i32 42, i32 40, ; 56..63
	i32 51, i32 2, i32 45, i32 6, i32 7, i32 26, i32 30, i32 31, ; 64..71
	i32 50, i32 48, i32 19, i32 35, i32 28, i32 48, i32 17, i32 14, ; 72..79
	i32 10, i32 19, i32 20, i32 38, i32 5, i32 56, i32 3, i32 61, ; 80..87
	i32 58, i32 62, i32 16, i32 34, i32 61, i32 37, i32 58, i32 0, ; 88..95
	i32 18, i32 40, i32 27, i32 36, i32 7, i32 45, i32 25, i32 60, ; 96..103
	i32 28, i32 9, i32 6, i32 27, i32 12, i32 29, i32 51, i32 52, ; 104..111
	i32 42, i32 9, i32 59, i32 33, i32 1, i32 16, i32 24, i32 36, ; 112..119
	i32 4, i32 32, i32 56, i32 62, i32 22, i32 21 ; 120..125
], align 4

@marshal_methods_number_of_classes = local_unnamed_addr constant i32 0, align 4

; marshal_methods_class_cache
@marshal_methods_class_cache = global [0 x %struct.MarshalMethodsManagedClass] [
], align 4; end of 'marshal_methods_class_cache' array


@get_function_pointer = internal unnamed_addr global void (i32, i32, i32, i8**)* null, align 4

; Function attributes: "frame-pointer"="all" "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+thumb-mode,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" uwtable willreturn writeonly
define void @xamarin_app_init (void (i32, i32, i32, i8**)* %fn) local_unnamed_addr #0
{
	store void (i32, i32, i32, i8**)* %fn, void (i32, i32, i32, i8**)** @get_function_pointer, align 4
	ret void
}

; Names of classes in which marshal methods reside
@mm_class_names = local_unnamed_addr constant [0 x i8*] zeroinitializer, align 4
@__MarshalMethodName_name.0 = internal constant [1 x i8] c"\00", align 1

; mm_method_names
@mm_method_names = local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	; 0
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		i8* getelementptr inbounds ([1 x i8], [1 x i8]* @__MarshalMethodName_name.0, i32 0, i32 0); name
	}
], align 8; end of 'mm_method_names' array


attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable willreturn writeonly "frame-pointer"="all" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+thumb-mode,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #1 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable "frame-pointer"="all" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+thumb-mode,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 1, !"min_enum_size", i32 4}
!3 = !{!"Xamarin.Android remotes/origin/d17-5 @ 797e2e13d1706ace607da43703769c5a55c4de60"}
!llvm.linker.options = !{}
