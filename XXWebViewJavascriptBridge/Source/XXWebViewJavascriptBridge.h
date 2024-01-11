//
//  XXWebViewJavascriptBridge.h
//  XXWebViewJavascriptBridge
//
//  Created by xuyaguang on 2023/10/26.
//

#import <Foundation/Foundation.h>
#import <WebKit/WebKit.h>
#import "XXWebViewJavascriptBridgeBase.h"

typedef void (^ConsolePipeBlock)(id water);

@interface XXWebViewJavascriptBridge : NSObject <XXWebViewJavascriptBridgeBaseDelegate, WKNavigationDelegate>

+ (instancetype)bridgeForWebView:(WKWebView*)webView;
+ (void)enableLogging;

- (void)registerHandler:(NSString*)handlerName handler:(WVJBHandler)handler;
- (void)removeHandler:(NSString*)handlerName;
- (void)callHandler:(NSString*)handlerName;
- (void)callHandler:(NSString*)handlerName data:(id)data;
- (void)callHandler:(NSString*)handlerName data:(id)data responseCallback:(WVJBResponseCallback)responseCallback;
- (void)reset;
- (void)setWebViewDelegate:(id)webViewDelegate;
- (void)disableJavscriptAlertBoxSafetyTimeout;

@end


