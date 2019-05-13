package com.owth.vo.product;

import com.owth.vo.common.PagingVO;

public class ProductVO extends PagingVO {

	public String productImg = "";         // 상품 이미지
	public String productName = "";        // 상품명
	public String productUse = "";         // 상품분루-용도
	public String productMaterial = "";    // 상품분루-원료
	public String productFunction = "";    // 상품분루-기능
	public String productKind = "";        // 상품분루-종류
	public String ingredientsYN = "";      // 성분공개여부
	public String useYN = "";              // 사용여부
	public String writer = "";             // 등록자
	public String writeDate = "";          // 등록일
	public String modifier = "";           // 수정자
	public String modifyDate = "";         // 수정일
	public String productUseVal = "";		// 분류 용도 - 체크값 
	public String productMaterialVal = "";	// 분류 원료 - 체크값
	public String productFunctionVal = "";	// 분류 기능 - 체크값
	public String productKindVal = "";		// 분류 종류 - 체크값
	public String brandName = "";			// 브랜드명
	public String ingredientIdx = "";		// 성분
	

	public int productIDX = 0;             // 상품 Index
	public int brandCode = 0;              // 브랜드코드
	public int productPrice = 0;           // 상품가격
	public int productVolume= 0;           // 상품양
	public int productHard = 0;            // 딱딱함
	public int productFatty = 0;           // 기름짐
	public int productMoist = 0;           // 촉촉함
	public double crudeProtein = 0.0;           // 상품-조단백
	public double crudeFat = 0.0;               // 상품-조지방
	public double crudeFiber = 0.0;             // 상품-조섬유
	public double crudeAsh = 0.0;               // 상품-조회분
	public double calcium = 0.0;                // 상품-칼슘
	public double phosphorus = 0.0;             // 상품-인
	public double omega3 = 0.0;                 // 상품-오메가3
	public double omega6 = 0.0;                 // 상품-오메가6
	public int ingredientCnt = 0;          // 성분등록수

	/*
	 * ===============================================================
	 * Product Search 
	 * ===============================================================
	 */
	
	public String gubunCode = "";
	
	/**
	 * @return the productImg
	 */
	public String getProductImg() {
		return productImg;
	}

	/**
	 * @param productImg the productImg to set
	 */
	public void setProductImg(String productImg) {
		this.productImg = productImg;
	}

	/**
	 * @return the productName
	 */
	public String getProductName() {
		return productName;
	}

	/**
	 * @param productName the productName to set
	 */
	public void setProductName(String productName) {
		this.productName = productName;
	}

	/**
	 * @return the productUse
	 */
	public String getProductUse() {
		return productUse;
	}

	/**
	 * @param productUse the productUse to set
	 */
	public void setProductUse(String productUse) {
		this.productUse = productUse;
	}

	/**
	 * @return the productMaterial
	 */
	public String getProductMaterial() {
		return productMaterial;
	}

	/**
	 * @param productMaterial the productMaterial to set
	 */
	public void setProductMaterial(String productMaterial) {
		this.productMaterial = productMaterial;
	}

	/**
	 * @return the productFunction
	 */
	public String getProductFunction() {
		return productFunction;
	}

	/**
	 * @param productFunction the productFunction to set
	 */
	public void setProductFunction(String productFunction) {
		this.productFunction = productFunction;
	}

	/**
	 * @return the productKind
	 */
	public String getProductKind() {
		return productKind;
	}

	/**
	 * @param productKind the productKind to set
	 */
	public void setProductKind(String productKind) {
		this.productKind = productKind;
	}

	/**
	 * @return the ingredientsYN
	 */
	public String getIngredientsYN() {
		return ingredientsYN;
	}

	/**
	 * @param ingredientsYN the ingredientsYN to set
	 */
	public void setIngredientsYN(String ingredientsYN) {
		this.ingredientsYN = ingredientsYN;
	}

	/**
	 * @return the useYN
	 */
	public String getUseYN() {
		return useYN;
	}

	/**
	 * @param useYN the useYN to set
	 */
	public void setUseYN(String useYN) {
		this.useYN = useYN;
	}

	/**
	 * @return the writer
	 */
	public String getWriter() {
		return writer;
	}

	/**
	 * @param writer the writer to set
	 */
	public void setWriter(String writer) {
		this.writer = writer;
	}

	/**
	 * @return the writeDate
	 */
	public String getWriteDate() {
		return writeDate;
	}

	/**
	 * @param writeDate the writeDate to set
	 */
	public void setWriteDate(String writeDate) {
		this.writeDate = writeDate;
	}

	/**
	 * @return the modifier
	 */
	public String getModifier() {
		return modifier;
	}

	/**
	 * @param modifier the modifier to set
	 */
	public void setModifier(String modifier) {
		this.modifier = modifier;
	}

	/**
	 * @return the modifyDate
	 */
	public String getModifyDate() {
		return modifyDate;
	}

	/**
	 * @param modifyDate the modifyDate to set
	 */
	public void setModifyDate(String modifyDate) {
		this.modifyDate = modifyDate;
	}

	/**
	 * @return the productIDX
	 */
	public int getProductIDX() {
		return productIDX;
	}

	/**
	 * @param productIDX the productIDX to set
	 */
	public void setProductIDX(int productIDX) {
		this.productIDX = productIDX;
	}

	/**
	 * @return the brandCode
	 */
	public int getBrandCode() {
		return brandCode;
	}

	/**
	 * @param brandCode the brandCode to set
	 */
	public void setBrandCode(int brandCode) {
		this.brandCode = brandCode;
	}

	/**
	 * @return the productPrice
	 */
	public int getProductPrice() {
		return productPrice;
	}

	/**
	 * @param productPrice the productPrice to set
	 */
	public void setProductPrice(int productPrice) {
		this.productPrice = productPrice;
	}

	/**
	 * @return the productVolume
	 */
	public int getProductVolume() {
		return productVolume;
	}

	/**
	 * @param productVolume the productVolume to set
	 */
	public void setProductVolume(int productVolume) {
		this.productVolume = productVolume;
	}

	/**
	 * @return the productHard
	 */
	public int getProductHard() {
		return productHard;
	}

	/**
	 * @param productHard the productHard to set
	 */
	public void setProductHard(int productHard) {
		this.productHard = productHard;
	}

	/**
	 * @return the productFatty
	 */
	public int getProductFatty() {
		return productFatty;
	}

	/**
	 * @param productFatty the productFatty to set
	 */
	public void setProductFatty(int productFatty) {
		this.productFatty = productFatty;
	}

	/**
	 * @return the productMoist
	 */
	public int getProductMoist() {
		return productMoist;
	}

	/**
	 * @param productMoist the productMoist to set
	 */
	public void setProductMoist(int productMoist) {
		this.productMoist = productMoist;
	}

	/**
	 * @return the crudeProtein
	 */
	public double getCrudeProtein() {
		return crudeProtein;
	}

	/**
	 * @param crudeProtein the crudeProtein to set
	 */
	public void setCrudeProtein(double crudeProtein) {
		this.crudeProtein = crudeProtein;
	}

	/**
	 * @return the crudeFat
	 */
	public double getCrudeFat() {
		return crudeFat;
	}

	/**
	 * @param crudeFat the crudeFat to set
	 */
	public void setCrudeFat(double crudeFat) {
		this.crudeFat = crudeFat;
	}

	/**
	 * @return the crudeFiber
	 */
	public double getCrudeFiber() {
		return crudeFiber;
	}

	/**
	 * @param crudeFiber the crudeFiber to set
	 */
	public void setCrudeFiber(double crudeFiber) {
		this.crudeFiber = crudeFiber;
	}

	/**
	 * @return the crudeAsh
	 */
	public double getCrudeAsh() {
		return crudeAsh;
	}

	/**
	 * @param crudeAsh the crudeAsh to set
	 */
	public void setCrudeAsh(double crudeAsh) {
		this.crudeAsh = crudeAsh;
	}

	/**
	 * @return the calcium
	 */
	public double getCalcium() {
		return calcium;
	}

	/**
	 * @param calcium the calcium to set
	 */
	public void setCalcium(double calcium) {
		this.calcium = calcium;
	}

	/**
	 * @return the phosphorus
	 */
	public double getPhosphorus() {
		return phosphorus;
	}

	/**
	 * @param phosphorus the phosphorus to set
	 */
	public void setPhosphorus(double phosphorus) {
		this.phosphorus = phosphorus;
	}

	/**
	 * @return the omega3
	 */
	public double getOmega3() {
		return omega3;
	}

	/**
	 * @param omega3 the omega3 to set
	 */
	public void setOmega3(double omega3) {
		this.omega3 = omega3;
	}

	/**
	 * @return the omega6
	 */
	public double getOmega6() {
		return omega6;
	}

	/**
	 * @param omega6 the omega6 to set
	 */
	public void setOmega6(double omega6) {
		this.omega6 = omega6;
	}

	/**
	 * @return the ingredientCnt
	 */
	public int getIngredientCnt() {
		return ingredientCnt;
	}

	/**
	 * @param ingredientCnt the ingredientCnt to set
	 */
	public void setIngredientCnt(int ingredientCnt) {
		this.ingredientCnt = ingredientCnt;
	}

	/**
	 * @return the productUseVal
	 */
	public String getProductUseVal() {
		return productUseVal;
	}

	/**
	 * @param productUseVal the productUseVal to set
	 */
	public void setProductUseVal(String productUseVal) {
		this.productUseVal = productUseVal;
	}

	/**
	 * @return the productMaterialVal
	 */
	public String getProductMaterialVal() {
		return productMaterialVal;
	}

	/**
	 * @param productMaterialVal the productMaterialVal to set
	 */
	public void setProductMaterialVal(String productMaterialVal) {
		this.productMaterialVal = productMaterialVal;
	}

	/**
	 * @return the productFunctionVal
	 */
	public String getProductFunctionVal() {
		return productFunctionVal;
	}

	/**
	 * @param productFunctionVal the productFunctionVal to set
	 */
	public void setProductFunctionVal(String productFunctionVal) {
		this.productFunctionVal = productFunctionVal;
	}

	/**
	 * @return the productKindVal
	 */
	public String getProductKindVal() {
		return productKindVal;
	}

	/**
	 * @param productKindVal the productKindVal to set
	 */
	public void setProductKindVal(String productKindVal) {
		this.productKindVal = productKindVal;
	}

	/**
	 * @return the brandName
	 */
	public String getBrandName() {
		return brandName;
	}

	/**
	 * @param brandName the brandName to set
	 */
	public void setBrandName(String brandName) {
		this.brandName = brandName;
	}

	public String getGubunCode() {
		return gubunCode;
	}

	public void setGubunCode(String gubunCode) {
		this.gubunCode = gubunCode;
	}
	
	
	
}