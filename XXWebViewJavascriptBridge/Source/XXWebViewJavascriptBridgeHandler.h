//
//  XXWebViewJavascriptBridgeHandler.h
//  XXWebViewJavascriptBridge
//
//  Created by xuyaguang on 2023/10/26.
//

#import <Foundation/Foundation.h>
#import <WebKit/WebKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface XXWebViewJavascriptBridgeHandler : NSObject <WKScriptMessageHandler>

@property (nonatomic, weak) id <WKScriptMessageHandler>delegate;

- (instancetype)initWithDelegate:(id <WKScriptMessageHandler>)delegate;

@end

NS_ASSUME_NONNULL_END
