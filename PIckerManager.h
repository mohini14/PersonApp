//
//  PIckerManager.h
//  PersonApp
//
//  Created by Mohini Sindhu  on 15/02/17.
//  Copyright © 2017 Mohini Sindhu . All rights reserved.
//

#import <UIKit/UIKit.h>
typedef void (^PickerManagerBlock) (NSString *selectedRow,BOOL end);

@interface PIckerManager : UIView<UIPickerViewDelegate,UIPickerViewDataSource>
{
	NSString *itemSelected;
}

@property (weak, nonatomic) IBOutlet UIPickerView *picker;
@property (strong, nonatomic) PickerManagerBlock pickerManagerBlock;


+ (instancetype)loadPicker;
-(void)initWithData:(NSArray *)data andBlock:(PickerManagerBlock) block ;
-(IBAction)hideButton;



@end
