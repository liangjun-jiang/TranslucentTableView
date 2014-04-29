//
//  TTMasterViewController.h
//  TransparentTableView
//
//  Created by Liangjun Jiang on 4/28/14.
//  Copyright (c) 2014 Liangjun Jiang. All rights reserved.
//

#import <UIKit/UIKit.h>

@class TTDetailViewController;

@interface TTMasterViewController : UITableViewController

@property (strong, nonatomic) TTDetailViewController *detailViewController;

@end
