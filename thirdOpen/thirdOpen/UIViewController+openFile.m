//
//  UIViewController+openFile.m
//  thirdOpen
//
//  Created by 张浩 on 2017/7/5.
//  Copyright © 2017年 hzbt. All rights reserved.
//

#import "UIViewController+openFile.h"

@implementation UIViewController (openFile)


/**
 用外部文件打开

 @param path 路径
 */
-(void)openFileInThePath:(NSURL*)path{
    
    
    UIDocumentInteractionController *documentController =
    
    
    [UIDocumentInteractionController
     
     interactionControllerWithURL:path];
    
    documentController.delegate = self;
    
    
    
    [documentController presentOpenInMenuFromRect:CGRectZero
     
                                           inView:self.view
     
                                         animated:YES];
}

-(void)documentInteractionController:(UIDocumentInteractionController *)controller

       willBeginSendingToApplication:(NSString *)application

{
    
    
}


-(void)documentInteractionController:(UIDocumentInteractionController *)controller

          didEndSendingToApplication:(NSString *)application

{
    
    
    
}


-(void)documentInteractionControllerDidDismissOpenInMenu:

(UIDocumentInteractionController *)controller

{
    
    
    
}

@end
