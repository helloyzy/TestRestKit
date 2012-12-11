#import "ProdVrnt.h"
#import "Product.h"
#import "InstallType.h"
#import "ProdDesc.h"
#import "ProdSize.h"
#import "ProdPowerType.h"
#import "ProdPrice.h"

@interface ProdVrnt ()

// Private interface goes here.

@end


@implementation ProdVrnt

// Custom logic goes here.

- (NSString *) installType {
    return self.product.installType.inst_typ_nm;
}

- (NSString *) prodSizeDesc {
    return self.product.prodSize.nmnl_prod_sz_nm;
}

- (NSString * ) prodDesc {
    return self.product.prodDesc.prod_desc_shrt;
}

- (NSString * ) powerType {
    return self.product.powerType.nmnl_powr_typ_nm;
}

- (double) priceAmount  {
    return 0;
}



@end
