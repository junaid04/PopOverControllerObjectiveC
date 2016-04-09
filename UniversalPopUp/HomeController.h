//
//  ViewController.h
//  UniversalPopUp
//
//  Created by Higher Visibility on 4/8/16.
//  Copyright © 2016 Higher Visibility. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HomeController : UIViewController<UIPopoverPresentationControllerDelegate>

{
    
    int type;
    UIView *ipadView;
    
}

@property (weak, nonatomic) IBOutlet UIBarButtonItem *btnSetting;
@property (nonatomic) int type;

@end

