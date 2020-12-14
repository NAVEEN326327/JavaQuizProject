<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Test Page | </title>
   <script type="text/javascript">
   function validate_answer(Y)
   {

   }
   </script>
   <style>
     .outer__container{
        display:flex;
        flex-direction:row;
        justify-content: center;
     }
   </style>
</head>
<body>

 <div class='outer__container'>
  <div><h1>Test</h1></div>
 </div>
     <div style='margin-left:20%; margin-top:5%; font-size:1.2rem'>
         <div>
         <!-- 
            
              <c:forEach items="${requestScope.testQuestioslist}" var="que">
              <table> 
                <tr> 
                    <td style='font-weight:700'><span>Q.</span> ${que.getQuestions()}</td>
                </tr>
                <tr>
                     <td><span>A)</span> ${que.getAnswer1()}</td>
                </tr>
                <tr>
                     <td><span>B)</span> ${que.getAnswer2()}</td>
                </tr>
                <tr>
                     <td><span>C)</span> ${que.getAnswer3()}</td>
                </tr>
                <tr>
                     <td><span>D)</span> ${que.getAnswer4()}</td>
                </tr>
                 <tr>
                     <td><br>
                    
                     
                     <input type="radio" id="A" name="ans1" value="A">
                     <label for="A">A</label><br>
                     <input type="radio" id="B" name="ans1" value="B">
                     <label for="B">B</label><br>
                     <input type="radio" id="C" name="ans1" value="C">
                     <label for="C">C</label><br>
                     <input type="radio" id="D" name="ans1" value="D">
                     <label for="D">D</label>

                     </td>
                </tr>
                </table><br>
                
                </c:forEach><br>
             -->
             
             <form action='SubmitTest' method='post'>
             <table> 
                <tr> 
                    <td style='font-weight:700'><span>Q.1 </span> ${requestScope.testQuestioslist.get(0).getQuestions()}</td>
                </tr>
                <tr>
                     <td><span>A)</span> ${requestScope.testQuestioslist.get(0).getAnswer1()}</td>
                </tr>
                <tr>
                     <td><span>B)</span> ${requestScope.testQuestioslist.get(0).getAnswer2()}</td>
                </tr>
                <tr>
                     <td><span>C)</span> ${requestScope.testQuestioslist.get(0).getAnswer3()}</td>
                </tr>
                <tr>
                     <td><span>D)</span> ${requestScope.testQuestioslist.get(0).getAnswer4()}</td>
                </tr>
                 <tr>
                     <td><br>
                    
                     
                     <input type="radio" id="A" name="ans1" value="A">
                     <label for="A">A</label><br>
                     <input type="radio" id="B" name="ans1" value="B">
                     <label for="B">B</label><br>
                     <input type="radio" id="C" name="ans1" value="C">
                     <label for="C">C</label><br>
                     <input type="radio" id="D" name="ans1" value="D">
                     <label for="D">D</label>
                     <br>
                     </td>
                </tr>
                
                <!--  -->
                
                
                
                <tr> 
                    <td style='font-weight:700'><span>Q.2 </span> ${requestScope.testQuestioslist.get(1).getQuestions()}</td>
                </tr>
                <tr>
                     <td><span>A)</span> ${requestScope.testQuestioslist.get(1).getAnswer1()}</td>
                </tr>
                <tr>
                     <td><span>B)</span> ${requestScope.testQuestioslist.get(1).getAnswer2()}</td>
                </tr>
                <tr>
                     <td><span>C)</span> ${requestScope.testQuestioslist.get(1).getAnswer3()}</td>
                </tr>
                <tr>
                     <td><span>D)</span> ${requestScope.testQuestioslist.get(1).getAnswer4()}</td>
                </tr>
                 <tr>
                     <td><br>
                    
                     
                     <input type="radio" id="A" name="ans2" value="A">
                     <label for="A">A</label><br>
                     <input type="radio" id="B" name="ans2" value="B">
                     <label for="B">B</label><br>
                     <input type="radio" id="C" name="ans2" value="C">
                     <label for="C">C</label><br>
                     <input type="radio" id="D" name="ans2" value="D">
                     <label for="D">D</label>
                     <br>
                     </td>
                </tr>
                
                <!--  -->
                
                
                
                
                
                
                
                
                <tr> 
                    <td style='font-weight:700'><span>Q.3 </span> ${requestScope.testQuestioslist.get(2).getQuestions()}</td>
                </tr>
                <tr>
                     <td><span>A)</span> ${requestScope.testQuestioslist.get(2).getAnswer1()}</td>
                </tr>
                <tr>
                     <td><span>B)</span> ${requestScope.testQuestioslist.get(2).getAnswer2()}</td>
                </tr>
                <tr>
                     <td><span>C)</span> ${requestScope.testQuestioslist.get(2).getAnswer3()}</td>
                </tr>
                <tr>
                     <td><span>D)</span> ${requestScope.testQuestioslist.get(2).getAnswer4()}</td>
                </tr>
                 <tr>
                     <td><br>
                    
                     
                     <input type="radio" id="A" name="ans3" value="A">
                     <label for="A">A</label><br>
                     <input type="radio" id="B" name="ans3" value="B">
                     <label for="B">B</label><br>
                     <input type="radio" id="C" name="ans3" value="C">
                     <label for="C">C</label><br>
                     <input type="radio" id="D" name="ans3" value="D">
                     <label for="D">D</label>
                     <br>
                     </td>
                </tr>
                
                <!--  -->
                
                
                
                
                

                
                <tr> 
                    <td style='font-weight:700'><span>Q.4 </span> ${requestScope.testQuestioslist.get(3).getQuestions()}</td>
                </tr>
                <tr>
                     <td><span>A)</span> ${requestScope.testQuestioslist.get(3).getAnswer1()}</td>
                </tr>
                <tr>
                     <td><span>B)</span> ${requestScope.testQuestioslist.get(3).getAnswer2()}</td>
                </tr>
                <tr>
                     <td><span>C)</span> ${requestScope.testQuestioslist.get(3).getAnswer3()}</td>
                </tr>
                <tr>
                     <td><span>D)</span> ${requestScope.testQuestioslist.get(3).getAnswer4()}</td>
                </tr>
                 <tr>
                     <td><br>
                    
                     
                     <input type="radio" id="A" name="ans4" value="A">
                     <label for="A">A</label><br>
                     <input type="radio" id="B" name="ans4" value="B">
                     <label for="B">B</label><br>
                     <input type="radio" id="C" name="ans4" value="C">
                     <label for="C">C</label><br>
                     <input type="radio" id="D" name="ans4" value="D">
                     <label for="D">D</label>
                     <br>
                     </td>
                </tr>
                
                <!--  -->
                
                
                
                
                

                
                
                <tr> 
                    <td style='font-weight:700'><span>Q. 5</span> ${requestScope.testQuestioslist.get(4).getQuestions()}</td>
                </tr>
                <tr>
                     <td><span>A)</span> ${requestScope.testQuestioslist.get(4).getAnswer1()}</td>
                </tr>
                <tr>
                     <td><span>B)</span> ${requestScope.testQuestioslist.get(4).getAnswer2()}</td>
                </tr>
                <tr>
                     <td><span>C)</span> ${requestScope.testQuestioslist.get(4).getAnswer3()}</td>
                </tr>
                <tr>
                     <td><span>D)</span> ${requestScope.testQuestioslist.get(4).getAnswer4()}</td>
                </tr>
                 <tr>
                     <td><br>
                    
                     
                     <input type="radio" id="A" name="ans5" value="A">
                     <label for="A">A</label><br>
                     <input type="radio" id="B" name="ans5" value="B">
                     <label for="B">B</label><br>
                     <input type="radio" id="C" name="ans5" value="C">
                     <label for="C">C</label><br>
                     <input type="radio" id="D" name="ans5" value="D">
                     <label for="D">D</label>
                     <br>
                     </td>
                </tr>
                
                <!--  -->
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                <tr> 
                    <td style='font-weight:700'><span>Q.6</span> ${requestScope.testQuestioslist.get(5).getQuestions()}</td>
                </tr>
                <tr>
                     <td><span>A)</span> ${requestScope.testQuestioslist.get(5).getAnswer1()}</td>
                </tr>
                <tr>
                     <td><span>B)</span> ${requestScope.testQuestioslist.get(5).getAnswer2()}</td>
                </tr>
                <tr>
                     <td><span>C)</span> ${requestScope.testQuestioslist.get(5).getAnswer3()}</td>
                </tr>
                <tr>
                     <td><span>D)</span> ${requestScope.testQuestioslist.get(5).getAnswer4()}</td>
                </tr>
                 <tr>
                     <td><br>
                    
                     
                     <input type="radio" id="A" name="ans6" value="A">
                     <label for="A">A</label><br>
                     <input type="radio" id="B" name="ans6" value="B">
                     <label for="B">B</label><br>
                     <input type="radio" id="C" name="ans6" value="C">
                     <label for="C">C</label><br>
                     <input type="radio" id="D" name="ans6" value="D">
                     <label for="D">D</label>
                     <br>
                     </td>
                </tr>
                
                <!--  -->
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                <tr> 
                    <td style='font-weight:700'><span>Q.7 </span> ${requestScope.testQuestioslist.get(6).getQuestions()}</td>
                </tr>
                <tr>
                     <td><span>A)</span> ${requestScope.testQuestioslist.get(6).getAnswer1()}</td>
                </tr>
                <tr>
                     <td><span>B)</span> ${requestScope.testQuestioslist.get(6).getAnswer2()}</td>
                </tr>
                <tr>
                     <td><span>C)</span> ${requestScope.testQuestioslist.get(6).getAnswer3()}</td>
                </tr>
                <tr>
                     <td><span>D)</span> ${requestScope.testQuestioslist.get(6).getAnswer4()}</td>
                </tr>
                 <tr>
                     <td><br>
                    
                     
                     <input type="radio" id="A" name="ans7" value="A">
                     <label for="A">A</label><br>
                     <input type="radio" id="B" name="ans7" value="B">
                     <label for="B">B</label><br>
                     <input type="radio" id="C" name="ans7" value="C">
                     <label for="C">C</label><br>
                     <input type="radio" id="D" name="ans7" value="D">
                     <label for="D">D</label>
                     <br>
                     </td>
                </tr>
                
                <!--  -->
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                <tr> 
                    <td style='font-weight:700'><span>Q.8 </span> ${requestScope.testQuestioslist.get(7).getQuestions()}</td>
                </tr>
                <tr>
                     <td><span>A)</span> ${requestScope.testQuestioslist.get(7).getAnswer1()}</td>
                </tr>
                <tr>
                     <td><span>B)</span> ${requestScope.testQuestioslist.get(7).getAnswer2()}</td>
                </tr>
                <tr>
                     <td><span>C)</span> ${requestScope.testQuestioslist.get(7).getAnswer3()}</td>
                </tr>
                <tr>
                     <td><span>D)</span> ${requestScope.testQuestioslist.get(7).getAnswer4()}</td>
                </tr>
                 <tr>
                     <td><br>
                    
                     
                     <input type="radio" id="A" name="ans8" value="A">
                     <label for="A">A</label><br>
                     <input type="radio" id="B" name="ans8" value="B">
                     <label for="B">B</label><br>
                     <input type="radio" id="C" name="ans8" value="C">
                     <label for="C">C</label><br>
                     <input type="radio" id="D" name="ans8" value="D">
                     <label for="D">D</label>
                     <br>
                     </td>
                </tr>
                
                <!--  -->
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                <tr> 
                    <td style='font-weight:700'><span>Q.9 </span> ${requestScope.testQuestioslist.get(8).getQuestions()}</td>
                </tr>
                <tr>
                     <td><span>A)</span> ${requestScope.testQuestioslist.get(8).getAnswer1()}</td>
                </tr>
                <tr>
                     <td><span>B)</span> ${requestScope.testQuestioslist.get(8).getAnswer2()}</td>
                </tr>
                <tr>
                     <td><span>C)</span> ${requestScope.testQuestioslist.get(8).getAnswer3()}</td>
                </tr>
                <tr>
                     <td><span>D)</span> ${requestScope.testQuestioslist.get(8).getAnswer4()}</td>
                </tr>
                 <tr>
                     <td><br>
                    
                     
                     <input type="radio" id="A" name="ans9" value="A">
                     <label for="A">A</label><br>
                     <input type="radio" id="B" name="ans9" value="B">
                     <label for="B">B</label><br>
                     <input type="radio" id="C" name="ans9" value="C">
                     <label for="C">C</label><br>
                     <input type="radio" id="D" name="ans9" value="D">
                     <label for="D">D</label>
                     <br>
                     </td>
                </tr>
                
                <!--  -->
                
                
                
                
                
                
                <tr> 
                    <td style='font-weight:700'><span>Q.10 </span> ${requestScope.testQuestioslist.get(9).getQuestions()}</td>
                </tr>
                <tr>
                     <td><span>A)</span> ${requestScope.testQuestioslist.get(9).getAnswer1()}</td>
                </tr>
                <tr>
                     <td><span>B)</span> ${requestScope.testQuestioslist.get(9).getAnswer2()}</td>
                </tr>
                <tr>
                     <td><span>C)</span> ${requestScope.testQuestioslist.get(9).getAnswer3()}</td>
                </tr>
                <tr>
                     <td><span>D)</span> ${requestScope.testQuestioslist.get(9).getAnswer4()}</td>
                </tr>
                 <tr>
                     <td><br>
                    
                     
                     <input type="radio" id="A" name="ans10" value="A">
                     <label for="A">A</label><br>
                     <input type="radio" id="B" name="ans10" value="B">
                     <label for="B">B</label><br>
                     <input type="radio" id="C" name="ans10" value="C">
                     <label for="C">C</label><br>
                     <input type="radio" id="D" name="ans10" value="D">
                     <label for="D">D</label>
                     <br>
                     </td>
                </tr>
                
                <!--  -->
                
                
                
                
                
                </table>
                 <div class='outer__container'>
                             <button type='submit'>Submit test</button>
                 </div>
                
               
                
                </form>
         </div>
         <br><br>
        
         
        
        
     </div>
      
</body>
</html>


 
 