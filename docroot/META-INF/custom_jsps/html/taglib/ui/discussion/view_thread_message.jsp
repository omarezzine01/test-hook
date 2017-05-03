
<%@ include file="/html/taglib/ui/discussion/init.jsp" %>

<%
MBTreeWalker treeWalker = (MBTreeWalker)request.getAttribute(WebKeys.MESSAGE_BOARDS_TREE_WALKER);
MBMessage rootMessage = (MBMessage)request.getAttribute(WebKeys.MESSAGE_BOARDS_TREE_WALKER_SEL_MESSAGE);
MBMessage message = (MBMessage)request.getAttribute(WebKeys.MESSAGE_BOARDS_TREE_WALKER_CUR_MESSAGE);
MBCategory category = (MBCategory)request.getAttribute(WebKeys.MESSAGE_BOARDS_TREE_WALKER_CATEGORY);
MBThread thread = (MBThread)request.getAttribute(WebKeys.MESSAGE_BOARDS_TREE_WALKER_THREAD);
boolean hideControls = GetterUtil.getBoolean((String)request.getAttribute("liferay-ui:discussion:hideControls"));
String permissionClassName = (String)request.getAttribute("liferay-ui:discussion:permissionClassName");
long permissionClassPK = GetterUtil.getLong((String)request.getAttribute("liferay-ui:discussion:permissionClassPK"));
boolean lastNode = ((Boolean)request.getAttribute(WebKeys.MESSAGE_BOARDS_TREE_WALKER_LAST_NODE)).booleanValue();
boolean ratingsEnabled = ((Boolean)request.getAttribute("ratingsEnabled")).booleanValue();
int depth = ((Integer)request.getAttribute(WebKeys.MESSAGE_BOARDS_TREE_WALKER_DEPTH)).intValue();
String cssClass = (String)request.getAttribute("cssClass");
int index = ((Integer)request.getAttribute("index")).intValue();
String randomNamespace = (String)request.getAttribute("randomNamespace");

List<MBMessage> messages = treeWalker.getMessages();

Format dateFormatDateTime = FastDateFormatFactoryUtil.getDateTime(locale, timeZone);
%>

<%@ include file="/html/taglib/ui/discussion/view_comment.jspf" %>