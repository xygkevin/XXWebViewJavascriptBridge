//
//  ViewController.m
//  XXWebViewJavascriptBridge
//
//  Created by xuyaguang on 2023/10/26.
//

#import "ViewController.h"
#import <WebKit/WebKit.h>
#import "XXWebViewJavascriptBridge.h"

@interface ViewController ()

@property (nonatomic, strong) WKWebView *webView;
@property (nonatomic, strong) XXWebViewJavascriptBridge *bridge;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    WKWebViewConfiguration * webViewConfiguration = [[WKWebViewConfiguration alloc] init];
    
    [webViewConfiguration setValue:@YES forKey:@"allowUniversalAccessFromFileURLs"];
    CGRect frame = CGRectMake(0, 100, CGRectGetWidth(self.view.bounds), CGRectGetHeight(self.view.bounds) - 100);
    
    self.webView = [[WKWebView alloc] initWithFrame:frame configuration:webViewConfiguration];
    self.bridge = [XXWebViewJavascriptBridge bridgeForWebView:self.webView] ;
    

    [self.bridge registerHandler:@"DeviceLoadJavascriptSuccess" handler:^(id data, WVJBResponseCallback responseCallback) {
        NSDictionary *response = @{@"result": @"iOS"};
        responseCallback(response);
    }];
    
    NSString *htmlPath = [[NSBundle mainBundle] pathForResource:@"Demo" ofType:@"html"];
    NSURL *filePath = [NSURL fileURLWithPath:htmlPath];
    [self.webView loadFileURL:filePath allowingReadAccessToURL:filePath];
}


@end
