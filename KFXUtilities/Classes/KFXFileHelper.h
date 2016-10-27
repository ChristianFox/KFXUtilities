


#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface KFXFileHelper : NSObject

+(instancetype)fileHelper;

-(NSString*)kfx_mimeTypeForFilePath:(NSString*)filePath;
-(NSString*)kfx_uniformTypeIdentifierForURLResponse:(NSURLResponse*)response;


@end
NS_ASSUME_NONNULL_END
