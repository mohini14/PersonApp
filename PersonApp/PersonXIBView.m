//
//  PersonXIBView.m
//  PersonApp
//
//  Created by Mohini Sindhu  on 15/02/17.
//  Copyright © 2017 Mohini Sindhu . All rights reserved.
//

#import "PersonXIBView.h"

static PersonXIBView *sSharedInstance;

@implementation PersonXIBView

//-(instancetype)initWithCoder:(NSCoder *)aDecoder{
//	self=[super initWithCoder:aDecoder];
//	if(self){
//		[self customInit];
//	}
//	return self;
//}
//
//
//-(instancetype)initWithFrame:(CGRect)frame{
//	self=[super initWithFrame:frame];
//	if(self){
//		[self customInit];
//		
//	}
//	return self;
//}
//
//-(void) customInit{
//	[[[NSBundle mainBundle]loadNibNamed:@"PersonXIB"owner:self options:nil]lastObject];
//	[self addSubview:self.contentView];
//	self.contentView.frame=self.bounds;
//	
//}
//


+ (instancetype)loadNIB{
	if(sSharedInstance == nil){
		sSharedInstance = [[[NSBundle mainBundle] loadNibNamed:@"View" owner:self options:nil]lastObject];
	}
	return sSharedInstance;
}

- (void)showView:(UIView*)view{
	
	CGRect cg;
	cg.origin.x = view.frame.size.width/3;
	cg.origin.y	= 80;
	cg.size.width = 150;
	cg.size.height = 600;
	self.frame = cg;
	
	[view addSubview:self];
}

- (void)hideView{
	[self removeFromSuperview];
}


@end
