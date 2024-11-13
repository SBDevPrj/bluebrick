<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ page import="java.util.List" %>
<%@ page import="org.apache.commons.text.StringEscapeUtils" %>
<%@ page import="com.sejong.newbluebrick.model.BoardContent" %>
<%@ page import="org.springframework.data.domain.Page" %>


<!DOCTYPE html>
<html lang="ko">
<%@ include file="/WEB-INF/jsp/common/head_m.jsp"  %>
<body>

<div class="wrap">
    <%@ include file="/WEB-INF/jsp/common/header_m.jsp"  %>

    <script>
        dep1 = 4;
    </script>

    <div class="inner_mc sub_top_mc scroll_top fn--p">
        <h3 class="title">PRIVACY</h3>
    </div>

    <div class="inner_mc privacy_mc ">
        <div class="content_mc">

            <div class="text_box">
                <h3 class="ht1">제 1장 <span class="slash"></span> 총칙</h3>
                <div class="ht2">
                    세종텔레콤 주식회사(이하 “회사”)는 고객의 개인정보를 소중하게 생각하고 고객님의 개인정보를 효과적으로 관리하고
                    안전하게 보호하기 위하여 최선의 노력을 다하고 있습니다. <br><br>
                    회사는 『정보통신망 이용촉진 및 정보보호 등에 관한 법률』과 개인정보보호 관련 각종 법규를 준수하고 있습니다. 또한 개인정보처리방침을 제정하여
                    이를 준수하고 있으며, 본 처리방침을 홈페이지에 공개하여 고객이 언제나 쉽게 열람할 수 있도록 하고 있습니다.<br><br>
                </div>
                <ul class="ust ty1 mgl-70">
                    <li>개인정보란 생존하는 개인에 관한 정보로서 성명, 주민등록번호 등에 의하여 특정한 개인을 알아 볼 수 있는 부호, 문자, 음성, 음향, 영상 및 생체특성 등에 관한 정보<br>(해당 정보만으로는 특정 개인을 알아 볼 수 없는 경우에도 다른 정보와 용이하게 결합하여 알아 볼 수 있는 것을 포함)를 말합니다.</li>
                    <li>회사는 고객님의 개인정보를 중요시하며, “정보통신망 이용촉진 및 정보보호 등에 관한 법률”에 관한 법률을 준수하고 있습니다. </li>
                    <li>회사는 개인정보처리방침을 통하여 고객님께서 제공하시는 개인정보가 어떠한 용도와 방식으로 이용되고 있으며, 개인정보를 위해 어떠한 조치가 취해지고 있는지 알려 드립니다. </li>
                    <li>회사의 개인정보처리방침은 관련 법령 및 내부 운영 방침의 변경에 따라 변경될 수 있습니다. 개인정보처리방침이 변경되는 경우에는 그 이유 및 변경된 내용을 지체 없이 공지합니다. </li>
                    <li>영업의 전부 또는 일부를 양도하거나 합병 상속 등으로 그 권리/의무를 이전하는 경우 서면/전자우편 등을 통하여 고객님께 개별적으로 통지 합니다. 단, 고객님의 연락처를 알지 못하거나 통지할 수 없는 경우에는 홈페이지(https://www.bluebrick.io)에 30일 이상 게시 합니다.</li>
                    <li>회사는 개인정보처리방침을 개정하는 경우 웹사이트(https://www.bluebrick.io) 공지사항 또는 개별공지)를 통하여 공지합니다.<br><br></li>
                </ul>

                <h3 class="ht1 mgt-70">제 2장 <span class="slash"></span> 개인정보의 수집 및 이용 목적</h3>
                <div class="ht2">회사는 수집한 개인정보를 다음의 목적을 위해 이용합니다. </div><br>
                <ul class="ust ty1 mgl-70">
                    <li>서비스 이용 확인/점검, 컨텐츠 수급, 서비스 품질 개선, 서비스 품질 제고를 위한 인구 통계학적 분석(연령/성별/지역분석 등) 및 이용 형태/선호도 분석</li>
                    <li>기타 개인정보처리방침(https://www.bluebrick.io)에 고지된 수탁자에게 서비스 제공 등 계약의 이행에 필요한 업무의 위탁<br><br></li>
                </ul>

                <h3 class="ht1 mgt-70">제 3장 <span class="slash"></span> 수집하는 개인정보의 항목 및 수집 방법</h3>
                <div class="ht2">회사는 회원가입, 상담, 서비스 제공을 위하여 아래와 같이 필요한 최소한의 개인정보만을 수집하며, 인종 및 민족, 사상 및 신조, 출신지 및 본적지, 정치적 성향 및 범죄기록, 건강상태 등 고객임의 인권을 현저하게 침해할 우려가 있는 개인정보는 수집하지 않습니다. 다만, 고객님께서 수집에 동의하시는 경우는 예외로 합니다.</div><br>
                <div class="ht2">회사는 다음과 같은 방법으로 개인정보를 수집합니다.<br><br></div>

                <ul class="ust ty1 mgl-70">
                    <li>
                        <div>수집하는 개인정보 항목</div>
                        <br>
                        <ul class="ust ty2">
                            <li>
                                <div class="uh">가. </div>
                                <div class="ud">
                                    <p class="t_1">서비스 이용 또는 업무처리 과정에서 생성되어 수집될 수 있는 정보</p><br>

                                    <ul class="ust ty4">
                                        <li>
                                            <div class="uh"></div>
                                            <div class="ud"><p class="t_1">서비스 이용시간/이용기록, 접속로그, 이용 콘텐츠, 쿠키, 접속 IP 정보</p></div>
                                        </li>
                                    </ul>
                                </div>
                                <br><br>
                            </li>
                        </ul>

                    </li>
                    <li>
                        <div>회사는 다음과 같은 방법으로 개인정보를 수집합니다.</div><br>
                        <ul class="ust ty2">
                            <li>
                                <div class="uh">가. </div>
                                <div class="ud">
                                    <p class="t_1">서비스 이용 또는 업무 처리 과정에서 생성되거나 제휴사로부터의 제공, 생성정보 수집 툴을 통한 수집</p>
                                </div>
                            </li>
                        </ul>
                    </li>
                </ul>
                <br>

                <h3 class="ht1">제 4장 <span class="slash"></span> 개인정보의 보유 및 이용기간</h3>
                <div class="ht2">이용자의 개인정보는 원칙적으로 개인정보의 수집 및 이용목적이 달성되면 지체 없이 파기 합니다.<br><br>
                이용기간 : 서비스 이용기간 또는 분쟁기간 동안<br><br>
                단, 다음의 정보에 대해서는 아래의 이유로 명시한 기간 동안 보존 합니다.</div>
                <br>

                <ul class="ust ty2 gray">
                    <li>
                        <div class="uh">가. </div>
                        <div class="ud">
                            <p class="t_1">관계법령에 의한 정보보유 사유</p>
                            <p class="t_2">상법. 전자상거래 등에서의 소비자보호에 관한 법률 등 관계법령의 규정에 의하여 보존할 필요 가 있는 경우. 회사는 관계법령에서 정한 일정한 기간 동안 회원정보를 보관합니다.  <br>이 경우 회사는 보관하는 정보를 그 보관의 목적으로만 이용하여 보존기간은 아래와 같습니다.</p><br>
                            <ul class="ust ty4 ">
                                <li>
                                    <div class="uh"></div>
                                    <div class="ud">
                                        <p class="t_1">소비자의 불만 또는 분쟁처리에 관한 기록</p>
                                        <p class="t_1">- 보존 이유 : 전자상거래 등에서의 소비자보호에 관한 법률</p>
                                        <p class="t_1">- 보존 기간 : 3년</p>
                                    </div>
                                    <br><br>
                                </li>
                                <li>
                                    <div class="uh"></div>
                                    <div class="ud">
                                        <p class="t_1">본인확인에 관한 기록</p>
                                        <p class="t_1">- 보존 이유 :정보통신망 이용촉진 및 정보보호 등에 관한 법률</p>
                                        <p class="t_1">- 보존 기간 : 6개월</p>
                                    </div>
                                    <br><br>
                                </li>
                                <li>
                                    <div class="uh"></div>
                                    <div class="ud">
                                        <p class="t_1">
                                            표시/광고에 관한 기록 : 6개월(전자상거래 등에서의 소비자보호에 관한 법률)
                                        </p>
                                    </div>
                                </li>
                            </ul>

                            <br><br>
                        </div>
                    </li>

                    <li>
                        <div class="uh">나. </div>
                        <div class="ud">
                            <p class="t_1">기타 : 통신비밀보호법 제15조의 2 (보존 기간 : 12개월), 국세기본법 제85조의 3(보존 기간 : 5년)</p>
                        </div>
                    </li>

                </ul>

                <br>
                <h3 class="ht1">제 5장 <span class="slash"></span> 개인정보의 파기절차 및 방법</h3>
                <div class="ht2">회사는 원칙적으로 개인정보 수집 및 이용목적이 달성된 후에는 해당 정보를 지체 없이 파기합니다. 파기 절차 및 방법은 다음과 같습니다.</div>
                <br>
                <ul class="ust ty1 mgl-70">
                    <li>
                        <div>파기절차</div>
                        <br>
                        <ul class="ust ty2">
                            <li>
                                <div class="uh">가. </div>
                                <div class="ud">
                                    <p class="t_1">원칙적으로 고객님께서 서비스 가입 등을 위해 제공하신 정보는 수집 및 이용목적이 달성된 후 별도의 DB로 옮겨져(종이의 경우 별도의 서류함)내부 방침 및 기타 관련 법령에 의한 정보보호 사유(보유 및 이용기간 참조)에 따라 일정기간 저장된 후 파기됩니다.</p>
                                </div>

                            </li>
                            <li>
                                <div class="uh">나. </div>
                                <div class="ud">
                                    <p class="t_1">파기대상 : 보유기간 및 관련법령에 따른 보존기간이 종료된 고객정보</p>
                                    <br>
                                </div>
                            </li>
                        </ul>

                    </li>
                    <li>
                        <div>파기방법</div>
                        <br>
                        <ul class="ust ty2">
                            <li>
                                <div class="uh">가. </div>
                                <div class="ud">
                                    <p class="t_1">종이(서면)에 작성·출력된 개인정보 : 분쇄하거나 소각 등의 방법으로 파기.</p>
                                </div>
                            </li>
                            <li>
                                <div class="uh">나. </div>
                                <div class="ud">
                                    <p class="t_1">DB 등 전자적 파일 형태로 저장된 개인정보 : 재생할 수 없는 기술적 방법으로 삭제</p>
                                </div>
                            </li>
                        </ul>
                    </li>
                </ul>

                <br>
                <h3 class="ht1">제 6장 <span class="slash"></span> 수집한 개인정보의 공유 및 제공</h3>
                <div class="ht2">회사는 고객의 개인정보를 가입신청서, 서비스이용약관 및 개인정보처리방침의 「개인정보의 수집목적 및 이용목적」에서 고지한 범위 또는 서비스이용약관에 명시한 범위 내에서 사용하며, 동 범위를 넘어 이용하거나 제3자에게 제공하지 않습니다. 다만, 고객님의 사전 동의가 있거나, 다음에 해당하는 경우에는 예외로 합니다.</div>
                <br>
                <ul class="ust ty1 mgl-70">
                    <li>
                        <div>계약의 이행을 위하여 필요한 개인정보로서 경제적/기술적인 사유로 통상의 동의를 받는 것이 현저히 곤란한 경우</div>

                    </li>
                    <li>
                        <div>통신비밀보호법, 국세기본법, 정보통신망 이용촉진 및 정보보호 등에 관한 법률, 개인정보 보호법, 금융실명거래 및 비밀보장에 관한 법률, 신용정보의 이용 및 보호에 관한 법률, 전기통신기본법, 전기 통신사업법, 지방세법, 소비자기본법, 한국은행법, 형사소송법 등 다른 법률에 특별한 규정이 있는 경우<br><br>
                        </div>
                    </li>
                </ul>
                <div class="ht2">단, '법률에 특별한 규정이 있는 경우'로 행정목적이나 수사목적으로 행정관청 또는 수사기관이 요구해 온 경우라도 무조건 고객의 개인정보를 제공하지 않으며, 법률에 규정된 바에 따라 영장 또는 기관장의 직인이 날인된 서면에 의한 경우 등 적법한 절차에 따라 제공합니다.<br><br>
                회사는 고객에 대하여 보다 나은 서비스 제공 등을 위해 아래와 같이 개인정보를 제공하고 있습니다.</div>
                <br>
                <h3 class="ht1">제 7장 <span class="slash"></span>  개인정보 처리의 위탁</h3>
                <div class="ht2">회사는 업무위탁계약서 등을 통하여 개인정보보호 관련 법규의 준수, 개인정보에 관한 비밀유지, 제3자 제공에 대한 금지, 사고시의 책임부담, 위탁기간, 처리 종료 후의 개인정보의 반환 또는 파기 의무 등을 규정하고, 이를 준수하도록 관리하고 있습니다.</div>
                <br>
                <ul class="ust ty1 mgl-70">
                    <li>
                        <div>회사는 보다 나은 서비스 제공, 고객편의 제공 등 원활한 업무 수행을 위하여 다음과 같이 개인정보 취급 업무를 외부 전문업체에 위탁하여 운영하고 있습니다.</div>
                    </li>
                </ul>
                <br>
                <div class="ht2">개인정보 처리업무 수탁사 및 위탁 내용</div><br>
                <div class="ht2">개인정보 처리의 위탁 상세표</div><br>

                <table>
                    <tr>
                        <th>주식회사 도아</th>
                        <td>광고, 마케팅, 이벤트, 경품 배송을 위한 정보</td>
                    </tr>
                    <tr>
                        <th>(주)한국코퍼레이션</th>
                        <td>고객상담 및 관리, CRM등<br>고객센터 업무</td>
                    </tr>
                </table>
                <br>
                <h3 class="ht1">제 8장 <span class="slash"></span> 개인정보 자동 수집장치의 설치. 운영 및 그 거부에 관한 사항</h3>

                <ul class="ust ty3 mgl-70 gray fw--200">
                    <li>
                        <div>쿠키란 회사에서 제공하는 서비스를 통하여 고객님의 정보를 저장하고 수시로 찾아내는 쿠키 서버의 부가적인 요청이 있을 때 다시 서버로 보내주는 문자열 정보를 말합니다. 고객님께서 웹사이트에 접속을 하시면 고객님의 브라우저에 있는 쿠키의 내용을 읽고, 추가정보를 찾아 접속에 따른 성명 등의 추가 입력 없이 서비스를 제공할 수 있습니다.<br><br></div>
                    </li>
                    <li>
                        <div>회사가 쿠키를 통해 수집하는 정보는 회원의 ID에 한하며, 그 외의 다른 정보는 수집하지 않습니다. 회사가 쿠키(cookie)를 통해 수집한 회원의 ID는 다음의 목적을 위해 사용 될 수 있습니다.</div>
                        <br>

                        <ul class="ust ty4 f_18">
                            <li>이용자의 접속 빈도나 방문 시간 등을 분석, 이용자의 취향과 관심분야를 파악 및 자취 추적, 각종 이벤트 참여 정도 및 방문 회수 파악 등을 통한 타겟 마케팅 및 개인 맞춤 서비스 제공</li>
                        </ul>
                        <br>
                    </li>
                    <li>
                        <div>고객님은 쿠키 설치에 대한 선택권을 가지고 있습니다. 따라서, 웹브라우저에서 옵션을 설정함으로써 모든 쿠키를 허용하거나, 쿠키가 저장될 때마다 확인을 거치거나, 아니면 모든 쿠키의 저장을 거부할 수도 있습니다. 단, 고객님께서는 쿠키 설치를 거부하였을 경우 서비스 이용에 불편이 있거나, 서비스 제공에 어려움이 있을 수 있습니다.<br><br></div>
                    </li>
                    <li>
                        <div>쿠키는 브라우저의 종료 시나 로그아웃 시 만료됩니다.</div>
                    </li>
                </ul>

                <br>

                <h3 class="ht1">제 9장 <span class="slash"></span> 개인정보의 기술적, 관리적 보호</h3>
                <div class="ht2">회사는 회원의 개인정보를 처리함에 있어 개인정보가 분실 도난 유출 변조 또는 훼손되지 않도록 안전성 확보를 위해 다음과 같은 기술적. 관리적 물리적 대책을 강구하고 있습니다.</div>
                <br>
                <div class="ht2">기술적 보호대책</div>
                <br>

                <ul class="ust ty1 mgl-70">
                    <li>
                        <div>개인정보는 비밀번호에 의해 보호되며, 중요한 데이터는 파일 및 전송 데이터를 암호화하거나 파일 잠금기능(Lock)을 사용하는 등 별도 보안기능을 통해 보호되고 있습니다.</div>
                    </li>
                    <li>
                        <div>백신 프로그램을 이용하여 컴퓨터 바이러스에 의한 피해를 방지하기 위한 조치를 취하고 있습니다. 백신프로그램은 주기적으로 업데이트되며 개인정보가 침해되는 것을 방지하고 있습니다.</div>
                    </li>
                </ul>

                <br>
                <div class="ht2">관리적 보호대책</div>
                <br>

                <ul class="ust ty1 mgl-70">
                    <li>
                        <div>개인정보 처리 직원의 최소화 및 교육</div><br>


                        <ul class="ust ty4">
                            <li>- 개인정보 처리 직원은 담당자에 한정시키고 있고 이를 위한 별도의 비밀번호를 부여하고 정기적으로 갱신하고 있으며, 담당자에 대한 수시 교육을 통해 개인정보 처리방침의 준수를 강조하고 있습니다.</li>
                            <li>- 단, 회사는 고객님 개인의 실수나 기본적인 인터넷의 위험성 때문에 일어나는 일들에 대해 책임을 지지 않습니다. 고객님은 본인의 개인정보를 보호하기 위해서 자신의 ID와 비밀번호를 철저히 관리하고 책임을 져야 합니다.</li>
                        </ul>

                    </li>

                </ul>
                <br>

                <h3 class="ht1">제 10장 <span class="slash"></span> 개인정보보호 책임 부서 및 연락처</h3>
                <div class="ht2">
                    회사는 고객의 개인정보보호를 매우 중요시하며, 고객의 개인정보가 훼손. 침해 또는 누설되지 않도록 최선을 다하고 있습니다. <br><br>
                    회사는 고객의 개인정보를 보호하고 개인정보와 관련한 불만을 처리하기 위하여 아래와 같이 관련부서 및 개인정보 보호책임자를 지정하고 있습니다.<br><br>

                    귀하께서는 회사의 서비스를 이용하시며 발생하는 모든 개인정보보호 관련 민원을 개인정보보호 담당부서 혹은 개인정보보호책임자에게 신고하실 수 있습니다.
                    회사는 이용자들의 신고사항에 대해 신속하게 충분한 답변을 드릴 것입니다.
                </div>

                <br><br>

                <ul class="ust ty1 mgl-70">
                    <li>
                        <div>개인정보보호 담당부서 : 경영진단팀</div>
                        <div>전화번호 : 1688-1000</div>
                        <div>이메일 주소 : privacy@sejongtelecom.net </div><br>
                    </li>
                    <li>
                        <div>개인정보보호책임자 : 이한구 이사 </div>
                        <div>전화번호 : 1688-1000</div>
                        <div>이메일 주소 : privacy@sejongtelecom.net</div><br>
                    </li>

                    <li>
                        <div>기타 개인정보침해에 대한 신고나 상담이 필요하신 경우에는 아래 기관에 문의하시기 바랍니다.</div>
                        <br>
<!--
                        <ul class="ust ty4">
                            <li>개인정보침해신고센터<br>privacy.kisa.or.kr / (국번없이) 118<br><br></li>
                            <li>정보보호마크인증위원회<br>eprivacy.or.kr / 02-550-9531~2<br><br></li>
                            <li>대검찰청 사이버수사과<br>www.spo.go.kr / (국번없이) 1301<br><br></li>
                            <li>경찰청 사이버안전국<br>cyberbureau.police.go.kr / (국번없이) 182<br><br></li>
                        </ul> -->

                        <ul class="ust ty4 ">
                            <li>
                                <div class="uh"></div>
                                <div class="ud">
                                    <p class="t_1">개인정보침해신고센터<br>privacy.kisa.or.kr / (국번없이) 118<br><br></p>
                                </div>
                            </li>
                            <li>
                                <div class="uh"></div>
                                <div class="ud">
                                    <p class="t_1">정보보호마크인증위원회<br>eprivacy.or.kr / 02-550-9531~2<br><br></p>
                                </div>
                            </li>
                            <li>
                                <div class="uh"></div>
                                <div class="ud">
                                    <p class="t_1">대검찰청 사이버수사과<br>www.spo.go.kr / (국번없이) 1301<br><br></p>
                                </div>
                            </li>
                            <li>
                                <div class="uh"></div>
                                <div class="ud">
                                    <p class="t_1">경찰청 사이버안전국<br>cyberbureau.police.go.kr / (국번없이) 182<br><br></p>
                                </div>
                            </li>

                        </ul>

                    </li>
                </ul>

                <br>

                <h3 class="ht1">제 11장 <span class="slash"></span> 개인정보처리방침 고지</h3>
                <div class="ht2">
                    현 개인정보처리방침 내용 추가, 삭제 및 수정이 있을 시에는 홈페이지의 공지사항을 통해 고지할 것입니다. <br><br>
                    개인정보 처리방침 공고 일자 : 2019년 1 월 14일<br><br>
                    개인정보 처리방침 시행 일자 : 2019년 1 월 14일
                </div>

                <br><br><br><br>

            </div>

        </div>
    </div>

    <%@ include file="/WEB-INF/jsp/common/footer_m.jsp"  %>


</div>






</body>
</html>