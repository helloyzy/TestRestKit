//
//  ECMappingMgr.m
//  TestRestKit
//
//  Created by AAA on 12/12/12.
//  Copyright (c) 2012 AAA. All rights reserved.
//

#import "ECMappingMgr.h"
#import <RestKit/RestKit.h>

@implementation ECMappingMgr

+(void) setupMapping:(RKObjectManager *)objectManager {
        
    // --------------------------- Brand and Product Category -----------------------------
    
    RKManagedObjectMapping *brandMapping = [RKManagedObjectMapping mappingForEntityWithName:@"Brand" inManagedObjectStore:objectManager.objectStore];
    brandMapping.primaryKeyAttribute = @"mkg_brnd_id";
    [brandMapping mapAttributes: @"mkg_brnd_id", @"brnd_nm", @"dsp_ord", @"is_internal", @"show_sub_brnd", @"prnt_brnd_id", @"top_brnd_id", @"mkg_dig_aset_ownr_id", nil];
    [brandMapping hasOne:@"parent" withMapping:brandMapping];
    [brandMapping connectRelationship:@"parent" withObjectForPrimaryKeyAttribute:@"prnt_brnd_id"];
    [brandMapping hasOne:@"topBrand" withMapping:brandMapping];
    [brandMapping connectRelationship:@"topBrand" withObjectForPrimaryKeyAttribute:@"top_brnd_id"];
    [objectManager.mappingProvider setMapping:brandMapping forKeyPath:@"MKG_BRND"];
    
    RKManagedObjectMapping * prodAreaMapping = [RKManagedObjectMapping mappingForEntityWithName:@"ProductArea" inManagedObjectStore:objectManager.objectStore];
    prodAreaMapping.primaryKeyAttribute = @"mkg_prod_area_id";
    [prodAreaMapping mapAttributes:@"mkg_prod_area_id", @"prod_area_nm", @"prod_area_desc", @"is_actv", @"dsp_ord", nil];
    [objectManager.mappingProvider setMapping:prodAreaMapping forKeyPath:@"MKG_PROD_AREA"];
    
    RKManagedObjectMapping *productCategoryMapping = [RKManagedObjectMapping mappingForEntityWithName:@"ProductCategory" inManagedObjectStore:objectManager.objectStore];
    productCategoryMapping.primaryKeyAttribute = @"mkg_prod_cat_id";
    [productCategoryMapping mapAttributes:@"mkg_prod_cat_id", @"prod_cat_nm", @"dsp_ord", @"is_actv", @"mkg_prod_area_id", @"prnt_prod_cat_id", nil];
    [productCategoryMapping hasOne:@"parent" withMapping:productCategoryMapping];
    [productCategoryMapping connectRelationship:@"parent" withObjectForPrimaryKeyAttribute:@"prnt_prod_cat_id"];
    [productCategoryMapping hasOne:@"productArea" withMapping:prodAreaMapping];
    [productCategoryMapping connectRelationship:@"productArea" withObjectForPrimaryKeyAttribute:@"mkg_prod_area_id"];
    [objectManager.mappingProvider setMapping:productCategoryMapping forKeyPath:@"MKG_PROD_CAT"];
    
    RKManagedObjectMapping * brandProdCatMapping = [RKManagedObjectMapping mappingForEntityWithName:@"BrandProdCat" inManagedObjectStore:objectManager.objectStore];
    brandProdCatMapping.primaryKeyAttribute = @"mkg_brnd_prod_cat_id";
    [brandProdCatMapping mapAttributes:@"mkg_brnd_prod_cat_id", @"mkg_brnd_id", @"mkg_prod_cat_id", @"mkg_dig_aset_ownr_id", nil];
    [brandProdCatMapping hasOne:@"brand" withMapping:brandMapping];
    [brandProdCatMapping connectRelationship:@"brand" withObjectForPrimaryKeyAttribute:@"mkg_brnd_id"];
    [brandProdCatMapping hasOne:@"prodCat" withMapping:productCategoryMapping];
    [brandProdCatMapping connectRelationship:@"prodCat" withObjectForPrimaryKeyAttribute:@"mkg_prod_cat_id"];
    [objectManager.mappingProvider setMapping:brandProdCatMapping forKeyPath:@"MKG_BRND_PROD_CAT"];
    
    // ------------------------------------- Products and its properties -------------------------------------
    
    RKManagedObjectMapping * prodDescMapping = [RKManagedObjectMapping mappingForEntityWithName:@"ProdDesc" inManagedObjectStore:objectManager.objectStore];
    prodDescMapping.primaryKeyAttribute = @"mkg_prod_desc_id";
    [prodDescMapping mapAttributes:@"mkg_prod_desc_id", @"prod_desc_shrt", @"mkg_brnd_prod_cat_id", @"mkg_brnd_id", @"is_actv", @"dsp_ord", nil];
    [objectManager.mappingProvider setMapping:prodDescMapping forKeyPath:@"MKG_PROD_DESC"];
    
    RKManagedObjectMapping * prodInsTypeMapping = [RKManagedObjectMapping mappingForEntityWithName:@"InstallType" inManagedObjectStore:objectManager.objectStore];
    prodInsTypeMapping.primaryKeyAttribute = @"mkg_inst_typ_id";
    [prodInsTypeMapping mapAttributes:@"mkg_inst_typ_id", @"is_actv", @"inst_typ_nm", @"inst_typ_desc", @"dsp_ord", nil];
    [objectManager.mappingProvider setMapping:prodInsTypeMapping forKeyPath:@"MKG_INST_TYP"];
    
    RKManagedObjectMapping * powerTypeMapping = [RKManagedObjectMapping mappingForEntityWithName:@"ProdPowerType" inManagedObjectStore:objectManager.objectStore];
    powerTypeMapping.primaryKeyAttribute = @"mkg_nmnl_powr_typ_id";
    [powerTypeMapping mapAttributes:@"mkg_nmnl_powr_typ_id", @"is_actv", @"nmnl_powr_typ_nm", @"dsp_ord", nil];
    [objectManager.mappingProvider setMapping:powerTypeMapping forKeyPath:@"MKG_NMNL_POWR_TYP"];
    
    RKManagedObjectMapping * prodSizeMapping = [RKManagedObjectMapping mappingForEntityWithName:@"ProdSize" inManagedObjectStore:objectManager.objectStore];
    prodSizeMapping.primaryKeyAttribute = @"mkg_nmnl_prod_sz_id";
    [prodSizeMapping mapAttributes:@"mkg_nmnl_prod_sz_id", @"is_actv", @"mkg_prod_cat_id", @"dsp_ord", @"nmnl_prod_sz_nm", nil];
    [objectManager.mappingProvider setMapping:prodSizeMapping forKeyPath:@"MKG_NMNL_PROD_SZ"];
    
    RKManagedObjectMapping * prodLifeMapping = [RKManagedObjectMapping mappingForEntityWithName:@"ProdLifeStatus" inManagedObjectStore:objectManager.objectStore];
    prodLifeMapping.primaryKeyAttribute = @"mkg_prod_lif_stts_id";
    [prodLifeMapping mapAttributes:@"mkg_prod_lif_stts_id", @"is_actv", @"is_protected", @"dsp_ord", @"prod_lif_stts_nm", nil];
    [objectManager.mappingProvider setMapping:prodLifeMapping forKeyPath:@"MKG_PROD_LIF_STTS"];
    
    RKManagedObjectMapping * productMapping = [RKManagedObjectMapping mappingForEntityWithName:@"Product" inManagedObjectStore:objectManager.objectStore];
    productMapping.primaryKeyAttribute = @"mkg_prod_id";
    [productMapping mapAttributes:@"mkg_prod_id", @"prod_cd", @"mkg_brnd_prod_cat_id", @"mkg_brnd_modl_yr_id", @"mkg_inst_typ_id", @"mkg_prod_desc_id", @"mkg_nmnl_powr_typ_id", @"mkg_nmnl_prod_sz_id", @"mkg_prod_lif_stts_id", @"mkg_dig_aset_ownr_id",  nil];
    [productMapping hasOne:@"brandProdCat" withMapping:brandProdCatMapping];
    [productMapping connectRelationship:@"brandProdCat" withObjectForPrimaryKeyAttribute:@"mkg_brnd_prod_cat_id"];
    [productMapping hasOne:@"installType" withMapping:prodInsTypeMapping];
    [productMapping connectRelationship:@"installType" withObjectForPrimaryKeyAttribute:@"mkg_inst_typ_id"];
    [productMapping hasOne:@"lifeCycleStatus" withMapping:prodLifeMapping];
    [productMapping connectRelationship:@"lifeCycleStatus" withObjectForPrimaryKeyAttribute:@"mkg_prod_lif_stts_id"];
    [productMapping hasOne:@"powerType" withMapping:powerTypeMapping];
    [productMapping connectRelationship:@"powerType" withObjectForPrimaryKeyAttribute:@"mkg_nmnl_powr_typ_id"];
    [productMapping hasOne:@"prodDesc" withMapping:prodDescMapping];
    [productMapping connectRelationship:@"prodDesc" withObjectForPrimaryKeyAttribute:@"mkg_prod_desc_id"];
    [productMapping hasOne:@"prodSize" withMapping:prodSizeMapping];
    [productMapping connectRelationship:@"prodSize" withObjectForPrimaryKeyAttribute:@"mkg_nmnl_prod_sz_id"];
    [objectManager.mappingProvider setMapping:productMapping forKeyPath:@"MKG_PROD"];
    
    // price (price to product is one-to-many, however, model it as one-to-one for this application)
    RKManagedObjectMapping * priceInfoMapping = [RKManagedObjectMapping mappingForEntityWithName:@"ProdPrice" inManagedObjectStore:objectManager.objectStore];
    priceInfoMapping.primaryKeyAttribute = @"mkg_prod_prce_crnt_id";
    [priceInfoMapping mapAttributes:@"mkg_prod_prce_crnt_id", @"mkg_prod_id", @"mkg_prod_prce_typ_id", @"prod_prce_amt", nil];
    [priceInfoMapping hasOne:@"product" withMapping:productMapping];
    [priceInfoMapping connectRelationship:@"product" withObjectForPrimaryKeyAttribute:@"mkg_prod_id"];
    [objectManager.mappingProvider setMapping:priceInfoMapping forKeyPath:@"MKG_PROD_PRCE_CRNT"];
    
    //--------------------------------- Product Variant --------------------------------
    
    RKManagedObjectMapping * vrtnTypeCodeMapping = [RKManagedObjectMapping mappingForEntityWithName:@"VrtnTypeCode" inManagedObjectStore:objectManager.objectStore];
    vrtnTypeCodeMapping.primaryKeyAttribute = @"mkg_vrtn_typ_cd_id";
    [vrtnTypeCodeMapping mapAttributes:@"mkg_vrtn_typ_cd_id", @"vrtn_typ_cd_nm", @"vrtn_typ_cd", @"vrtn_typ_cd_desc", @"mkg_prod_vrtn_typ_id", @"is_actv", @"dsp_ord", nil];
    [objectManager.mappingProvider setMapping:vrtnTypeCodeMapping forKeyPath:@"MKG_VRTN_TYP_CD"];
    
    
    RKManagedObjectMapping * prodVrntMapping = [RKManagedObjectMapping mappingForEntityWithName:@"ProdVrnt" inManagedObjectStore:objectManager.objectStore];
    prodVrntMapping.primaryKeyAttribute = @"mkg_prod_vrnt_id";
    [prodVrntMapping mapAttributes:@"mkg_prod_vrnt_id", @"mkg_prod_id", @"mkg_vrtn_typ_cd_id", @"prod_vrnt_sku", @"prod_vrnt_upc", @"mkg_cons_vis_stts_id", @"mkg_chnl_vis_stts_id", @"mkg_dig_aset_ownr_id", nil];
    [prodVrntMapping hasOne:@"product" withMapping:productMapping];
    [prodVrntMapping connectRelationship:@"product" withObjectForPrimaryKeyAttribute:@"mkg_prod_id"];
    [prodVrntMapping hasOne:@"vrtnTypeCode" withMapping:vrtnTypeCodeMapping];
    [prodVrntMapping connectRelationship:@"vrtnTypeCode" withObjectForPrimaryKeyAttribute:@"mkg_vrtn_typ_cd_id"];
    [objectManager.mappingProvider setMapping:prodVrntMapping forKeyPath:@"MKG_PROD_VRNT"];
    
    //--------------------------------- Product features --------------------------------
    
    RKManagedObjectMapping * featureVrntMapping = [RKManagedObjectMapping mappingForEntityWithName:@"FeatureVrnt" inManagedObjectStore:objectManager.objectStore];
    featureVrntMapping.primaryKeyAttribute = @"mkg_fetr_vrnt_id";
    [featureVrntMapping mapAttributes:@"mkg_fetr_vrnt_id", @"vrnt_nm", @"bult_txt_proc", @"desc_proc", @"mkg_fetr_id", @"mkg_dig_aset_ownr_id", nil];
    [objectManager.mappingProvider setMapping:featureVrntMapping forKeyPath:@"MKG_FETR_VRNT"];
    
    RKManagedObjectMapping * brndCatFvntMapping = [RKManagedObjectMapping mappingForEntityWithName:@"BrndCatFvnt" inManagedObjectStore:objectManager.objectStore];
    brndCatFvntMapping.primaryKeyAttribute = @"mkg_brnd_cat_fvnt_id";
    [brndCatFvntMapping mapAttributes:@"mkg_brnd_cat_fvnt_id", @"mkg_brnd_id", @"mkg_fetr_vrnt_id", @"mkg_prod_cat_fetr_id", @"rank", nil];
    [brndCatFvntMapping hasOne:@"fetrVrnt" withMapping:featureVrntMapping];
    [brndCatFvntMapping connectRelationship:@"fetrVrnt" withObjectForPrimaryKeyAttribute:@"mkg_fetr_vrnt_id"];
    [objectManager.mappingProvider setMapping:brndCatFvntMapping forKeyPath:@"MKG_BRND_CAT_FVNT"];
    
    RKManagedObjectMapping * prodFetrVrntMapping = [RKManagedObjectMapping mappingForEntityWithName:@"ProdFeatureVrnt" inManagedObjectStore:objectManager.objectStore];
    prodFetrVrntMapping.primaryKeyAttribute = @"mkg_prod_fetr_vrnt_id";
    [prodFetrVrntMapping mapAttributes:@"mkg_prod_fetr_vrnt_id", @"mkg_prod_id", @"mkg_brnd_cat_fvnt_id", @"is_difn", @"mkg_prod_cat_fetr_id", nil];
    [prodFetrVrntMapping hasOne:@"brandCatFvnt" withMapping:brndCatFvntMapping];
    [prodFetrVrntMapping connectRelationship:@"brandCatFvnt" withObjectForPrimaryKeyAttribute:@"mkg_brnd_cat_fvnt_id"];
    [prodFetrVrntMapping hasOne:@"product" withMapping:productMapping];
    [prodFetrVrntMapping connectRelationship:@"product" withObjectForPrimaryKeyAttribute:@"mkg_prod_id"];
    [objectManager.mappingProvider setMapping:prodFetrVrntMapping forKeyPath:@"MKG_PROD_FETR_VRNT"];
    
    //--------------------------------- Image Resource ----------------------------------
    
    RKManagedObjectMapping * vrtnTypeCodeImageMapping = [RKManagedObjectMapping mappingForEntityWithName:@"VrtnTypeImage" inManagedObjectStore:objectManager.objectStore];
    vrtnTypeCodeImageMapping.primaryKeyAttribute = @"mkg_ownd_dig_aset_id";
    [vrtnTypeCodeImageMapping mapAttributes:@"mkg_ownd_dig_aset_id", @"mkg_vrtn_typ_cd_id", @"mkg_dig_aset_ownr_id", @"mkg_dig_aset_id", @"file_lctn", nil];
    [objectManager.mappingProvider setMapping:vrtnTypeCodeImageMapping forKeyPath:@"IMKG_VRTN_TYP_IMG"];
    
    RKManagedObjectMapping * prodImageMapping = [RKManagedObjectMapping mappingForEntityWithName:@"ProductImage" inManagedObjectStore:objectManager.objectStore];
    prodImageMapping.primaryKeyAttribute = @"mkg_ownd_dig_aset_id";
    [prodImageMapping mapAttributes:@"mkg_ownd_dig_aset_id", @"mkg_dig_aset_ownr_id", @"mkg_dig_aset_id", @"mkg_dig_aset_purp_nm", @"dsp_ord", @"file_lctn", nil];
    [objectManager.mappingProvider setMapping:prodImageMapping forKeyPath:@"IMKG_OWND_IMG"];

}

@end
