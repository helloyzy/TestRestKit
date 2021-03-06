//
//  DetailViewController.h
//  TestRestKit
//
//  Created by AAA on 11/26/12.
//  Copyright (c) 2012 AAA. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController <UISplitViewControllerDelegate>

@property (strong, nonatomic) id detailItem;

@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;
@property (weak, nonatomic) IBOutlet UIImageView * imageView;

@end
