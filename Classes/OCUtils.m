#import <CommonCrypto/CommonCrypto.h>
#import "OCUtils.h"

@implementation OCUtils {

}

+ (NSString *) md5:(NSString *)string {
    const char *cString=[string UTF8String];
    unsigned char digist[CC_MD5_DIGEST_LENGTH];
    
    CC_MD5(cString, (uint)strlen(cString), digist);
    NSMutableString* outPutStr = [NSMutableString stringWithCapacity:10];
    
    for(int  i =0; i<CC_MD5_DIGEST_LENGTH;i++){
        [outPutStr appendFormat:@"%02x", digist[i]];//小写x表示输出的是小写MD5，大写X表示输出的是大写MD5
    }
    return [outPutStr lowercaseString];
}

@end
