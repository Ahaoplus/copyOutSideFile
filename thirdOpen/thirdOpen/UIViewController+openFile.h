//
//  UIViewController+openFile.h
//  thirdOpen
//
//  Created by 张浩 on 2017/7/5.
//  Copyright © 2017年 hzbt. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIViewController (openFile)<UIDocumentInteractionControllerDelegate>
-(void)openFileInThePath:(NSURL*)path;
@end
