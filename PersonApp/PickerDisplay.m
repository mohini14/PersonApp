//
//  PickerDisplay.m
//  PersonApp
//
//  Created by Mohini Sindhu  on 15/02/17.
//  Copyright © 2017 Mohini Sindhu . All rights reserved.
//

#import "PickerDisplay.h"

@interface PickerDisplay ()

@end

@implementation PickerDisplay

- (void)viewDidLoad {
    [super viewDidLoad];
	
	DataModel *getData=[DataModel new];
	NSArray *data = [getData data];
	PIckerManager *picker = [PIckerManager loadPicker];
	[picker initWithData:data andBlock:^(NSString *selectedRow,BOOL end) {
		_textField.text=selectedRow;
		
		
		__weak PickerDisplay  *weakSelf = self;
		
		if(end)//if hide button is pressed
	
		[weakSelf.view endEditing:YES];
	}];
	
	
	_textField.inputView = picker;//will take pickerView instead of keyboard.
	
	
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
	
}



@end
