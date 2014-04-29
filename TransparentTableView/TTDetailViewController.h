//
//  TTDetailViewController.h
//  TransparentTableView
//
//  Created by Liangjun Jiang on 4/28/14.
//  Copyright (c) 2014 Liangjun Jiang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TTDetailViewController : UIViewController <UISplitViewControllerDelegate>

@property (strong, nonatomic) id detailItem;

@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;
@end
