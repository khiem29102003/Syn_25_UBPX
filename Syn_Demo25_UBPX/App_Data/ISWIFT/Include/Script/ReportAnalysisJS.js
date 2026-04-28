<![CDATA[  
function filter$analysisInitAllField(p, dright) {
    var pa = p.options.parent, id = p.options.controller, time = $.userinfo.val('CommandTimeout'), o = p.jObject('data_analysis_struct'), lst = p.jObject('data_struct').list('instance'), lstRows = p.jObject('data_rows').list('instance'), lstColumns = p.jObject('data_columns').list('instance'), lstPivot = p.jObject('data_pivot').list('instance');
    p.options.fis = {};
    dright = new DataTable(dright);
    lst.options.focus = lstRows.options.focus = lstColumns.options.focus = lstPivot.options.focus = function (pl) {
        p.options.listFocus = pl;
    }

    lstRows.options.textHtml = "<div class='list-icon-left'></div><div class='list-text'>[%s]</div><div class='list-icon-right'><span></span></div>"
    lstColumns.options.textHtml = "<div class='list-icon-left'></div><div class='list-text'>[%s]</div><div class='list-icon-right'><span></span></div>"
    lstPivot.options.textHtml = "<div class='list-icon-left'></div><div class='list-text'>[%s]</div><div class='list-icon-right'><span></span></div>"

    p.wait(true, id);
    var param = { cController: id, cFolder: "Grid" };
    $.invoke('GetDirStruct', param, p, time, function (d) {
        var i, fs = d.grids.grid[0].fields.field, xrights = {};
        p.options.fs = fs;
        lst.options.textHtml = "<div class='list-icon-left'></div><div class='list-text'>[%s]</div>"
        lst.options.beforeSelect = function (lp, item) {
            if (lstColumns.element.find("li[view='" + item.attr('value') + "']").length) return false;
        }
        i = dright.count();
        while (i--) {
            xrights[dright.val(i, 0)] = 1
        }
        for (i = 0; i < fs.length; i++) {
            if (!fs[i].hidden) {
                fs[i].index = i;
                fs[i].right = (p.options._admin == 1);
                if (p.options._admin == 0 && xrights[fs[i].name]) {
                    fs[i].right = true;
                    p.options.fis[fs[i].note2].right = true;
                }
                p.options.fis[fs[i].name] = fs[i];
            }
        }
        for (i = 0; i < fs.length; i++) {
            if (!fs[i].hidden && fs[i].right) {
                lst.add([[fs[i].name, fs[i].text.lan, fs[i].note2]])
            }
        }
        if (pa) {
            p.valForm('data_analysis_struct', pa.options._data_analysis_struct_df);
            p.options._pivotInfo = pa.options._data_analysis_struct_df;
            if (pa.options._data_analysis_struct != '') p.options._filterAction = 'EDIT';
            filter$analysisLoadPivot(p, pa.options._data_analysis_struct);
        }
        p.wait(false, id);

        lst.element.closest(".tab-pane").listdrag({
            "box": ".data_struct,.data_rows,.data_columns,.data_pivot", "boxFixed": ".data_struct"
          , beforeMousedown: function (ld, curLiMove) {
              var v = curLiMove.attr('value');
              if (curLiMove.attr('group') == '#') return false;
              if (curLiMove.closest(".List").fieldName() == 'data_struct' && lstColumns.element.find("li[view='" + v + "']").length) return false;
          }
          , beforeOver: function (ld, sourceList, destList, curLiMove) {
              var v = curLiMove.attr('value'), deF = destList.fieldName();
              switch (deF) {
                  case 'data_pivot':
                      if (p.options.fis[v].dataType != 'N') return false;
                      break;
                  default:
                      break;
              }
              return true;
          }
          , beforeDrop: function (ld, sourceList, destList, curLiMove, liDrop) {
              if (sourceList.fieldName() != destList.fieldName()) {
                  var v = curLiMove.attr('value'), deF = destList.fieldName();
                  switch (deF) {
                      case 'data_struct':
                          filter$analysisInitRestoreToStruct(p, curLiMove, sourceList);
                          return false;
                          break;
                      case 'data_columns':
                          var x = (lstPivot.jItems().length > 1) ? 1 : 0;
                          if (1 + lstColumns.jItems().length + x > 3) { $.showToast('$limitDataColumns', p); return false; }
                          if (p.options.fis[v].dataType != 'C') { $.showToast('$invalidDataColumns', p); return false; }
                          break;
                      case 'data_pivot':
                          if (lstColumns.jItems().length >= 3 && lstPivot.jItems().length >= 1) { $.showToast('$limitDataColumns', p); return false; }
                          if (p.options.fis[v].dataType != 'N') { $.showToast('$invalidDataPivots', p); return false; }
                          break;
                      default:
                          break;
                  }
              }
              return true;
          }
          , afterDrop: function (ld, sourceList, destList, curLiMove, liDrop) {
              if (sourceList.fieldName() != destList.fieldName()) {
                  var v = curLiMove.attr('value');
                  if (sourceList.fieldName() == 'data_rows') filter$analysis$RefreshGroupInRow(p)

                  curLiMove.setListItemText(p.options.fis[v].text.lan);
                  if (destList.hasClass('data_rows')) {
                      curLiMove.attr('xtype', 0);
                      filter$analysis$MenuTextInRow(p, curLiMove);
                  }
                  if (destList.hasClass('data_columns')) {
                      curLiMove.attr('view', v);
                      filter$analysis$MenuTextInColumn(p, curLiMove);
                  }
                  if (destList.hasClass('data_pivot'))
                      filter$analysis$MenuTextInPivot(p, curLiMove);
                  destList.list("clearSelection");
                  sourceList.list("clearSelection");
                  destList.list("focus");
              }
          }
        });
    }, null, function () {
        p.wait(false, id);
    })
}
function filter$analysisInitRestoreToStruct(p, jo, sourceList) {
    var lst = p.jObject('data_struct').list('instance'), fs = p.options.fs, fis = p.options.fis;
    jo.each(function () {
        var o = $(this), v = o.attr('value'), xg = o.attr('group'), k = p.options.fis[v].index + 1, xnear;
        if (xg != '') o.css("display", (lst.items(xg).attr('expand') == 1) ? "" : "none")
        while (k--) {
            xnear = lst.items(fs[k].name)
            if (xnear.length) { o.insertAfter(xnear); break; }
            else if (k == 0) o.insertBefore(lst.items(0));
        }
        o.attr('xtype', 0).attr('view', v).setListItemText(p.options.fis[v].text.lan, lst);
        if (sourceList) {
            sourceList.find('li').removeClass("list-item-selected");
            if (xg == '' || lst.items(xg).attr('expand') == 1) {
                o.addClass("list-item-selected");
            }
        }
    });
    filter$analysis$RefreshGroupInRow(p);
}
function filter$analysisGetPivotValue(p, pid) {
    var rows = p.jObject('data_rows').list('items'), jCols = p.jObject('data_columns').list('items', {}), jPvs = p.jObject('data_pivot').list('items', {}), pvs = [], cols = [], headers = [];
    if (!rows.length || (jCols.length && !jPvs.length)) {
        $.showToast('$invalidColumns', p);
        p.tabActive("1");
        return "";
    }
    $.each(jCols, function () {
        if ($(this).attr('value')) {
            cols.push($(this).attr('value'));
            headers.push($(this).attr('view'));
        }
    })
    $.each(jPvs, function () {
        var xtype = $(this).attr('xtype') || 'SUM';
        pvs.push('$' + xtype + '-' + $(this).attr('value'))
    })
    return pid + '|' + rows.join(',') + '|' + cols.join(',') + '|' + pvs.join(',') + '|' + headers.join(',') + '|' + p.options.pivotGroups.join(',') + '|' + ((p.options.pivotGroupAvailable == '1') ? "1" : "0");
}
function filter$analysis$TransferColumns(p, l1, l2, remove) {
    var jos = l1.selectedItems();
    jos.show();
    l2.push(jos, false); //false: not duplicate
    jos.each(function () {
        var o = $(this);
        o.setListItemText(p.options.fis[o.attr('value')].text.lan, l2);
    });
    l2.clearSelection();
    l1.clearSelection();
    return jos;
}
function filter$analysis$MoveUp(l) {
    if (!l || l.element.fieldName() == 'data_struct') return;
    var a = l.selectedItems(), i = a.eq(0).index(), e = l.element;
    if (i == 0 || !a.length)
        l.clearSelection();
    else {
        var up = l.jItems().eq(i - 1);
        a.insertBefore(up);
    }
}
function filter$analysis$MoveDown(l) {
    if (!l || l.element.fieldName() == 'data_struct') return;
    var a = l.selectedItems(), i = a.eq(a.length - 1).index(), e = l.element;
    var down = l.jItems().eq(i + 1);
    if (!a.length || !down.length)
        l.clearSelection();
    else
        a.insertAfter(down);
}
function filter$analysis$RefreshGroupInRow(p) {
    var i, k, o, xgrouptext = p.msg('ReportPivotGroupLabel').split(',')[0], a = p.options.pivotGroups, lst = p.jObject('data_struct').list('instance'), lstRows = p.jObject('data_rows').list('instance'), items = lstRows.items({}), fis = p.options.fis;
    i = items.length;

    while (i--) {
        o = items[i];
        o.find('.list-text').text(fis[o.attr('value')].text.lan);
    }
    i = a.length;
    while (i--) if (!lstRows.items(a[i]).length) $.removeItem(p.options.pivotGroups, a[i])
    i = a.length; k = a.length
    while (i--) {
        o = lstRows.items(a[i]);
        o.attr('xtype', 1);
        o.find('.list-text').html(fis[a[i]].text.lan + " <b>[" + xgrouptext.replace('%s', (k--)) + "]</b>", lstRows)
    }
}
function filter$analysis$MenuTextInRow(p, jo) {
    var lst = p.jObject('data_struct').list('instance'), items = p.msg('ReportPivotGroupLabel').split(','); xgrouptext = items[0];
    items[0] = [1, "<span>" + items[0] + "</span>"];
    items[1] = [0, "<span>" + items[1] + "</span>"];
    jo.find('.list-icon-right').menu({
        id: "analysis_Row_Name", data: items, type: "click", parent: p
        , click: function (po, xid, index) {
            var o = po.element.closest('li'), v = o.attr('value');
            if (xid == 1 && p.options.pivotGroups.indexOf(v) == -1) {
                p.options.pivotGroups.push(v);
                o.attr('xtype', 1);
                filter$analysis$RefreshGroupInRow(p);
            } else {
                $.removeItem(p.options.pivotGroups, v);
                o.attr('xtype', 0);
                filter$analysis$RefreshGroupInRow(p);
            }
            po.hide();
        }
        , showing: function (pp, po, elm, e) {
            var v = e.closest('li').attr('value');
            if (p.options.pivotGroups.indexOf(v) != -1) elm.find("#1").hide()
            else { elm.find("#1").find("span").html(xgrouptext.replace('%s', (p.options.pivotGroups.length + 1))); elm.find("#0").hide(); }
            return true;
        }
        , refresh: function () {
            return false;
        }
    });
}
function filter$analysis$MenuTextInColumn(p, jo) {
    var fis = p.options.fis;
    jo.find('.list-icon-right').menu({
        id: "analysis_Columns_Name", type: "click", parent: p
        , createData: function (po) {
            var o = po.element.closest('li'), v = o.attr('value'), items = [];
            if (v && fis[v].note != '') {
                items.push([v, fis[v].text.lan]);
                items.push(['-', '-']);

                var i, a = fis[v].note.split(',');
                for (i = 0; i < a.length; i++) {
                    items.push([a[i].trim(), fis[a[i].trim()].text.lan]);
                }
            }
            return items;
        }
        , click: function (po, xid, index) {
            var o = po.element.closest('li'), v = o.attr('value'), lstRows = p.jObject('data_rows').list('instance'), lstColumns = p.jObject('data_columns').list('instance');
            if (v == xid || (lstColumns.items(xid).length == 0 && lstRows.items(xid).length == 0)) {
                o.attr('view', xid);
                o.find('.list-text').html(fis[v].text.lan + ((v != xid) ? " (" + fis[xid].text.lan + ")" : ""));
            }
            po.hide();
        }
      , refresh: function () {
          return false;
      }
    });
}
function filter$analysis$MenuTextInPivot(p, jo) {
    var lst = p.jObject('data_struct').list('instance'), items = p.msg('ReportPivotValueLabel').split(','), k = items.length;
    jo.each(function () {
        var o = $(this);
        if (!o.attr('xtype')) o.attr('xtype', 'SUM');
    })
    while (k--) items[k] = items[k].split('|')
    jo.find('.list-icon-right').menu({
        id: "analysis_Pivot_Name", data: items, showcheck: true, type: "click", parent: p
      , click: function (po, xid, index) {
          var o = po.element.closest('li');
          o.attr('xtype', xid);
          po.hide();
      }
      , showing: function (pp, po, elm, e) {
          elm.find("#" + e.closest('li').attr("xtype")).find(".item-context-check").show()
          return true;
      }
      , refresh: function () {
          return false;
      }
    });
}
]]>