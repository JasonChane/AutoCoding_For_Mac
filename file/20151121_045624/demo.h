// title:  AutoCoding
// author: RichChane
// date:   2015-11-21 08:56:30 +0000
//

#import "Lion.h"

#pragma mark - models

@class FCSHOT;
@class FCSHOTDelegate;

@interface FCSHOT : BeeActiveObject
@property (nonatomic, retain) NSNumber *			comments_count;
@property (nonatomic, retain) NSString *			created_at;
@property (nonatomic, retain) NSNumber *			height;
@property (nonatomic, retain) NSNumber *			likes_count;
@property (nonatomic, retain) FCPLAYER *			player;
@property (nonatomic, retain) NSNumber *			rebound_source_id;
@property (nonatomic, retain) NSNumber *			rebounds_count;
@property (nonatomic, retain) NSString *			title;
@property (nonatomic, retain) NSNumber *			views_count;
@property (nonatomic, retain) NSNumber *			width;
@property (nonatomic, retain) NSNumber *			id;
@end

#pragma mark - FCSHOTDelegate

@protocal FCSHOTDelegate <NSObejct>

@require
@optional

@end

