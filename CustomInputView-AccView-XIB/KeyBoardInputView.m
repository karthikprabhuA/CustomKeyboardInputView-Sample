//
//  KeyBoardInputView.m
//  CustomInputView-AccView-XIB
//
//  Created by Bala on 10/15/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "KeyBoardInputView.h"
#import "AKPDetailViewController.h"
@implementation KeyBoardInputView
@synthesize delegate;
@synthesize kbtxtfield;
/*
- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}
*/

-(id)init
{
    self = [super init];
    if(self)
    {
        
        if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
            
             [[NSBundle mainBundle] loadNibNamed:@"KeyBoardInputView_iPhone" owner:self options:nil];
            
            [[NSBundle mainBundle] loadNibNamed:@"KeyBoardAccView_iPhone" owner:self options:nil];
        }
        else {
             [[NSBundle mainBundle] loadNibNamed:@"KeyBoardInputView_iPad" owner:self options:nil];
            
            [[NSBundle mainBundle] loadNibNamed:@"KeyBoardAccView_iPad" owner:self options:nil];
        }

    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/
-(void)setAccessoryView
{
    self.kbtxtfield.inputAccessoryView = customAccView;
}

- (IBAction)customKeyBoardButtonClicked:(UIButton *)sender {
    
    //handle button events by tag
//    if(sender.tag == 100  || sender.tag == 300)
//    {
//    }
}

- (IBAction)customAccButtonClicked:(UIButton *)sender {
    
    
    if(sender.tag == 10  || sender.tag == 30)
    {
        if(sender.isSelected == YES)
        {
            self.kbtxtfield.inputView = nil;
            [self.kbtxtfield reloadInputViews];
            sender.selected = NO;
        }
        else {
            self.kbtxtfield.inputView = customKeyboardView;
            [self.kbtxtfield reloadInputViews];
            sender.selected = YES ;
        }
    }
    else if (sender.tag == 20  || sender.tag == 40) {
        [self.delegate doneClicked];
    }
   
    
}
@end
