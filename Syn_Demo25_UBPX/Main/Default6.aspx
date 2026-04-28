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
                background-color: #58b7b7;
                color: #fff;
            }
            
            .step.active:after {
                border-left-color: #58b7b7;
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
                border: ridge;
                text-align: center;
            }
            
            .productlist-card {
                height: 99px;
                background: #ffffff;
                border: hidden;
               
                font-family: Cambria, Cochin, Georgia, Times, Times New Roman, serif;
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
                padding: 20px 0;
                font-size: 15px;
                border: ridge;
                border-color:#a4d7d2;
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
                <h2 style="font-family:Cambria, Cochin, Georgia, Times, Times New Roman, serif ; color:#003c39 "><img src="../Images/favicon64.jpg" alt="" /> Nghiệp vụ Mua Hàng</h2>
            </div>
            <br />

            <section class="productlist">
                <section class="productlist-card">
                    <br />
                    <a href="Default.aspx?id=m52"> <img src="../Images/png/dondathang.png" alt="Sản xuất" /><font size="3">Đơn mua hàng </font>
                    </a>
                </section>
                <section class="productlist-card">
                    <br />
                    <a href="Default.aspx?id=thnxk&xtype=Filter"> <img src="../Images/png/nhanhang.png" alt="1" /><font size="3">Nhận hàng </font>
                    </a>
                </section>
                <section class="productlist-card">
                    <br />
                    <a href="Default.aspx?id=bctkclc&xtype=Filter"> <img src="../Images/png/tralai.png" alt="Chuyển kho" /> <font size="3">Trả lại hàng mua </font>
                    </a>
                </section>
                <section class="productlist-card">
                    <br />
                    <a href="Default.aspx?id=bctkclc&xtype=Filter"> <img src="../Images/png/tratienncc.png" alt="Chuyển kho" /> <font size="3">Trả tiền NCC </font>
                    </a>
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
                <section class="productlist-card"> <img src="../Images/png/line7.png" alt="thủ kho" />
                </section>
                <section class="productlist-card">
                    <br />
                    <a href="Default.aspx?id=bctk&xtype=Filter"> <img src="../Images/png/baocao.png" alt="Báo cáo" /> <font size="3"><br />Báo cáo </font>
                    </a>
                </section>
                <section class="productlist-card"></section>
                <section class="productlist-card">
                    <a href="Default.aspx?id=bknxk&xtype=Filter"><img src="../Images/png/hopdong.png" alt="Hợp đồng" /><font size="3"><br />Hợp đồng mua hàng</font>
                    </a>
                </section>
                <section class="productlist-card">
                    <a href="Default.aspx?id=thnxk&xtype=Filter"><img src="../Images/png/nhanhoadon.png" alt="Nhập kho" /><font size="3"><br />Nhận hóa đơn</font>
                    </a>
                </section>
                <section class="productlist-card">
                    <a href="#"><img src="../Images/png/giamgia.png" alt="Giảm giá" /><font size="3"><br />Giảm giá hàng mua</font>
                    </a>
                </section>
                <section class="productlist-card"></section>
                <section class="productlist-card"></section>
            </section>
            <br />
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