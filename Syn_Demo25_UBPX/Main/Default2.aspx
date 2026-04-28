<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Main/Main.Master" Inherits="ISWIFT.Sys.Web.APage" %>
 




<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="server">
<style>
.productlist {
   display: grid;
   grid-template-columns: 1fr 1fr 1fr 1fr;
   grid-gap: 2px 5px;
   padding: 10px 10px;
   border:ridge;
   text-align:center;
  
}

.productlist-card {
   height: 90px;
   background: #ffffff;
   border: inset;
   
    
}
.grid-container {
  display: grid;
  grid-template-columns: 1fr 1fr 1fr 1fr;
  grid-gap: 2px 1px;
 
  padding: 5px;
}

.grid-container > div {
   background-color: #ffffff;
  text-align: center;
  padding: 20px 0;
  font-size: 15px;
   border: ridge ;
   border-radius: 20px;
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
     
        <section class="productlist">
      
   <section class="productlist-card"><br />
       <a href="Default.aspx?id=dmcang">  <img src="../Images/png/briefing.png" alt="" /><font size="3" style="color:#006662"> Báo giá </font></a></section>
   <section class="productlist-card"> <br />
       <a  href="Default.aspx?id=dmcang">  <img src="../Images/png/project-management (1).png" alt="1" /><font size="3"> Ghi nhận doanh thu </font></a></section>
   <section class="productlist-card"><br /> 
       <a href="Default.aspx?id=dmcang">  <img src="../Images/png/analytic.png" alt="" /> <font size="3">Trả lại hàng </font></a></section>
   <section class="productlist-card"><br /> 
       <a href="Default.aspx?id=dmcang">  <img src="../Images/png/manual.png" alt="" /> <font size="3">Thu tiền theo hóa đơn</font> </a></section>
   <section class="productlist-card"><br />
       <a href="Default.aspx?id=dmcang">  <img src="../Images/png/project-management (2).png" alt="" /> <font size="3">Đơn đặt hàng </font></a></section>
   <section class="productlist-card"> <br /><img src="../Images/png/64.png" alt="" /></section>
   <section class="productlist-card"><br /><img src="../Images/png/64.png" alt="" /></section>
   <section class="productlist-card"><br /><img src="../Images/png/right-arrow.png" alt="" /></section>
   <section class="productlist-card"> <br />
       <a href="Default.aspx?id=dmcang">  <img src="../Images/png/payday.png" alt="" /> <font size="3">Hợp đồng bán</font> </a></section>
   <section class="productlist-card"> <br />
       <a href="Default.aspx?id=dmcang">  <img src="../Images/png/project-management (1).png" alt="" /><font size="3"> Xuất hóa đơn </font></a></section>
   <section class="productlist-card"><br /> 
       <a href="Default.aspx?id=dmcang">  <img src="../Images/png/clipboard.png" alt="" /> <font size="3">Giảm giá hàng bán</font></a></section>
   <section class="productlist-card"></section>

</section>

     
      
      
      <footer>
  <div class="grid-container">
  <div class="item1" ><a href="Default.aspx?id=dmkh"><img src="../Images/png/rating.png" alt="" /> <br />Khách hàng</a></div>
  <div class="item2"><a href="Default.aspx?id=dmcang"><img src="../Images/png/box.png" alt="" /> <br />Hàng hóa, dịch vụ</a></div>
  <div class="item3"><a href="Default.aspx?id=dmkh"><img src="../Images/png/handshake.png" alt="" /> <br />Điều khoản thanh toán</a></div>
  <div class="item3"><a href="Default.aspx?id=dmkh"><img src="../Images/png/tools.png" alt="" /> <br />Tiện ích</a></div>
    </div>
          </footer>
</div>
    
    
    
   

    
   
   
</asp:Content>
 
 