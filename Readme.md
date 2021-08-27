<!-- default badges list -->
[![](https://img.shields.io/badge/Open_in_DevExpress_Support_Center-FF7200?style=flat-square&logo=DevExpress&logoColor=white)](https://supportcenter.devexpress.com/ticket/details/E1073)
[![](https://img.shields.io/badge/📖_How_to_use_DevExpress_Examples-e9f6fc?style=flat-square)](https://docs.devexpress.com/GeneralInformation/403183)
<!-- default badges end -->
<!-- default file list -->
*Files to look at*:

* [Default.aspx](./CS/WebSite/Default.aspx) (VB: [Default.aspx](./VB/WebSite/Default.aspx))
* [Default.aspx.cs](./CS/WebSite/Default.aspx.cs) (VB: [Default.aspx.vb](./VB/WebSite/Default.aspx.vb))
<!-- default file list end -->
# How to implement a CheckedComboBox control (multi-selection)
<!-- run online -->
**[[Run Online]](https://codecentral.devexpress.com/e1073/)**
<!-- run online end -->


<p>This example is based on example: <a href="https://www.devexpress.com/Support/Center/p/E76">Implementing a Multi-Column ComboBox using the ASPxGridView, ASPxButtonEdit and ASPxPopupControl</a>.<br />
To add a multi selection to this control, create the GridViewCommandColumn in the grid, and set the ShowSelectCheckbox property to True. Handle the grid's SelectionChanged client-side event, and use the GetSelectedFieldValues function to obtain the list of selected values.</p>

<br/>


