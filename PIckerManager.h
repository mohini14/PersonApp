//
//  PIckerManager.h
//  PersonApp
//
//  Created by Mohini Sindhu  on 15/02/17.
//  Copyright © 2017 Mohini Sindhu . All rights reserved.
//

#import <UIKit/UIKit.h>
typedef void (^PickerManagerBlock) (NSArray *data, NSInteger row);

@interface PIckerManager : UIView<UIPickerViewDelegate,UIPickerViewDataSource>


@property (weak, nonatomic) IBOutlet UIPickerView *picker;
@property (strong, nonatomic) PickerManagerBlock pickerManagerBlock;

-(void)initWithData:(NSArray *)data;
+ (instancetype)loadPicker;
-(void)initWithData:(NSArray *)data andBlock:(PickerManagerBlock) block ;

@end
