<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Main/Main.Master" Inherits="ISWIFT.Sys.Web.APage" %>

  <asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="server">
    <style>
      @import url('https://fonts.googleapis.com/css?family=Lato');
      body {
        font-family: 'Lato', sans-serif;
        padding: 20px;
       
      }
      
      .steps {
        display: flex;
        overflow: hidden;
        line-height: 1.5;
        border: 2px solid #414141;
        padding: 0;
        margin: 0;
        border-radius: 5px;
      }
      
      .step {
        flex: 1;
        color: #414141;
        text-decoration: none;
        padding: 10px 0 10px 45px;
        background: #fff;
        position: relative;
        display: flex;
      }
      
      .step:first-child {
        padding-left: 15px;
      }
      
      .step:last-child {
        padding-right: 15px;
      }
      
      .step.active {
        background-color: #07575B;
        color: #fff;
      }
      
      .step.active:after {
        border-left-color: #07575B;
      }
      
      .step:after {
        content: " ";
        display: block;
        width: 0;
        height: 0;
        border-top: 50px solid transparent;
        /* Go big on the size, and let overflow hide */
        
        border-bottom: 50px solid transparent;
        border-left: 30px solid #fff;
        position: absolute;
        top: 50%;
        margin-top: -50px;
        left: 100%;
        z-index: 2;
      }
      
      .step:before {
        content: " ";
        display: block;
        width: 0;
        height: 0;
        border-top: 50px solid transparent;
        /* Go big on the size, and let overflow hide */
        
        border-bottom: 50px solid transparent;
        border-left: 30px solid #414141;
        position: absolute;
        top: 50%;
        margin-top: -50px;
        margin-left: 2px;
        left: 100%;
        z-index: 1;
      }
      
      .done {
        background-color: #000;
        color: #fff;
      }
      
      .done:after {
        border-left-color: #000;
      }
      
      .productlist {
        display: grid;
        grid-template-columns: 1fr 1fr 1fr 1fr 1fr 1fr;
        grid-gap: 2px 2px;
        padding: 10px 10px 10px 10px;
        text-align: center;
      }
      
      .productlist-card {
        height: 99px;
        background: #ffffff;
        border: hidden;
        font-family: Cambria, Cochin, Georgia, Times, Times New Roman, serif;
        color:#418f8f;
      }
      
      .grid-container {
        display: grid;
        grid-template-columns: 1fr 1fr 1fr 1fr;
        grid-gap: 2px 1px;
        padding: 5px;
       font-family: Cambria, Cochin, Georgia, Times, Times New Roman, serif;
      }
      
      .grid-container > div {
        background-color: #ffffff;
        text-align: center;
        padding: 10px 0;
        font-size: 15px;
        border: ridge;
        border-radius: 10px;
      }
      
      .line-1 {
        position: relative;
        top: 5%;
        width: 20em;
        margin: 0 auto;
        border-right: 2px solid rgba(255, 255, 255, .75);
        font-size: 180%;
        text-align: center;
        white-space: nowrap;
        overflow: hidden;
        transform: translateY(-50%);
      }
      /* Animation */
      
      .anim-typewriter {
        animation: typewriter 2s steps(44) 1s 1 normal both, blinkTextCursor 1000ms steps(44) infinite normal;
      }
      
      @keyframes typewriter {
        from {
          width: 0;
        }
        to {
          width: 17em;
        }
      }
      
      @keyframes blinkTextCursor {
        from {
          border-right-color: rgba(255, 153, 114, 0.6);
        }
        to {
          border-right-color: transparent;
        }
      }
    </style>

  </asp:Content>
  <asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="server">
    <div id="content">
      <div class=" text-center line-1 anim-typewriter ">
        <h2 style="font-family:Cambria, Cochin, Georgia, Times, Times New Roman, serif ; color:#003c39 "><img src="../Images/favicon64.jpg" alt="" /> Nghiệp vụ Kho hàng</h2>
      </div>
      <div class="steps">
        <div class="step ">KẾ TOÁN KHO</div>
        <div class="step active">KẾ TOÁN KHO
          <br />THỦ KHO</div>
        <div class="step">THỦ KHO</div>
        <div class="step active">KẾ TOÁN KHO</div>
      </div>
      <br />
      <section class="productlist">
        <section class="productlist-card">
          <br />
          <a href="Default.aspx?id=m53"> <img src="../Images/png/lenhSX.png" alt="Sản xuất" /><font size="3";color:red> Lệnh sản xuất </font>
          </a>
        </section>
        <section class="productlist-card">
          <br />
          <a href="Default.aspx?id=thnxk&xtype=Filter"> <img src="../Images/png/xuatkho.png" alt="1" /><font size="3"> Xuất kho </font>
          </a>
        </section>
        <section class="productlist-card">
          <br />
          <a href="Default.aspx?id=bctkclc&xtype=Filter"> <img src="../Images/png/chuyenkho.png" alt="Chuyển kho" /> <font size="3">Chuyển kho </font>
          </a>
        </section>
        <section class="productlist-card">
          <br />
          <a href="Default.aspx?id=dmcang"> </a>
        </section>
        <section class="productlist-card">
          <br />
          <a href="Default.aspx?id=dmcang"> </a>
        </section>
        <section class="productlist-card">
          <br />
        </section>
        <section class="productlist-card"> <img src="../Images/png/line1.png" alt="" />
        </section>
        <section class="productlist-card"><img src="../Images/png/line2.png" alt="" />
        </section>
        <section class="productlist-card"><img src="../Images/png/line2.png" alt="" />
        </section>
        <section class="productlist-card">
          <br />
          <a href="Default.aspx?id=dmcang"> <img src="../Images/png/thukho.png" alt="thủ kho" /><font size="3"><br />Thủ kho nhập/xuất kho </font>
          </a>
        </section>
        <section class="productlist-card"><img src="../Images/png/line3.png" alt="" />
        </section>
        <section class="productlist-card">
          <br />
          <a href="Default.aspx?id=bctk&xtype=Filter"> <img src="../Images/png/baocao.png" alt="Báo cáo" /> <font size="3"><br />Báo cáo </font>
          </a>
        </section>
        <section class="productlist-card">
          <a href="Default.aspx?id=bknxk&xtype=Filter"><img src="../Images/png/thukho2.png" alt="" /><font size="3"><br />Thủ kho nhập/xuất kho </font>
          </a>
        </section>
        <section class="productlist-card">
          <a href="Default.aspx?id=thnxk&xtype=Filter"><img src="../Images/png/nhapkho.png" alt="Nhập kho" /><font size="3"><br />Nhập kho </font>
          </a>
        </section>
     <a><section class="productlist-card"><img src="../Images/png/tinhgia.png" alt="Tính giá xuất" /><font size="3"><br />Tính giá xuất kho</font>
        </section>
     
        <section class="productlist-card">
          <br />
          <a href="Default.aspx?id=dmcang"> </a>
        </section>
        <section class="productlist-card"> <a href="Default.aspx?id=bknxk&xtype=Filter"><img src="../Images/png/kiemke.png" alt="Kiểm kê" /><font size="3">Kiểm kê kho</font> </a></section>
      </section>
     <footer>
        <div class="grid-container">
          <div class="item1">
            <a href="Default.aspx?id=dmkh"><img src="../Images/png/khachhang2.png" alt="" />
              <br />Khách hàng</a>
          </div>
          <div class="item2">
            <a href="Default.aspx?id=dmvt"><img src="../Images/png/hanghoa2.png" alt="" />
              <br />Hàng hóa, dịch vụ</a>
          </div>
          <div class="item3">
            <a href="Default.aspx?id=dmkh"><img src="../Images/png/dieukhoan2.png" alt="" />
              <br />Điều khoản thanh toán</a>
          </div>
          <div class="item3">
            <a href="Default.aspx?id=dmkh"><img src="../Images/png/tool2.png" alt="" />
              <br />Tiện ích</a>
          </div>
        </div>
      </footer>
    </div>





  </asp:Content>