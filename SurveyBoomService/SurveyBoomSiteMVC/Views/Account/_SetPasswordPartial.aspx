﻿<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<SurveyBoomSiteMVC.Models.LocalPasswordModel>" %>

<p>
    You do not have a local password for this site. Add a local
    password so you can log in.
</p>

<% using (Html.BeginForm("Manage", "Account")) { %>
    <%: Html.AntiForgeryToken() %>
    <%: Html.ValidationSummary() %>

    <fieldset>
        <legend>Set Password Form</legend>
        <ol>
            <li>
                <%: Html.LabelFor(m => m.NewPassword) %>
                <%: Html.PasswordFor(m => m.NewPassword) %>
            </li>
            <li>
                <%: Html.LabelFor(m => m.ConfirmPassword) %>
                <%: Html.PasswordFor(m => m.ConfirmPassword) %>
            </li>
        </ol>
        <input type="submit" value="Set password" />
    </fieldset>
<% } %>
