<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Poinsettia.aspx.cs" Inherits="Final.Poinsettia" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 700px;
        }
        .auto-style3 {
            width: 368px;
            height: 222px;
        }
        .auto-style4 {
            width: 122px;
            text-align: center;
        }
        .auto-style5 {
            font-size: medium;
        }
        .auto-style6 {
            font-size: large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="auto-style2">
        <h2>포인세티아 [Poinsettia]</h2>
        <br />
&nbsp;<asp:Image ID="Image1" runat="server" Height="300px" ImageUrl="~/Logo/po1.PNG" />
&nbsp;
        <asp:Image ID="Image2" runat="server" Height="300px" ImageUrl="~/Logo/po2.PNG" />
        <br />
        <br />
        <table class="auto-style3" style="border-style: solid; border-width: 1px;">
            <tr>
                <td class="auto-style4" style="border-style: solid; border-width: 1px; border-collapse: collapse"><strong>학명</strong></td>
                <td style="border-style: solid; border-width: 1px; border-collapse: collapse">Euphorbia pulcherrima Willd. ex Klotzsch</td>
            </tr>
            <tr>
                <td class="auto-style4" style="border-style: solid; border-width: 1px; border-collapse: collapse"><strong>생물학적 분류</strong></td>
                <td style="border-style: solid; border-width: 1px; border-collapse: collapse">계 : 식물계(Plantae)
                    <br />
                    문 : 현화식물문(Anthophyta) 강 : 쌍떡잎식물강(Dicotyledoneae)
                    <br />
                    목 : 대극목(Euphorbiales)
                    <br />
                    과 : 대극과(Euphorbiaceae)
                    <br />
                    속 : Euphorbia</td>
            </tr>
            <tr>
                <td class="auto-style4" style="border-style: solid; border-width: 1px; border-collapse: collapse"><strong>크기</strong></td>
                <td style="border-style: solid; border-width: 1px; border-collapse: collapse">100cm</td>
            </tr>
            <tr>
                <td class="auto-style4" style="border-style: solid; border-width: 1px; border-collapse: collapse"><strong>개화시기</strong></td>
                <td style="border-style: solid; border-width: 1px; border-collapse: collapse">12월</td>
            </tr>
            <tr>
                <td class="auto-style4" style="border-style: solid; border-width: 1px; border-collapse: collapse"><strong>꽃색</strong></td>
                <td style="border-style: solid; border-width: 1px; border-collapse: collapse">녹색</td>
            </tr>
            <tr>
                <td class="auto-style4" style="border-style: solid; border-width: 1px; border-collapse: collapse"><strong>형태</strong></td>
                <td style="border-style: solid; border-width: 1px; border-collapse: collapse">상록 관목</td>
            </tr>
            <tr>
                <td class="auto-style4" style="border-style: solid; border-width: 1px; border-collapse: collapse"><strong>원산지</strong></td>
                <td style="border-style: solid; border-width: 1px; border-collapse: collapse">멕시코</td>
            </tr>
            <tr>
                <td class="auto-style4" style="border-style: solid; border-width: 1px; border-collapse: collapse"><strong>분포지</strong></td>
                <td style="border-style: solid; border-width: 1px; border-collapse: collapse">멕시코</td>
            </tr>
        </table>
        <br />
        <strong><span class="auto-style6">특징</span><span class="auto-style5"> 
        <br />
        </span></strong>
        <br class="auto-style5" />
        <span class="auto-style5">포인세티아는 열대 관목으로서 일장이 짧아지고 온도가 내려가면 포엽이 아름답게 착색되어 관상가치를 갖게 된다. 크리스마스 시즌에 개화하는 특성 때문에 미국과 유럽에서는 전통적인 크리스마스 장식화로 널리 사용되어 왔으며 우리나라에서도 겨울철 분화로서 유망하다. </span>
        <br class="auto-style5" />
        <span class="auto-style5">포인세티아는 단일하에서 꽃눈이 형성된다. 포인세티아는 12시간 15분 이하의 일장이 되면 꽃눈을 형성하기 시작한다. 우리나라의 경우 자연일장이 12시간 15분 이하가 되는 시기는 10월 상순부터 3월 중순인데 이시기는 일장단축과 함께 온도도 영향을 미친다. </span>
        <br class="auto-style5" />
        <br class="auto-style5" />
        <span class="auto-style6"><strong>재배정보 
        <br />
        </strong></span>
        <br class="auto-style5" />
        <span class="auto-style5"><strong>1) 심는 방법 </strong> </span>
        <br class="auto-style5" />
        <span class="auto-style5">발근된 묘를 통기성이 우수하고 깨끗한 용토에 정식한다. 자연일장을 그대로 수용하면 12월에 개화한다. </span>
        <br class="auto-style5" />
        <span class="auto-style5">(1) 가꾸기 포인트 최종 목표 분지 수에 따라 적당한 마디 수를 남기고 적심한다. </span>
        <br class="auto-style5" />
        <br class="auto-style5" />
        <span class="auto-style5"><strong>2) 기후 및 토양</strong> </span>
        <br class="auto-style5" />
        <span class="auto-style5">(1) 기후조건 주간 24℃ 내외, 야간 18℃ 내외가 적당하며 주야간의 온도차가 크면 과도하게 줄기가 신장되며 고온이 계속될 경우에는 개화가 늦어진다. 단일조건하에서 꽃눈이 발달하고 꽃이 피는 단일식물이다. </span>
        <br class="auto-style5" />
        <span class="auto-style5">(2) 토양조건 통기성이 우수하고 pH 는 5.5~6.5범위가 적당하며 주로 피트모스와 펄라이트를 혼합하여 사용한다. </span>
        <br class="auto-style5" />
        <br class="auto-style5" />
        <span class="auto-style5"><strong>3) 관리하기</strong> </span>
        <br class="auto-style5" />
        <span class="auto-style5">(1) 물주기 관수방법은 화분 상부에서 주는 살수식 보다는 점적식으로 관수장치를 설치하는 것이 바람직하다. </span>
        <br class="auto-style5" />
        <span class="auto-style5">(2) 거름주기<br />
        포인세티아는 다비성 작물로 정식 1주일 후 무렵부터 비료 공급을 시작한다. 재배기간에 액비(물거름)를 공급하다가 출하 2~3주 전부터 시비량을 줄이거나 시비를 중단한다. </span>
        <br class="auto-style5" />
        <span class="auto-style5">(3) 꺾꽂이 방법 삽수채취는 이른 아침이나 저녁시간에 6~9cm 길이로 잘라 삽목한다. </span>
        <br class="auto-style5" />
        <span class="auto-style5">(4) 질병관리 ㆍ충해(온실가루이) </span>
        <br class="auto-style5" />
        <span class="auto-style5">&nbsp;증상 - 포인세티아에 가장 심각한 해충으로 발생여부를 확인하는데는 노랑색 끈끈이를 사용한다. </span>
        <br class="auto-style5" />
        <span class="auto-style5">&nbsp;치료 - 농약을 살포할 때에는 잎의 뒷면에 약제가 묻도록 살포해야 한다.</span><br class="auto-style5" />
        <br class="auto-style5" />
        <span class="auto-style5"><strong>4) 수확하기</strong> </span>
        <br class="auto-style5" />
        <span class="auto-style5">일장조절에 의해 연중 출하가 가능하나 자연개화기의 출하는 12월이다.<br />
        <br />
        <br />
        </span>출처&nbsp; :[네이버 지식백과] 포인세티아 [Poinsettia] (경기도농업기술원, 네이버 포토갤러리),
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 포인세티아 (국립수목원 국가생물종지식정보 : 식물)<br />
    </div>
</asp:Content>
