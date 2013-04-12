<%@ page import="org.grails.example.Author" %>


<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="layout" content="main" />
        <title>Edit Book</title>
    </head>
    <body>
    <ul class="nav nav-pills">
      <li><g:link class="list" action="list">Book List</g:link></li>
      <li><g:link class="create" action="create">New Book</g:link></li>
    </ul>
        <div class="body">
            <h1>Edit Book</h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${book}">
            <div class="errors">
                <g:renderErrors bean="${book}" as="list" />
            </div>
            </g:hasErrors>
            <g:form method="post" >
                <input type="hidden" name="id" value="${book?.id}" />
                <div class="dialog">
                  <table class="table table-bordered">
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="title">Title:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:book,field:'title','errors')}">
                                    <input type="text" id="title" name="title" value="${fieldValue(bean:book,field:'title')}"/>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="author">Author:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:book,field:'author','errors')}">
                                    <g:select optionKey="id" from="${Author.list()}" name="author.id" value="${book?.author?.id}" ></g:select>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="releaseDate">Release Date:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:book,field:'releaseDate','errors')}">
                                    <g:datePicker name="releaseDate" value="${book?.releaseDate}" ></g:datePicker>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="price">Price:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:book,field:'price','errors')}">
                                    <input type="text" id="price" name="price" value="${fieldValue(bean:book,field:'price')}" />
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="inStock">In Stock:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:book,field:'inStock','errors')}">
                                    <g:checkBox name="inStock" value="${book?.inStock}" ></g:checkBox>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="lastUpdated">Last Updated:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:book,field:'lastUpdated','errors')}">
                                    <g:datePicker name="lastUpdated" value="${book?.lastUpdated}" noSelection="['':'']"></g:datePicker>
                                </td>
                            </tr> 
                        
                        </tbody>
                    </table>
                </div>
                <div class="buttons">
                    <span class="button"><g:actionSubmit class="save btn btn-success" value="Update" /></span>
                    <span class="button"><g:actionSubmit class="delete btn btn-danger" onclick="return confirm('Are you sure?');" value="Delete" /></span>
                </div>
            </g:form>
        </div>
    </body>
</html>
