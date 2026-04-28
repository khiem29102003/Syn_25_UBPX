/*,invoke : function (servicePath, methodName, useGet, params, onSuccess, onFailure, userContext, timeout) {
    try {
        Sys.Net.WebServiceProxy.invoke(servicePath, methodName, useGet, params, onSuccess, onFailure, userContext, timeout);
    } catch (ex) { }
}*/

function invokeAC(sysId, request, response, userContext) {
    var p = window.location.href.toString();
    p = p.substring(0, p.indexOf("Main/")) + 'AppService/FWebService.asmx/' + "GetDataLookup";
    $.ajax({
        type: "POST",
        url: p,
        header: userContext,
        data: JSON.stringify({ cSysId: sysId, oMemvar: $c.createMemvar([['page', 'i', 1], ["columnFilterKey", "c", ''], ["columnOrderField", "c", ''], ["request", "c", request.term]]) }),
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        timeout: 10000,
        success: function (msg, s) {
            var ar = msg.d[2][0].Tables[0].Rows
            userContext._currentData = msg.d[2][0].Tables[0];
            response($.map(ar, function (v, i) {
                return { label: v[1], value: v[0] };
            }));
        },
        error: function (e) {
            jAjax$prototype$onError(e);
        }
    });
}

function jAjax(f, rs) {
    this.cPath = window.location.href.toString();
    this.cPath = this.cPath.substring(0, this.cPath.indexOf("Main/")) + 'AppService/FWebService.asmx';
    this._form = f;
    this.iTimeout = 30000;
    this.eResposeData = rs;
}

jAjax.prototype = {
    invoke: function (methodName, params, userContext, timeout) {
        $.ajax({
            type: "POST",
            url: this.cPath + "/" + methodName,
            header: userContext,
            data: JSON.stringify(params),
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            timeout: timeout,
            success: function (msg, s) {
                this.header._jsx.eResposeData(msg.d, this.header);
            },
            error: function (e) {
                jAjax$prototype$onError(e);
            }
        });
    },
    //getDirX: function () {
    //    var f = this._form;
    //    var e = new jReturn(this, f, "GetDir", "Struct");
    //    this.invoke('GetStructDir', { cSysId: f._sysId, cAction: f._action, cXtype: f._type, oMemvar: f._memvar }, e, this.iTimeout);
    //},
    getDir: function () {
        var f = this._form;
        var e = new jReturn(this, f, "GetDir", "Struct");
        this.invoke('GetStructDir', { cSysId: f.options.sysId, cAction: f.options.action, cXtype: f.options.type, oMemvar: f._memvar }, e, this.iTimeout);
    },
    getDataDir: function (m) {
        var f = this._form;
        var e = new jReturn(this, f, "GetDataDir", "Data");
        if (!m) m = null;
        this.invoke('GetDataDir', { cSysId: f.options.sysId, cAction: f.options.action, cXtype: f.options.type, oMemvar: m }, e, this.iTimeout);
    },
    checkPassword: function (u, p) {
        var e = new jReturn(this, this._form, "Login", "Login");
        var m = $c.createMemvar([["user", "c", u], ["pass", "c", p]]);
        this.invoke('CheckPassword', { oMemvar: m }, e, this.iTimeout);
    },
    getMenu: function (isMsg, m) {
        var e = new jReturn(this, this._form, "Login", "GetMenu");
        this.invoke('GetMenu', { isMsg: isMsg, oMemvar: m }, e, this.iTimeout);
    },
    checkUser: function (isMsg, m) {
        var e = new jReturn(this, this._form, "Login", "CheckUser");
        this.invoke('CheckUser', { isMsg: isMsg, oMemvar: m }, e, this.iTimeout);
    },
    newKey: function () {
        var e = new jReturn(this, this._form, "Login", "NewKey");
        this.invoke('NewKey', {}, e, this.iTimeout);
    },
    logout: function () {
        var e = new jReturn(this, this._form, "Login", "Logout");
        this.invoke('Logout', {}, e, this.iTimeout);
    },
    request: function (code, method, memvar, object, sysId, cAction) {
        var e = new jReturn(this, this._form, (sysId) ? sysId : this._form.options.sysId, code, object);
        this.invoke('Request', { strCommand: e._sysId + "-" + code + "-" + method, cAction: ((cAction) ? cAction : this._form.options.action), oMemvar: memvar }, e, this.iTimeout);
    },
    run: function (controller, code, method, memvar) {
        var e = new jReturn(this, this._form, controller, code);
        this.invoke('RunSQL', { strCommand: controller + "-" + code + "-" + method, oMemvar: memvar }, e, this.iTimeout);
    },
    mrun: function (controller, code, method, memvar) {
        var e = new jReturn(this, this._form, controller, code);
        this.invoke('MRunSQL', { strCommand: controller + "-" + code + "-" + method, strJson: '', cUserId: '1' }, e, this.iTimeout);
    }
}

function jAjax$prototype$onError(e) {
    var msg = e.statusText;
    alert(msg);
}

function jReturn(ajax, f, s, c, o) {
    this._jsx = ajax;
    this._form = f;
    this._sysId = s;
    this._code = c;
    this._obj = o;
}