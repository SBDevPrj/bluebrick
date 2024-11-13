<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ page import="java.util.List" %>
<%@ page import="org.apache.commons.text.StringEscapeUtils" %>
<%@ page import="com.sejong.newbluebrick.model.BoardContent" %>
<%@ page import="org.springframework.data.domain.Page" %>


<div class="popup_mc on" id="popup_mc">

    <div class="inner_sp">
        <button type="button" class="btn_close ic-sets ty5-3"></button>
        <div class="player">
            <iframe src="" frameborder="0"></iframe>
        </div>
        <div class="chk fn--n">
            <label><input type="checkbox" name="" value="" ><span class="ico"></span>오늘 하루 이창을 열지 않기</label>
        </div>
    </div>

</div>