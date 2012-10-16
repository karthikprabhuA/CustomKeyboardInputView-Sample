//
//  AKPDetailViewController.h
//  CustomInputView-AccView-XIB
//
//  Created by Bala on 10/15/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class  KeyBoardInputView;
@interface AKPDetailViewController : UIViewController <UISplitViewControllerDelegate>
{
    KeyBoardInputView* kbView;
}

@property (weak, nonatomic) IBOutlet UITextField *txtField;

@property (strong, nonatomic) id detailItem;

@property (strong, nonatomic) IBOutlet UILabel *detailDescriptionLabel;

-(void)doneClicked;
@end
