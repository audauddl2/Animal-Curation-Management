package com.owth.vo.ingredientRST;

import com.owth.vo.common.PagingVO;

public class IngredientRSTVO extends PagingVO {

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
	private String ingredientFunction;			//성분 기능 -> '설명'으로 명칭만 변경되었음 DB컬럼은 그대로임 
	private String writer;						//등록자
	private String writeDate;					//등록일
	private String modifier;					//수정자
	private String modifyDate;					//수정일
	private String useYN;						//사용여부
	
	//검색
	
	private String word;
	private String dangerBtn;
	private String searchStartDate;
	private String searchEndDate;
	
	//카운트
	private int dangerCnt;
	private int useCnt;
	
	/**
	 * @return the ingredientIDX
	 */	
	public int getIngredientIDX() {
		return ingredientIDX;
	}
	
	/**
	 * @param ingredientIDX the ingredientIDX to set
	 */	
	public void setIngredientIDX(int ingredientIDX) {
		this.ingredientIDX = ingredientIDX;
	}
	
	/**
	 * @return the ingredientNameKo
	 */	
	public String getIngredientNameKo() {
		return ingredientNameKo;
	}
	
	/**
	 * @param ingredientNameKo the ingredientNameKo to set
	 */	
	public void setIngredientNameKo(String ingredientNameKo) {
		this.ingredientNameKo = ingredientNameKo;
	}
	
	/**
	 * @return the ingredientNameEn
	 */	
	public String getIngredientNameEn() {
		return ingredientNameEn;
	}
	
	/**
	 * @param ingredientNameEn the ingredientNameEn to set
	 */	
	public void setIngredientNameEn(String ingredientNameEn) {
		this.ingredientNameEn = ingredientNameEn;
	}
	
	/**
	 * @return the ingredientUse
	 */
	public String getIngredientUse() {
		return ingredientUse;
	}
	
	/**
	 * @param ingredientUse the ingredientUse to set
	 */	
	public void setIngredientUse(String ingredientUse) {
		this.ingredientUse = ingredientUse;
	}
	
	/**
	 * @return the ingredientDanger
	 */
	public String getIngredientDanger() {
		return ingredientDanger;
	}
	
	/**
	 * @param ingredientDanger the ingredientDanger to set
	 */
	public void setIngredientDanger(String ingredientDanger) {
		this.ingredientDanger = ingredientDanger;
	}
	
	/**
	 * @return the ingredientCarcinogenYN
	 */
	public String getIngredientCarcinogenYN() {
		return ingredientCarcinogenYN;
	}
	
	/**
	 * @param ingredientCarcinogenYN the ingredientCarcinogenYN to set
	 */
	public void setIngredientCarcinogenYN(String ingredientCarcinogenYN) {
		this.ingredientCarcinogenYN = ingredientCarcinogenYN;
	}
	
	/**
	 * @return the ingredientCarcinogenText
	 */
	public String getIngredientCarcinogenText() {
		return ingredientCarcinogenText;
	}
	
	/**
	 * @param ingredientCarcinogenText the ingredientCarcinogenText to set
	 */
	public void setIngredientCarcinogenText(String ingredientCarcinogenText) {
		this.ingredientCarcinogenText = ingredientCarcinogenText;
	}
	
	/**
	 * @return the ingredientCareYN
	 */
	public String getIngredientCareYN() {
		return ingredientCareYN;
	}
	
	/**
	 * @param ingredientCareYN the ingredientCareYN to set
	 */
	public void setIngredientCareYN(String ingredientCareYN) {
		this.ingredientCareYN = ingredientCareYN;
	}
	
	/**
	 * @return the ingredientCareText
	 */
	public String getIngredientCareText() {
		return ingredientCareText;
	}
	
	/**
	 * @param ingredientCareText the ingredientCareText to set
	 */
	public void setIngredientCareText(String ingredientCareText) {
		this.ingredientCareText = ingredientCareText;
	}
	
	/**
	 * @return the ingredientPurpose
	 */
	public String getIngredientPurpose() {
		return ingredientPurpose;
	}
	
	/**
	 * @param ingredientPurpose the ingredientPurpose to set
	 */
	public void setIngredientPurpose(String ingredientPurpose) {
		this.ingredientPurpose = ingredientPurpose;
	}
	
	/**
	 * @return the ingredientFunction
	 */
	public String getIngredientFunction() {
		return ingredientFunction;
	}
	
	/**
	 * @param ingredientFunction the ingredientFunction to set
	 */
	public void setIngredientFunction(String ingredientFunction) {
		this.ingredientFunction = ingredientFunction;
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
	 * @return the word
	 */
	public String getWord() {
		return word;
	}
	
	/**
	 * @param word the word to set
	 */
	public void setWord(String word) {
		this.word = word;
	}

	/**
	 * @return the dangerBtn
	 */
	public String getDangerBtn() {
		return dangerBtn;
	}
	
	/**
	 * @param dangerBtn the dangerBtn to set
	 */
	public void setDangerBtn(String dangerBtn) {
		this.dangerBtn = dangerBtn;
	}

	/**
	 * @return the searchStartDate
	 */
	public String getSearchStartDate() {
		return searchStartDate;
	}

	/**
	 * @param searchStratDate the searchStartDate to set
	 */
	public void setSearchStartDate(String searchStartDate) {
		this.searchStartDate = searchStartDate;
	}

	/**
	 * @return the searchEndDate
	 */
	public String getSearchEndDate() {
		return searchEndDate;
	}

	/**
	 * @param searchEndDate the searchEndDate to set
	 */
	public void setSearchEndDate(String searchEndDate) {
		this.searchEndDate = searchEndDate;
	}

	/**
	 * @return the dangerCnt
	 */
	public int getDangerCnt() {
		return dangerCnt;
	}
	
	/**
	 * @param dangerCnt the dangerCnt to set
	 */
	public void setDangerCnt(int dangerCnt) {
		this.dangerCnt = dangerCnt;
	}

	/**
	 * @return the useCnt
	 */
	public int getUseCnt() {
		return useCnt;
	}

	/**
	 * @param useCnt the useCnt to set
	 */
	public void setUseCnt(int useCnt) {
		this.useCnt = useCnt;
	}
	
}
