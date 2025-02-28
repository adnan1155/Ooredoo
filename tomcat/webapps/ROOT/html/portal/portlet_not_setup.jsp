<%--
/**
 * SPDX-FileCopyrightText: (c) 2000 Liferay, Inc. https://liferay.com
 * SPDX-License-Identifier: LGPL-2.1-or-later OR LicenseRef-Liferay-DXP-EULA-2.0.0-2023-06
 */
--%>

<%@ include file="/html/portal/init.jsp" %>

<portlet:defineObjects />

<%
renderRequest.setAttribute(WebKeys.PORTLET_CONFIGURATOR_VISIBILITY, Boolean.TRUE);
%>

<div class="alert alert-info portlet-configuration">

	<%
	String id = StringUtil.randomId();
	%>

	<a href="<%= portletDisplay.getURLConfiguration() %>" id="<%= id %>">
		<liferay-ui:message key="please-configure-this-portlet-to-make-it-visible-to-all-users" />
	</a>

	<aui:script position="inline">
		document.getElementById('<%= id %>').onclick = function() {
			<%= portletDisplay.getURLConfigurationJS() %>
		}
	</aui:script>
</div>