//
//  KeyBoardInputView.h
//  CustomInputView-AccView-XIB
//
//  Created by Bala on 10/15/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface KeyBoardInputView : UIView
{
IBOutlet UIView *customKeyboardView;
IBOutlet UIView *customAccView;
}
@property(nonatomic,retain) UITextField* kbtxtfield;
@property(nonatomic,retain) id delegate;
- (IBAction)customKeyBoardButtonClicked:(UIButton *)sender;
- (IBAction)customAccButtonClicked:(UIButton *)sender;
-(void)setAccessoryView;
@end
