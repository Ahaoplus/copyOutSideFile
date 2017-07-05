//
//  ViewController.m
//  thirdOpen
//
//  Created by 张浩 on 2017/7/4.
//  Copyright © 2017年 hzbt. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIWebView *webView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor yellowColor];
    self.title = @"Title";
    if (self.fileUrl==nil) {
        self.fileUrl = [[NSUserDefaults standardUserDefaults] URLForKey:@"url"];
    }
    // Do any additional setup after loading the view, typically from a nib.
}

-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    NSURLRequest* request = [NSURLRequest requestWithURL:self.fileUrl];
    
    //    [self.webView loadData:customData MIMEType:@"application/pdf" textEncodingName:@"utf-8" baseURL:fileUrl];
    
    self.webView.backgroundColor = [UIColor greenColor];
    [self.webView loadRequest:request];
}
-(void)setFileUrl:(NSURL *)fileUrl{
    
//    还可以将nsdata存到自己想要的目录下，然后删除此处的url
//    NSData* customData = [NSData dataWithContentsOfURL:fileUrl];

    _fileUrl = fileUrl;
    NSURLRequest* request = [NSURLRequest requestWithURL:self.fileUrl];
    
    [self.webView loadRequest:request];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
