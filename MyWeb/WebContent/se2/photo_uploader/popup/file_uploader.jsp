<%@page import="java.util.Date"%>
<%@page import="java.util.Locale"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="java.io.File"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page contentType="text/html; charset=UTF-8" %>
<%

String path =  request.getSession().getServletContext().getRealPath("/") + "upload"+File.separator+"edit" ; // 이미지가 저장될 주소
//String path =  "/data/rafium/" + "upload"+File.separator+"edit" ; // 이미지가 저장될 주소
String pathadd= "edit/";
//System.out.println("path ====> " + path);
//String path =  "/upload/" ; // 이미지가 저장될 주소
String filename = "";
String[] CHECK_EXT_ARR = { "jpg", "jpeg", "gif", "png", "bmp" };

if(request.getContentLength() > 10*1024*1024 ){
%>
    <script>alert("업로드 용량(총 10Mytes)을 초과하였습니다.");history.back();</script>
<%
    return;

} else {

    try {

        
        MultipartRequest multi=new MultipartRequest(request, path, 15*1024*1024, "UTF-8", new DefaultFileRenamePolicy());
        java.text.SimpleDateFormat formatter2 = new java.text.SimpleDateFormat ("yyyy_MM_dd_HHmmss", java.util.Locale.KOREA);
        int cnt = 1;
        String upfile = (multi.getFilesystemName("Filedata"));
        if (upfile != null) {
            String dateString = formatter2.format(new java.util.Date());
            String moveFileName = dateString + upfile.substring(upfile.lastIndexOf(".") );
            String fileExt = upfile.substring(upfile.lastIndexOf(".") + 1);
           	if(java.util.Arrays.asList(CHECK_EXT_ARR).indexOf(fileExt.toLowerCase().toString()) <= -1){
           		%><script>alert("[JPG, GIF, PNG, BMP] 해당 파일만 업로드 할수 있습니다.");history.back();</script><%
           		File sourceFile = new File(path + File.separator + upfile);
           		sourceFile.delete();
           		return;
               }
            File sourceFile = new File(path + File.separator + upfile);
            File targetFile = new File(path + File.separator + moveFileName);
            sourceFile.renameTo(targetFile);
            filename = moveFileName;
            sourceFile.delete();
            %>
            <form id="fileform" name="fileform" method="post">
                <input type="hidden" name="filename" value="<%=filename%>">
                <input type="hidden" name="path" value="<%=path%>">
                <input type="hidden" name="fcode" value="<%=path%>">
                <input type="hidden" name="pathadd" value="<%=pathadd%>">
                <input type="hidden" name="textareaId" value="<%=multi.getParameter("id")%>">
                
            </form>
            <%
        }else{
        	%><script>alert("첨부파일을 입력해주세요.");history.back();</script><%
        }
    } catch (Exception e) {
        System.out.println("e : " + e.getMessage());
    }
}
%>

<script type="text/javascript">
    function fileAttach(){
        f = document.fileform;
        fpath = f.path.value;
        fname = f.pathadd.value+f.filename.value; 
        fcode = fpath + fname;
		fid	 = f.textareaId.value;
        try{
        	//var sHTML = '<img src="/upload/'+fname+'">';
        	 var sHTML = '<img src="<%=request.getContextPath()%>/upload/'+fname+'">';
        	 window.opener.parent.oEditors.getById[fid].exec("PASTE_HTML", [sHTML]);
	         
             window.close();
        }catch(e){ 
             alert(e); 
        }
    }
    fileAttach();
    this.window.close();
</script>
