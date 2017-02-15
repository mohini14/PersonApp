//
//  PIckerManager.h
//  PersonApp
//
//  Created by Mohini Sindhu  on 15/02/17.
//  Copyright © 2017 Mohini Sindhu . All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PIckerManager : UIView<UIPickerViewDelegate,UIPickerViewDataSource>


@property (weak, nonatomic) IBOutlet UIPickerView *picker;

-(void)initWithData:(NSArray *)data;
+ (instancetype)loadPicker;

@end
