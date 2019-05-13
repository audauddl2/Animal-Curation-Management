package com.owth.vo.CodeMgt;

import com.owth.vo.common.PagingVO;


public class CodeMgtVO extends PagingVO {
	
	public int CodeIdx;						// 코드관리 Index
	public int ParentsCode;					// 부모 코드

	public String CodeName;					// 코드명
	public String BtnImage;					// 분류 이미지
	public String flag;						// 플래그 - CB : 분류대, CS : 분류소, BR : 브랜드, DA : 위험도, IN : 용도
	public String useYN;					// 사용여부 - Y : 사용, N : 사용안함
	public String writer;					// 작성자
	public String writeDate;				// 작성일
	public String Modifier;					// 수정자
	public String ModifyDate;				// 수정일
	
	public int productCategory;				// 분류 조회코드
	
	//성분
	private int ingredientIDX;					//성분 Index
	private String ingredientNameKo;			//성분 이름(국문)
	private String ingredientNameEn;			//성분 이름(영문)
	private String ingredientUse;				//성분 용도
	private String ingredientDanger;			//성분 위험도
	private String ingredientCarcinogenYN;		//성분 발암물질 존재여부
	private String ingredientCarcinogenText;	//성분 발암물질 내용
	private String ingredientCareYN;			//성분 주의성분 존재여부
	private String ingredientCareText;			//성분 주의성분 내용
	private String ingredientPurpose;			//성분 목적
	private String ingredientFunction;			//성분 기능
	
	//카운트
	private int dangerCnt;
	private int useCnt;


	//성분--------------------------------------------------	
	public int getDangerCnt() {
		return dangerCnt;
	}

	public int getIngredientIDX() {
		return ingredientIDX;
	}

	public void setIngredientIDX(int ingredientIDX) {
		this.ingredientIDX = ingredientIDX;
	}

	public String getIngredientNameKo() {
		return ingredientNameKo;
	}

	public void setIngredientNameKo(String ingredientNameKo) {
		this.ingredientNameKo = ingredientNameKo;
	}

	public String getIngredientNameEn() {
		return ingredientNameEn;
	}

	public void setIngredientNameEn(String ingredientNameEn) {
		this.ingredientNameEn = ingredientNameEn;
	}

	public String getIngredientUse() {
		return ingredientUse;
	}

	public void setIngredientUse(String ingredientUse) {
		this.ingredientUse = ingredientUse;
	}

	public String getIngredientDanger() {
		return ingredientDanger;
	}

	public void setIngredientDanger(String ingredientDanger) {
		this.ingredientDanger = ingredientDanger;
	}

	public String getIngredientCarcinogenYN() {
		return ingredientCarcinogenYN;
	}

	public void setIngredientCarcinogenYN(String ingredientCarcinogenYN) {
		this.ingredientCarcinogenYN = ingredientCarcinogenYN;
	}

	public String getIngredientCarcinogenText() {
		return ingredientCarcinogenText;
	}

	public void setIngredientCarcinogenText(String ingredientCarcinogenText) {
		this.ingredientCarcinogenText = ingredientCarcinogenText;
	}

	public String getIngredientCareYN() {
		return ingredientCareYN;
	}

	public void setIngredientCareYN(String ingredientCareYN) {
		this.ingredientCareYN = ingredientCareYN;
	}

	public String getIngredientCareText() {
		return ingredientCareText;
	}

	public void setIngredientCareText(String ingredientCareText) {
		this.ingredientCareText = ingredientCareText;
	}

	public String getIngredientPurpose() {
		return ingredientPurpose;
	}

	public void setIngredientPurpose(String ingredientPurpose) {
		this.ingredientPurpose = ingredientPurpose;
	}

	public String getIngredientFunction() {
		return ingredientFunction;
	}

	public void setIngredientFunction(String ingredientFunction) {
		this.ingredientFunction = ingredientFunction;
	}

	public void setDangerCnt(int dangerCnt) {
		this.dangerCnt = dangerCnt;
	}

	public int getUseCnt() {
		return useCnt;
	}

	public void setUseCnt(int useCnt) {
		this.useCnt = useCnt;
	}
	//--------------------------------------------------
	/**
	 * @return the codeIdx
	 */
	public int getCodeIdx() {
		return CodeIdx;
	}
	
	/**
	 * @param codeIdx the codeIdx to set
	 */
	public void setCodeIdx(int codeIdx) {
		CodeIdx = codeIdx;
	}

	/**
	 * @return the parentsCode
	 */
	public int getParentsCode() {
		return ParentsCode;
	}

	/**
	 * @param parentsCode the parentsCode to set
	 */
	public void setParentsCode(int parentsCode) {
		ParentsCode = parentsCode;
	}
	
	/**
	 * @return the codeName
	 */
	public String getCodeName() {
		return CodeName;
	}
	
	/**
	 * @param codeName the codeName to set
	 */
	public void setCodeName(String codeName) {
		CodeName = codeName;
	}

	/**
	 * @return the btnImage
	 */
	public String getBtnImage() {
		return BtnImage;
	}

	/**
	 * @param btnImage the btnImage to set
	 */
	public void setBtnImage(String btnImage) {
		BtnImage = btnImage;
	}

	/**
	 * @return the flag
	 */
	public String getFlag() {
		return flag;
	}

	/**
	 * @param flag the flag to set
	 */
	public void setFlag(String flag) {
		this.flag = flag;
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
		return Modifier;
	}

	/**
	 * @param modifier the modifier to set
	 */
	public void setModifier(String modifier) {
		Modifier = modifier;
	}

	/**
	 * @return the modifyDate
	 */
	public String getModifyDate() {
		return ModifyDate;
	}

	/**
	 * @param modifyDate the modifyDate to set
	 */
	public void setModifyDate(String modifyDate) {
		ModifyDate = modifyDate;
	}

	/**
	 * @return the productCategory
	 */
	public int getProductCategory() {
		return productCategory;
	}

	/**
	 * @param productCategory the productCategory to set
	 */
	public void setProductCategory(int productCategory) {
		this.productCategory = productCategory;
	}
	
	

}	
	