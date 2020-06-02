<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<script src="https://cdn.ckeditor.com/ckeditor5/19.0.0/classic/ckeditor.js"></script>

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>


<style type="text/css">
.ck.ck-editor {
    max-width: 1000px;
}
.ck-editor__editable {
    min-height: 300px;
}
</style>

<title>Insert title here</title>


<script>
function goWrite(frm) {
   var title = frm.title.value;

//   var content = frm.content.value;
   
   if (title.trim() == ''){
      alert("제목을 입력해주세요");
      return false;
   }
   
/*     if (content.trim() == ''){
      alert("내용을 입력해주세요");
      return false;
   }  */
   frm.submit();
}
</script>

</head>
<body>
<jsp:include page="item.jsp" flush="true"/>
   
         <!-- 가운대 틀 -->
         <div id="contents">
            <div class="sub_contents_inner">
               <div class="contents_inner">
                  <div id="hotItem">
                     <h2 class="Title" style="font-family: font-family : 'Noto Sans JP', sans-serif;">Q/A
                     </h2>
                     <div style="width: 60%; margin: auto;">
                        <form method="post"  action="uploadForm2" enctype="multipart/form-data">
                        <div>
                           <span style="border: 1px solid gray;">
                              <span style="margin: 40px 31px 40px; letter-spacing: 4px">subject</span>
                           </span>
                           <span>
                              <select name="title" style="width: 40%;">
                                      <option value="상품문의">상품문의</option>
                                      <option value="배송문의">배송문의</option>
                                      <option value="교환/반품문의">교환/반품문의</option>
                                      <option value="기타문의">기타문의</option>
                                      <option value="배송전 취소/변경문의">배송전 취소/변경문의</option>
                                      <option value="재입고문의">재입고문의</option>
                                      <option value="입금/미입금문의">입금/미입금문의</option>
                              </select>
                            </span>
                            <br><br>
                            <span style="border: 1px solid gray;">
                              <span style="margin: 40px 37px 40px; letter-spacing: 6px">name</span>
                            </span>
	                        <span><input type="text" name="name" style="width: 40%;" placeholder="이름"/></span>
                         </div>
                           <br>
                           <textarea name="content" id="editor"></textarea>
                           <script>
                               ClassicEditor
                                   .create( document.querySelector( '#editor' ), {
                                  /*     // ck에디터 이미지 삭제. */
                                        removePlugins: [ 'ImageUpload' ]
                                   } )
                                   .catch( error => {
                                       console.error( error );
                                   } );
                              </script>
                                <input type="file" name="file" class="btn btn-info"/>
                           <!-- <input multiple="multiple" type="file" name="sub_file" style="float: left;" /> -->
                           <input id="save" type="button" class="btn btn-info" value="save" style="float: right;" onclick="goWrite(this.form)">
                           <input type="hidden" value="/kookgi-DK/Spring/workspace/homeProject/src/main/webapp/resources/noticeimage" name="attached">
                        </form>
                        </div>
                  </div>
               </div>

            </div>
         </div>
   
</body>
</html>