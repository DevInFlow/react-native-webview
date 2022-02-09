package react.native;

import react.ReactComponent.ReactComponentOfProps;
import react.native.props.WebViewProps;


@:jsRequire("react-native-webview","default")
extern class WebView extends ReactComponentOfProps<WebViewProps> {
    public function goForward():Void;
    public function goBack():Void;
    public function realod():Void;
    public function stopLoading():Void;
    public function injectJavaScript(script:String):Void;
    public function requestFocus():Void;
    public function postMessage(message:String):Void;
    #if android
    public function clearFormData():Void;
    public function clearCache(clear:Bool):Void;
    public function clearHistory():Void;
    #end


}