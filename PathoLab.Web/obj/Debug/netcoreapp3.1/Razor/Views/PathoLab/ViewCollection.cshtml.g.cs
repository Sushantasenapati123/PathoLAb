#pragma checksum "D:\Projects\lab\PathoLab.Web\Views\PathoLab\ViewCollection.cshtml" "{ff1816ec-aa5e-4d10-87f7-6f4963833460}" "44e087bc181a060cbad9e30509484003ffc5603a"
// <auto-generated/>
#pragma warning disable 1591
[assembly: global::Microsoft.AspNetCore.Razor.Hosting.RazorCompiledItemAttribute(typeof(AspNetCore.Views_PathoLab_ViewCollection), @"mvc.1.0.view", @"/Views/PathoLab/ViewCollection.cshtml")]
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
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"44e087bc181a060cbad9e30509484003ffc5603a", @"/Views/PathoLab/ViewCollection.cshtml")]
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"4a592f8cdb311493321d986dd0c96961ed92f66f", @"/Views/_ViewImports.cshtml")]
    public class Views_PathoLab_ViewCollection : global::Microsoft.AspNetCore.Mvc.Razor.RazorPage<dynamic>
    {
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_0 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("class", new global::Microsoft.AspNetCore.Html.HtmlString("nav-item nav-link active "), global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_1 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("asp-controller", "PathoLab", global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_2 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("asp-action", "ViewCollection", global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_3 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("class", new global::Microsoft.AspNetCore.Html.HtmlString("nav-item nav-link  "), global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_4 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("asp-action", "CollectSample", global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
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
#line 2 "D:\Projects\lab\PathoLab.Web\Views\PathoLab\ViewCollection.cshtml"
  
    ViewData["Title"] = "ViewCollection";
    Layout = "~/Views/Shared/_LayoutDynamic.cshtml";
    var ResultData = ViewBag.Result as List<PathoLab.Domain.PathoBilMasterl.PathoBill>;


#line default
#line hidden
#nullable disable
            WriteLiteral(@"
<h2>Collection Page</h2>
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
            __tagHelperExecutionContext = __tagHelperScopeManager.Begin("a", global::Microsoft.AspNetCore.Razor.TagHelpers.TagMode.StartTagAndEndTag, "44e087bc181a060cbad9e30509484003ffc5603a5565", async() => {
                WriteLiteral("Collection Page");
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
            __tagHelperExecutionContext = __tagHelperScopeManager.Begin("a", global::Microsoft.AspNetCore.Razor.TagHelpers.TagMode.StartTagAndEndTag, "44e087bc181a060cbad9e30509484003ffc5603a7038", async() => {
                WriteLiteral(" Sample Collection");
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
            WriteLiteral("\r\n                </ul>\r\n            </div>\r\n            <div class=\"card-body \">\r\n");
#nullable restore
#line 28 "D:\Projects\lab\PathoLab.Web\Views\PathoLab\ViewCollection.cshtml"
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
                                        Bill No
                                    </th>
                                    <th width=""150px"" class=""align-top"">
                                        Patient Name
                                    </th>
                                    <th width=""150px"" class=""align-top"">
                                        Test Name
                                    </th>
                                    <th width=""150px"" class=""align-top"">Status</th>
                                </tr>
          ");
            WriteLiteral("                  </thead>\r\n                            <tbody>\r\n");
#nullable restore
#line 50 "D:\Projects\lab\PathoLab.Web\Views\PathoLab\ViewCollection.cshtml"
                                  
                                    int count = 1;
                                

#line default
#line hidden
#nullable disable
#nullable restore
#line 53 "D:\Projects\lab\PathoLab.Web\Views\PathoLab\ViewCollection.cshtml"
                                 foreach (var list in ResultData)
                                {

#line default
#line hidden
#nullable disable
            WriteLiteral("                                    <tr>\r\n                                        <td class=\"text-center\">");
#nullable restore
#line 56 "D:\Projects\lab\PathoLab.Web\Views\PathoLab\ViewCollection.cshtml"
                                                           Write(count);

#line default
#line hidden
#nullable disable
            WriteLiteral("</td>\r\n                                        <td>\r\n                                            ");
#nullable restore
#line 58 "D:\Projects\lab\PathoLab.Web\Views\PathoLab\ViewCollection.cshtml"
                                       Write(list.PathoBillId);

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n                                        </td>\r\n                                        <td>\r\n                                            ");
#nullable restore
#line 61 "D:\Projects\lab\PathoLab.Web\Views\PathoLab\ViewCollection.cshtml"
                                       Write(list.FullName);

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n                                        </td>\r\n                                        <td>\r\n                                            ");
#nullable restore
#line 64 "D:\Projects\lab\PathoLab.Web\Views\PathoLab\ViewCollection.cshtml"
                                       Write(list.LabTestName);

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n                                        </td>\r\n                                        <td>\r\n");
#nullable restore
#line 67 "D:\Projects\lab\PathoLab.Web\Views\PathoLab\ViewCollection.cshtml"
                                             if (list.CollectionFlag == false)
                                            {

#line default
#line hidden
#nullable disable
            WriteLiteral("                                                <a");
            BeginWriteAttribute("onclick", " onclick=\"", 3203, "\"", 3242, 3);
            WriteAttributeValue("", 3213, "Collect(\'", 3213, 9, true);
#nullable restore
#line 69 "D:\Projects\lab\PathoLab.Web\Views\PathoLab\ViewCollection.cshtml"
WriteAttributeValue("", 3222, list.PathoBillId, 3222, 17, false);

#line default
#line hidden
#nullable disable
            WriteAttributeValue("", 3239, "\');", 3239, 3, true);
            EndWriteAttribute();
            WriteLiteral(" class=\"text-primary mr-3\"");
            BeginWriteAttribute("title", " title=\"", 3269, "\"", 3277, 0);
            EndWriteAttribute();
            WriteLiteral(" data-original-title=\"Add\"><i class=\"fa fa-plus\" aria-hidden=\"true\"></i> <b>Uncollect</b></a><br />\r\n");
#nullable restore
#line 70 "D:\Projects\lab\PathoLab.Web\Views\PathoLab\ViewCollection.cshtml"
                                            }
                                            else
                                            {

#line default
#line hidden
#nullable disable
            WriteLiteral("                                                <a><i class=\"fa fa-check-square\" style=\"font-size:14px\"></i> <b>Collected</b></a><br />\r\n");
#nullable restore
#line 74 "D:\Projects\lab\PathoLab.Web\Views\PathoLab\ViewCollection.cshtml"
                                            }

#line default
#line hidden
#nullable disable
            WriteLiteral("                                            <a");
            BeginWriteAttribute("onclick", " onclick=\"", 3753, "\"", 3815, 5);
            WriteAttributeValue("", 3763, "UpdateReport(\'", 3763, 14, true);
#nullable restore
#line 75 "D:\Projects\lab\PathoLab.Web\Views\PathoLab\ViewCollection.cshtml"
WriteAttributeValue("", 3777, list.PathoBillId, 3777, 17, false);

#line default
#line hidden
#nullable disable
            WriteAttributeValue("", 3794, "\',\'", 3794, 3, true);
#nullable restore
#line 75 "D:\Projects\lab\PathoLab.Web\Views\PathoLab\ViewCollection.cshtml"
WriteAttributeValue("", 3797, list.LabTestId, 3797, 15, false);

#line default
#line hidden
#nullable disable
            WriteAttributeValue("", 3812, "\');", 3812, 3, true);
            EndWriteAttribute();
            WriteLiteral(" class=\"text-primary mr-3\"");
            BeginWriteAttribute("title", " title=\"", 3842, "\"", 3850, 0);
            EndWriteAttribute();
            WriteLiteral(" data-original-title=\"Add\"><i class=\"fa fa-file-text\" style=\"font-size:16px\"></i> <b>Update Report</b></a><br />\r\n                                        </td>\r\n                                    </tr>\r\n");
#nullable restore
#line 78 "D:\Projects\lab\PathoLab.Web\Views\PathoLab\ViewCollection.cshtml"
                                    count++;
                                }

#line default
#line hidden
#nullable disable
            WriteLiteral("                            </tbody>\r\n                        </table>\r\n                    </div>\r\n");
#nullable restore
#line 83 "D:\Projects\lab\PathoLab.Web\Views\PathoLab\ViewCollection.cshtml"
                }
                else
                {

#line default
#line hidden
#nullable disable
            WriteLiteral("                    <div class=\"norecord\"> No Record Found</div>\r\n");
#nullable restore
#line 87 "D:\Projects\lab\PathoLab.Web\Views\PathoLab\ViewCollection.cshtml"
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
            getDataTable();
            Collect(PathoBillId);
            UpdateReport(PathoBillId);

        }

    });
    //< !--=================================================== -->

    //Uncollect Report
    function Collect(PathoBillId) {
        if (confirm) {
            location.href = ""/PathoLab/CollectSample?PathoBillId="" + PathoBillId;
        }
    }
    //< !--=================================================== -->

    //UpdateReport
    function UpdateReport(PathoBillId, LabTestId) {
        if (confirm) {
            location.href = ""/PathoLab/ViewsPathoLabReport?PathoBillId="" + PathoBillId + ""&LabTestId="" + LabTestId;
        }
    }

    //< !--================================================");
            WriteLiteral(@"=== -->
    //Pagination
    function getDataTable() {
        $('#tblPathoBill').DataTable({
            ""searching"": true,
            //""bStateSave"": true,
            ""dom"": 'Bfrtip',
            ""autoWidth"": false,
            ""buttons"": [
                ,
                {
                    extend: 'pageLength'
                }
            ],
            ""lengthMenu"": [
                [5, 10, 25, 100, 1000 - 1],
                ['5 rows', '10 rows', '25 rows', '100 rows', '1000 rows', 'Show all']
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
