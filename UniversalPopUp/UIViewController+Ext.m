//
//  UIViewController+Ext.m
//  UniversalPopUp
//
//  Created by Higher Visibility on 4/9/16.
//  Copyright © 2016 Higher Visibility. All rights reserved.
//

#import "UIViewController+Ext.h"

@implementation UIViewController (Ext)


- (void)popOverPresentation:(NSString *)identifier {
    
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    UIViewController *vc = [storyboard instantiateViewControllerWithIdentifier: identifier];
    //        vc.modalPresentationStyle = UIModalPresentationFormSheet;
    //
    //        UIPopoverPresentationController *popover = [vc popoverPresentationController];
    //        popover.delegate = self;
    //        popover.barButtonItem = sender;
    //        [self presentViewController:vc animated:true completion:nil];
    
    UINavigationController *modalViewNavController = [[UINavigationController alloc] initWithRootViewController:vc];
    
    //modalViewNavController.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal;
    
    [self presentViewController:modalViewNavController animated:YES completion:nil];
}

- (int)mobileType {
    
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone){
        
        return 0;
    }
    
    else return 1;
}



@end
