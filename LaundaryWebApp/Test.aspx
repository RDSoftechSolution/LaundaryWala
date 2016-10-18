<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Test.aspx.cs" Inherits="LaundaryWebApp.Test" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
      <script type="text/javascript" src="../Script/jquery.min.js"></script>
    <script src="Script/kendo/kendo.all.min.js"></script>
      <script src="Script/kendo/kendo.all.min.js"></script>
    <link href="Style/kendo/kendo.common.min.css" rel="stylesheet" />
     <link rel="stylesheet" href="Style/kendo/kendo.default.min.css" />
    <link rel="stylesheet" href="Style/kendo/kendo.default.mobile.min.css" />
</head>
    
<body>
        <div id="example">
            <div class="box wide">
            
            <div class="box-col">
                <h4>&nbsp;</h4>
                <ul class="options">
                    <li>
                        <input type="text" value="Item" id="beforeText" class="k-textbox"/> <button class="beforeItem k-button">Insert Before</button>
                    </li>
                    <li>
                        <input type="text" value="Item" id="afterText" class="k-textbox"/> <button class="afterItem k-button">Insert After</button>
                    </li>

                </ul>
            </div>
            </div>

            <ul id="panelbar">
                <li class="k-state-active">
                    First Item
                    <ul>
                        <li>Sub Item 1</li>
                        <li>Sub Item 2</li>
                        <li>Sub Item 3</li>
                        <li>Sub Item 4</li>
                    </ul>
                </li>
                <li>
                    Second Item
                    <ul>
                        <li>Sub Item 1</li>
                        <li>Sub Item 2</li>
                        <li>Sub Item 3</li>
                        <li>Sub Item 4</li>
                    </ul>
                </li>
                <li>
                    Third Item
                    <ul>
                        <li>Sub Item 1</li>
                        <li>Sub Item 2</li>
                        <li>Sub Item 3</li>
                        <li>Sub Item 4</li>
                    </ul>
                </li>
                <li>
                    Fourth Item
                    <ul>
                        <li>Sub Item 1</li>
                        <li>Sub Item 2</li>
                        <li>Sub Item 3</li>
                        <li>Sub Item 4</li>
                    </ul>
                </li>
                <li>
                    Fifth Item
                    <ul>
                        <li>Sub Item 1</li>
                        <li>Sub Item 2</li>
                        <li>Sub Item 3</li>
                        <li>Sub Item 4</li>
                    </ul>
                </li>
            </ul>

            <script>
                $(document).ready(function () {
                    var getItem = function (target) {
                        var itemIndexes = target.val().split(/[.,]/),
                            rootItem = panelBar.element.children("li").eq(itemIndexes[0]);

                        return itemIndexes.length > 1 ?
                            rootItem.find(".k-group > .k-item").eq(itemIndexes[1]) :
                            rootItem;
                    },
                        select = function (e) {
                            if (e.type != "keypress" || kendo.keys.ENTER == e.keyCode)
                                panelBar.select(getItem($("#selectIndex")));
                        },
                        append = function (e) {
                            if (e.type != "keypress" || kendo.keys.ENTER == e.keyCode)
                                panelBar.append({
                                    text: $("#appendText").val()
                                }, panelBar.select());
                        },
                        before = function (e) {
                            if (e.type != "keypress" || kendo.keys.ENTER == e.keyCode)
                                panelBar.insertBefore({
                                    text: $("#beforeText").val()
                                }, panelBar.select());
                        },
                        after = function (e) {
                            if (e.type != "keypress" || kendo.keys.ENTER == e.keyCode)
                                panelBar.insertAfter({
                                    text: $("#afterText").val()
                                }, panelBar.select());
                        };

                    $(".selectItem").click(select);
                    $("#selectIndex").keypress(select);

                    $(".appendItem").click(append);
                    $("#appendText").keypress(append);

                    $(".beforeItem").click(before);
                    $("#beforeText").keypress(before);

                    $(".afterItem").click(after);
                    $("#afterText").keypress(after);

                    $(".toggleItem").click(function (e) {
                        var item = panelBar.select();
                        panelBar.enable(item, item.hasClass("k-state-disabled"));
                    });

                    $(".triggerItem").click(function (e) {
                        var item = panelBar.select();

                        if (item.hasClass("k-state-active")) {
                            panelBar.collapse(item);
                        } else {
                            panelBar.expand(item);
                        }
                    });

                    $(".removeItem").click(function (e) {
                        panelBar.remove(panelBar.select());
                    });

                });

                var panelBar = $("#panelbar").kendoPanelBar().data("kendoPanelBar");
            </script>
            <style>
                .box-col {
                    width: 250px;
                    margin-bottom: -20px;
                }
                .box-col .options {
                    margin-bottom: 20px;
                }
                .box .k-textbox {
                    width: 80px;
                }
            </style>
        </div>
</body>
</html>
   
