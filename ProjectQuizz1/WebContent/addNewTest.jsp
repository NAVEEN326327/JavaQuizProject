<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
   <form >
      <select name="noOfQuestions" id="noOfQuestions">
         <option value="5">5</option>
       <option value="10">10</option>
       <option value="15">15</option>
        <option value="audi">20</option>
    </select>
     <button type='submit'>Select</button>
   </form><br>
  <form action='AddNewTest'>
       Question : <input type='text' name='q'><br>
        answer1 : <input type='text' name='a1'><br>
         answer2 : <input type='text' name='a2'><br>
          answer3 : <input type='text' name='a3'><br>
           answer4 : <input type='text' name='a4'><br>
            right_option : <input type='textarea' name='r'><br>
             comments : <textarea id="w3review" name="c" rows="4" cols="50">
                          Add your comment*
                       </textarea><br>
          <button type='submit'>Add</button><br>
   </form> 
</body>
</html>

