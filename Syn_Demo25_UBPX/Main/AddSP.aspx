<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Main/Main.Master" Inherits="ISWIFT.Sys.Web.APage" %>
 




<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="server">
 
<script src="/path/to/ckfinder/ckfinder.js"></script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="server">
    

           
  <div id="content"> 
   
    
    
    
    
   
<!-- Đoạn mã XML trong ngữ cảnh giao diện của bạn -->
<field name="Image" width="120">
    <text v="Hình ảnh" e="Image"></text>
    <file v="" e="Image"></file>
  </field>
  <button onclick="chooseImage()">Chọn ảnh</button>
  <img id="uploadedImage" style="max-width: 100%; display: none;">
  
   <!-- Script để tương tác với CKFinder  -->
<script>
    function openCKFinder() {
      CKFinder.popup({
        chooseFiles: true,
        onInit: function(finder) {
          finder.on('files:choose', function(event) {
            const selectedFiles = event.data.files;
            
            if (selectedFiles.length > 0) {
              const fileUrl = selectedFiles[0].getUrl();
              const uploadedImage = document.getElementById('uploadedImage');
              
              uploadedImage.src = fileUrl;
              uploadedImage.style.display = 'block';
            }
          });
        }
      });
    }
</script>
<!-- Đoạn mã JavaScript -->
<script>
    function chooseImage() {
      var finder = new CKFinder();
      finder.selectActionFunction = function(fileUrl) {
        var uploadedImage = document.getElementById('uploadedImage');
        uploadedImage.src = fileUrl;
        uploadedImage.style.display = 'block';
      };
      finder.popup();
    }
</script>
    
    
   
</div>
      
   
</asp:Content>
 
 