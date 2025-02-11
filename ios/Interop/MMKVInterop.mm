#import "MMKVInterop.h"
#import "MMKV.h"

using namespace mmkv;


@interface MMKVInterop() {
  MMKV* storage;
}

@end

@implementation MMKVInterop

- (void)dummy
{
  const std::string mmkvID = "mmkv.default";
  MMKVMode mode = mmkv::MMKV_SINGLE_PROCESS;
  std::string* encryptionKeyPtr = nullptr;
  std::string* pathPtr = nullptr;
  self->storage = mmkv::MMKV::mmkvWithID(mmkvID, mode, encryptionKeyPtr, pathPtr);
}

@end
