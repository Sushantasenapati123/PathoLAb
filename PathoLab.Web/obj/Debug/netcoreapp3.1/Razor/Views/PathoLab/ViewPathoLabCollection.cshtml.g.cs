#pragma checksum "D:\Projects\lab\PathoLab.Web\Views\PathoLab\ViewPathoLabCollection.cshtml" "{ff1816ec-aa5e-4d10-87f7-6f4963833460}" "3fc9013951a31c4b98c5fbd769d360c1e41572c5"
// <auto-generated/>
#pragma warning disable 1591
[assembly: global::Microsoft.AspNetCore.Razor.Hosting.RazorCompiledItemAttribute(typeof(AspNetCore.Views_PathoLab_ViewPathoLabCollection), @"mvc.1.0.view", @"/Views/PathoLab/ViewPathoLabCollection.cshtml")]
namespace AspNetCore
{
    #line hidden
    using System;
    using System.Collections.Generic;
    using System.Linq;
    using System.Threading.Tasks;
    using Microsoft.AspNetCore.Mvc;
    using Microsoft.AspNetCore.Mvc.Rendering;
    using Microsoft.AspNetCore.Mvc.ViewFeatures;
#nullable restore
#line 1 "D:\Projects\lab\PathoLab.Web\Views\_ViewImports.cshtml"
using PathoLab.Web;

#line default
#line hidden
#nullable disable
#nullable restore
#line 2 "D:\Projects\lab\PathoLab.Web\Views\_ViewImports.cshtml"
using PathoLab.Web.Models;

#line default
#line hidden
#nullable disable
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"3fc9013951a31c4b98c5fbd769d360c1e41572c5", @"/Views/PathoLab/ViewPathoLabCollection.cshtml")]
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"4a592f8cdb311493321d986dd0c96961ed92f66f", @"/Views/_ViewImports.cshtml")]
    public class Views_PathoLab_ViewPathoLabCollection : global::Microsoft.AspNetCore.Mvc.Razor.RazorPage<dynamic>
    {
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_0 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("class", new global::Microsoft.AspNetCore.Html.HtmlString("nav-item nav-link  "), global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_1 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("asp-controller", "PathoLab", global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_2 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("asp-action", "PathoLabBill", global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_3 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("class", new global::Microsoft.AspNetCore.Html.HtmlString("nav-item nav-link active "), global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_4 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("asp-action", "ViewPathoLabCollection", global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        #line hidden
        #pragma warning disable 0649
        private global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperExecutionContext __tagHelperExecutionContext;
        #pragma warning restore 0649
        private global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperRunner __tagHelperRunner = new global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperRunner();
        #pragma warning disable 0169
        private string __tagHelperStringValueBuffer;
        #pragma warning restore 0169
        private global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperScopeManager __backed__tagHelperScopeManager = null;
        private global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperScopeManager __tagHelperScopeManager
        {
            get
            {
                if (__backed__tagHelperScopeManager == null)
                {
                    __backed__tagHelperScopeManager = new global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperScopeManager(StartTagHelperWritingScope, EndTagHelperWritingScope);
                }
                return __backed__tagHelperScopeManager;
            }
        }
        private global::Microsoft.AspNetCore.Mvc.TagHelpers.AnchorTagHelper __Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper;
        #pragma warning disable 1998
        public async override global::System.Threading.Tasks.Task ExecuteAsync()
        {
            WriteLiteral("\r\n");
#nullable restore
#line 2 "D:\Projects\lab\PathoLab.Web\Views\PathoLab\ViewPathoLabCollection.cshtml"
  
    ViewData["Title"] = "ViewPathoLabCollection";
    Layout = "~/Views/Shared/_LayoutDynamic.cshtml";
    var ResultData = ViewBag.Result as List<PathoLab.Domain.PathoBilMasterl.PathoBill>;

#line default
#line hidden
#nullable disable
            WriteLiteral(@"

<div class=""page-title"">
    <div class=""title-details"">
        <nav aria-label=""breadcrumb"">
            <ol class=""breadcrumb p-0 mb-0 bg-transparent"" id=""navigation"">
            </ol>
        </nav>
    </div>
</div>
<div class=""row"">
    <div class=""col-md-12 col-sm-12"">
        <div class=""card"">
            <div class=""card-header"">
                <ul class=""nav nav-tabs nav-fill"" role=""tablist"">
                    ");
            __tagHelperExecutionContext = __tagHelperScopeManager.Begin("a", global::Microsoft.AspNetCore.Razor.TagHelpers.TagMode.StartTagAndEndTag, "3fc9013951a31c4b98c5fbd769d360c1e41572c55602", async() => {
                WriteLiteral("PathoLab Bill");
            }
            );
            __Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper = CreateTagHelper<global::Microsoft.AspNetCore.Mvc.TagHelpers.AnchorTagHelper>();
            __tagHelperExecutionContext.Add(__Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper);
            __tagHelperExecutionContext.AddHtmlAttribute(__tagHelperAttribute_0);
            __Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper.Controller = (string)__tagHelperAttribute_1.Value;
            __tagHelperExecutionContext.AddTagHelperAttribute(__tagHelperAttribute_1);
            __Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper.Action = (string)__tagHelperAttribute_2.Value;
            __tagHelperExecutionContext.AddTagHelperAttribute(__tagHelperAttribute_2);
            await __tagHelperRunner.RunAsync(__tagHelperExecutionContext);
            if (!__tagHelperExecutionContext.Output.IsContentModified)
            {
                await __tagHelperExecutionContext.SetOutputContentAsync();
            }
            Write(__tagHelperExecutionContext.Output);
            __tagHelperExecutionContext = __tagHelperScopeManager.End();
            WriteLiteral("\r\n                    ");
            __tagHelperExecutionContext = __tagHelperScopeManager.Begin("a", global::Microsoft.AspNetCore.Razor.TagHelpers.TagMode.StartTagAndEndTag, "3fc9013951a31c4b98c5fbd769d360c1e41572c57073", async() => {
                WriteLiteral("View Bill Record ");
            }
            );
            __Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper = CreateTagHelper<global::Microsoft.AspNetCore.Mvc.TagHelpers.AnchorTagHelper>();
            __tagHelperExecutionContext.Add(__Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper);
            __tagHelperExecutionContext.AddHtmlAttribute(__tagHelperAttribute_3);
            __Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper.Controller = (string)__tagHelperAttribute_1.Value;
            __tagHelperExecutionContext.AddTagHelperAttribute(__tagHelperAttribute_1);
            __Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper.Action = (string)__tagHelperAttribute_4.Value;
            __tagHelperExecutionContext.AddTagHelperAttribute(__tagHelperAttribute_4);
            await __tagHelperRunner.RunAsync(__tagHelperExecutionContext);
            if (!__tagHelperExecutionContext.Output.IsContentModified)
            {
                await __tagHelperExecutionContext.SetOutputContentAsync();
            }
            Write(__tagHelperExecutionContext.Output);
            __tagHelperExecutionContext = __tagHelperScopeManager.End();
            WriteLiteral("\r\n");
            WriteLiteral("\r\n                </ul>\r\n            </div>\r\n            <div class=\"card-body \">\r\n");
#nullable restore
#line 29 "D:\Projects\lab\PathoLab.Web\Views\PathoLab\ViewPathoLabCollection.cshtml"
                 if (ResultData != null && ResultData.ToList().Count > 0)
                {

#line default
#line hidden
#nullable disable
            WriteLiteral(@"                    <div class=""table-responsive"">
                        <table data-toggle=""table"" id=""tblPathoBill"" class=""table"">
                            <thead>
                                <tr>
                                    <th width=""60px"" class=""align-top text-center"">
                                        Sl#
                                    </th>
                                    <th width=""150px"" class=""align-top"">
                                        Collection Id
                                    </th>
                                    <th width=""150px"" class=""align-top"">
                                        Patient Name
                                    </th>
                                    <th width=""150px"" class=""align-top"">
                                        Email
                                    </th>
                                    <th width=""150px"" class=""align-top"">
                                        Reported On
     ");
            WriteLiteral(@"                               </th>
                                    <th width=""150px"" class=""align-top"">
                                        Mobile
                                    </th>
                                    <th width=""150px"" class=""align-top"">
                                        Age
                                    </th>
                                    <th width=""150px"" class=""align-top"">
                                        Gender
                                    </th>
                                    <th width=""150px"" class=""align-top"">
                                        Test Name
                                    </th>
                                    <th width=""150px"" class=""align-top"">Action</th>
                                </tr>
                            </thead>
                            <tbody>
");
#nullable restore
#line 66 "D:\Projects\lab\PathoLab.Web\Views\PathoLab\ViewPathoLabCollection.cshtml"
                                  
                                    int count = 1;
                                

#line default
#line hidden
#nullable disable
#nullable restore
#line 69 "D:\Projects\lab\PathoLab.Web\Views\PathoLab\ViewPathoLabCollection.cshtml"
                                 foreach (var list in ResultData)
                                {

#line default
#line hidden
#nullable disable
            WriteLiteral("                                    <tr>\r\n                                        <td class=\"text-center\">");
#nullable restore
#line 72 "D:\Projects\lab\PathoLab.Web\Views\PathoLab\ViewPathoLabCollection.cshtml"
                                                           Write(count);

#line default
#line hidden
#nullable disable
            WriteLiteral("</td>\r\n                                        <td>\r\n                                            ");
#nullable restore
#line 74 "D:\Projects\lab\PathoLab.Web\Views\PathoLab\ViewPathoLabCollection.cshtml"
                                       Write(list.CollectionId);

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n                                        </td>\r\n                                        <td>\r\n                                            ");
#nullable restore
#line 77 "D:\Projects\lab\PathoLab.Web\Views\PathoLab\ViewPathoLabCollection.cshtml"
                                       Write(list.FullName);

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n                                        </td>\r\n                                        <td>\r\n                                            ");
#nullable restore
#line 80 "D:\Projects\lab\PathoLab.Web\Views\PathoLab\ViewPathoLabCollection.cshtml"
                                       Write(list.Email);

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n                                        </td>\r\n                                        <td>\r\n                                            ");
#nullable restore
#line 83 "D:\Projects\lab\PathoLab.Web\Views\PathoLab\ViewPathoLabCollection.cshtml"
                                       Write(list.DateOfAppointment);

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n                                        </td>\r\n                                        <td>\r\n                                            ");
#nullable restore
#line 86 "D:\Projects\lab\PathoLab.Web\Views\PathoLab\ViewPathoLabCollection.cshtml"
                                       Write(list.Mobile);

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n                                        </td>\r\n                                        <td>\r\n                                            ");
#nullable restore
#line 89 "D:\Projects\lab\PathoLab.Web\Views\PathoLab\ViewPathoLabCollection.cshtml"
                                       Write(list.Age);

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n                                        </td>\r\n                                        <td>\r\n                                            ");
#nullable restore
#line 92 "D:\Projects\lab\PathoLab.Web\Views\PathoLab\ViewPathoLabCollection.cshtml"
                                       Write(list.Gender);

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n                                        </td>\r\n                                        <td>\r\n                                            ");
#nullable restore
#line 95 "D:\Projects\lab\PathoLab.Web\Views\PathoLab\ViewPathoLabCollection.cshtml"
                                       Write(list.LabTestName);

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n                                        </td>\r\n                                        <td>\r\n");
#nullable restore
#line 98 "D:\Projects\lab\PathoLab.Web\Views\PathoLab\ViewPathoLabCollection.cshtml"
                                             if (list.CollectionFlag == false)
                                            {

#line default
#line hidden
#nullable disable
            WriteLiteral("                                                <a");
            BeginWriteAttribute("onclick", " onclick=\"", 4916, "\"", 4955, 3);
            WriteAttributeValue("", 4926, "Collect(\'", 4926, 9, true);
#nullable restore
#line 100 "D:\Projects\lab\PathoLab.Web\Views\PathoLab\ViewPathoLabCollection.cshtml"
WriteAttributeValue("", 4935, list.PathoBillId, 4935, 17, false);

#line default
#line hidden
#nullable disable
            WriteAttributeValue("", 4952, "\');", 4952, 3, true);
            EndWriteAttribute();
            WriteLiteral(" class=\"text-primary mr-3\"");
            BeginWriteAttribute("title", " title=\"", 4982, "\"", 4990, 0);
            EndWriteAttribute();
            WriteLiteral(" data-original-title=\"Add\"><i class=\"fa fa-plus\" aria-hidden=\"true\"></i> <b>Collect Sample </b></a><br />\r\n");
#nullable restore
#line 101 "D:\Projects\lab\PathoLab.Web\Views\PathoLab\ViewPathoLabCollection.cshtml"
                                            }
                                            else
                                            {

#line default
#line hidden
#nullable disable
            WriteLiteral("                                                <a");
            BeginWriteAttribute("onclick", "  onclick=\"", 5292, "\"", 5334, 3);
            WriteAttributeValue("", 5303, "Collected(\'", 5303, 11, true);
#nullable restore
#line 104 "D:\Projects\lab\PathoLab.Web\Views\PathoLab\ViewPathoLabCollection.cshtml"
WriteAttributeValue("", 5314, list.PathoBillId, 5314, 17, false);

#line default
#line hidden
#nullable disable
            WriteAttributeValue("", 5331, "\');", 5331, 3, true);
            EndWriteAttribute();
            WriteLiteral("><i class=\"fa fa-check-square\" style=\"font-size:14px\"></i> <b>Collected</b></a><br />\r\n");
#nullable restore
#line 105 "D:\Projects\lab\PathoLab.Web\Views\PathoLab\ViewPathoLabCollection.cshtml"
                                            }

#line default
#line hidden
#nullable disable
            WriteLiteral("                                            <a");
            BeginWriteAttribute("onclick", " onclick=\"", 5515, "\"", 5552, 3);
            WriteAttributeValue("", 5525, "Print(\'", 5525, 7, true);
#nullable restore
#line 106 "D:\Projects\lab\PathoLab.Web\Views\PathoLab\ViewPathoLabCollection.cshtml"
WriteAttributeValue("", 5532, list.PathoBillId, 5532, 17, false);

#line default
#line hidden
#nullable disable
            WriteAttributeValue("", 5549, "\');", 5549, 3, true);
            EndWriteAttribute();
            WriteLiteral(" class=\"text-primary mr-3\"");
            BeginWriteAttribute("title", " title=\"", 5579, "\"", 5587, 0);
            EndWriteAttribute();
            WriteLiteral(" data-original-title=\"Print\"><i class=\"fa fa-print\" aria-hidden=\"true\"></i> <b>Print</b></a><br />\r\n                                            <a");
            BeginWriteAttribute("onclick", " onclick=\"", 5734, "\"", 5772, 3);
            WriteAttributeValue("", 5744, "Delete(\'", 5744, 8, true);
#nullable restore
#line 107 "D:\Projects\lab\PathoLab.Web\Views\PathoLab\ViewPathoLabCollection.cshtml"
WriteAttributeValue("", 5752, list.PathoBillId, 5752, 17, false);

#line default
#line hidden
#nullable disable
            WriteAttributeValue("", 5769, "\');", 5769, 3, true);
            EndWriteAttribute();
            WriteLiteral(" class=\"text-danger\"");
            BeginWriteAttribute("title", " title=\"", 5793, "\"", 5801, 0);
            EndWriteAttribute();
            WriteLiteral(" data-original-title=\"Delete\"><i class=\"icon-trash-21\"></i> <b>Delete</b></a> <br />\r\n                                        </td>\r\n                                    </tr>\r\n");
#nullable restore
#line 110 "D:\Projects\lab\PathoLab.Web\Views\PathoLab\ViewPathoLabCollection.cshtml"
                                    count++;
                                }

#line default
#line hidden
#nullable disable
            WriteLiteral("                            </tbody>\r\n                        </table>\r\n                    </div>\r\n");
#nullable restore
#line 115 "D:\Projects\lab\PathoLab.Web\Views\PathoLab\ViewPathoLabCollection.cshtml"
                }
                else
                {

#line default
#line hidden
#nullable disable
            WriteLiteral("                    <div class=\"norecord\"> No Record Found</div>\r\n");
#nullable restore
#line 119 "D:\Projects\lab\PathoLab.Web\Views\PathoLab\ViewPathoLabCollection.cshtml"
                }

#line default
#line hidden
#nullable disable
            WriteLiteral(@"                <div class=""clearfix col-sm-12""></div>
            </div>
        </div>
    </div>
</div>
<script>
    $(document).ready(function () {
        //breadcumb
        var PathoBillId = getUrlVars()[""PathoBillId""];
        if (PathoBillId != undefined) {
            Collect(PathoBillId);
            Collected(PathoBillId);
            Print(PathoBillId);
            Delete(PathoBillId);
            getDataTable();
        }

    });
    //< !--=================================================== -->

    //Collect Report
    function Collect(PathoBillId) {
        location.href = ""/PathoLab/CollectSample?PathoBillId="" + PathoBillId;

    }

    //< !--=================================================== -->

    //Collected Report
    function Collected(PathoBillId) {
        location.href = ""/PathoLab/ViewCollection?PathoBillId="" + PathoBillId;

    }
    //< !--=================================================== -->



    //Print Report
    function Print(Pat");
            WriteLiteral(@"hoBillId) {
        if (confirm(""Are you sure you want to print ?"")) {
            location.href = ""/PathoLab/PrintBill?PathoBillId="" + PathoBillId;

        }
    }
    //< !--=================================================== -->
    //Delete  Report
    function Delete(PathoBillId) {
        if (confirm(""Are you sure you want to delete ?"")) {
            $.ajax({
                url: ""/PathoLab/DeletePathoBill?PathoBillId="" + PathoBillId,
                type: ""POST"",
                dataType: ""json"",
                contentType: ""application/json;charset=UTF-8"",
                success: function (data) {
                    if (data == ""3"") {
                        alert(""PathoBill Report Deleted Successfully"");
                        window.location.reload();
                    }
                    else if (data == ""4"") {
                        alert(""PathoBill  Report Already In Use!"");
                        window.location.reload();
                    }
                ");
            WriteLiteral(@"    else { }
                },
                error: function (error) {
                    jsonValue = jQuery.parseJSON(error.responseText);
                    bootbox.alert(""Error : "" + jsonValue);
                }
            });
        }
    }
    //< !--=================================================== -->
    //Pagination
    function getDataTable() {
        $('#tblPathoBill').DataTable({
            ""searching"": true,
            //""bStateSave"": true,
            ""dom"": 'Bfrtip',
            ""autoWidth"": false,
            ""buttons"": [
                //{
                //    extend: 'print',
                //    title: 'Manage Block',
                //    exportOptions: {
                //        columns: [0, 1, 2, 3, 4]
                //    },
                //    customize: function (win) { $(win.document.body).css('font-size', '10pt').prepend('<img src=""' + origin + '/images/t5-logo-white.png""  style=""position:absolute; top:0; left:0;"" />'); $(win.document.body");
            WriteLiteral(@").find('table').addClass('compact').css('font-size', 'inherit'); }

                //}
                ,
                {
                    extend: 'pageLength'
                }
            ],
            ""lengthMenu"": [
                [10, 25, 50, 100, 1000 - 1],
                ['10 rows', '25 rows', '50 rows', '100 rows', '1000 rows', 'Show all']
            ]
        });
    }
</script>

");
        }
        #pragma warning restore 1998
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.ViewFeatures.IModelExpressionProvider ModelExpressionProvider { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.IUrlHelper Url { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.IViewComponentHelper Component { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.Rendering.IJsonHelper Json { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.Rendering.IHtmlHelper<dynamic> Html { get; private set; }
    }
}
#pragma warning restore 1591
