// title:  AutoCoding
// author: RichChane
// date:   2015-11-21 08:56:30 +0000
//

#import "demo.h"

#pragma mark - FCSHOT

@interface FCSHOT ()
@property (nonatomic, retain) UIButton *			testBtn;
@property (nonatomic, retain) UILabel *			testLabel;
@property (nonatomic, retain) UIView *			testView;

@end

@implementation FCSHOT

#pragma mark createViews
-(void)createTestBtn
{
   if (_testBtn == nil)
   {
       CGFloat originX = originX;
       CGFloat originY = originY;
       CGRect rect = CGRectMake(originX, originY, self.width-originX, xxx);
       _testBtn = [NewControls createButtonWithFrame:(CGRect)rect normalTitle:(NSString *)normalTitle highlightedTitle:(NSString *)highlightedTitle selectedTitle:(NSString *)selectedTitle normalTitleColor:(UIColor *)normalTitleColor highlightedTitleColor:(UIColor *)highlightedColor selectedColor:(UIColor *)selectedColor titleFont:(UIFont *)titleFont backgroundColor:(UIColor *)bgColor normalImage:(UIImage *)normalImage highlightedImage:(UIImage *)highlightedImage selectedImage:(UIImage *)selectedImage normalBackgroundImage:(UIImage *)normalBgImage highlightedBgImage:(UIImage *)highlightedBgImage selectedBgImage:(UIImage *)selectedBgImage]
       [self addSubview:_testBtn];
   }

}

-(void)createTestLabel
{
   if (_testLabel == nil)
   {
       CGFloat originX = originX;
       CGFloat originY = originY;
       CGRect rect = CGRectMake(originX, originY, self.width-originX, xxx);
       _testLabel = [NewControls createLabelWithFrame:rect text:nil font:SIZE_12 textColor:BLACK_COLOR textAlignment:NSTextAlignmentLeft backgroundColor:CLEAR_COLOR];
       [self addSubview:_testLabel];
   }

}

-(void)createTestView
{
   if (_testView == nil)
   {
       CGFloat originX = originX;
       CGFloat originY = originY;
       CGRect rect = CGRectMake(originX, originY, self.width-originX, xxx);
       _testView = [NewControls createViewWithFrame:(CGRect)rect backgroundColor:(UIColor *)bgColor]
       [self addSubview:_testView];
   }

}


#pragma mark set get
- (void)setComments_count:(NSArray*)comments_count
{
   _comments_count = comments_count;
}

- (NSArray*)getComments_count
{
   return _comments_count
}
- (void)setCreated_at:(NSString*)created_at
{
   _created_at = created_at;
}

- (NSString*)getCreated_at
{
   return _created_at
}
- (void)setHeight:(NSArray*)height
{
   _height = height;
}

- (NSArray*)getHeight
{
   return _height
}
- (void)setLikes_count:(NSArray*)likes_count
{
   _likes_count = likes_count;
}

- (NSArray*)getLikes_count
{
   return _likes_count
}
- (void)setFC:(Playerplayer*)player
{
   _player = player;
}

- (FCPlayer*)getplayer
{
   return _player
}
- (void)setRebound_source_id:(NSArray*)rebound_source_id
{
   _rebound_source_id = rebound_source_id;
}

- (NSArray*)getRebound_source_id
{
   return _rebound_source_id
}
- (void)setRebounds_count:(NSArray*)rebounds_count
{
   _rebounds_count = rebounds_count;
}

- (NSArray*)getRebounds_count
{
   return _rebounds_count
}
- (void)setTitle:(NSString*)title
{
   _title = title;
}

- (NSString*)getTitle
{
   return _title
}
- (void)setViews_count:(NSArray*)views_count
{
   _views_count = views_count;
}

- (NSArray*)getViews_count
{
   return _views_count
}
- (void)setWidth:(NSArray*)width
{
   _width = width;
}

- (NSArray*)getWidth
{
   return _width
}
- (void)setId:(NSArray*)id
{
   _id = id;
}

- (NSArray*)getId
{
   return _id
}


@end
