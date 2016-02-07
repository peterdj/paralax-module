<%@ page language="java" contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="template" uri="http://www.jahia.org/tags/templateLib" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="jcr" uri="http://www.jahia.org/tags/jcr" %>
<%@ taglib prefix="ui" uri="http://www.jahia.org/tags/uiComponentsLib" %>
<%@ taglib prefix="functions" uri="http://www.jahia.org/tags/functions" %>
<%@ taglib prefix="query" uri="http://www.jahia.org/tags/queryLib" %>
<%@ taglib prefix="utility" uri="http://www.jahia.org/tags/utilityLib" %>
<%@ taglib prefix="s" uri="http://www.jahia.org/tags/search" %>
<%--@elvariable id="currentNode" type="org.jahia.services.content.JCRNodeWrapper"--%>
<%--@elvariable id="out" type="java.io.PrintWriter"--%>
<%--@elvariable id="script" type="org.jahia.services.render.scripting.Script"--%>
<%--@elvariable id="scriptInfo" type="java.lang.String"--%>
<%--@elvariable id="workspace" type="java.lang.String"--%>
<%--@elvariable id="renderContext" type="org.jahia.services.render.RenderContext"--%>
<%--@elvariable id="currentResource" type="org.jahia.services.render.Resource"--%>
<%--@elvariable id="url" type="org.jahia.services.render.URLGenerator"--%>

<c:set var="backgroundImage" value="${currentNode.properties['image']}"/>
<c:set var="backgroundImageName" value="${backgroundImage.node.name}" />
<c:set var="imageNamePart" value="${fn:substringBefore(backgroundImageName,'.')}"/>
<style>
  #${imageNamePart} {
  	background-image:url("${backgroundImage.node.url}");
  }
</style>
<section class="module parallax parallax-image" id="${imageNamePart}">
  <div class="container">
    <h1>${currentNode.properties['header'].string}</h1>
  </div>
</section>
<section class="module content">
  <div class="container">
    <h2>${currentNode.properties['subHeader'].string}</h2>
    <p>${currentNode.properties['content'].string}</p>
  </div>
</section>
<style type="css">
  section.module.${imageNamePart} {
    background-image: url("${backgroundImage.node.url}"); 
  }
</style>



