<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
  <meta name="layout" content="secure" />
  <title>Show Book</title>
</head>
<body>
  <div class="nav">
    <span class="menuButton"><a class="home" href="${createLinkTo(dir:'')}">Home</a></span>
    <span class="menuButton"><g:link class="list" action="list">Book List</g:link></span>
    <shiro:hasRole name="Administrator">
      <span class="menuButton"><g:link class="create" action="create">New Book</g:link></span>
    </shiro:hasRole>
  </div>
  <div class="body">
    <h1>Show Book</h1>
    <g:if test="${flash.message}">
      <div class="message">${flash.message}</div>
    </g:if>
    <div class="dialog">
      <table>
        <tbody>
          <tr class="prop">
            <td valign="top" class="name">Id:</td>
            <td valign="top" class="value">${book.id}</td>
          </tr>
        
          <tr class="prop">
            <td valign="top" class="name">Title:</td>
            <td valign="top" class="value">${book.title}</td>
          </tr>
        
          <tr class="prop">
            <td valign="top" class="name">Author:</td>
            <td valign="top" class="value">${book.author}</td>
          </tr>
        </tbody>
      </table>
    </div>
    <shiro:hasRole name="Administrator">
      <div class="buttons">
        <g:form>
          <input type="hidden" name="id" value="${book?.id}" />
          <span class="button"><g:actionSubmit class="edit" value="Edit" /></span>
          <span class="button"><g:actionSubmit class="delete" onclick="return confirm('Are you sure?');" value="Delete" /></span>
        </g:form>
      </div>
    </shiro:hasRole>
  </div>
</body>
</html>
