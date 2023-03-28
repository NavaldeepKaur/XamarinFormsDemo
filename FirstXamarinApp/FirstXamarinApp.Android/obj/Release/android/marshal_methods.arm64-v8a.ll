; ModuleID = 'obj/Release/android/marshal_methods.arm64-v8a.ll'
source_filename = "obj/Release/android/marshal_methods.arm64-v8a.ll"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-android"


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
@assembly_image_cache = local_unnamed_addr global [0 x %struct.MonoImage*] zeroinitializer, align 8
; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = local_unnamed_addr constant [126 x i64] [
	i64 120698629574877762, ; 0: Mono.Android => 0x1accec39cafe242 => 9
	i64 232391251801502327, ; 1: Xamarin.AndroidX.SavedState.dll => 0x3399e9cbc897277 => 46
	i64 263803244706540312, ; 2: Rg.Plugins.Popup.dll => 0x3a937a743542b18 => 17
	i64 347331204332682223, ; 3: ImageCircle.Forms.Plugin => 0x4d1f7e3dda87bef => 6
	i64 702024105029695270, ; 4: System.Drawing.Common => 0x9be17343c0e7726 => 1
	i64 720058930071658100, ; 5: Xamarin.AndroidX.Legacy.Support.Core.UI => 0x9fe29c82844de74 => 40
	i64 872800313462103108, ; 6: Xamarin.AndroidX.DrawerLayout => 0xc1ccf42c3c21c44 => 38
	i64 996343623809489702, ; 7: Xamarin.Forms.Platform => 0xdd3b93f3b63db26 => 52
	i64 1000557547492888992, ; 8: Mono.Security.dll => 0xde2b1c9cba651a0 => 62
	i64 1120440138749646132, ; 9: Xamarin.Google.Android.Material.dll => 0xf8c9a5eae431534 => 54
	i64 1425944114962822056, ; 10: System.Runtime.Serialization.dll => 0x13c9f89e19eaf3a8 => 3
	i64 1624659445732251991, ; 11: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0x168bf32877da9957 => 31
	i64 1731380447121279447, ; 12: Newtonsoft.Json => 0x18071957e9b889d7 => 11
	i64 1795316252682057001, ; 13: Xamarin.AndroidX.AppCompat.dll => 0x18ea3e9eac997529 => 32
	i64 1836611346387731153, ; 14: Xamarin.AndroidX.SavedState => 0x197cf449ebe482d1 => 46
	i64 1865037103900624886, ; 15: Microsoft.Bcl.AsyncInterfaces => 0x19e1f15d56eb87f6 => 8
	i64 1981742497975770890, ; 16: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x1b80904d5c241f0a => 43
	i64 2040001226662520565, ; 17: System.Threading.Tasks.Extensions.dll => 0x1c4f8a4ea894a6f5 => 61
	i64 2133195048986300728, ; 18: Newtonsoft.Json.dll => 0x1d9aa1984b735138 => 11
	i64 2165725771938924357, ; 19: Xamarin.AndroidX.Browser => 0x1e0e341d75540745 => 33
	i64 2262844636196693701, ; 20: Xamarin.AndroidX.DrawerLayout.dll => 0x1f673d352266e6c5 => 38
	i64 2284400282711631002, ; 21: System.Web.Services => 0x1fb3d1f42fd4249a => 59
	i64 2329709569556905518, ; 22: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x2054ca829b447e2e => 42
	i64 2335503487726329082, ; 23: System.Text.Encodings.Web => 0x2069600c4d9d1cfa => 26
	i64 2337758774805907496, ; 24: System.Runtime.CompilerServices.Unsafe => 0x207163383edbc828 => 25
	i64 2470498323731680442, ; 25: Xamarin.AndroidX.CoordinatorLayout => 0x2248f922dc398cba => 35
	i64 2547086958574651984, ; 26: Xamarin.AndroidX.Activity.dll => 0x2359121801df4a50 => 30
	i64 2592350477072141967, ; 27: System.Xml.dll => 0x23f9e10627330e8f => 28
	i64 2624866290265602282, ; 28: mscorlib.dll => 0x246d65fbde2db8ea => 10
	i64 2783046991838674048, ; 29: System.Runtime.CompilerServices.Unsafe.dll => 0x269f5e7e6dc37c80 => 25
	i64 2960931600190307745, ; 30: Xamarin.Forms.Core => 0x2917579a49927da1 => 50
	i64 3017704767998173186, ; 31: Xamarin.Google.Android.Material => 0x29e10a7f7d88a002 => 54
	i64 3289520064315143713, ; 32: Xamarin.AndroidX.Lifecycle.Common => 0x2da6b911e3063621 => 41
	i64 3522470458906976663, ; 33: Xamarin.AndroidX.SwipeRefreshLayout => 0x30e2543832f52197 => 47
	i64 3531994851595924923, ; 34: System.Numerics => 0x31042a9aade235bb => 24
	i64 3727469159507183293, ; 35: Xamarin.AndroidX.RecyclerView => 0x33baa1739ba646bd => 45
	i64 4127395015561609729, ; 36: XFShimmerLayout => 0x394773e616448201 => 57
	i64 4247996603072512073, ; 37: Xamarin.GooglePlayServices.Tasks => 0x3af3ea6755340049 => 56
	i64 4393287946603171165, ; 38: Plugin.Toast => 0x3cf8181c5d498d5d => 15
	i64 4525561845656915374, ; 39: System.ServiceModel.Internals => 0x3ece06856b710dae => 60
	i64 4787698391273820780, ; 40: Plugin.Settings.Abstractions => 0x427152520f95d26c => 12
	i64 4794310189461587505, ; 41: Xamarin.AndroidX.Activity => 0x4288cfb749e4c631 => 30
	i64 4795410492532947900, ; 42: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0x428cb86f8f9b7bbc => 47
	i64 4829659895759005429, ; 43: FirstXamarinApp => 0x4306661628aa66f5 => 4
	i64 5142919913060024034, ; 44: Xamarin.Forms.Platform.Android.dll => 0x475f52699e39bee2 => 51
	i64 5187827699062344575, ; 45: Plugin.Toast.Abstractions.dll => 0x47feddce568b0b7f => 14
	i64 5203618020066742981, ; 46: Xamarin.Essentials => 0x4836f704f0e652c5 => 49
	i64 5507995362134886206, ; 47: System.Core.dll => 0x4c705499688c873e => 22
	i64 6085203216496545422, ; 48: Xamarin.Forms.Platform.dll => 0x5472fc15a9574e8e => 52
	i64 6086316965293125504, ; 49: FormsViewGroup.dll => 0x5476f10882baef80 => 5
	i64 6222399776351216807, ; 50: System.Text.Json.dll => 0x565a67a0ffe264a7 => 27
	i64 6401687960814735282, ; 51: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0x58d75d486341cfb2 => 42
	i64 6446850567278657228, ; 52: FirstXamarinApp.dll => 0x5977d06f1eab7ecc => 4
	i64 6504860066809920875, ; 53: Xamarin.AndroidX.Browser.dll => 0x5a45e7c43bd43d6b => 33
	i64 6548213210057960872, ; 54: Xamarin.AndroidX.CustomView.dll => 0x5adfed387b066da8 => 37
	i64 6591024623626361694, ; 55: System.Web.Services.dll => 0x5b7805f9751a1b5e => 59
	i64 6659513131007730089, ; 56: Xamarin.AndroidX.Legacy.Support.Core.UI.dll => 0x5c6b57e8b6c3e1a9 => 40
	i64 6671798237668743565, ; 57: SkiaSharp => 0x5c96fd260152998d => 18
	i64 6876862101832370452, ; 58: System.Xml.Linq => 0x5f6f85a57d108914 => 29
	i64 7488575175965059935, ; 59: System.Xml.Linq.dll => 0x67ecc3724534ab5f => 29
	i64 7635363394907363464, ; 60: Xamarin.Forms.Core.dll => 0x69f6428dc4795888 => 50
	i64 7637365915383206639, ; 61: Xamarin.Essentials.dll => 0x69fd5fd5e61792ef => 49
	i64 7654504624184590948, ; 62: System.Net.Http => 0x6a3a4366801b8264 => 2
	i64 7820441508502274321, ; 63: System.Data => 0x6c87ca1e14ff8111 => 58
	i64 7836164640616011524, ; 64: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x6cbfa6390d64d704 => 31
	i64 7927939710195668715, ; 65: SkiaSharp.Views.Android.dll => 0x6e05b32992ed16eb => 19
	i64 8083354569033831015, ; 66: Xamarin.AndroidX.Lifecycle.Common.dll => 0x702dd82730cad267 => 41
	i64 8167236081217502503, ; 67: Java.Interop.dll => 0x7157d9f1a9b8fd27 => 7
	i64 8187102936927221770, ; 68: SkiaSharp.Views.Forms => 0x719e6ebe771ab80a => 20
	i64 8626175481042262068, ; 69: Java.Interop => 0x77b654e585b55834 => 7
	i64 9324707631942237306, ; 70: Xamarin.AndroidX.AppCompat => 0x8168042fd44a7c7a => 32
	i64 9662334977499516867, ; 71: System.Numerics.dll => 0x8617827802b0cfc3 => 24
	i64 9678050649315576968, ; 72: Xamarin.AndroidX.CoordinatorLayout.dll => 0x864f57c9feb18c88 => 35
	i64 9808709177481450983, ; 73: Mono.Android.dll => 0x881f890734e555e7 => 9
	i64 9998632235833408227, ; 74: Mono.Security => 0x8ac2470b209ebae3 => 62
	i64 10038780035334861115, ; 75: System.Net.Http.dll => 0x8b50e941206af13b => 2
	i64 10229024438826829339, ; 76: Xamarin.AndroidX.CustomView => 0x8df4cb880b10061b => 37
	i64 10430153318873392755, ; 77: Xamarin.AndroidX.Core => 0x90bf592ea44f6673 => 36
	i64 10447083246144586668, ; 78: Microsoft.Bcl.AsyncInterfaces.dll => 0x90fb7edc816203ac => 8
	i64 11023048688141570732, ; 79: System.Core => 0x98f9bc61168392ac => 22
	i64 11037814507248023548, ; 80: System.Xml => 0x992e31d0412bf7fc => 28
	i64 11073116829703794986, ; 81: XFShimmerLayout.dll => 0x99ab9d16b6e4f12a => 57
	i64 11162124722117608902, ; 82: Xamarin.AndroidX.ViewPager => 0x9ae7d54b986d05c6 => 48
	i64 11253207298301343314, ; 83: Plugin.Toast.dll => 0x9c2b6c6a6f15b652 => 15
	i64 11529969570048099689, ; 84: Xamarin.AndroidX.ViewPager.dll => 0xa002ae3c4dc7c569 => 48
	i64 11931645068584629408, ; 85: Plugin.Toast.Abstractions => 0xa595b7f92b0734a0 => 14
	i64 12102847907131387746, ; 86: System.Buffers => 0xa7f5f40c43256f62 => 21
	i64 12145679461940342714, ; 87: System.Text.Json => 0xa88e1f1ebcb62fba => 27
	i64 12451044538927396471, ; 88: Xamarin.AndroidX.Fragment.dll => 0xaccaff0a2955b677 => 39
	i64 12466513435562512481, ; 89: Xamarin.AndroidX.Loader.dll => 0xad01f3eb52569061 => 44
	i64 12538491095302438457, ; 90: Xamarin.AndroidX.CardView.dll => 0xae01ab382ae67e39 => 34
	i64 12575653688187638091, ; 91: FirstXamarinApp.Android => 0xae85b26696c1514b => 0
	i64 12963446364377008305, ; 92: System.Drawing.Common.dll => 0xb3e769c8fd8548b1 => 1
	i64 13370592475155966277, ; 93: System.Runtime.Serialization => 0xb98de304062ea945 => 3
	i64 13454009404024712428, ; 94: Xamarin.Google.Guava.ListenableFuture => 0xbab63e4543a86cec => 55
	i64 13492263892638604996, ; 95: SkiaSharp.Views.Forms.dll => 0xbb3e2686788d9ec4 => 20
	i64 13572454107664307259, ; 96: Xamarin.AndroidX.RecyclerView.dll => 0xbc5b0b19d99f543b => 45
	i64 13647894001087880694, ; 97: System.Data.dll => 0xbd670f48cb071df6 => 58
	i64 13852575513600495870, ; 98: ImageCircle.Forms.Plugin.dll => 0xc03e3c09186e90fe => 6
	i64 13959074834287824816, ; 99: Xamarin.AndroidX.Fragment => 0xc1b8989a7ad20fb0 => 39
	i64 13967638549803255703, ; 100: Xamarin.Forms.Platform.Android => 0xc1d70541e0134797 => 51
	i64 14124974489674258913, ; 101: Xamarin.AndroidX.CardView => 0xc405fd76067d19e1 => 34
	i64 14438260825521943376, ; 102: RestSharp.dll => 0xc85f01b93fac7350 => 16
	i64 14551742072151931844, ; 103: System.Text.Encodings.Web.dll => 0xc9f22c50f1b8fbc4 => 26
	i64 14792063746108907174, ; 104: Xamarin.Google.Guava.ListenableFuture.dll => 0xcd47f79af9c15ea6 => 55
	i64 15370334346939861994, ; 105: Xamarin.AndroidX.Core.dll => 0xd54e65a72c560bea => 36
	i64 15592961169488878382, ; 106: FirstXamarinApp.Android.dll => 0xd86553918fd81b2e => 0
	i64 15609085926864131306, ; 107: System.dll => 0xd89e9cf3334914ea => 23
	i64 15810740023422282496, ; 108: Xamarin.Forms.Xaml => 0xdb6b08484c22eb00 => 53
	i64 15930129725311349754, ; 109: Xamarin.GooglePlayServices.Tasks.dll => 0xdd1330956f12f3fa => 56
	i64 15963349826457351533, ; 110: System.Threading.Tasks.Extensions => 0xdd893616f748b56d => 61
	i64 16154507427712707110, ; 111: System => 0xe03056ea4e39aa26 => 23
	i64 16324796876805858114, ; 112: SkiaSharp.dll => 0xe28d5444586b6342 => 18
	i64 16381405407414385978, ; 113: Plugin.Settings => 0xe356716cf698fd3a => 13
	i64 16833383113903931215, ; 114: mscorlib => 0xe99c30c1484d7f4f => 10
	i64 16973888863008331153, ; 115: Plugin.Settings.dll => 0xeb8f5dfd48921591 => 13
	i64 17151170952569239713, ; 116: RestSharp => 0xee05331c4de338a1 => 16
	i64 17285063141349522879, ; 117: Rg.Plugins.Popup => 0xefe0e158cc55fdbf => 17
	i64 17391628571487352960, ; 118: Plugin.Settings.Abstractions.dll => 0xf15b7a0a7d09b880 => 12
	i64 17671790519499593115, ; 119: SkiaSharp.Views.Android => 0xf53ecfd92be3959b => 19
	i64 17704177640604968747, ; 120: Xamarin.AndroidX.Loader => 0xf5b1dfc36cac272b => 44
	i64 17710060891934109755, ; 121: Xamarin.AndroidX.Lifecycle.ViewModel => 0xf5c6c68c9e45303b => 43
	i64 17838668724098252521, ; 122: System.Buffers.dll => 0xf78faeb0f5bf3ee9 => 21
	i64 17882897186074144999, ; 123: FormsViewGroup => 0xf82cd03e3ac830e7 => 5
	i64 17892495832318972303, ; 124: Xamarin.Forms.Xaml.dll => 0xf84eea293687918f => 53
	i64 18129453464017766560 ; 125: System.ServiceModel.Internals.dll => 0xfb98c1df1ec108a0 => 60
], align 8
@assembly_image_cache_indices = local_unnamed_addr constant [126 x i32] [
	i32 9, i32 46, i32 17, i32 6, i32 1, i32 40, i32 38, i32 52, ; 0..7
	i32 62, i32 54, i32 3, i32 31, i32 11, i32 32, i32 46, i32 8, ; 8..15
	i32 43, i32 61, i32 11, i32 33, i32 38, i32 59, i32 42, i32 26, ; 16..23
	i32 25, i32 35, i32 30, i32 28, i32 10, i32 25, i32 50, i32 54, ; 24..31
	i32 41, i32 47, i32 24, i32 45, i32 57, i32 56, i32 15, i32 60, ; 32..39
	i32 12, i32 30, i32 47, i32 4, i32 51, i32 14, i32 49, i32 22, ; 40..47
	i32 52, i32 5, i32 27, i32 42, i32 4, i32 33, i32 37, i32 59, ; 48..55
	i32 40, i32 18, i32 29, i32 29, i32 50, i32 49, i32 2, i32 58, ; 56..63
	i32 31, i32 19, i32 41, i32 7, i32 20, i32 7, i32 32, i32 24, ; 64..71
	i32 35, i32 9, i32 62, i32 2, i32 37, i32 36, i32 8, i32 22, ; 72..79
	i32 28, i32 57, i32 48, i32 15, i32 48, i32 14, i32 21, i32 27, ; 80..87
	i32 39, i32 44, i32 34, i32 0, i32 1, i32 3, i32 55, i32 20, ; 88..95
	i32 45, i32 58, i32 6, i32 39, i32 51, i32 34, i32 16, i32 26, ; 96..103
	i32 55, i32 36, i32 0, i32 23, i32 53, i32 56, i32 61, i32 23, ; 104..111
	i32 18, i32 13, i32 10, i32 13, i32 16, i32 17, i32 12, i32 19, ; 112..119
	i32 44, i32 43, i32 21, i32 5, i32 53, i32 60 ; 120..125
], align 4

@marshal_methods_number_of_classes = local_unnamed_addr constant i32 0, align 4

; marshal_methods_class_cache
@marshal_methods_class_cache = global [0 x %struct.MarshalMethodsManagedClass] [
], align 8; end of 'marshal_methods_class_cache' array


@get_function_pointer = internal unnamed_addr global void (i32, i32, i32, i8**)* null, align 8

; Function attributes: "frame-pointer"="non-leaf" "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics" uwtable willreturn writeonly
define void @xamarin_app_init (void (i32, i32, i32, i8**)* %fn) local_unnamed_addr #0
{
	store void (i32, i32, i32, i8**)* %fn, void (i32, i32, i32, i8**)** @get_function_pointer, align 8
	ret void
}

; Names of classes in which marshal methods reside
@mm_class_names = local_unnamed_addr constant [0 x i8*] zeroinitializer, align 8
@__MarshalMethodName_name.0 = internal constant [1 x i8] c"\00", align 1

; mm_method_names
@mm_method_names = local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	; 0
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		i8* getelementptr inbounds ([1 x i8], [1 x i8]* @__MarshalMethodName_name.0, i32 0, i32 0); name
	}
], align 8; end of 'mm_method_names' array


attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable willreturn writeonly "frame-pointer"="non-leaf" "target-cpu"="generic" "target-features"="+neon,+outline-atomics" }
attributes #1 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable "frame-pointer"="non-leaf" "target-cpu"="generic" "target-features"="+neon,+outline-atomics" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 1, !"branch-target-enforcement", i32 0}
!3 = !{i32 1, !"sign-return-address", i32 0}
!4 = !{i32 1, !"sign-return-address-all", i32 0}
!5 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!6 = !{!"Xamarin.Android remotes/origin/d17-5 @ 797e2e13d1706ace607da43703769c5a55c4de60"}
!llvm.linker.options = !{}
