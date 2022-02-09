package react.native.props;

import react.native.component.props.ViewProps;
import haxe.extern.EitherType;
import react.native.component.props.ViewStyle;

typedef LoadEvent = {nativeEvent:{
	canGoBack:Bool,
	canGoForward:Bool,
	loading:Bool,
	target:Dynamic,
	title:String,
	url:String
}}

typedef OnError = {
	canGoBack:Bool,
	canGoForward:Bool,
	code:String,
	description:String,
	didFailProvisionalNavigation:Bool,
	domain:String,
	loading:Bool,
	target:Dynamic,
	title:String,
	url:String
}->Void;

typedef OnLoad = {
	> LoadEvent,
}->Void;

typedef OnLoadProgress = {
	> LoadEvent,
	progress:Dynamic
}->Void;

typedef OnHttpError = {
	> LoadEvent,
	description:String,
	statusCode:Int
}->Void;

typedef OnRenderProcessGone = {didCrash:Dynamic}->Void;

typedef OnMessage = {
	nativeEvent:{data:Dynamic}
}->Void;

typedef OnScroll = {
	contentInset:Dynamic,
	contentOffset:Dynamic,
	contentSize:Dynamic,
	layoutMeasurement:Dynamic,
	velocity:Dynamic,
	zoomScale:Dynamic
}->Void;

typedef OnNavigationStateChange = {> LoadEvent, navigationType:Dynamic}->Void;
typedef OnContentProcessDidTerminate = {> LoadEvent,}->Void;

typedef OnShouldStartLoadWithRequest = {
	> LoadEvent,
	lockIdentifier:Dynamic,
	mainDocumentURL:String,
	navigationType:String,
	isTopFrame:Bool
}->Void;

@:enum abstract AndroidLayerType(String) from String {
	var NONE = "none";
	var SOFTWARE = "software";
	var HARDWARE = "hardware";
}

@:enum abstract MixedContentMode(String) from String {
	var NEVER = "never";
	var ALWAYS = "always";
	var COMPATIBILITY = "compatibility";
}

@:enum abstract OverScrollMode(String) from String {
	var ALWAYS = "always";
	var CONTENT = "content";
	var NEVER = "never";
}

@:enum abstract ContentInsetAdjustmentBehavior(String) from String {
	var AUTOMATIC = "automatic";
	var SCROLLABLE_AXES = "scrollableAxes";
	var NEVER = "never";
	var ALWAYS = "always";
}

@:enum abstract ContentMode(String) from String {
	var RECOMMENDED = "recommended";
	var MOBILE = "mobile";
	var DESKTOP = "desktop";
}

@:enum abstract DataDetectorTypes(String) from String {
	var PHONE_NUMBER = "phoneNumber";
	var LINK = "link";
	var ADDRESS = "address";
	var CALENDAR_EVENT = "calendarEvent";
	var NONE = "none";
	var ALL = "all";
	var TRACKING_NUMBER = "trackingNumber";
	var FLIGHT_NUMBER = "flightNumber";
	var LOOKUP_SUGGESTION = "lookupSuggestion";
}

@:enum abstract CacheMode(String) from String {
	var LOAD_DEFAULT = "LOAD_DEFAULT";
	var LOAD_CACHE_ELSE_NETWORK = "LOAD_CACHE_ELSE_NETWORK";
	var LOAD_NO_CACHE = "LOAD_NO_CACHE";
	var LOAD_CACHE_ONLY = "LOAD_CACHE_ONLY";
}

@:enum abstract MediaCapturePermissionGrantType(String) from String {
	var GRANT_IF_SAME_HOST_ELSE_PROMPT = "grantIfSameHostElsePrompt";
	var GRANT_IF_SAME_HOST_ELSE_DENY = "grantIfSameHostElseDeny";
	var DENY = "deny";
	var GRANT = "grant";
	var PROMPT = "prompt";
}

typedef WebViewProps = {
	>ViewProps,
	?source:{
		?uri:String,
		?method:String,
		?headers:Dynamic,
		?body:String,
		?html:String,
		?baseUrl:String
	},
	?automaticallyAdjustContentInsets:Bool,
	?automaticallyAdjustsScrollIndicatorInsets:Bool,
	?injectedJavaScript:String,
	?injectedJavaScriptBeforeContentLoaded:String,
	?injectedJavaScriptForMainFrameOnly:Bool,
	?injectedJavaScriptBeforeContentLoadedForMainFrameOnly:Bool,
	?mediaPlaybackRequiresUserActionBool:Bool,
	?nativeConfig:{?component:Dynamic, ?props:Dynamic, ?viewManager:Dynamic},
	?onError:OnError,
	?onLoad:OnLoad,
	?onLoadEnd:OnLoad,
	?onLoadStart:OnLoad,
	?onLoadProgress:OnLoadProgress,
	?onHttpError:OnHttpError,
	?onRenderProcessGone:OnRenderProcessGone,
	?onMessage:OnMessage,
	?onNavigationStateChange:OnNavigationStateChange,
	?onContentProcessDidTerminate:OnContentProcessDidTerminate,
	?onScroll:OnScroll,
	?originWhitelist:Array<String>,
	?renderError:String->Void,
	?renderLoading:Void->Dynamic,
	?scalesPageToFit:Bool,
	?onShouldStartLoadWithRequest:OnShouldStartLoadWithRequest,
	?startInLoadingState:Bool,
	?style:haxe.extern.EitherType<ViewStyle, Array<ViewStyle>>,
	?containerStyle:haxe.extern.EitherType<ViewStyle, Array<ViewStyle>>,
	?decelerationRate:Float,
	?domStorageEnabled:Bool,
	?javaScriptEnabled:Bool,
	?javaScriptCanOpenWindowsAutomatically:Bool,
	?androidHardwareAccelerationDisabled:Bool,
	?androidLayerType:AndroidLayerType,
	?mixedContentMode:MixedContentMode,
	?thirdPartyCookiesEnabled:Bool,
	?userAgent:String,
	?applicationNameForUserAgent:String,
	?allowsFullscreenVideo:Bool,
	?allowsInlineMediaPlayback:Bool,
	?bounces:Bool,
	?overScrollMode:OverScrollMode,
	?contentInset:{
		top:Float,
		left:Float,
		bottom:Float,
		right:Float
	},
	?contentInsetAdjustmentBehavior:ContentInsetAdjustmentBehavior,
	?contentMode:ContentMode,
	?dataDetectorTypes:EitherType<DataDetectorTypes, Array<DataDetectorTypes>>,
	?scrollEnabled:Bool,
	?nestedScrollEnabled:Bool,
	?setBuiltInZoomControls:Bool,
	?directionalLockEnabled:Bool,
	?showsHorizontalScrollIndicator:Bool,
	?showsVerticalScrollIndicator:Bool,
	?geolocationEnabled:Bool,
	?allowFileAccessFromFileURLs:Bool,
	?allowUniversalAccessFromFileURLs:Bool,
	?allowingReadAccessToURL:Bool,
	?keyboardDisplayRequiresUserAction:Bool,
	?hideKeyboardAccessoryView:Bool,
	?allowsBackForwardNavigationGestures:Bool,
	?incognito:Bool,
	?allowFileAccess:Bool,
	?saveFormDataDisabled:Bool,
	?cacheEnabled:Bool,
	?cacheMode:CacheMode,
	?pagingEnabled:Bool,
	?allowsLinkPreview:Bool,
	?sharedCookiesEnabled:Bool,
	?textZoom:Int,
	?pullToRefreshEnabled:Bool,
	?ignoreSilentHardwareSwitch:Bool,
	?onFileDownload:String->Void,
	?limitsNavigationsToAppBoundDomains:Bool,
	?textInteractionEnabled:Bool,
	?mediaCapturePermissionGrantType:MediaCapturePermissionGrantType,
	?autoManageStatusBarEnabled:Bool,
	?setSupportMultipleWindows:Bool,
	?enableApplePay:Bool,
	?forceDarkOn:Bool,
	?menuItems:Array<{label:String, key:String}>,
	?onCustomMenuSelection:Dynamic->Void,
	?basicAuthCredential:{username:String, password:String},
	?minimumFontSize:Int
}
