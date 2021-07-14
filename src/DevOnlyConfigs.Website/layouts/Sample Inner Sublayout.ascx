<%@ Control Language="c#" AutoEventWireup="true" TargetSchema="http://schemas.microsoft.com/intellisense/ie5" %>
<%@ Register TagPrefix="sc" Namespace="Sitecore.Web.UI.WebControls" Assembly="Sitecore.Kernel"  %>
<%@ Import Namespace="System.Web.Configuration" %>
<%
    var compilationSection = (CompilationSection)ConfigurationManager.GetSection("system.web/compilation");
    var httpRuntimeSection = (HttpRuntimeSection)ConfigurationManager.GetSection("system.web/httpRuntime");
%>
<div id="InnerCenter">
    <div id="Header">
        <img src="-/media/Default Website/sc_logo.ashx" alt="Sitecore" id="scLogo" />
        <ul>
            <li>
                Compilation debug: <strong><%= compilationSection.Debug %></strong> (default <strong>False</strong>)
            </li>
            <li>
                Optimize compilations: <strong><%= compilationSection.OptimizeCompilations %></strong> (default <strong>False</strong>)
            </li>
            <li>
                Execution timeout: <strong><%= httpRuntimeSection.ExecutionTimeout.TotalSeconds %></strong> (default <strong>600</strong>)
            </li>
        </ul>
    </div>
    <div id="Content">
        <div id="LeftContent">
            <sc:placeholder runat="server" key="content" />
        </div>
    </div>
    <div id="Footer"><hr class="divider"/>&#169; <%= Sitecore.DateUtil.ToServerTime(DateTime.UtcNow).Year.ToString()%> Sitecore</div>
</div>
