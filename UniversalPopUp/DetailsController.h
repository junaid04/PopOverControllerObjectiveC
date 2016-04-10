//
//  DetailsViewController.h
//  UniversalPopUp
//
//  Created by Higher Visibility on 4/8/16.
//  Copyright © 2016 Higher Visibility. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailsController : UITableViewController {
   
    NSMutableArray *tableData;
    NSInteger section2;
    NSInteger row;

}

@property (weak, nonatomic) IBOutlet UITableView *tblView;
@property (nonatomic) NSInteger section2;
@property (nonatomic) NSInteger row;
@property (strong, nonatomic) NSMutableArray *itemDetails;


@end
