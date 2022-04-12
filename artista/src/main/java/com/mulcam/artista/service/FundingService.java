package com.mulcam.artista.service;

import java.util.List;

import com.mulcam.artista.dto.Funding;

public interface FundingService {
	public Funding queryFunding(String id);
	public List<Funding> queryMyFunding(String id);
	public List<Funding> queryappfunding(String id);
	public void insertfunding(Funding funding); //펀딩 등록
	//펀딩 예정, 종료, 진행 검색
	public List<Funding> queryuc(Funding funding);
	public List<Funding> queryov(Funding funding);
	public List<Funding> querytm(Funding funding);
	public Funding queryovdetail(int fundingNo);
	public Funding queryucdetail(int fundingNo);
	public Funding querytmdetail(int fundingNo);
	public void insertfundingspon(int sponsorAmount,int fundingNo,String email,String id);
	public Funding queryFundingNo(int fundingNo);
	public int querySponCount(int fundingNo);
	boolean checkAlarm(int fundingNo, String id);
	public void deleteAlarm(String id);
	public void insertAlarm(int fundingNo, String id);
	
	public List<Funding> fundingAppList()  throws Exception;//관리자 펀딩 신청리스트
	public List<Funding> fundingExpectList()  throws Exception;//관리자 펀딩 예정리스트
	public List<Funding> fundingNowList()  throws Exception;//관리자 펀딩 진행중리스트
	public List<Funding> fundingEndedList()  throws Exception;//관리자 펀딩 마감리스트
}
