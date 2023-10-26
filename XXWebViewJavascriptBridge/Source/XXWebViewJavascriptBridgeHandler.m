//
//  XXWebViewJavascriptBridgeHandler.m
//  XXWebViewJavascriptBridge
//
//  Created by xuyaguang on 2023/10/26.
//

#import "XXWebViewJavascriptBridgeHandler.h"

@implementation XXWebViewJavascriptBridgeHandler

- (instancetype)initWithDelegate:(id <WKScriptMessageHandler>)delegate {
    if (self = [super init]) {
        self.delegate = delegate;
    }
    return self;
}
- (void)userContentController:(WKUserContentController *)userContentController didReceiveScriptMessage:(WKScriptMessage *)message {
    [self.delegate userContentController:userContentController didReceiveScriptMessage:message];
}

@end
