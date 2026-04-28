<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Main/Main.Master" Inherits="ISWIFT.Sys.Web.APage" %>
 




<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="server">
<style>
.infographic-container{
  list-style: none;
  width: 100%;
  max-width: 455px;
  font-family: Tahoma;
  padding: 200px 10px 200px;
  margin: 0 auto;
  margin-left:100px;
}
.infographic-row{
  display: flex;
  box-shadow: 5px 7px 4px 4px rgba(0,0,0,0.1);
  list-style: none;
  padding: 0;
  margin: 0;
}
.infographic-col{
  flex: 0 0 25%;
  width: 25%;
  text-align: center;
  position: relative;
}
.infographic-fill{
  height: 26px;
  color: #ffffff;
  position: relative;
}
.blue{
  background: #006662;
}
.orange{
  background: #FFB870;
}
.infographic-step{
  box-sizing: content-box;
  width: 20px;
  height: 20px;
  background: #ffffff;
  border-radius: 50%;
  position: absolute;
  left: 50%;
  top: 50%;
  transform: translate(-50%, -50%);
  border:7px solid; 
  box-shadow: 0 0 0 4px #ffffff;
  line-height: 20px;
  font-size: 14px;
  font-weight: bold;
}
.blue .infographic-step{
  border-color: #1e3d5f;
  color: #1e3d5f;
}
.orange .infographic-step{
  border-color: #de5432;
  color: #FFB870;
}
.infographic-step::before{
  position: absolute;
  height: 35px;
  background: black;
  width: 3px; 
  content: "";
  bottom: calc(100% + 7px);
  left: 50%;
  transform: translateX(-50%);
}
.infographic-step::after{
  position:absolute;
  content: "";
  bottom: calc(100% + 42px);
  width: 9px;
  height: 9px;
  background: black;
  border-radius: 50%;
  left: 50%;
  transform: translateX(-50%);
}
.blue .infographic-step::before, .blue .infographic-step::after{
  background: #1e3d5f;
}
.orange .infographic-step::before, .orange .infographic-step::after{
  background: #FFB870;
}
.infographic-col:nth-child(2n) .infographic-step::before{
  bottom: auto;
  top: calc(100% + 7px);
}
.infographic-col:nth-child(2n) .infographic-step::after{
  bottom: auto; 
  top: calc(100% + 42px);
}
.infographic-text{
  width: 170%;
  position: absolute;
  bottom: 100%;
  transform: translateY(-100%);
  left: 0;
  text-align: left;
  font-size: 14px;
}
.infographic-col:nth-child(2n) .infographic-text{
  bottom: auto;
  top: 100%;
  transform: translateY(100%);
}
.infographic-col:first-child .infographic-fill::before, .infographic-col:last-child .infographic-fill::after{
  position: absolute;
  width: 0;
  height: 0;
  border-style: solid;
  border-width: 13px 0 13px 9px;
  border-color: transparent transparent transparent #ffffff;
  left: 0;
  top: 0;
  content: "";
}
.infographic-col:last-child .infographic-fill::after{
  border-color: transparent transparent transparent #FFB870;
  right: -9px;
  left: auto;
}

@media only screen and (max-width: 767px) {
  .infographic-container{
    padding: 0;
  }
  .infographic-row{
    flex-direction: column;
    box-shadow: none;
  }
  .infographic-col{
    flex: 1 1 auto;
  }
  .infographic-text, .infographic-col:nth-child(2n) .infographic-text{
    top: 50%;
    bottom: auto;
    transform: translateY(-50%);
    left: calc(100%);
    width: 200px;
  }
  .infographic-fill{
    height: 100px;
    width: 26px;
  }
  .infographic-step::before, .infographic-col:nth-child(2n) .infographic-step::before {
    bottom: auto;
    top: 50%;
    transform: translateY(-50%);
    width: 35px;
    height: 3px;
    left: calc(100% + 7px);
}
  .infographic-step::after, .infographic-col:nth-child(2n) .infographic-step::after {
    bottom: auto;
    top: 50%;
    transform: translateY(-50%);
    left: calc(100% + 42px);
}
  .infographic-col:first-child .infographic-fill::before, .infographic-col:last-child .infographic-fill::after{
    content: none;
  }
}  
.line-1{
    position: relative;
    top: 5%;  
    width: 20em;
    margin: 0 auto;
    border-right: 2px solid rgba(255,255,255,.75);
    font-size: 180%;
    text-align: center;
    white-space: nowrap;
    overflow: hidden;
    transform: translateY(-50%);    
}

/* Animation */
.anim-typewriter{
  animation: typewriter 2s steps(44) 1s 1 normal both,
             blinkTextCursor 1000ms steps(44) infinite normal;
}
@keyframes typewriter{
  from{width: 0;}
  to{width: 17em;}
}
@keyframes blinkTextCursor{
  from{border-right-color: rgba(255, 153, 114, 0.6);}
  to{border-right-color: transparent;}
}   
</style>
 
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="server">
    

           
  <div id="content">
  <div class=" text-center line-1 anim-typewriter " >
  <h2 style = "font-family: 'Anonymous Pro', monospace; "><img src="../Images/favicon64.jpg" alt="" /> Nghiệp vụ bán hàng</h2>
            </div>
  <div class="infographic-container">
<ul class="infographic-row">
  <li class="infographic-col">
    <div class="infographic-text">
    
      <br />
      <a href="Default.aspx?id=dmcang">  <img src="../Images/png/clipboard1.png" alt="Sản xuất" /><font size="3" > Lệnh sản xuất </font></a>
    </div>
    <div class="infographic-fill blue">
      <div class="infographic-step">
        1
      </div>
    </div>
  </li>
  <li class="infographic-col">
    <div class="infographic-text">

      <a href="Default.aspx?id=dmcang">  <img src="../Images/png/project-management (2).png" alt="" /> <font size="3">Đơn đặt hàng </font></a>
    </div>
    <div class="infographic-fill blue orange">
      <div class="infographic-step">
        2
      </div>
    </div>
  </li>
  <li class="infographic-col">
    <div class="infographic-text">

     <a href="Default.aspx?id=dmcang">  <img src="../Images/png/payday.png" alt="" /> <font size="3">Hợp đồng bán</font> </a>
    </div>
    <div class="infographic-fill blue">
      <div class="infographic-step">
        3
      </div>
    </div>
  </li>
  <li class="infographic-col">
    <div class="infographic-text">

            <a  href="Default.aspx?id=dmcang">  <img src="../Images/png/project-management (1).png" alt="1" /><font size="3"> <br />Ghi nhận doanh thu </font></a>
    </div>
    <div class="infographic-fill orange">
      <div class="infographic-step">
        4
      </div>
    </div>
  </li>
     <li class="infographic-col">
    <div class="infographic-text">

      <a href="Default.aspx?id=dmcang">  <img src="../Images/png/project-management (1).png" alt="" /><font size="3"> Xuất hóa đơn </font></a>
    </div>
    <div class="infographic-fill blue">
      <div class="infographic-step">
        5
      </div>
    </div>
  </li>
    <li class="infographic-col">
    <div class="infographic-text">
      <br />
      <a href="Default.aspx?id=dmcang">  <img src="../Images/png/analytic.png" alt="" /> <font size="3">Trả lại hàng </font></a>
    </div>
    <div class="infographic-fill orange">
      <div class="infographic-step">
        6
      </div>
    </div>
  </li>
     <li class="infographic-col">
    <div class="infographic-text">

      <a href="Default.aspx?id=dmcang">  <img src="../Images/png/clipboard.png" alt="" /> <font size="3"><br />Giảm giá hàng bán</font></a>
    </div>
    <div class="infographic-fill blue">
      <div class="infographic-step">
        7
      </div>
    </div>
  </li>
      <li class="infographic-col">
    <div class="infographic-text">

             <a href="Default.aspx?id=dmcang">  <img src="../Images/png/manual.png" alt="" /> <font size="3"><br />Thu tiền theo hóa đơn</font> </a></section>
    </div>
    <div class="infographic-fill orange">
      <div class="infographic-step">
       8
      </div>
    </div>
  </li>
</ul>
</div>
</div>
    
    
    
   

    
   
   
</asp:Content>
 
 