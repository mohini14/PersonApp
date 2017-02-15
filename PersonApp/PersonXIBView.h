//
//  PersonXIBView.h
//  PersonApp
//
//  Created by Mohini Sindhu  on 15/02/17.
//  Copyright © 2017 Mohini Sindhu . All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PersonXIBView : UIView
@property (strong, nonatomic)  IBOutlet UIView *contentView;
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;

@property (weak, nonatomic) IBOutlet UILabel *ageLabel;
@property (weak, nonatomic) IBOutlet UILabel *favColorLabel;


+ (instancetype)loadNIB;
- (void)hideView;
- (void)showView:(UIView*)view;

@end
