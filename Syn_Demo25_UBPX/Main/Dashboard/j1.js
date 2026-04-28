
function StringBuilder() {
    this._array = [];
    this._index = 0;
    this.add.apply(this, arguments);
}
StringBuilder.prototype = {
    add: function () {
        for (var i = 0; i < arguments.length; i++) {
            this._array[this._index] = arguments[i];
            this._index++;
        }
    },
    toString: function () {
        return this._array.join('');
    }
};
//Message
function Message() {
    this.load = function () {
        if (this._load) return;
        var d = new DataTable(JSON.parse($.localVal('$MESSAGE'))), i = d.count();
        while (i--) {
            this._value[d.val(i, "val")] = [d.val(i, "v"), d.val(i, "e")]
        }
        this._load = true;
    },
    this._value = {
        SpecialChars: ['\'`~!@#$%^&*(),;"<>?/\\,_', '\'`~!@#$%^&*(),;"<>?/\\,_'],
        /*
        AppName: ['Iswift DMS', 'Iswift DMS'],
        CloseQuestion: ['Bạn có muốn thoát không?', 'Are you sure you want to exit?'],
        CloseAllApp: ['Hãy tắt hết các chức năng trước khi thoát chương trình.', ''],
        FieldBlank: ['Trường <span class="Highlight">{0}</span> không được bỏ trống hoặc giá trị không hợp lệ', 'Field <span class="Highlight">{0}</span> must not be blank or has invalid value.'],
        GridBlank: ['Thông tin chi tiết phải có dữ liệu', 'Detail must not be blank'],
        CheckCodeMessage: ['Trường <span class="Highlight">{0}</span> không được phép có khoảng trắng ở đầu hoặc chứa các ký tự: {1}.', 'Field <span class="Highlight">{0}</span> cannot contain blank at the beginning or any of the following characters: {1}'],
        Processed: ['Chương trình đã thực hiện xong.', 'The process completed successfully.'],
        DeclareError: ['Khai báo sai, chương trình không thực hiện tiếp được.', ''],
        LicenseInvalid: ['Mã số không hợp lệ.', ''],
        LicenseError: ['Thông tin bản quyền không hợp lệ.', ''],
        LicenseExpire: ['Thời gian dùng thử của chương trình đã hết.', ''],
        DayLabel: ['CN,HAI,BA,TƯ,NĂM,SÁU,BẢY', 'SUN,MON,TUE,WED,THU,FRI,SAT'],
        SortLabel: ['Sắp xếp tăng dần,Sắp xếp giảm dần,Không sắp xếp', 'Acsending,Decending,No sort'],
        NoFilterLabel: ['Bỏ lọc cột [%s]', 'Clear [%s] filter'],

        AccessDenied: ['Không có quyền thực hiện chức năng này.', ''],
        AdminAccess: ['Chỉ người quản trị mới được thực hiện chức năng này.', ''],
        NotAuthorized: ['Không được phân quyền cho người quản trị.', ''],
        NotEditVoucherRetrieved: ['Không được sửa/xóa chứng từ vì đã được lấy dữ liệu theo quy trình.', ''],
        NotEditVoucherStatus: ['Không được sửa/xóa chứng từ ở trạng thái này.', ''],

        ErrorSave: ['Có lỗi trong quá trình lưu. Tiến trình chưa được thực hiện xong.', 'Error when save, process is unsuccessful'],
        ErrorUpload: ['Có lỗi trong quá trình tải tập tin, kiểm tra lại định dạng, kích thước file.', 'Error when upload file, check file size and file extension'],
        ErrorExtensionFileUpload: ['Định dạng tâp tin không hợp lệ, chỉ hỗ trợ định dạng [%s]', 'File format invalid, support file type [%s]'],

        TitleLoginLabel: ['Iswift Solution', 'Iswift Solution'],
        LoginLabel: ['Đăng nhập', 'Login'],
        AccountLabel: ['Tài khoản', 'Account'],
        PasswordLabel: ['Mật khẩu', 'Password'],
        ForgetPasswordLabel: ['Quên mật khẩu', 'Forget password'],
        VietnameseLabel: ['Tiếng Việt', 'Vietnamese'],
        EnglishLabel: ['Tiếng Anh', 'English'],
        AcceptLabel: ['Nhận', 'Ok'],
        EditLabel: ['Sửa', 'Edit'],
        PrintLabel: ['In', 'Print'],
        CancelLabel: ['Hủy', 'Cancel'],
        CloseLabel: ['Đóng', 'Close'],
        EditLabelToolTip: ["Sửa (Ctrl + E, Alt + E)", "Edit (Ctrl + E, Alt + E)"],
        AcceptLabelToolTip: ['Nhận (Alt + O)', 'Ok (Alt + O)'],
        CancelLabelToolTip: ['Hủy (ESC)', 'Cancel (ESC)'],
        CloseLabelToolTip: ['Đóng (ESC)', 'Close (ESC)'],
        DeleteTitle: ['Xóa dữ liệu', 'Delete data'],
        DeleteLabel: ['Xóa', 'Delete'],
        AlertTitle: ['Cảnh báo', 'Warning'],
        ErrorTitle: ['Lỗi', 'Error'],
        QuestionTitle: ['Hỏi', 'Question'],
        Logout: ['Đăng xuất', 'Logout'],
        ChangePassword: ['Đổi mật khẩu', 'Change password'],
        UserLabel: ['Người sử dụng', 'User infomation'],
        AllLabel: ['Tất cả', 'All'],
        FindLabel: ['Tìm kiếm', 'Find'],

        AddToolbar: ['Thêm (Alt + N)', 'Add (Alt + N)'],
        EditToolbar: ["Sửa (Ctrl + E, Alt + E)", "Edit (Ctrl + E, Alt + E)"],
        DeleteToolbar: ["Xóa (Ctrl + D, Alt + D)", "Delete (Ctrl + D, Alt + D)"],
        CopyToolbar: ["Sao chép (Alt + U)", "Duplicate (Alt + U)"],
        ViewToolbar: ["Xem (Alt + W)", "View (Alt + W)"],
        FindToolbar: ["Tìm kiếm", "Find"],
        RefreshToolbar: ["Làm tươi", "Refresh"],
        FreezeToolbar: ["Gim cột", "Freeze"],
        PrintToolbar: ["In ấn (Alt + P)", "Print (Alt + P)"],
        ExportToolbar: ["Kết xuất dữ liệu", "Export data"],
        MoveUpToolbar: ["Chuyển lên", "Move up"],
        MoveDownToolbar: ["Chuyển xuống", "Move down"],
        RetrieveToolbar: ["Lấy dữ liệu", "Extract data"],
        PasteToolbar: ["Dán dữ liệu (Sau khi Ctrl+C từ Excel, Bảng dữ liệu)", "Paste Data From Excel"],
        ExtendToolbar: ["Mở rộng", "Extend"],
        ExtendToolbarContent: ["Mở rộng <span class='caret caret-extend'></span>", "Extend <span class='caret caret-extend'></span>"],

        LoginLoadConfig: ['Không đọc được tập tin hệ thống, hãy kiểm tra lại chương trình.', ''],
        LoginConnectionFailed: ['Thông tin truy cập cơ sở dữ liệu không đúng.', ''],
        LoginUsername: ['Hãy nhập tên đăng nhập.', ''],
        LoginPassword: ['Hãy nhập mật khẩu đăng nhập.', ''],
        LoginLicense: ['Thông tin bản quyền không hợp lệ.', ''],
        LoginIncorrect: ['Tên đăng nhập hoặc mật khẩu không đúng.', 'Invalid username/password'],
        LoginLockUser: ['Tài khoản đã bị khóa.', 'User has been locked'],
        LoginAccountExists: ['Tài khoản đã được đăng nhập. Hủy phiên làm việc trước?', 'You have logged in. Kill previous instance'],

        VoucherDelete: ['Bạn có chắc chắn xóa không?', 'Are you sure you want to delete this record?'],
        VoucherClose: ['Bạn muốn kết thúc?', ''],
        VoucherNotDetail: ['Chưa vào chi tiết không lưu được.', ''],
        VoucherSearchEmpty: ['Không có phiếu nào như vậy.', ''],
        VoucherLockedDay: ['Đã khóa số liệu, vui lòng kiểm tra lại ngày khóa sổ.', ''],
        VoucherNumberExists: ['Số chứng từ đã tồn tại, chương trình đã tự tăng số chứng từ mới.', ''],
        VoucherInfoTitle: ['Thông tin chứng từ', ''],
        VoucherInfoText: ['<b>Người tạo:</b> {username0} - {nickname0} ({user_id0})<br/><b>Người sửa:</b> {username2} - {nickname2} ({user_id2})<br/><b>Ngày tạo:</b> {datetime0}<br/><b>Ngày sửa:</b> {datetime2}', ''],

        ListItemUsed: ['Dữ liệu đã phát sinh, không thể sửa/xóa', 'Item has already been used, can not edit/delete'],
        ListDelete: ['Bạn có muốn xóa mã {0} không?', 'Cannot delete the id {0}. It has already been used.'],
        ListDeleteError: ['Mã {0} đã phát sinh, không được xóa.', ''],
        ListItemNotExists: ['Bản ghi không tồn tại hoặc đã sửa bởi người dùng khác.', 'Record is not exists'],

        ReportEmpty: ['Không có dữ liệu.', ''],
        ReportTemplateEmpty: ['Không tìm thấy tập tin Excel mẫu.', ''],

        GridTotalText: ['<b>%s1-%s2</b> trong <b>%s3</b>', '<b>%s1-%s2</b> in <b>%s3</b>'],

        FileUploadOutSize: ['File vượt quá kích thước, kích thước phải nhỏ hơn %n.', 'File out of size, the size must be less than %n.'],
        FileUploadMax: ['Tổng số lượng đã vượt quá %n file.', 'Support only maximum % n file.'],
        FileTitleError: ['Tải lên không thành công', 'Upload failed'],

        NotAuthorize: ['Không có quyền truy cập chức năng này.', 'Not authorize for this command'],
        ErrorUnknown: ['Lỗi không xác định, Xin lỗi vì sự bất tiện này!', 'Unknown error'],
        ErrorTimeout: ['Lỗi timeout, Máy trạm đã phải chờ quá lâu từ máy chủ. Kiểm tra lại kết nối mạng.', 'Timeout error'],


        ImportEmpty: ['Không tìm thấy dữ liệu trong file được chọn.', 'File is empty.'],
        ImportSelected: ['Chọn tệp Import trước khi thực hiện chức năng này.', 'Please choice import file.'],
        ImportTruncated: ['Dữ liệu tại ô <span class="Highlight">%cell</span> vượt quá độ dài cho phép.', 'Data in cell <span class="Highlight">%cell</span> is truncated.'],
        ImportBlank: ['Dữ liệu tại ô <span class="Highlight">%cell</span> không được phép để trống.', 'Data in cell <span class="Highlight">%cell</span> not allowed to blank.'],
        ImportInvalid: ['Dữ liệu tại ô <span class="Highlight">%cell</span> chưa nhập hoặc nhập giá trị không hợp lệ.', 'Data in cell <span class="Highlight">%cell</span> data invalid.'],
        ImportDouble: ['Giá trị cột <span class="Highlight">%column</span> tại dòng <span class="Highlight">%row</span> trùng nhau trong dữ liệu Import.', 'Giá trị cột <span class="Highlight">%column</span> tại dòng <span class="Highlight">%row</span> trùng nhau trong dữ liệu Import.'],
        ImportExists: ['Giá trị cột <span class="Highlight">%column</span> tại dòng <span class="Highlight">%row</span> đã tồn tại trong danh mục.', 'Giá trị cột <span class="Highlight">%column</span> tại dòng <span class="Highlight">%row</span> đã tồn tại trong danh mục.'],
        ImportNotExists: ['Dữ liệu tại ô <span class="Highlight">%cell</span> chưa khai báo trong danh mục.', 'Dữ liệu tại ô <span class="Highlight">%cell</span> chưa khai báo trong danh mục.'],*/
    }
}
Message.prototype = {
    add: function (k, e, v) {
        this._value[k] = [e, v];
    },
    get: function (k, l) {
        if (!this._value[k]) return '';
        if (!l) l = $.lan;
        return (l == 'v') ? this._value[k][0] : this._value[k][1];
    }
};

function Memvars(a) {
    this.obj = []; //{ Name: [0], DataType: [1], Value: [2], Extend: [3] }
    this.add(a);
}
Memvars.prototype = {
    val: function (n, t, v, e) {
        if ($.type(n) == 'undefined') return this.obj;
        var i = this.index(n);
        if ($.type(v) == 'undefined') { //Get Memvar
            if (i != -1)
                return this.obj[i].Value
            else
                return null
        }
        else {
            if ($.type(e) == 'undefined') e = null;
            //if (t == "D") v = $.offsetDate(v);
            if (t == "D" && v != null) v = $.date(v, "yymmdd");
            if (i != -1)
                this.obj[i] = { Name: n, DataType: t, Value: v, Extend: e }
            else
                this.obj.push({ Name: n, DataType: t, Value: v, Extend: e })
            return this;
        }
        return 1;
    },
    index: function (n) {
        for (var i = 0; i < this.obj.length; i++) {
            if (this.obj[i].Name == n) return i;
        }
        return -1;
    },
    get: function (n) {
        var i = this.index(n);
        if (i != -1)
            return this.obj[i];
        else
            return null
    },
    remove: function (n) {
        var i = this.index(n);
        if (i != -1) this.obj.splice(i, 1);
    },
    add: function (a) {
        if (!a) return;
        var m = this;
        if ($.type(a[0]) != 'array') {
            if (a[1] == 'D' && $.type(a[2]) == 'date')
                a[2] = $.offsetDate(a[2]);
            m.val(a[0], a[1], a[2], a[3]);
        }
        else $.each(a, function (i, v) {
            if (v[1] == 'D' && $.type(a[2]) == 'date')
                v[2] = $.offsetDate(v[2]);
            m.val(v[0], v[1], v[2], v[3]);
        });
    },
    push: function (m) {
        var a = m.val();
        for (var i = 0; i < a.length; i++) this.obj.push(a[i]);
        return this;
    },
    setExtend: function (ex) {
        var i = this.obj.length
        while (i--) {
            if (this.obj[i].Extend == null) this.obj[i].Extend = ex;
        }
    },
    setDefault: function (a, ex) {
        if (!a) return;
        var m = this;
        if ($.type(a[0]) != 'array') {
            m.val(a[0], a[1], $.defaultIfNull(a[1]), ex);
        }
        else $.each(a, function (i, v) {
            m.val(v[0], v[1], $.defaultIfNull(v[1]), ex);
        });
    },
    destroy: function (r) {
        this.obj = null;
    }
};

function DataRow(dr) {
    this.obj = dr;
}
DataRow.prototype = {
    val: function (c, v) {
        if ($.type(c) === 'string') c = this.index(c);
        if (c != -1) {
            if ($.type(v) == 'undefined') return this.obj.Items[c];
            else { this.obj.Items[c] = v; return c; }
        } else return null;
        return c;
    },
    index: function (c) {
        return this.obj.ColumnNames.indexOf(c);
    },
    destroy: function (r) {
        this.obj.Items = null;
        this.obj.ColumnNames = null;
        this.obj.DataTypes = null;
        this.obj = null;
    }
};

function DataTable(dt) {
    if (dt == undefined)
        this.obj = { DataTypes: [], ColumnNames: [], Rows: [] }
    else
        this.obj = dt;
}
DataTable.prototype = {
    val: function (r, c, v, notnull, dataType) {
        if (!r) r = 0;
        if (c == undefined) return this.obj.Rows[r];
        if ($.type(c) === 'string') c = this.index(c);
        if (c != -1) {
            if ($.type(v) == 'undefined') {
                v = this.obj.Rows[r][c];
                if (notnull && v == null) {
                    if (!dataType) dataType = this.dataType(c)
                    switch (dataType) {
                        case "N":
                            v = 0; break;
                        case "I":
                            v = 0; break;
                        case "C":
                            v = ""; break;
                        default:
                            v = null; break;
                    }
                }
                return v;
            }
            else { this.obj.Rows[r][c] = v; return c; }
        }
        return null;
    },
    sqlval: function (foreignFields, foreignValues, externalFields) {
        var i, j, k, v, b = $.extend(true, [], this.obj.DataTypes), c = $.extend(true, [], this.obj.ColumnNames), x = $.extend(true, [], this.obj.Rows);//this.obj.Rows.slice();
        if (externalFields) {
            i = externalFields.length;
            while (i--) {
                v = externalFields[i]; k = c.indexOf(v);
                b.splice(k, 1); c.splice(k, 1);
                j = x.length;
                while (j--) {
                    x[j].splice(k, 1);
                }
            }
        }

        if (!foreignFields) { foreignFields = []; foreignValues = []; }
        for (i = 0; i < x.length; i++) {
            for (j = 0; j < b.length; j++) {
                k = foreignFields.indexOf(c[j])
                if (k != -1) {
                    if (foreignValues[k] == "@@ROW") x[i][j] = i + 1;
                    else x[i][j] = foreignValues[k];
                }
                if (b[j] == "D") {
                    v = x[i][j];
                    if (b[j] == "D" && v != null) x[i][j] = $.date(v, "yymmdd");
                    else x[i][j] = "";
                }
            }
        }
        return { Rows: x, Datatypes: b, ColumnNames: c }//this.obj;
    },
    index: function (c) {
        return this.obj.ColumnNames.indexOf(c);
    },
    dataType: function (c) {
        return this.obj.DataTypes[c];
    },
    columnCount: function () {
        return this.obj.ColumnNames.length;
    },
    count: function () {
        return this.obj.Rows.length;
    },
    query: function (fields, exps, groups, keys) {//['[tien]', '[tien]+[thue]'], ['SUM/MAX/MIN'], ['ma_kh', 'ma_vt'], "[ma_vt] != ''"
        var dt = this, i, j, k, cindex, cF, cKey, a = [], aindex = [], xg = [], ag, n = dt.count(), m = groups.length, rows = dt.obj.Rows;
        for (i = 0; i < m; i++) {
            if (typeof (groups[i]) == 'string') xg[i] = this.index(groups[i]);
            else xg[i] = groups[i];
        }
        for (i = 0; i < n; i++) {
            ag = [];
            for (j = 0; j < m; j++) {
                ag.push(rows[i][xg[j]])
            }
            cindex = ag.join(",");
            k = aindex.indexOf(cindex);
            if (k == -1) {
                for (j = 0; j < fields.length; j++) {
                    cF = fields[j];
                    if (keys) cF = "(" + keys + ")?" + cF + ":0";
                    cF = "ag.push(" + cF.replace(/\[/gi, "dt.val(i, '").replace(/\]/gi, "')") + ")";
                    //console.log(cF)
                    eval(cF);
                }
                a.push(ag)
                aindex.push(cindex);
            } else {
                for (j = 0; j < fields.length; j++) {
                    cF = fields[j];
                    if (exps[j].toLowerCase() != 'sum') {
                        if (keys)
                            cKey = "if (" + keys + " && (" + cF + " #))";
                        else
                            cKey = " if (" + cF + ' #)';
                    }
                    else if (keys) cF = "(" + keys + ")?" + cF + ":0";

                    if (exps[j].toLowerCase() == 'sum')
                        cF = "a[k][m+j] = a[k][m+j] + (" + cF.replace(/\[/gi, "dt.val(i, '").replace(/\]/gi, "')") + ")";
                    if (exps[j].toLowerCase() == 'max')
                        cF = (cKey + " @ " + cF).replace(/\[/gi, "dt.val(i, '").replace(/\]/gi, "')").replace("#", " > a[k][m+j] ").replace("@", "a[k][m+j] = ");
                    if (exps[j].toLowerCase() == 'min')
                        cF = (cKey + " @ " + cF).replace(/\[/gi, "dt.val(i, '").replace(/\]/gi, "')").replace("#", " < a[k][m+j] ").replace("@", "a[k][m+j] = ");
                    //console.log(cF)
                    eval(cF);
                }
            }
        }
        //console.log(a);
        return a;
    },
    queryUpdate: function (cUpdate, cWhere) {
        var o = this, rows = o.obj.Rows, i = rows.length, q;
        while (i--) {
            q = "if (" + cWhere.replace(/\[/gi, "o.val(" + i + ", '").replace(/\]/gi, "')") + ") {" + cUpdate.replace(/\,/gi, ");").replace(/\[/gi, "o.val(" + i + ", '").replace(/\]/gi, "'").replace(/\=/gi, ",") + "); }";
            eval(q);
        }
    },
    addRow: function (row) {
        if (row == null) {
            var i, b = this.obj.DataTypes, c = this.obj.ColumnNames;
            row = [];
            for (i = 0; i < c.length; i++) {
                row.push($.defaultIfNull(b[i]));
            }
        }
        this.obj.Rows.push(row);
        return row;
    },
    addColumn: function (t, cN, df, index) {
        var i, o = this.obj;
        if ($.type(t) == "array") {
            for (i = 0; i < t.length; i++) {
                this.addColumn(t[i], cN[i]);
            }
        } else {
            if (index === undefined) {
                o.DataTypes.push(t);
                o.ColumnNames.push(cN);
                if (df != null)
                    for (i = 0; i < o.Rows.length; i++) {
                        o.Rows[i].push(df);
                    }
            } else {
                o.DataTypes.splice(index, 0, t);
                o.ColumnNames.splice(index, 0, cN);
                for (i = 0; i < o.Rows.length; i++) {
                    o.Rows[i].splice(index, 0, df);
                }
            }
        }
    },
    removeColumn: function (c) {
        var o = this.obj, i = this.count();
        if ($.type(c) == "string") c = this.index(c);
        o.DataTypes.splice(c, 1);
        o.ColumnNames.splice(c, 1);
        while (i--) {
            o.Rows[i].splice(c, 1);
        }
    },
    removeRow: function (r) {
        if (typeof (r) == "number")
            this.obj.Rows.splice(r, 1);
        else {//String, remove by key
            //$.removeItem(this.obj.Rows, r);
            var o = this, rows = o.obj.Rows, i = rows.length;
            while (i--) {
                eval("if (" + r.replace(/\[/gi, "o.val(" + i + ", '").replace(/\]/gi, "')") + ") o.removeRow(" + i + ")");
            }
        }
    },
    findRow: function (key) {
        var o = this, i, n = o.count(), v = [];
        for (i = 0; i < n; i++) {
            eval("if (" + key.replace(/\[/gi, "o.val(" + i + ", '").replace(/\]/gi, "')") + ") v.push(" + i + ")");
        }
        return v;
    },
    updateLine: function (c) {
        var i, n = this.count();
        for (i = 0; i < n; i++) {
            this.val(i, c, i + 1);
        }
    },
    moveColumn: function (c, k) { //Column c ==> sang vi tri k
        var o = this.obj, i = this.count();
        if ($.type(c) == "string") c = this.index(c);
        o.DataTypes.move(c, k);
        o.ColumnNames.move(c, k);
        while (i--) {
            o.Rows[i].move(c, k);
        }
    },
    columnCopyValue: function (col1, col2) {
        if ($.type(col1) == "string") { col1 = [col1]; col2 = [col2] }
        var i, c1, c2, rows = this.obj.Rows, k = col1.length;
        while (k--) {
            c1 = this.index(col1[k]); c2 = this.index(col2[k]);
            i = this.count();
            while (i--) {
                rows[i][c1] = rows[i][c2];
            }
        }
    },
    append: function (dt, clr, col1, col2) {
        if (col1) dt.columnCopyValue(col1, col2);
        else if ($.type(clr) != "boolean") dt = dt.clone(null, clr); //Copy table moi, ko anh huong DL cu
        var k, count, o = this.obj, c1 = o.ColumnNames, c2 = dt.obj.ColumnNames, i = c2.length;

        while (i--) {
            k = c1.indexOf(c2[i]);
            if (k == -1) dt.removeColumn(c2[i]);
        }
        count = c1.length;
        for (i = 0; i < count; i++) {
            k = c2.indexOf(c1[i]);
            if (k != -1 && k != i) dt.moveColumn(k, i);
            else if (k == -1) dt.addColumn(o.DataTypes[i], c1[i], $.defaultIfNull(o.DataTypes[i]), i);
        }
        if ($.type(clr) == "boolean") { //clr = clear & append?
            if (clr) o.Rows = dt.obj.Rows;
            else {
                count = dt.count();
                for (i = 0; i < count; i++)
                    o.Rows.push(dt.obj.Rows[i]);
            }
        } else if ($.type(clr) == "string") {//clr = key filter
            var rows = dt.findRow(clr);
            count = rows.length;
            for (i = 0; i < count; i++)
                o.Rows.push(dt.obj.Rows[rows(i)]);
        } else if ($.type(clr) == "number") {//clr = row index
            o.Rows.push(dt.obj.Rows[0]);
        }
    },
    setPrimaryKey: function (pk) {
        this.obj.PrimaryKeys = pk;
        this.obj.PrimaryValues = [];
        var i, k, aKey, cKey, a = this.obj.Rows, n = a.length;
        for (i = 0; i < n; i++) {
            k = pk.length;
            aKey = [];
            while (k--) aKey.push(this.val(i, pk[k]));
            cKey = aKey.join("#");
            this.obj.PrimaryValues.push(cKey);
        }
    },
    update: function (dt, r, updateOnly, cols) {
        var vkey = [], i, k, cF, cKey, aKey = [], pk = this.obj.PrimaryKeys;
        if (!pk) this.append(dt, r);
        else {
            i = pk.length;
            while (i--) aKey.push(dt.val(r, pk[i]));
            cKey = aKey.join("#");
            i = this.obj.PrimaryValues.indexOf(cKey);
            if (i == -1) {//Append
                if (updateOnly) return;
                this.append(dt, r);
                this.obj.PrimaryValues.push(cKey);
                //console.log("insert: " + r + " - " + cF);
            } else {//Update
                if (!cols) cols = dt.obj.ColumnNames
                k = cols.length;
                while (k--) {
                    cF = cols[k];
                    if (pk.indexOf(cF) == -1 && this.index(cF) != -1) {//ko phai cot khoa va cot co trong table
                        if (this.val(i, cF) != dt.val(r, cF)) {
                            this.val(i, cF, dt.val(r, cF))
                            //console.log("update: " + r + " - " + cF);
                        }
                    }
                }
            }
        }
    },
    appendArray: function (a, r, c) {
        var xr, i, j, n = a.length, rows = this.obj.Rows;
        for (i = 0; i < n; i++) {
            xr = r + i;
            for (j = 0; j < a[i].length; j++) {
                if (xr < rows.length) this.val(xr, c + j, a[i][j]);
                else this.addRow()[c + j] = a[i][j];
            }
        }
    },
    clone: function (cols, key) {
        if (cols == null) cols = $.extend(true, [], this.obj.ColumnNames);
        var dt = { ColumnNames: cols, DataTypes: [], Rows: [] }, dtype = this.obj.DataTypes, rows = this.obj.Rows, a, r, i, j, k, x, count = rows.length, n = cols.length;
        for (i = 0; i < n; i++) {
            k = this.index(cols[i]);
            if (k == -1) return null;
            dt.DataTypes.push(dtype[k]);
        }
        if (key !== undefined) {
            if ($.type(key) == "null") { //Clone empty
                a = []; count = 0;
            } else if ($.type(key) == "boolean") { //Clone false: empty, true: full
                if (key) { a = this.findRow(key); count = a.length; }
                else { a = []; count = 0; }
            } else if ($.type(key) == "string") { //Clone by key
                a = this.findRow(key); count = a.length;
            }
            else if ($.type(key) == "number") {//Clone 1 row
                a = [key]; count = 1;
            }
        }
        for (i = 0; i < count; i++) {
            r = []; x = i;
            if (key != null) x = a[i];
            for (j = 0; j < n; j++) {
                k = this.index(cols[j]);
                r.push(rows[x][k]);
            }
            dt.Rows.push(r);
        }
        return new DataTable(dt);
    },
    clear: function (r) {
        this.obj.Rows = [];
    },
    destroy: function (r) {
        this.obj.Rows = null;
        this.obj.ColumnNames = null;
        this.obj.DataTypes = null;
        this.obj = null;
    }
};

function DataSet(dt) {
    this.obj = dt;
    if (dt != null)
        for (var i = 0; i < this.obj.Tables.length; i++) {
            this.obj.Tables[i] = new DataTable(this.obj.Tables[i])
        }
}
DataSet.prototype = {
    val: function (i, r, c, v) {
        return this.get(i).val(r, c, v);
    },
    get: function (i) {
        if (!this.obj || i >= this.count()) return null;
        if (typeof (i) == "string") {
            var k = this.obj.Tables.length;
            while (k--) {
                if (this.obj.Tables[k].obj.TableName == i) {
                    i = k;
                    break;
                }
            }
        }
        return this.obj.Tables[i];
    },
    count: function () {
        if (!this.obj) return 0;
        return this.obj.Tables.length;
    },
    destroy: function (r) {
        for (var i = 0; i < this.count; i++) {
            this.get(i).destroy();
        }
    }
};
//END STRING BUILDER

$(function () {
    $.userinfo = new DataRow($.localVal('$USERINFO'));
    $.msg.load();
    if ($.userinfo.obj) $.lan = $.userinfo.val("language");
    else $.lan = 'v';
    $.isAndroid = $.checkAgent(/Android|android/);
    $.isIphone = $.checkAgent(/iPhone|iphone/);
    $.isIpad = $.checkAgent(/iPad|ipad/);
    $.isIOS = $.isIpad || $.isIphone;
    $.isWP = $.checkAgent(/iemobile/);
    $.isTouch = $.isAndroid || $.isIOS || $.isWP;

    $(window).bind('keydown', function (event, alt, ctrl) {
        var keys = [27, 119, 120], k = event.keyCode;
        if (keys.indexOf(k) != -1 && !$.winKeyFunction(k, event.altKey, event.ctrlKey))
            $.stopEvent(event)
        else if ($.shortCutKeys && (event.altKey || event.ctrlKey) && $.shortCutKeys[k]) { //&& [69, 78, 68, 80, 83, 27, 79, 72, 74, 75, 76, 77].indexOf(k) != -1) {//E, N, D, P, S, ESC, O, H, J, K, L, M
            if ($.winKeyFunction && !$.winKeyFunction(k, event.altKey, event.ctrlKey))
                $.stopEvent(event)
        } else if (k == 8) {
            var fus = $(":focus");
            if (!fus.is("input") && !fus.is("textarea") && fus.fdir().options) $.stopEvent(event);
        }
    });

    $("body").addClass("modal-open")

    Array.prototype.move = function (from, to) {
        this.splice(to, 0, this.splice(from, 1)[0]);
        return this;
    };
    Array.prototype.moveItem = function (from, to) {
        from = this.indexOf(from);
        this.splice(to, 0, this.splice(from, 1)[0]);
        return this;
    };

});

(function ($) {
    $.formZIndex = 2000;
    $.popupZIndex = 3000;
    $.questionZIndex = 4000;
    $.queueDir = {};
    $.disableContextMenu = false;

    $.msg = new Message();
    $.get = function (id) { return document.getElementById(id) };
    $.winKeyFunction = null;
    $.shortCutKeys = null;
    $.queryString = function (name) {
        name = name.replace(/[\[]/, "\\\[").replace(/[\]]/, "\\\]");
        var regex = new RegExp("[\\?&]" + name + "=([^&#]*)"), results = regex.exec(location.search);
        return results == null ? "" : decodeURIComponent(results[1].replace(/\+/g, " "));
    }
    $.getDateBlankText = function () {
        return "  /  /    ";
    },
    $.newDate = function (d, m, y) {
        return (d.toString().length == 2 ? d : "0" + d) + "/" + (m.toString().length == 2 ? m : "0" + m) + "/" + y;
    }
    $.textToDate = function (ctext) { //dinh dang text la dd/MM/yyyy
        if (ctext == null || ctext == "" || ctext == this.getDateBlankText()) return null;
        var a = ctext.split('/'), d = new Date(a[1] + "/" + a[0] + "/" + a[2]);
        if (isNaN(d.getTime())) return null;
        return d;
    },
    $.getDate = function (d) {
        if (d) {
            if ($.type(d) == 'string') {
                if (d.indexOf('/Date') == 0)
                    return new Date(parseInt(d.replace(/\/+Date\(([\d+-]+)\)\/+/, '$1')));
                else
                    return $.textToDate(d);
            }
            else return d;
        }
        return null;
    },
    $.date = function (d, format) {
        d = $.getDate(d);
        if (!format) format = 'dd/mm/yy';
        if (d) return format.replace("dd", ("0" + d.getDate()).slice(-2)).replace("mm", ("0" + (d.getMonth() + 1)).slice(-2)).replace("yy", d.getFullYear())  //d; //$.datepicker.formatDate(format, d);
        return $.getDateBlankText();
    }
    $.offsetDate = function (value) {
        if (value) {
            var offsetHours = value.getHours() - value.getTimezoneOffset() / 60;
            var d = new Date(value.getFullYear(), value.getMonth(), value.getDate());
            d.setHours(offsetHours);
            return d;
        }
        return value;
    }
    $.addDays = function (date, days) {
        var result = new Date(date);
        result.setDate(result.getDate() + days);
        return result;
    }
    $.round = function (number, digit) {
        return parseFloat(parseFloat(number).toFixed(digit));
    }
    $.number = function (number, digit, fixed) {
        if (number == null) number = 0;
        if (digit > 0 && fixed && number.toString().indexOf(".") == -1) { number = number.toString() + ".0"; }
        var nFixed = (digit == -1) ? parseFloat(number) : parseFloat(number).toFixed(digit);
        var parts = String(nFixed).split(".");
        var ex = "";
        if (parts[1]) {
            if (fixed) {
                ex = parseFloat("0." + parts[1]).toFixed(digit).substr(1);
            }
            else {
                ex = parts[1].substr(0, digit).replace(/0+$/, "");
                if (0 == ex) ex = "";
                if (ex != "") ex = "." + ex;
            }
        }
        var result = parts[0].split("").reverse().join("");
        if (digit != -1) result = result.replace(/(\d{3}(?!$))/g, "$1 ");
        if (fixed) return result.split("").reverse().join("") + ex;//.replace(/^0+/, "") 
        else {
            if (result != "0" || ex == "") result = result.split("").reverse().join("").replace(/^0+/, "");
            return result + ex;
        }
    }
    $.parseNumber = function (snumber) {
        snumber = snumber.replace(/\s/g, '');
        return parseFloat(snumber);
    }
    $.sessionVal = function (id, v) {
        if ($.type(v) == 'undefined') { var o = sessionStorage[id]; return (o) ? JSON.parse(o) : null; }
        else if (v == null) sessionStorage.removeItem(id);
        else {
            if ($.userinfo.val("LocalCache") == "1")
                sessionStorage[id] = JSON.stringify(v);
        }
    }
    $.localVal = function (id, v) {
        if ($.type(v) === 'undefined') { var o = localStorage[id]; return (o) ? JSON.parse(o) : null; }
        else localStorage[id] = JSON.stringify(v);
    }
    $.clearClientCache = function () {
        var i = localStorage.length;
        while (i--) {
            var key = localStorage.key(i);
            if (key.indexOf("$MENU") == 0) {
                localStorage.removeItem(key);
            }
        }
        sessionStorage.clear();
    }
    $.replaceAll = function (s, a, b) {
        eval("s = s.replace(/" + a + "/gi, \"" + b + "\")");
        return s;
        //  var i = s.indexOf(a);
        //  while (i != -1) {
        //    s = s.replace(a, b)
        //    i = s.indexOf(a, i + b.length);
        //  }
        //  return s;
    }
    $.getTabId = function () {
        var tabid = sessionStorage.tabID ? sessionStorage.tabID : sessionStorage.tabID = $.random(10000);
        return tabid;
    }
    $.invoke = function (methodName, params, userContext, timeout, funcOk, funErr, funErrInOk, wsFun) {
        if (!wsFun) wsFun = "WService.asmx"
        $.ajax({
            type: "POST",
            url: '../AppService/' + wsFun + '/' + methodName,
            header: userContext,
            headers: { tabId: $.getTabId() },
            data: JSON.stringify(params),
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            timeout: timeout,
            success: function (msg, s) {
                if ($.type(msg.d) === "string" && msg.d.indexOf("@ERR") == 0) { //Tra ve error string
                    $.invokeError(userContext, msg.d);
                    if (funErrInOk) funErrInOk(msg.d, this.header)
                    return;
                }
                if (funcOk) funcOk(msg.d, this.header);
            },
            error: function (e) {
                if (e.statusText.toLowerCase() == "timeout")
                    $.invokeError(userContext, "@ERR_TIMEOUT");
                else
                    $.invokeError(userContext, "");
                if (!funErr) funErr = funErrInOk;
                console.log(e) //Test bo di sau
                if (funErr)
                    funErr(e)
                else {
                    if ($.dirRenderOk($.rootDir))
                        console.log(e.statusText + String.fromCharCode(10) + e.responseText);
                }
            }
        });
    };
    $.invokeError = function (p, err) {
        if (p && p.wait) {
            p.wait(false);
            var pa = p.options.parent;
            if (pa && pa.options.wait) pa.waitFalse();
            if (p.options && p.options.errorCreating) p.options.errorCreating();
            if (!p.options.isRendered) p._destroy();
        }
        if (err == "") {
            $.showToast($.msg.get("ErrorUnknown"))
            //try { $.error($.msg.get("ErrorUnknown"), null, null); } catch (ex) { alert($.msg.get("ErrorUnknown")); }
            return;
        }
        if ($.checkInvokeError(err, '@ERR_TIMEOUT')) {
            $.showToast($.msg.get("ErrorTimeout"))
            //try { $.error($.msg.get("ErrorTimeout"), null, null); } catch (ex) { alert($.msg.get("ErrorTimeout")); }
            return;
        }
        if (($.checkInvokeError(err, '@ERR_SESSION') || $.checkInvokeError(err, '@ERR_ACCOUNTUSED')) && $.queryString("id") != "") {
            if (!$.dirExists("confirmpassword", "Filter")) {
                var rl = !$.dirRenderOk($.rootDir) || ($.rootDir && $.queryString("id") != $.rootDir.options.controller), st = $.localVal("confirmpassword");
                if (!st) window.location = "Login.aspx";
                else $.createDir(false, { controller: 'confirmpassword', folder: "Filter", backdropclick: false, dirViewType: "Dialog", struct: st, title: ['%s', $.userinfo.val("username")], _reload: rl });
            }
            return;
        }
    }
    $.postNewTab = function (url, params) {
        var f = $("<form target='_blank' method='POST' style='display:none;'></form>").attr({ action: url }).appendTo(document.body);
        for (var i in params) {
            if (params.hasOwnProperty(i)) {
                $('<input type="hidden" />').attr({
                    name: i,
                    value: params[i]
                }).appendTo(f);
            }
        }
        f.submit();
        f.remove();
    }
    $.getDownloadLink = function (id, thumb) {
        var param = "Download[@#]0[@#]" + id + "[@#]" + thumb + "[@#][@#]"
        return "../AppHandler/FileHandler.ashx?param=" + $.encodeb64UTF8(param);
    }
    $.checkInvokeError = function (err, type) {
        return (err.indexOf(type) == 0)
    }
    $.random = function (n) {
        return Math.floor((Math.random() * n) + 1);
    }
    $.compare = function (a, b) {
        var t;
        if ($.type(a) == 'object') { t = a.dataType(); a = a.fval(); }
        if ($.type(b) == 'object') { t = b.dataType(); b = b.fval(); }
        if (t == 'D') {
            a = $.date(a, "yymmdd"); b = $.date(b, "yymmdd");
        }
        if (a > b || b == null) return 1;
        else if (a < b || a == null) return -1;
        else return 0;
    }
    $.objToSQL = function (v, t) {
        if (v == null) return "null"
        switch (t) {
            case "D":
                return "'" + $.date(v, "yymmdd") + "'";
                break;
            case "C":
                return "N'" + v + "'";
                break;
            default:
                return v.toString();
                break;
        }
    }
    $.strToObject = function (v, t) {
        switch (t) {
            case "B":
                return (v != "") ? parseInt(v) : 0;
                break;
            case "N":
                return (v != "") ? parseFloat(v) : 0;
                break;
            case "I":
                return (v != "") ? parseInt(v) : 0;
                break;
            case "D":
                if (v != "") {
                    var x;
                    eval("x=" + v);
                    return $.date(x);
                }
                else return null;// $.date(null);
                break;
            default:
                return v;
                break;
        }
    }
    $.defaultIfNull = function (t) {
        switch (t) {
            case "B":
            case "N":
            case "I":
                return 0
                break;
            case "D":
                return null;
                break;
            default:
                return "";
                break;
        }
    }
    $.stopEvent = function (e) {
        try { e.preventDefault(); } catch (ex) { }
        try { e.stopPropagation(); } catch (ex) { }
    }
    $.aFocus = function (o) {
        o.focus();
        if (o.is("input")) o.select();
    }
    $.fieldFocus = function (o) {
        if (o.attr("disabled") != "disabled" && o.attr("tabstop") != "0" && o.css("display") != "none" && o.closest("td").css("display") != "none" && o.closest(".tab-pane").css("display") != "none" && !o.closest(".form-group-hidden").length && !o.closest(".invisible").length) {
            $.aFocus(o);
            if (o.isCell()) {
                var p = o.fdir(), g = p.grid(o);
                if (g._currCol == p.column(g.gridIndex, "firstFocus")) {
                    var tscroll = p.jGrid(g.gridIndex).find("tbody.data").parent().parent();
                    tscroll.scrollLeft(0);
                    if (p.get(o, "r") == 0) tscroll.scrollTop(0);
                }
            }
            return true;
        }
        return false;
    }
    $.nextFocus = function (cells, idx, nx, key, ctrl) {
        var o;
        if (nx == null) nx = 1;
        while (true) {
            o = cells.eq(idx);
            if (o.isCell() && (key === undefined || key == 13) && o.css("display") != "none" && o.closest("td").css("display") != "none" && o.closest(".tab-pane").css("display") != "none") {
                var p = o.fdir(), g = p.grid(o);
                if (!ctrl && p.options.action != "VIEW" && p.options.dirViewType == "Dialog" && !g.readOnly && g.allowNew && g._currCol == p.column(g.gridIndex, "lastFocus") && g._currRow == g.data.count() - 1) {
                    p.addRow(null, g.gridIndex);
                    return true;
                } else if (ctrl) {
                    if (g._currRow < g.data.count() - 1) {
                        $.aFocus(p.jCell(g._currRow + 1, p.column(g.gridIndex, "firstFocus"), g.gridIndex));
                        return true;
                    }
                    else if (g._currCol != p.column(g.gridIndex, "lastFocus")) {
                        $.aFocus(p.jCell(g._currRow, p.column(g.gridIndex, "lastFocus"), g.gridIndex));
                        return true
                    }
                }
            }
            if (idx == 0 && nx == -1) idx = cells.length - 1
            else if (idx == cells.length - 1 && nx == 1) idx = 0;
            else idx += nx;
            o = cells.eq(idx);
            if ($.fieldFocus(o)) return true;
        }
        return false;
    }
    $.checkAgent = function (r) {
        return r.test(navigator.userAgent.toLowerCase());
    }
    $.encodeb64UTF8 = function (s) {
        return window.btoa(unescape(encodeURIComponent(s)));
    },
    $.decodeb64UTF8 = function (s) {
        return decodeURIComponent(escape(window.atob(s)));
    },
    $.removeItemIndex = function (a, i) {
        a.splice(i, 1);
    },
    $.removeItem = function (a, v) {
        var k = a.indexOf(v);
        if (k != -1) a.splice(k, 1);
    },
    $.login = function (u, p, iTimeout, funOk, funWrong, isCon) {
        if (isCon == undefined) isCon = false;
        var funGetRandom = function (val) {
            var pas = MD5(val + MD5(p));
            var funLogin = function (dr) {
                var dr = new DataRow(dr), val = dr.val("val");
                if (val == "Ok" || val == "OkChangePass") {
                    $.localVal("$USERINFO", dr.obj);
                    $.clearClientCache();
                    if (funOk) funOk(val)
                }
                else if (val == "AccountExists") {
                    if (confirm($.msg.get('LoginAccountExists'))) {
                        isCon = true;
                        $.invoke("GetRandomKey", { cUser: u }, null, iTimeout, funGetRandom);
                    } else if (funWrong) funWrong(val)
                } else {
                    var msg = $.msg.get("Login" + val)
                    if (!msg) msg = $.msg.get("LoginIncorrect");
                    if (val.indexOf("LockUser") == 0)
                        alert(msg);
                    else
                        $.showToast(msg);
                    if (funWrong) funWrong(val)
                }
            };
            $.invoke("Login", { cUser: u, cPass: pas, cLan: $.lan, isContinueIfExists: isCon }, null, iTimeout, funLogin, funWrong)
        };
        $.invoke("GetRandomKey", { cUser: u }, null, iTimeout, funGetRandom, funWrong);
    }
    $.htmlEncode = function (v) {
        if (v == null) return ""
        return v.toString().replace(/&/g, '&amp;').replace(/"/g, '&quot;').replace(/'/g, '&#39;').replace(/</g, '&lt;').replace(/>/g, '&gt;');
    }

    $.event.special.textchange = {
        setup: function (data, namespaces) {
            $(this).data('lastValue', this.contentEditable === 'true' ? $(this).html() : $(this).val());
            $(this).bind('keyup.textchange', $.event.special.textchange.handler);
            $(this).bind('cut.textchange paste.textchange input.textchange', $.event.special.textchange.delayedHandler);
        },
        teardown: function (namespaces) {
            $(this).unbind('.textchange');
        },
        handler: function (event) {
            $.event.special.textchange.triggerIfChanged($(this));
        },
        delayedHandler: function (event) {
            var element = $(this);
            setTimeout(function () {
                $.event.special.textchange.triggerIfChanged(element);
            }, 25);
        },
        triggerIfChanged: function (element) {
            var current = element[0].contentEditable === 'true' ? element.html() : element.val();
            if (current !== element.data('lastValue')) {
                element.trigger('textchange', [element.data('lastValue')]);
                element.data('lastValue', current);
            }
        }
    }
    $.confirmUnload = function (v) {
        if ($.userinfo.val("LocalCache") != "1") return;
        if (v) {
            if (window.onbeforeunload == null) {
                window.onbeforeunload = function (e) {
                    return $.msg.get('VoucherSureClose');
                }
            }
        }
        else
            window.onbeforeunload = null
    }

    $.showToast = function (s, p) {
        if (p && s.indexOf('$') == 0) s = p.msg(s.substr(1));
        $(".msg-toast").remove();
        var mToast = $($.parseHTML('<div class="msg-toast">' + s + '</div>'));
        $("body").append(mToast)
        setTimeout(function () { mToast.remove(); }, 4000);
    }
})(jQuery);

$(function () {
    $("#header").sysmenu();
});

$.widget("iswift.sysmenu", {
    options: {
        timeout: 10000
    },

    render: function () {
        var i, d = this.options.data.get(0), e = this.element, a = d.obj.Rows, b = this.options.data.get(1).obj.Rows[0], o = e.find('.navbar-nav'), sb = new StringBuilder();
        var c1 = d.index('id'), c2 = d.index('id0'), c3 = d.index('text'), c4 = d.index('controller'), c5 = d.index('haschild'), c6 = d.index('img_pos'), c7 = d.index('img_file'), c8 = d.index('disabled'), c9 = d.index('xtype'), c10 = d.index('mobile_yn');
        this.resvRender(sb, a, '', c1, c2, c3, c4, c5, c6, c7, c8, c9, c10);
        sb.add("<li class='dropdown menu-unit'>");
        sb.add("<a href='#' class='dropdown-toggle' data-toggle='dropdown' role='button' aria-haspopup='true' aria-expanded='false'><div class='icon-menu' style='background: none;'></div><span id='SysUnitText'>" + b[1] + " - " + b[2] + "</span></a>");
        sb.add("</li>");
        o.html(sb.toString());

        this.createEvent();
    },
    setUnit: function (code, text) {
        this.element.find("#SysUnitText").html(code + " - " + text);
    },
    resvRender: function (s, a, id0, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10) {
        if (id0 != '') s.add("<ul class='dropdown-menu'>");
        for (var i = 0; i < a.length; i++) {
            if (a[i][c2] == id0 && (!$.isTouch || a[i][c10] == 1)) {
                if (id0 == '') {
                    s.add("<li class='dropdown'>");
                    s.add("<a href='#' class='dropdown-toggle' data-toggle='dropdown' role='button' aria-haspopup='true' aria-expanded='false'>");
                }
                else {
                    s.add("<li ")
                    if (a[i][c5] == 1) s.add("class='dropdown-submenu'");
                    s.add(">");
                    if (a[i][c3] == '-') s.add("<li role='separator' class='divider'></li>")
                    else {
                        if ($.isTouch)
                            s.add("<a menu-index='" + i + "' href='Default.aspx?id=" + a[i][c4] + (a[i][c9] != "" ? "&xtype=" + a[i][c9] : "") + "'");
                        else
                            s.add("<a menu-index='" + i + "' onmousedown='$.menuClick(this, event, \"" + a[i][c1] + "\", \"" + a[i][c4] + "\", \"" + a[i][c9] + "\");' ");
                        if (a[i][c5] == 1) s.add("class='dropdown-toggle' data-toggle='dropdown'");
                        s.add(">");
                    }
                }
                if (a[i][c3] != '-') {
                    s.add("<div class='icon-menu' style='")
                    if (a[i][c7] != '') s.add("background: url(\"../Images/" + a[i][c7] + ".png\");")
                    else if (a[i][c6] == '') s.add("background: none;")
                    else s.add("background-position: " + a[i][c6].replace(",", "px ") + "px;");
                    s.add("'></div>")

                    s.add(a[i][c3] + " ")
                    if (id0 == '') s.add("<span class='caret'></span>")
                }
                s.add("</a>")
                this.resvRender(s, a, a[i][c1], c1, c2, c3, c4, c5, c6, c7, c8, c9, c10);

                s.add("</li>")
            }
        }
        s.add("</ul>")
    },
    createEvent: function () {
        var m = this, e = m.element;
        e.find('.dropdown-submenu a.dropdown-toggle').on("click", function (event) {
            if ($(this).next('ul').is(":hidden")) {
                e.find(".dropdown-submenu .dropdown-menu").removeAttr("style");
                $(this).next('ul').toggle();
            }
            else
                e.find(".dropdown-submenu .dropdown-menu").removeAttr("style");
            $.stopEvent(event);
        });

        e.find('.dropdown').on('hide.bs.dropdown', function () {
            e.find(".dropdown-submenu .dropdown-menu").removeAttr("style");
        });

        e.find("#SysUnitText").parent().click(function () {
            $.createDir(false, { controller: "sysunit", folder: "Filter", dirViewType: "Dialog" });
        })

        var s = new StringBuilder(), uinfo = e.find(".navbar-login");
        uinfo.unbind("click");
        s.add("<div class='navbar-boxuser hide-outside'>")
        s.add("<div class='arrow-top-border'></div>")
        s.add("<div class='arrow-top-background'></div>")
        s.add("<div class='navbar-boxuser-content'>")
        s.add("<div class='row'>")
        s.add("<div class='col-xs-10'>")
        s.add("<div class='user-avata'></div>")
        s.add("</div>")
        s.add("<div class='col-xs-14'>")
        s.add("<div class='box-user-row'><b>" + $.userinfo.val('username') + "</b></div>")
        s.add("<div class='box-user-row'>" + $.userinfo.val('nickname') + "</div>")
        s.add("<div class='text-muted box-user-row'>" + $.userinfo.val('rgname') + "</div>")
        s.add("</div></div></div>")
        s.add("<div class='navbar-boxuser-footer'>")
        s.add("<a id='UserLabel' style='float: left;'>" + $.msg.get("UserLabel") + "</a>")
        s.add("<a id='Logout' style='float: right;'>" + $.msg.get("Logout") + "</a>")
        s.add("</div></div>")

        uinfo.html($.userinfo.val('username') + " <span class='caret'></span>")
        uinfo.popup({
            sb: s,
            id: "userinfo",
            showing: function (p, elm, os) {
                os.top += 8;
                return true;
            },
            init: function (po, elm) {
                elm.find("#Logout").click(function () {
                    m.logout();
                });
                elm.find("#UserLabel").click(function () {
                    window.location = "sysuserinfo.aspx?id=sysuserinfo";
                });
            },
            showing: function (p, elm, os) {
                var link = $.getDownloadLink($.userinfo.val('image_id'), "1");
                elm.find(".user-avata").css("background-image", "url(" + link + ")");
                return true;
            }
        });
        m.setAvatar();

        //Load DIR template to save
    },
    setAvatar: function () {

    },
    logout: function () {
        $.invoke('Logout', {}, this, this.options.timeout, function (v) {
            window.location = "Login.aspx";
        });
    },
    _create: function () {
        var m = this, e = m.element, isExistsCache = false;
        e.find(".navbar-login").html($.msg.get("LoginLabel")).bind("click", function () { m.logout() });
        m.options.data = $.localVal("$MENU");
        if (m.options.data) {
            m.options.data = new DataSet(m.options.data); isExistsCache = true;
        }
        $.invoke('GetMenu', { isExistsCache: isExistsCache }, this, m.options.timeout
           , function (dt, o) {
               if (!isExistsCache) {
                   $.localVal("$MENU", dt);
                   m.options.data = new DataSet(dt);

                   $.invoke('GetDirTemplate', {}, m, m.options.timeout, function (d) {
                       $.localVal("confirmpassword", d[0]);
                   });
               }
               m.render();
           }
           , function (event) {//Error
               window.location = "Login.aspx";
           });
    },
    _destroy: function () {
    }
});$(function () {
    $.calendar = $("<div>").attr("id", "SYS_Calendar").appendTo($("body")).datepicker();
    $.createRootDir($.queryString("id"), $.queryString('xtype'));

    $(window).bind('popstate', function (e) {
        $.initParam();
    });
    $(document).bind("contextmenu", function (e) {
        if ($.disableContextMenu) {
            $.stopEvent(e);
        }
    });


    $.fn.isCustomizeControl = function (o) {
        if (o === undefined) o = $(this);
        return o.hasClass("Lookup") || o.hasClass("D") || o.hasClass("N") || o.hasClass("I")
    }

    $.fn.isInputCell = function () {
        return this.hasClass("grid-input-field");
    }
    $.fn.isGridCell = function () {
        return this.hasClass("grid-cell");
    }
    $.fn.isCell = function () {
        return this.hasClass("grid-input-field") || this.hasClass("grid-cell");
    }
    $.fn.fieldName = function () {
        return this[0].classList[1];
    }
    $.fn.dataType = function () {
        return this[0].classList[2];
    }
    $.fn.ftext = function (v) {
        var o = this[0];
        if (v === undefined)
            return o.value;
        else
            o.value = v;
    }
    $.fn.fselect = function (v) {
        var o = this[0];
        if (v === undefined) {
            v = o.value;
            return { start: o.selectionStart, end: o.selectionEnd, isStart: (o.selectionStart == 0 && o.selectionEnd == 0), isEnd: (o.selectionStart == v.length && o.selectionEnd == v.length) };
        }
        else {
            if (typeof v === "number")
                o.setSelectionRange(v, v);
            else if (typeof v === "object") {
                o.selectionStart = v.start;
                o.selectionEnd = v.end;
            }
        }
    }
    $.fn.fval = function (v, checkValid) {
        var o = this;
        if (v === undefined) {
            try {
                if (o.hasClass('N') || o.hasClass('I')) return $.parseNumber(o.val());
                else if (o.hasClass('D')) return $.getDate(o.val());
                else if (o.hasClass('B')) return (o.prop('checked') ? 1 : 0);
                else if (o.css("text-transform") == 'uppercase') return o.val().toUpperCase(); //c, s
                else if (o.hasClass('File') || o.hasClass('Image')) {
                    var o = $(o).parent(), files = [];
                    o.find(".ajax-file-upload-filename.link-download").each(function () {
                        files.push($(this).attr("id"));
                    });
                    return files.join(",");
                }
                return o.val().trim(); //c, s
            } catch (e) {
                return null;
            }
        } else {
            if (o.hasClass('N') || o.hasClass('I')) return o.number("val", v);
            else if (o.hasClass('D')) return o.val($.date(v));
            else if (o.hasClass('B')) return o.prop('checked', v == 1);
            else if (o.hasClass('Lookup')) {
                o.val(v);
                if (checkValid) {
                    var l = o.lookup("instance");
                    l.valRef(null, '');
                    setTimeout(function () {
                        if (v.trim() == '') l.valRef(null, '');
                        l.refreshValid();
                        if (!l.options.valid && v.trim() != '') l.valid();
                    }, 100);
                }
                return o;
            }
            else return o.val(v);
        }
    }
    $.fn.setListItemText = function (v, lst) {
        if (lst == null) lst = this.closest(".List").list("instance");
        this.html(lst.options.textHtml.replace('[%s]', v));
    }
    $.fn.gval = function (v, format, checkValid, lastSymbol, firstSymbol) {
        var o = this, s;
        if (o.isInputCell()) return o.fval(v, checkValid);
        if (v === undefined) {
            if (o.hasClass('N') || o.hasClass('I')) return $.parseNumber(o.html());
            else if (o.hasClass('D')) return $.getDate(o.html());
            else if (o.hasClass('B')) return (o.prop('checked')) ? 1 : 0;
            else if (o.css("text-transform") == 'uppercase') return o.html().toUpperCase(); //c, s
            else if (o.find('select').length) return o.find('select').val();
            return o.html(); //c, s
        } else {
            if (!lastSymbol) lastSymbol = "";
            if (!firstSymbol) firstSymbol = "";
            if (o.hasClass('N') || o.hasClass('I')) {
                if (!format) format = 0;
                if (lastSymbol.trim() == "%") v = v * 100;
                s = firstSymbol + $.number(v, parseInt(format), false) + lastSymbol;
                return o.html(s);
            }
            else if (o.hasClass('D')) {
                return o.html($.date(v));
            }
            else if (o.hasClass('B')) return o.find('input').prop('checked', v == 1);
            else if (o.find('select').length) return o.find('select').val(v);
            return o.html(v);
        }
    }
    $.fn.fdir = function () {
        return this.closest(".dir").dir("instance");
    }
    $.fn.addMemvar = function (m, ex) {
        if (!m) return;
        var o = this;
        m.val(o.fieldName(), o.dataType(), o.fval(), ex);
    }

    $.fn.addTreeContainer = function (sid, shead, height, funHide) {
        var treeHeight = height;
        if (!treeHeight)
            try { treeHeight = ($(window).height() - $($(".table-bottom")[0]).offset().top); }
            catch (ex) {
                treeHeight = $(window).height() - 160;
            }
        var headerHeight = 30;
        var s = '<div class="tree-view tree-form" id="form_' + sid + '" style="height: ' + treeHeight + 'px; margin-top: 2px; display: none;"><div style="height: ' + headerHeight + 'px" class="header-tree">' + shead + '</div><button type="button" id="cancel_' + sid + '" class="btn-close-form btn-close-tree" aria-label="Close"><span class="icon-close-form">✖</span></button><div style="height: ' + (treeHeight - headerHeight) + 'px" id="' + sid + '"></div></div>';
        var obj = $($.parseHTML(s));

        obj.find("#" + "cancel_" + sid).click(function () {
            $("#form_" + sid).hide(150);
            if (funHide) funHide()
        });
        return obj;
    }

    $.fn.addBottomBox = function (sid, shead, height, funHide, funAfterResize) {
        var boxHeight = height;
        if (!boxHeight)
            try { boxHeight = ($(window).height() - $($(".table-bottom")[0]).offset().top); }
            catch (ex) {
                boxHeight = $(window).height() - 160;
            }
        var headerHeight = 30;
        var s = '<div class="bottom-box-form" id="form_' + sid + '" style="height: ' + boxHeight + 'px; margin-top: 2px; display: none;"><div class="left-resize"></div><div class="bottom-resize"></div><div style="height: ' + headerHeight + 'px" class="bottom-box-header">' + shead + '</div><button type="button" id="cancel_' + sid + '" class="btn-close-form btn-close-tree" aria-label="Close"><span class="icon-close-form">✖</span></button></div>';
        var obj = $($.parseHTML(s));

        obj.find("#" + "cancel_" + sid).click(function () {
            $("#form_" + sid).hide(150);
            if (funHide) funHide()
        });
        $("#content").append(obj);
        $("#form_" + sid + " .left-resize").boxresize({ divBox2: obj, minValue2: 100, maxValue2: $(window).width() - 10, resizeWidth: true, afterResize: function () { if (funAfterResize) funAfterResize(); } });
        $("#form_" + sid + " .bottom-resize").boxresize({ divBox2: obj, minValue2: 100, maxValue2: $(window).height() - 10, resizeWidth: false, afterResize: function () { if (funAfterResize) funAfterResize(); } });

        return obj;
    }
});

(function ($) {
    $.menuClick = function (o, e, id, controller, xtype) {
        if (controller.trim() == "") return;
        var url = window.location.href, isLoad = false;
        if (url.indexOf("Default.aspx") != -1) //Neu dang o trang default
            if (xtype.indexOf("#") == 0) {//Goi aspx
                url = xtype.substr(1) + ".aspx?id=" + controller;
                isLoad = true;
            }
            else
                url = "Default.aspx?id=" + controller + ((xtype != "") ? '&xtype=' + xtype : "");
        else {
            if (xtype.indexOf("#") == 0) {//Goi aspx
                url = xtype.substr(1) + ".aspx?id=" + controller;
            } else
                url = "Default.aspx?id=" + controller + ((xtype != "") ? '&xtype=' + xtype : "");
            isLoad = true;
        }
        if (e.which == 2 || e.which == 3) {
            $(o).attr('href', url);
        }
        if (!e || e.which == 1) {
            if (e.ctrlKey) $(o).attr('href', url)
            else {
                if (isLoad) {
                    window.location = url;
                } else {
                    $(o).removeAttr('href')
                    if (id != $.queryString("id")) {
                        if (e) history.pushState({}, '', '?id=' + controller + ((xtype != "") ? '&xtype=' + xtype : ""));
                        $.createRootDir(controller, xtype.split("&")[0]);
                    }
                }
            }
        }
    }
    $.initParam = function () {
        var controller = $.queryString('id');
        if (controller && controller != '') {
            $.createRootDir(controller, $.queryString('xtype'));
        } else {
            $("#content").html('');
        }
    }
    $.createRootDir = function (controller, xtype) {
        if (controller != "") {
            var time = $.userinfo.val('CommandTimeout')
            $.invoke("WriteLog", { cController: controller }, null, time, function (d) {
                if (d == "1") $.createDir(true, { controller: controller, folder: xtype, dirViewType: "" });
                else {
                    $("#content").html(''); $("#subcontent").html('');
                    $.alert($.msg.get(d.substr(1)), null);
                }
            })
        }
    }
    $.dirExists = function (controller, folder) {
        return $.queueDir[controller + "_" + folder] != null
    }
    $.dirRenderOk = function (p) {
        return (p && p.options && p.options.isRendered);
    }
    $.createDir = function (root, opt) {//controller, folder, root, dirViewType, parent, memvars, action, 
        if (root) { $("#content").html(''); $("#subcontent").html(''); }// $("script[iswiftJs='JS']").remove(); $("script[iswiftClass='CSS']").remove()
        var key = opt.controller + "_" + opt.folder, id = "DIR_" + key, o = $("<div>").attr("id", id);
        if (opt.parent && !opt.renderCompleted) {
            opt.parent.wait(true, key);
            opt.renderCompleted = function () { opt.parent.wait(false, key); }
        }
        if (opt.folder != 'Filter' && opt.dirViewType != "Lookup" && opt.dirViewType != "Dialog" && (root || opt.folder == "Grid")) {
            o.addClass('dir').css({ 'position': 'fixed', 'width': '100%' }).appendTo($("#content"));
        }
        else {
            $.formZIndex += 2;
            //console.log("create dir: " + $.formZIndex);
            o.addClass('dir modal').attr("role", "dialog").css("z-index", $.formZIndex).appendTo($("#subcontent"));
            opt["errorCreating"] = function () {
                $.formZIndex -= 2;
                //console.log("error: " + $.formZIndex);
            }
        }
        o.dir($.extend({}, opt, { root: root, key: key, id: id, waitKey: [], pageIndex: ((["Grid", "Lookup", ""].indexOf(opt.dirViewType) >= 0) ? 1 : null) }));
        var p = o.dir("instance");
        if (root) $.rootDir = p;
        $.queueDir[key] = p;
        return p;
    }

    $.question = function (msgText, msgTitle, parent, fun, msgType, opt) {
        $.formZIndex += 2;
        //console.log("create question: " + $.formZIndex);
        var o = $("<div>").attr("id", "DIR_Question"), p;
        if (!msgType) msgType = "Q"; if (!msgTitle) msgTitle = $.msg.get("QuestionTitle")
        if (msgText.indexOf('$') == 0) msgText = ((parent) ? parent.msg(msgText.substr(1)) : $.msg.get(msgText.substr(1)))
        if (msgTitle.indexOf('$') == 0) msgTitle = ((parent) ? parent.msg(msgTitle.substr(1)) : $.msg.get(msgTitle.substr(1)))
        if (!fun) fun = function (q) { q._close(); }
        o.addClass('dir modal').attr("role", "dialog").css("z-index", $.formZIndex).appendTo($("#subcontent"));
        o.dir($.extend({}, opt, { controller: "Question", folder: "", dirViewType: "Question", parent: parent, msgText: msgText, msgTitle: msgTitle, msgType: msgType, msgFunction: fun }));
        p = o.dir("instance");
        return p;
    }
    $.alert = function (msgText, msgTitle, parent, fun, opt) {
        if (!msgTitle) msgTitle = $.msg.get("AlertTitle")
        return $.question(msgText, msgTitle, parent, fun, "A", opt)
    }
    $.error = function (msgText, msgTitle, parent, fun, opt) {
        if (!msgTitle) msgTitle = $.msg.get("ErrorTitle")
        return $.question(msgText, msgTitle, parent, fun, "E", opt)
    }
})(jQuery);

$.widget("iswift.dir", {
    options: {
        id: "",
        key: "",
        controller: "",
        dirController: "",
        folder: "",
        action: "",
        dirViewType: "",
        pivotText: "",
        title: null,
        subtitle: null,
        wait: false,
        waitKey: [],
        root: null,
        memvars: null,
        parent: null,
        pageIndex: null,
        endTabIndex: 0,
        backdropclick: true,
        readOnly: false,
        hasData: false,
        useDataSet: false,
        reload: "",
        lookupOk: true,
        copy: false,
        showOrderRows: true,
        isRendered: false,
        fullScreen: false,
        fromView: false,
        focusWhenCreated: true,
        applyShortWhenCreated: true,
        hiddenNotExistsColumn: true,
        orderFieldsBySource: false,
        buttonIds: [],
        buttonGridKeys: { 83: 'save', 69: 'edit', 78: 'add', 68: 'delete', 87: 'view', 85: 'copy', 80: 'print', 77: 'message' },
        buttonFormKeys: { 83: 'ok', 27: 'cancel', 79: 'ok', 69: 'editForm', 77: 'message' },
        filterSort: { sort: "2", filter: {}, group: [], sum: [], count: [], max: [], min: [], avg: [] },
        defaultFilterSort: {},

        //Question, Alert, Error
        msgTitle: "",
        msgText: "",
        msgType: "", // A - Alert, E - Error, Q - Question
        msgFunction: null,

        //event
        event: null,
        closed: null,
        errorCreating: null,
        renderCompleted: null
    },

    render: function () {
        var i, j, k, p = this, e = p.element, d = p.options.struct, id = this.options.controller + "_" + this.options.folder, s = new StringBuilder();
        if (p.options.dirData) {
            if (d.grids) {
                gs = d.grids.grid;
                d.data = p.options.dirData.DirData;
                for (i = 0; i < gs.length; i++) {
                    gs[i].data = p.options.dirData.GridData[i];
                }
                p.options.dirData = undefined;
            }
        }
        var ds = new DataSet(d.data)
        if ((d.dirViewType != "Grid" && ds && ds.count() == 1 && ds.get(0).count() == 1 && ds.get(0).columnCount() == 1 && ds.get(0).index('message') == 0)
            || (d.dirViewType == "Grid" && d.grids.grid.length > 0 && d.grids.grid[0].data && d.grids.grid[0].data.Tables[0].ColumnNames[0] == "message")) {//Neu co message thi canh bao va destroy form.
            var cmsg, cid = (d.dirViewType != "Grid") ? ds.val(0, 0, 0) : d.grids.grid[0].data.Tables[0].Rows[0][0];
            if (cid.indexOf("$") == 0) {
                cmsg = p.msg(cid.substr(1));
            }
            $.alert(cmsg, null, p.options.parent, function (q) {
                var pfv = q.options.parentFromView;
                q._close();
                if (!pfv) $.formZIndex -= 2;
                //console.log("msg: " + $.formZIndex);
            }, { parentFromView: p.options.fromView });
            if (p.options.renderCompleted) p.options.renderCompleted();
            if (!p.options.fromView) p._destroy();
            return;
        }
        if (p.options.dirViewType == "") p.options.dirViewType = d.dirViewType;
        else d.dirViewType = p.options.dirViewType
        if (p.options.dirController == "") p.options.dirController = p.options.controller;
        p.options.voucherCode = d.voucherCode;
        p.options.dirObjectType = d.dirObjectType;
        p.options.selectMultiple = d.selectMultiple;
        p.options.dataChanged = p.options.copy;
        p.options.buttonIds = ['message'];
        if (d.dirViewType == "Question") id += "_" + $.formZIndex;
        p.options.id = "DIR_" + id;
        e.attr("id", "DIR_" + id);
        if (p.options.folder == "Dir" && p.options.parent.options.childFullScreen) { p.options.fullScreen = true; p.options.tabHeight = p.options.parent.options.childTabHeight }

        if (d.dirViewType != "Question") {
            if (d._js != '') {
                var jid = 'JS_' + id;
                if (!$('#' + jid).length) $("<script>").attr('iswiftIndex', $.formZIndex).attr('id', jid).html(d._js).appendTo($("body"));
            }
            if (d._css != '') {
                var cssid = 'CSS_' + id;
                if (!$('#' + cssid).length) $("<style>").attr('iswiftIndex', $.formZIndex).attr('id', cssid).html(d._css).appendTo($("body"));

            }
            eval("if (window." + p.options.folder.toLowerCase() + "$" + d.id + ") p.options.event = new " + p.options.folder.toLowerCase() + "$" + d.id + "(p);"); //Create jEventDir
        }

        if (d.loading) {
            if (!p.runDataReturn(d.loading)) {
                if (p.options.renderCompleted) p.options.renderCompleted();
                if (!p.options.fromView) p._destroy();
                return;
            }
        }
        if (p.options.loading) p.options.loading(p);

        p.options.event.beforeInit((p.options.isRendered) ? 1 : 0, ds.get(0))

        p.setTitle(p.options.title, false);
        p.setSubtitle(p.options.subtitle, false);

        if (d.dirViewType == "Grid") { //With GRID On TOP DIR
            //Tieu de
            s.add("<label class='text-title-grid'>" + p.options.title + "</label>")
            s.add("<label class='sub-title-grid'>" + p.options.subtitle + "</label>")
            s.add("<div class='divider-line'></div>")

            if (d.grids.grid.length > 0) {
                g0 = d.grids.grid[0];
                p.renderGrid(p, d, g0, s, 0);
            }
        }
        i = ["Dialog", "Question", "Lookup"].indexOf(d.dirViewType);
        if (i >= 0) { //With GRID On TOP DIR
            var formSizes = ["Large", "Medium", "Small", ""], formStyles = ["lg", "md", "sm", "md"];
            s.add("<div class='modal-dialog modal-dialog-" + formStyles[formSizes.indexOf(d.width)] + (p.options.fullScreen ? " modal-form-full" : "") + "' role='document'>") //md
            s.add("<div class='modal-content" + ((d.dirViewType == "Lookup") ? " modal-lookup" : "") + (p.options.fullScreen ? " size-full" : "") + "'>")
            var title = p.options.title;
            s.add("<div class='modal-header'>")
            s.add("<button type='button' btnId='" + ["cancel", "questionCancel", "lookupCancel"][i] + "' class='btn-close-form'><span class='icon-close-form'>&#10006;</span></button>")
            if (d.dirViewType != "Question") s.add("<button type='button' btnId='zoom' class='btn-close-form mobile-hide'><span class='icon-close-form' style='font-size: 20px;'>" + ((p.options.fullScreen) ? "&#x02013;" : "&#x025A1;") + "</span></button>")
            if ((p.options.action == "VIEW" || p.options.action == "EDIT") && p.options.folder == "Dir") s.add("<button type='button' btnId='@info' class='btn-close-form'><span class='icon-close-form' style='font-size: 20px;'>&#x1D4BE;</span></button>")
            
			//2024 next/back
            if ((p.options.action == "VIEW") && p.options.folder == "Dir") {
                s.add("<button type='button' class='FormTitleNextButton' btnId='@next'><div></div></button>");
                s.add("<button type='button' class='FormTitlePreviousButton' btnId='@previous'><div></div></button>");
            }
			
			s.add("<p class='text-title-form'>" + title + "</p>")
            s.add("</div>")

            if (d.dirViewType == "Dialog") {
                s.add("<div class='modal-body" + (p.options.fullScreen ? " modal-body-full" : "") + "' style='min-height: 0px;" + ((d.height != "") ? "height:" + d.height + "px;" : "") + "'>")
                s.add("<div class='form-horizontal'><div class='row'>")

                var fs = d.forms.form;
                p.options.dataSource = ds.get(0); //DataSource (1 row cho Form)
                p.options.dataExtend = ds.get(1); //Extend cho DL khac loadding
                if (p.valStrEx("script")) eval(p.valStrEx("script"));
                fs._group = ""; fs._tab = ""; fs._isGrid = false;
                for (i = 0; i < fs.length; i++) {
                    fs._index = i;
                    p.renderForm(p, d, fs, fs[i], s);
                }
                s.add("</div>"); //console.log("1 </div>   close TOP/MID/BOT"); //End Top/Mid/Bot

                s.add("</div></div>") //horizontal / Row
                s.add("</div>")

                s.add("<div class='modal-footer' >")
                s.add("<img id='WAIT_" + d.id + "' class='dir-icon-loading' style='display:none' src='../Images/ic_loading.gif'>")

                var btns = d.buttons.button;
                if (p.options.action == "VIEW") {
                    i = btns.length;
                    while (i--) {
                        if (btns[i].id == "ok") {
                            btns[i] = $.extend({}, btns[i], { id: 'editForm', default: false, text: { lan: '$EditLabel' } });
                            if (d.reportTemplate && d.reportTemplate.Rows.length) btns.splice(0, 0, $.extend({}, btns[i], { id: 'printForm', default: false, text: { lan: '$PrintLabel' } }));
                        }
                    }
                    btns.splice(1, 0, { id: 'deleteForm', default: false, text: { lan: '$DeleteLabel' } });
                }
                for (i = 0; i < btns.length; i++) {
                    var txt = btns[i].text.lan, txt2 = txt;
                    if (txt.indexOf("$") == 0) {
                        txt2 = $.msg.get(txt.substr(1) + "ToolTip");
                        txt = $.msg.get(txt.substr(1));
                    }
                    s.add("<button type='button' title='" + txt2 + "' btnId='" + btns[i].id + "' class='btn btn-" + (btns[i].default ? "primary" : "default") + "'>" + (btns[i].id == 'ok' ? "<img src='../Images/ic_save.png' class='btn-icon-ok'>" : "") + txt + "</button>")
                    p.options.buttonIds.push(btns[i].id);
                }
                s.add("</div>")
            }
            if (d.dirViewType == "Question") {
                s.add("<div class='modal-body" + (p.options.fullScreen ? " modal-body-full" : "") + "' style='min-height: 0px;'>")
                s.add("<div class='form-horizontal'><div class='row'>")

                s.add("<div class='modal-body-header'>")
                s.add("<div class='modal-left-0'>")
                s.add("<div class='form-group'>")
                s.add("<label class='control-label-message'>" + d.msg.lan + "</label>") //Label
                s.add("</div></div></div>") // modal / form group

                s.add("</div></div>") //horizontal / Row
                s.add("</div>")

                s.add("<div class='modal-footer' >")
                s.add("<img id='WAIT_" + d.id + "' class='dir-icon-loading' style='display:none' src='../Images/ic_loading.gif'>")
                s.add("<button type='button' btnId='questionOk' class='btn btn-primary'><img src='../Images/ic_save.png' class='btn-icon-ok'>" + $.msg.get("AcceptLabel") + "</button>")
                p.options.buttonIds.push('questionOk');
                if (p.options.msgType == "Q") {
                    s.add("<button type='button' btnId='questionCancel' class='btn btn-default'>" + $.msg.get("CancelLabel") + "</button>")
                    p.options.buttonIds.push('questionCancel');
                }
                s.add("</div>")
            }
            if (d.dirViewType == "Lookup") {
                s.add("<div class='modal-body" + (p.options.fullScreen ? " modal-body-full" : "") + "'>")
                g0 = d.grids.grid[0];
                this.renderGrid(p, d, g0, s, 0);
                s.add("</div>");

                s.add("<div class='modal-footer' >")
                s.add("<img id='WAIT_" + d.id + "' class='dir-icon-loading' style='display:none' src='../Images/ic_loading.gif'>")
                if (p.options.lookupOk) s.add("<button type='button' btnId='lookupOk' class='btn btn-primary'><img src='../Images/ic_save.png' class='btn-icon-ok'>" + $.msg.get("AcceptLabel") + "</button>")
                s.add("<button type='button' btnId='lookupCancel' class='btn btn-default'>" + $.msg.get("CancelLabel") + "</button>")
                p.options.buttonIds.push('lookupOk', 'lookupCancel', 'selectAll', 'deselectAll');
                s.add("</div>")

                s.add("</div>") //end modal-content

                p.options.buttonGridKeys[65] = "selectAll";
                p.options.buttonGridKeys[85] = "deselectAll";
            }

            s.add("</div>")
            s.add("</div>")
        }
        e.html(s.toString());
        var renderType = (p.options.isRendered) ? 1 : 0;
        p.options.isRendered = true;

        $.shortCutKeys = $.extend({}, p.options.buttonGridKeys, p.options.buttonFormKeys);
        if (d.dirViewType != "Question") p.initEvent();
        p.createEvent(0);

        p.options.event.afterInit(renderType)
        p.show();
        if (p.options.renderCompleted) p.options.renderCompleted(p);
    },
    renderForm: function (p, d, fs, f, s) { //xtype: 0 - FORM ngoai cung, 1 - FORM trong TAB
        var i, j, k, v, wi, fi, twi, isMid = false, tw = 0, fis = f.fields.field, cols = f.columns.split(','), action = p.options.action;

        for (k = 0; k < cols.length; k++) {
            tw += parseInt(cols[k]);
        }
        //console.log(f.gravity.substr(0, 3) + " - " + fs._group);
        if (fs._group != f.gravity.substr(0, 3)) {
            if (fs._index > 0) {
                if (fs._tab != "") { s.add("</div>" + ((fs._isGrid) ? "" : "</div>")); }//console.log("1.1 </div>" + ((fs._isGrid) ? "" : "</div>")); } //End Tab-Pane / Row
                if (fs._group == 'Mid') { s.add("</div></div>"); }//console.log("2 </div></div>"); } //End Tab-form/ Tab-content
                s.add("</div>"); //console.log("3 </div>");//End modal-body
            }

            fs._group = f.gravity.substr(0, 3);
            if (fs._group == 'Top') { s.add("<div class='modal-body-header'>"); } //console.log("open modal-body-header"); }
            if (fs._group == 'Mid') {
                s.add("<div class='modal-body-tab'>"); //console.log("open modal-body-tab");
                s.add("<div class='tab-form'><ul class='nav nav-tabs col-xs-24' style='margin-top: 10px;'>"); //console.log("open tab-form");
                for (k = 0; k < fs.length; k++) {
                    if (fs[k].gravity.substr(0, 3) == 'Mid' && fs[k].text.lan != "") {
                        s.add("<li " + ((fs[k].tabPageIndex == "1") ? "class='active' " : "") + "><a data-toggle='tab' class='li-tab " + d.id + "_" + fs[k].tabPageIndex + "' href='#" + d.id + "_" + fs[k].tabPageIndex + "'>" + fs[k].text.lan + "</a></li>")
                    }
                }
                s.add("</ul>");
                if (f.height == 0) {
                    for (i = 0; i < fis.length; i++) {
                        if (fis[i].nextRow && !fis[i].hidden) f.height += 1;
                    }
                    f.height = f.height * 30 + 54;
                }
                s.add("<div class='tab-content' style='height: " + ((p.options.fullScreen) ? p.options.tabHeight : f.height) + "px; min-height: " + f.height + "px;'>"); //console.log("open tab-content");
                isMid = true;
            }
            if (fs._group == 'Bot') {
                //if (isMid) s.add("</div></div></div>"); console.log("4 </div></div></div>"); //tab-content, tab-form, modal-body-tab
                s.add("<div class='modal-body-fotter'>"); //console.log("open modal-body-fotter");
            }
        }

        var isGrid = (fis.length == 1 && fis[0].viewType == "Grid")
        if (fs._tab != f.tabPageIndex) {
            if (fs._tab != "" && f.tabPageIndex != "") { s.add("</div>" + ((fs._isGrid) ? "" : "</div>")); }//console.log("5 </div>" + ((fs._isGrid) ? "" : "</div>")); } //End Tab-Pane / Row

            fs._tab = f.tabPageIndex;
            fs._isGrid = isGrid;
            if (fs._tab != "") {
                s.add("<div id='" + d.id + "_" + fs._tab + "' class='tab-pane" + ((isGrid) ? " tab-grid" : "") + ((fs._tab == "1") ? " in active" : "") + "'>"); //console.log("open tab-pane");
                if (!isGrid) { s.add("<div class='row'>"); }//console.log("open row"); }
            }
        }

        //Neu la TAB GRID
        if (isGrid) {
            var gridId = fis[0].name, gs = d.grids.grid, gnull = fis[0].allowBlank;
            for (i = 0; i < gs.length; i++) {
                if (gs[i].id == gridId) {
                    p.renderGrid(p, d, gs[i], s, i, gnull);
                }
            }
        } else {
            if (f.gravity.indexOf('Left') >= 0) { //Left
                fs._iLeftModal = s._index;
                s.add("<div class='modal-left-0'>"); //console.log("open modal-left-0");
            }
            if (f.gravity.indexOf('Right') >= 0) { //Right
                s.add("<div class='modal-right-" + tw + "'>"); //console.log("open modal-right-" + tw);
                if (fs._iLeftModal > 0) s._array[fs._iLeftModal] = s._array[fs._iLeftModal].replace("modal-left-0", "modal-left-" + tw);
            }

            var fieldWidth = function (fwi, inv, fun) {
                if (fwi != '') {
                    if (fwi.indexOf("[") == 0) {
                        wi = parseInt(fwi.replace("[", "").replace("]", "")); j += 1; twi += wi;
                    }
                    else if (fwi == "-") wi = twi;
                    else {
                        wi = 0; fwi = parseInt(fwi);
                        for (k = 0; k < fwi; k++) {
                            wi += parseInt(cols[j + k]);
                        }
                        j += fwi; twi += wi;
                    }
                    s.add("<div class='col-xs-24 col-" + (fwi == "-" ? "fill-" : "") + wi + ((inv) ? " invisible" : "") + "'>")
                    if (fun) fun();
                    s.add("</div>")
                }
            }
            for (i = 0; i < fis.length; i++) {
                fi = fis[i];
                if (fi.nextRow) {
                    if (i > 0) s.add("</div>");

                    var customClass = "";
                    if (fi.viewType == "File" || fi.viewType == "Image")
                        customClass = " css4control-" + fi.name;
                    s.add("<div class='form-group" + ((fi.hidden || fi.notAuth) ? " form-group-hidden" : "") + customClass + "'>");
                    j = 0; twi = 0;
                }

                fieldWidth(fi.blank, false, function () {
                });
                fieldWidth(fi.label, fi.invisible, function () {
                    s.add("<label class='control-label " + fi.name + "'>" + fi.text.lan + "</label>") //Label
                });
                fieldWidth(fi.field, fi.invisible, function () {
                    v = p.valStrEx(fi.name);
                    if (v == null) {
                        if ((action == "EDIT" || action == "VIEW" || (action == "NEW" && p.options.copy && fi.copy) || (action == "NEW" && fi.clientDefault)) && p.val().count() > 0)
                            v = p.valStr(fi.name, fi.dataType, fi.format);
                        else if (fi.valueDefault != "") v = $.strToObject(fi.valueDefault, fi.dataType)
                        else {
                            v = $.defaultIfNull(fi.dataType);
                            if (fi.dataType == "D") v = $.date(v);
                        }
                    }
                    if (p.options.folder == "Filter") {//Set default neu aliasName bat dau la @DF
                        switch (fi.aliasName) {
                            case "@CurrMonth":
                                v = new Date().getMonth() + 1; break;
                            case "@CurrYear":
                                v = new Date().getFullYear(); break;
                            case "@CurrDate":
                                v = $.date(new Date()); break;
                            case "@DFMonth":
                                v = $.localVal("@DFMonth"); if (v == null) v = new Date().getMonth() + 1; break;
                            case "@DFYear":
                                v = $.localVal("@DFYear"); if (v == null) v = new Date().getFullYear(); break;
                            default:
                                if (fi.aliasName.indexOf("@DF") == 0 && $.localVal(fi.aliasName)) v = $.localVal(fi.aliasName);
                                break;
                        }
                    }
                    var inactive = (fi.inactivate || fi.hidden || fi.notAuth || fi.invisible) ? " tabstop='0'" : "";
                    switch (fi.dataType) {
                        case "B":
                            s.add("<div class='checkbox'><label><input class='input-field " + fi.name + " " + fi.dataType + "' " + s.add(fi._jsScript) + inactive + " type='checkbox' " + ((fi.disabled || p.options.readOnly) ? " disabled='true'" : "") +
                                ((v == 1) ? " checked" : "") + "><span class='checkbox-material'><span class='check'></span></span></label></div>");
                            break;
                        default:
                            switch (fi.viewType) {
                                case "Combobox":
                                    s.add("<select class='input-field " + fi.name + " " + fi.dataType + " form-control materail-input' " + fi._jsScript + inactive);
                                    if (fi.disabled || p.options.readOnly) s.add(" disabled")
                                    s.add(" style='" + fi.cellCss + "'>");
                                    var cbo = fi.viewInfo.options.option;
                                    for (k = 0; k < cbo.length; k++) {
                                        s.add("<option value='" + cbo[k].val + "' ");
                                        if (v == cbo[k].val) s.add("selected");
                                        s.add(">" + cbo[k].text.lan + "</option>");
                                    }
                                    s.add("</select>")
                                    break;
                                case "List":
                                    s.add("<ul class='input-field " + fi.name + " " + fi.dataType + " " + fi.viewType + " list-group' " + fi._jsScript + inactive);
                                    if (fi.disabled || p.options.readOnly) s.add(" disabled")
                                    s.add(" style='" + fi.cellCss + "'>");
                                    var cbo = fi.viewInfo.options.option;
                                    for (k = 0; k < cbo.length; k++) {
                                        s.add("<li value='" + cbo[k].val + "' ");
                                        if (v == cbo[k].val) s.add("selected");
                                        s.add(">" + cbo[k].text.lan + "</li>");
                                    }
                                    s.add("</ul>")
                                    break;
                                case "Command":
                                    s.add("<div class='command-field " + fi.name + " " + fi.dataType + " " + fi.viewType + "' style='" + fi.cellCss + "'>" + fi.text.lan + "</div>")
                                    break;
                                case "File":
                                case "Image":
                                    s.add("<div class='upload-field " + fi.name + " " + fi.dataType + " " + fi.viewType + "' style='" + fi.cellCss + "'>Upload File</div>")
                                    break;
                                default:
                                    if (fi.rows == 1) s.add('<input value="' + $.htmlEncode(v) + '"');
                                    else s.add("<textarea rows='" + fi.rows + "'");
                                    s.add("spellcheck='false' type='text' class='input-field " + fi.name + " " + fi.dataType + " " + fi.viewType + (fi.align != "Left" && fi.align != "" ? " txt-" + fi.align.toLowerCase() : "") + " form-control materail-input " + fi.dataType + "'" + inactive + " style='");
                                    if ((fi.dataType == 'C' && fi.format == 'U') || fi.viewType == 'Lookup') s.add("text-transform: uppercase;");
                                    if (fi.format == 'L') s.add("text-transform: lowercase;");
                                    s.add(fi.cellCss)
                                    s.add("'")
                                    s.add(fi._jsScript)
                                    if (fi.readOnly) s.add(" readonly")
                                    if (fi.disabled || p.options.readOnly) s.add(" disabled")
                                    if (fi.maxLength != '') s.add(" maxLength='" + fi.maxLength + "'");
                                    if (fi.rows == 1) s.add(" />");
                                    else s.add(" >" + v + "</textarea>");

                                    if (fi.viewType == 'Lookup') s.add("<span class='icon-lookup btn-lookup' data-toggle='modal'/>")
                                    if (fi.dataType == "D") s.add("<span class='btn-lookup btn-calendar' />");
                                    break;
                            }
                    }
                });
            }
            s.add("</div>"); //End Group
            s.add("</div>"); //console.log("6 </div>"); //End Left/Right
        }
        if (fs._index == fs.length - 1) {
            if (fs._tab != "") { s.add("</div></div></div>" + ((fs._isGrid) ? "" : "</div>")); }//console.log("8 </div></div></div>" + ((fs._isGrid) ? "" : "</div>")); } //Tab-form/ Tab-content/ Tab-Pane/ Row(?) 
        }
    },
    renderGrid: function (p, d, g, s, index, gnull) {
        var i, fi, f = g.fields.field, gds = new DataSet(g.data), gdt = gds.get(0), btn0 = g.buttons.button, gid = d.id + "_" + g.id, isLookup = (p.options.dirViewType == "Lookup"), isGrid = (p.options.dirViewType == "Grid"), pvinfo = p.options.pivotInfo;
        var k, l, cspan, rspan, cindex, colhide, ctext, hc = g.headerRowCount; //Header info row, colunmn span

        if (isGrid || isLookup) {
            p.options.dataSource = gdt;
            //if ((p.options.reload == "CREATE" || p.options.reload == "REFRESH") && p.options.dirObjectType == "Report") p.options.filterSort = $.extend({}, { sort: "2", filter: {}, group: [], sum: [], count: [], max: [], min: [], avg: [] }, p.options.defaultFilterSort)
            if (p.options.reload == "CREATE") p.options.filterSort = $.extend({}, { sort: "2", filter: {}, group: [], sum: [], count: [], max: [], min: [], avg: [] }, p.options.defaultFilterSort)

            if (!p.options.isRendered || p.options.filterSort.sort.indexOf("2") == 0) p.options.filterSort.sort = "2#" + g.order;
            if (pvinfo) {
                g.pivotFields = undefined;
                g.pivotRowCount = undefined;
                if (p.options.reload != "") p.options.filterSort.sum = [];
                var cl, ctxt = new Object(), old = new Object(), fpv = [], pvcols = gds.get("HEADER"), pvcount = (pvcols && pvcols.count()) || 0, cols = pvinfo.columns, vals = pvinfo.values, ir4v = (pvcount > 0 && vals.length > 1) ? 1 : 0;
                hc = cols.length + ir4v;
                if (hc == 0) hc = 1;
                for (i = 0; i < pvinfo.rows.length; i++) {
                    fi = $.extend({}, p.field(pvinfo.rows[i]), { rowspan: -1, rowspan2: -1, rowspan3: -1 });
                    if (p.options.struct.isProcessing && ((fi.link == '!' || fi.link == '~') && (fi.aliasName == "" || fi.aliasName == "a") && fi.dataType != "N" && fi.dataType != "I")) {
                        fi.link += p.options.controller;
                        fi.operation = "=";
                    }
                    fpv.push(fi);
                }
                for (k = 0; k < vals.length; k++) {
                    if (pvcount == 0) {
                        fpv.push(p.field(vals[k]));
                        p.options.filterSort.sum.push(vals[k])
                    }
                    else
                        pvinfo[vals[k]] = p.field(vals[k]);
                }
                for (i = 0; i < pvcount; i++) {
                    for (k = 0; k < vals.length; k++) {
                        fi = pvinfo[vals[k]]; cl = "";
                        //console.log(fi.name + ":" + pvcols.val(i, fi.name));
                        for (l = 0; l < cols.length; l++) {
                            cl += "_" + pvcols.val(i, cols[l]) + "_";
                            cindex = (l == 0) ? "" : (l + 1);
                            ctxt["text" + cindex] = { lan: pvcols.val(i, "_" + pvinfo.headers[l]), code: pvcols.val(i, cols[l]) }
                            //if (l == cols.length - 1) ctxt["text" + cindex].lan += "-" + fi.text.lan;
                        }
                        if (ir4v == 1) ctxt["text" + (cols.length + ir4v)] = { lan: fi.text.lan };
                        fi = $.extend({}, fi, { name: cl + "$" + k, rowspan: 1 }, ctxt);
                        if (p.options.reload != "") p.options.filterSort.sum.push(fi.name);
                        fpv.push(fi);
                    }
                }
                //merge column
                if (hc > 1) {
                    k = pvinfo.rows.length
                    for (i = k; i < fpv.length; i++) {
                        if (fpv[k].text.code != fpv[i].text.code || i == fpv.length - 1) {
                            if (i != fpv.length - 1)
                                fpv[k].columnspan = i - k;
                            else
                                if (fpv[k].text.code != fpv[i].text.code) { fpv[k].columnspan = i - k; fpv[i].columnspan = 1 }
                                else fpv[k].columnspan = i - k + 1
                            k = i;
                            fpv[k].rowspan = 1;
                        } else if (i != k)
                            fpv[i].rowspan = 0;
                        else
                            fpv[i].rowspan = 1;
                        fpv[i]["rowspan" + hc] = 1;
                        if (hc == 2 && (fpv[i].text.code == "" || fpv[i].text2.code == "")) {
                            fpv[i].text.lan = fpv[i].text.lan + fpv[i].text2.lan
                            fpv[i].rowspan = hc;
                            fpv[i].rowspan2 = 0;
                        }
                    }
                }
                if (hc > 2) {
                    k = pvinfo.rows.length
                    for (i = k; i < fpv.length; i++) {
                        if (fpv[k].text2.code != fpv[i].text2.code || fpv[k].text.code != fpv[i].text.code || i == fpv.length - 1) {
                            //fpv[k].columnspan2 = i - k + ((i == fpv.length - 1) ? 1 : 0);
                            if (i != fpv.length - 1)
                                fpv[k].columnspan2 = i - k;
                            else
                                if (fpv[k].text.code != fpv[i].text.code || fpv[k].text2.code != fpv[i].text2.code) { fpv[k].columnspan2 = i - k; fpv[i].columnspan2 = 1 }
                                else fpv[k].columnspan2 = i - k + 1
                            k = i;
                            fpv[k].rowspan2 = 1;
                        } else if (i != k)
                            fpv[i].rowspan2 = 0;
                        else
                            fpv[i].rowspan2 = 1;
                    }
                }
                f = fpv;
                g.pivotFields = fpv;
                g.pivotRowCount = hc;
            } else if (p.options.reload != "") {
                p.options.filterSort.sum = [];
                for (i = 0; i < f.length; i++) {
                    fi = f[i];
                    if (fi.dataType == "N") p.options.filterSort.sum.push(fi.name);
                    if (fi.fieldType == "Temp" || (p.options.hiddenNotExistsColumn && gdt && gdt.index(fi.name) == -1)) { fi.hidden = true; fi.disabled = true; fi.readOnly = true; fi.notAuth = true; }
                }
                if (p.options.orderFieldsBySource && gdt) {
                    var cols = gdt.obj.ColumnNames;
                    k = cols.length;
                    while (k--) {
                        fi = p.field(cols[k], 0);
                        if (fi) {
                            f.splice(fi.index, 1);
                            f.splice(0, 0, fi);
                        }
                    }
                }
            }
        }
        if (p.options.useDataSet) g.ds = gds;
        g.data = gdt; g.gridIndex = index; g.allowBlank = gnull; g.dataChanged = false; g.allowNew = false; g.allowDelete = false

        p.options.event.beforeRenderGrid(g, gdt);

        if (gnull == false && gdt && gdt.count() == 0) {
            p.addRow(null, index, undefined, true);
        }

        if (isLookup) {
            s.add("<div class='input-group add-on' style='margin-bottom: 3px; width: 100%;'><div class='row row-basic'>")
            s.add("<div class='col-xs-14 col-sm-10'>")
            if (p.options.folder == "Lookup") s.add("<input type='text' class='form-control txt-search-lookup' value='" + p.options.memvars.val("val") + "' placeholder='" + $.msg.get("FindLabel") + "'><span class='icon-lookup btn-lookup btn-search-lookup'>")
        } else
            s.add("<div style='padding-top: 3px;width: 100%;'><div class='" + ((isGrid) ? "col-xs-14 col-sm-14" : "grid-menubar") + " grid-parent'>") //KHAC GRID TOP VA GRID DETAIL (TAB)

        s.add("<table class='table-itembar' grid-index='" + index + "' ><tr>")
        g.buttons.menuExtend = [];
        if (btn0.length && !p.options.isRendered) btn0.push({ id: "extend", text: { lan: $.msg.get("ExtendToolbar") }, items: { button: [] } })
        for (i = 0; i < btn0.length; i++) {
            var txt = btn0[i].text.lan, bid = btn0[i].id, cls = '', stext = '';
            // text icon
            var style1 = '', style2 = '';
            if (txt.indexOf("$") == 0) txt = $.msg.get(txt.substr(1));

            if (bid != "extend") {
                if (bid == 'print' || bid == 'paste' || btn0[i].items.button.length)
                    cls = '';
                else
                    if (i > 1) cls = 'mobile-hide';
                if (bid != 'print' && bid != 'paste' && btn0[i].items.button.length == 0 && (g.buttons.menuExtend.length == 0 || g.buttons.menuExtend[g.buttons.menuExtend.length - 1][1] != "-" || txt != "-")) g.buttons.menuExtend.push([bid, txt]);
            }
            else {
                cls = 'mobile-show';
                stext = $.msg.get("ExtendToolbarContent");
            }
            if (txt.substr(0, txt.lastIndexOf('(')).trim() != '') {
                style1 = "style='display:inline-flex;line-height:24px;padding-right:8px;cursor:pointer;'";
                style2 = "style='margin-right:4px;'";
            }
            s.add("<td " + style1 + " title='" + txt + "' class='toolbar-" + bid + " " + cls + "' id='TOOLBAR_" + gid + "_" + bid + "'><div " + style2 + ">" + stext + "</div>" + txt.substr(0, txt.lastIndexOf('(')).trim() + "</td>");
            if (isGrid || isLookup) p.options.buttonIds.push(bid);
            if (bid == "add" && p.options.action != "VIEW") g.allowNew = true;
            if (bid == "delete" && p.options.action != "VIEW") g.allowDelete = true;
        }
        s.add("</tr></table>");

        if (!isLookup) s.add("<img id='WAIT_" + ((isGrid) ? d.id : gid) + "' class='grid-icon-loading' style='display:none' src='../Images/ic_loading.gif'>")
        s.add("</div>");

        //Page Info neu la top
        if (isGrid || isLookup) {
            var gp = gds.get(1);
            p.options.pageInfo = gp;
            s.add("<div class='div-paging col-xs-10 " + ((isLookup) ? " col-sm-14" : "col-sm-10") + "' id='PAGE_" + gid + "'>");
            if (gp && gp.val(0, "t_page") > 1) s.add("<div class='total-paging mobile-hide'>" + $.msg.get("GridTotalText").replace("%s1", (gp.val(0, "page") - 1) * gp.val(0, "pagecount") + 1).replace("%s2", Math.min(gp.val(0, "t_record"), gp.val(0, "page") * gp.val(0, "pagecount"))).replace("%s3", gp.val(0, "t_record")) + "</div>");
            s.add("<ul class='pagination pagination-sm grid-page'>");
            if (gp) this.renderPage(p, g, f, gds, gp, s);
            s.add("</ul></div>");
        }
        if (isLookup) s.add("</div></div>");
        else s.add("</div>");//--------------

        //Data GRID
        s.add("<div class='" + ((isGrid) ? "table-bottom" : "table-detail") + ((isLookup) ? " table-lookup" : "") + "'>") //KHAC GRID TOP VA GRID DETAIL (TAB)
        s.add("<div class='table-scroll-horizontal'>")
        s.add("<table id='TABLE_" + gid + "' grid-index='" + index + "' class='table'>")

        if (isLookup && !p.options.isRendered && p.options.viewInfo && p.options.viewInfo.lookupType == "Multi") {
            var sval = p.options.objectTarget.fval().replace(/\s/g, ''), sref = p.options.valRef;
            p.options.selectMultiple = d.selectMultiple = "List";
            p.options.selectedItems = (sval == "") ? [] : sval.split(",");
            if (sref) p.options.selectedReference = (sval == "") ? [] : sref.split(",");
        }

        if (p.options.selectMultiple != "") {
            if (!p.options.isRendered) {
                g.readOnly = false;
                fi = $.extend({}, f[0], { name: "_select_", dataType: "B", readOnly: false, fieldType: "EX", allowFilter: false, allowOrder: false, disabled: false, hidden: false, allowBlank: true, inactivate: false, link: "", cellCss: "", valueDefault: "", align: "", viewInfo: null, width: 40, text: { lan: "" } });
                f.splice(0, 0, fi);
            }
            gdt.addColumn("B", "_select_", 0, 0);
        }

        //Header
        s.add("<colgroup>")
        s.add("<col style='width: auto;'/>");
        for (i = 0; i < f.length; i++) {//render column width
            fi = f[i];
            s.add("<col class='grid-colgroup " + fi.name + "' style='width: " + fi.width + "px;" + ((fi.hidden) ? "display:none;" : "") + "'/>");
        }
        s.add("</colgroup>")

        s.add("<thead>")
        for (k = 0; k < hc; k++) {
            s.add("<tr>");
            if (k == 0) s.add("<th" + ((hc != 1) ? " rowspan='" + hc + "'" : "") + "></th>");
            else s.add("<th style='display:none;'></th>");
            for (i = 0; i < f.length; i++) {
                fi = f[i];
                if (k == 0) {//Default mac dinh rowspan
                    if (fi.rowspan2 == 2 && fi.rowspan3 == -1)
                        fi.rowspan3 = 0;
                    if (fi.columnspan > 1) {
                        l = fi.columnspan - 1;
                        while (l--) if (f[i + l + 1].rowspan == -1) f[i + l + 1].rowspan = 0;
                    }
                    if (fi.columnspan2 > 1) {
                        l = fi.columnspan2 - 1;
                        while (l--) if (f[i + l + 1].rowspan2 == -1) f[i + l + 1].rowspan2 = 0;
                    }
                }
                cindex = ((k > 0) ? k + 1 : "");
                cspan = fi["columnspan" + cindex]; rspan = fi["rowspan" + cindex]; l = cspan; colhide = fi.hidden; ctext = fi["text" + cindex].lan
                if (ctext == "") ctext = fi.text.lan;
                if (rspan == -1)
                    if (k == 0) {
                        rspan = hc; fi["rowspan" + cindex] = hc;
                    }
                    else if (fi.rowspan == hc) {
                        rspan = 0; fi["rowspan" + cindex] = 0;
                    }
                //console.log(k + ":" + cspan + "-" + rspan + "-" + widths);
                if (rspan == 0) colhide = true;
                if (p.options.selectMultiple == "List" && isLookup && i != 0) {
                    fi.readOnly = true;
                }
                if (isLookup && p.options.viewInfo && p.options.viewInfo.lookupType != "Multi" && fi.name == g.fieldKey && fi.link == "") {
                    fi.link = "#lookupOk";
                }
                s.add("<th" + ((cspan != 1) ? " colspan='" + cspan + "'" : "") + ((rspan != 1) ? " rowspan='" + rspan + "'" : "") + " class='grid-column " + ((cspan > 1 || rspan == 0) ? "" : fi.name + " " + fi.dataType) + "' style='" + ((colhide) ? "display:none;" : "") + "'>")
                if ((isGrid || isLookup) && (fi.allowFilter || fi.allowOrder) && fi.fieldType != "EX") {
                    if (k == hc - 1 || (k == 0 && rspan == hc) || (k == 1 && rspan == hc - 1)) {
                        s.add("<div class='btn-header-options")
                        if (cspan == 1)
                            if (p.options.filterSort.sort.indexOf("0#" + "[" + fi.name + "]") == 0) s.add(" item-context-0");
                            else if (p.options.filterSort.sort.indexOf("1#" + "[" + fi.name + "]") == 0) s.add(" item-context-1");
                            else if (p.options.filterSort.group.indexOf(fi.name) != -1) s.add(" item-context-0");
                            else if (p.options.filterSort.filter["[" + fi.name + "]"]) s.add(" item-context-filter");
                        s.add("'/>")
                    }
                }
                if (fi.name == "_select_")
                    s.add("<div class='checkbox'><label><input type='checkbox' class='grid-select-multi " + fi.name + " " + fi.dataType + " txt-center'><span class='checkbox-material'><span class='check'></span></span></label></div>");
                else {
                    s.add("<div class='col-header-resize'></div>");
                    s.add("<span>" + ctext + "</span>")
                }
                s.add("</th>")
            }
            s.add("</tr>")

        }
        s.add("</thead>");

        //Data GRID_0
        s.add("<tbody id='BODY_" + gid + "' class='data'>")
        this.renderGridData(p, g, f, gdt, s)
        s.add("</tbody>")

        s.add("</table>")
        s.add("</div></div>") //end table-scroll-horizontal, table-detail
    },
    renderPage: function (p, g, f, gds, gp, s, divPage) {
        if (!s) s = new StringBuilder();

        var i, k, l = 2, page = gp.val(0, 'page'), tpage = gp.val(0, 't_page'), trecord = gp.val(0, 't_record'), pc = gp.val(0, 'pagecount'); a = [];
        if (page > tpage) p.options.pageIndex = 1;
        if (tpage == 1) return;
        if (tpage <= 5)
            for (i = 1; i <= tpage; i++)
                a.push(i);
        else {
            for (i = l; i > 0; i--) {
                if (page - i > 0) a.push(page - i);
            }
            a.push(page);
            for (i = 1; i <= l * 2 && a.length <= l * 2; i++) {
                if (page + i <= tpage) a.push(page + i);
            }
            if (a.length <= l * 2 && tpage > l * 2) {
                k = l * 2 + 1 - a.length;
                for (i = 0; i < k; i++) {
                    a.splice(0, 0, a[0] - 1);
                }
            }
            if (a[a.length - 1] != tpage) { a.push('→'); a.push(tpage); }
            else if (p.options.pageIndex < tpage - 1) a.splice(a.length - 1, 0, '→');
            if (a[0] != 1) { a.splice(0, 0, '←'); a.splice(0, 0, 1); }
            else if (p.options.pageIndex > 2) a.splice(1, 0, '←');
        }
        $.each(a, function (index, value) {
            s.add("<li class='" + (([tpage, 1, p.options.pageIndex, '←', '→'].indexOf(value) == -1) ? "mobile-hide" : "") + ((value == p.options.pageIndex) ? " active" : "") + "'><a>" + value + "</a></li>")
        });

        //s.add("<li class='active'><a href='#'>1</a></li>")
        if (divPage) divPage.html(s.toString())
    },
    renderGridData: function (p, g, f, gdt, s, tbody) {
        var k, i, fi, clstotal, sval;
        if (!gdt) return;
        if (!s) s = new StringBuilder();
        for (k = 0; k < gdt.count() ; k++) {
            clstotal = "";
            if (g.boldCondition) {
                sval = "if (" + g.boldCondition.replace(/\[/gi, "gdt.val(k, '").replace(/\]/gi, "')") + ") clstotal = \"class='row-bold'\"; "
                eval(sval)
            } else if (gdt.val(k, "systotal") === 0) clstotal = "class='row-bold'";
            s.add("<tr " + clstotal + ">");
            p.renderGridDataRow(p, g, f, gdt, k, s);
            s.add("</tr>")
        }
        if (tbody) tbody.html(s.toString())
        g._currCol = g._currRow = null;
        g._currFreeze = -1;
    },
    renderGridDataRow: function (p, g, f, gdt, k, s) {
        var i, j, v, fi, txt;
        if (!s) s = new StringBuilder();
        if (!p.options.showOrderRows)
            s.add("<td class='txt-right'></td>")
        else
            s.add("<td class='txt-right'>" + (k + 1) + "</td>")
        for (i = 0; i < f.length; i++) {
            fi = f[i];
            if (!p.options.event.beforeRenderGridRow(g, gdt, fi, k, fi.name)) continue;
            if (p.options.action == "NEW" && p.options.copy && !fi.copy) gdt.val(k, fi.name, $.defaultIfNull(fi.dataType));
            if ((fi.disabled && fi.hidden && fi.readOnly) || fi.notAuth) {
                s.add("<td style='display:none;'></td>")
                continue;
            }
            var inactive = (fi.inactivate || fi.hidden) ? " tabstop='0'" : "";
            if (g.readOnly || fi.readOnly || p.options.action == "VIEW") {
                s.add("<td class='grid-cell " + fi.name + " " + fi.dataType + (fi.dataType == "B" ? " txt-center" : "") + ((fi.align != "Left" && fi.align != "") ? " txt-" + fi.align.toLowerCase() : "") + " canfocus' style='" + ((fi.hidden) ? "display:none;" : "") + "' " + inactive + ">")
                switch (fi.dataType) {
                    case "B":
                        s.add("<div class='checkbox'><label><input type='checkbox' " + ((fi.readOnly || p.options.action == "VIEW") ? " disabled='true'" : "") + ((gdt.val(k, fi.name) == 1) ? " checked" : "") + "><span class='checkbox-material'><span class='check'></span></span></label></div>");
                        break;
                    case "I":
                    case "N":
                        v = gdt.val(k, fi.name);
                        if (fi.lastSymbol.trim() == "%") v = v * 100;
                        txt = $.number(v, parseInt(fi.format), !g.readOnly && !p.options.action == "VIEW")
                        if (txt != "") txt = fi.firstSymbol + txt + fi.lastSymbol
                        s.add(txt);
                        break;
                    case "D":
                        s.add($.date(gdt.val(k, fi.name)));
                        break;
                    default:
                        v = gdt.val(k, fi.name);
                        if (fi.viewType == "Combobox") {
                            if (v != null) v = v.toString();
                            s.add("<select class='grid-input-field " + fi.name + " " + fi.dataType + " " + fi.viewType + " txt-center'  disabled " + s.add(fi._jsScript) + inactive + ">")
                            var cbo = fi.viewInfo.options.option;
                            if (v == "") { v = cbo[0].val; gdt.val(k, fi.name, v); }
                            for (j = 0; j < cbo.length; j++) {
                                s.add("<option value='" + cbo[j].val + "' ");
                                if (v == cbo[j].val) s.add("selected");
                                s.add(">" + cbo[j].text.lan + "</option>");
                            }
                            s.add("</select>")
                        } else
                            s.add(v);
                        break;
                }
            }
            else {
                s.add("<td class='grid-cell " + fi.name + " " + (fi.dataType == "B" ? "txt-center" : "") + "' style='" + ((fi.hidden) ? "display:none;" : "") + "' >")
                switch (fi.dataType) {
                    case "B":
                        v = gdt.val(k, fi.name);
                        if (fi.name == "_select_" && p.options.dirViewType == "Lookup") {
                            v = (p.selectedItems().indexOf(gdt.val(k, g.fieldKey).toString()) == -1) ? 0 : 1;
                        }
                        s.add("<div class='checkbox'><label><input type='checkbox' class='grid-input-field " + fi.name + " " + fi.dataType + " txt-center' " + ((fi.readOnly || p.options.readOnly) ? " disabled='true'" : "") + ((v == 1) ? " checked" : "") + inactive + "><span class='checkbox-material'><span class='check'></span></span></label></div>");
                        break;
                    default:
                        v = gdt.val(k, fi.name, undefined, true, fi.dataType);
                        if (fi.viewType == "Combobox") {
                            if (v != null) v = v.toString();
                            s.add("<select class='grid-input-field " + fi.name + " " + fi.dataType + " " + fi.viewType + " txt-center' " + s.add(fi._jsScript) + inactive)
                            if (fi.disabled || p.options.readOnly) s.add(" disabled")
                            s.add(">");
                            var cbo = fi.viewInfo.options.option;
                            if (v == "") { v = cbo[0].val; gdt.val(k, fi.name, v); }
                            for (j = 0; j < cbo.length; j++) {
                                s.add("<option value='" + cbo[j].val + "' ");
                                if (v == cbo[j].val) s.add("selected");
                                s.add(">" + cbo[j].text.lan + "</option>");
                            }
                            s.add("</select>")
                        } else {
                            if (fi.dataType == "D") v = $.date(v);
                            else if (fi.dataType == "N" || fi.dataType == "I") v = $.number(v, parseInt(fi.format), true);
                            //else if (v == null) v = "";
                            s.add("<input spellcheck='false' type='text' class='grid-input-field " + fi.name + " " + fi.dataType + " " + fi.viewType + (fi.align != "Left" && fi.align != "" ? " txt-" + fi.align.toLowerCase() : "") + "'" + inactive + " value='" + $.htmlEncode(v) + "' style='");
                            if ((fi.dataType == 'C' && fi.format == 'U') || fi.viewType == 'Lookup') s.add("text-transform: uppercase;");
                            if (fi.format == 'L') s.add("text-transform: lowercase;");
                            s.add("'")
                            s.add(fi._jsScript)
                            if (fi.readOnly) s.add(" readonly")
                            if (fi.disabled || p.options.readOnly) s.add(" disabled")
                            if (fi.maxLength != '') s.add(" maxLength='" + fi.maxLength + "'");
                            s.add(" />");
                            if (fi.viewType == 'Lookup') s.add("<span class='icon-lookup btn-lookup' data-toggle='modal'/>")
                            if (fi.dataType == "D") s.add("<span class='btn-lookup btn-calendar' />");
                        }
                        break;
                }
            }
            s.add("</td>")
            p.options.event.afterRenderGridRow(g, gdt, fi, k, fi.name);
        }
        return s;
    },
    freeze: function (g) {
        this.jGrid(g.gridIndex).table("option", { "left": g._currFreeze + 2 });
    },
    initEvent: function () {
        var cells, p = this, e = p.element, d = p.options.struct, gs = d.grids.grid, tabIndex = ((p.options.parent) ? p.options.parent.options.endTabIndex : 0) + 1;

        //Su kien GIM tab
        e.find('.table').table({ "left": 1 });

        //Su kien toolbar
        e.find(".table-itembar").find('td').click(function (b) {
            var o = $(this), g = p.grid(o), gindex = g.gridIndex;
            p.options.event.buttonGridClick(g.buttons.button[$(this).index()].id, gindex);
        });

        var dtReport = new DataTable(d.reportTemplate)
        if (dtReport.count() > 0) {
            e.find(".table-itembar").find('td.toolbar-print').menu({
                id: "PRINT_" + p.options.controller, data: dtReport, type: "hover", parent: p, click: function (po, xid, index) {
                    p.print(xid, this.data.val(index, "dynamic"));
                }
            });
            e.find("button[btnid='printForm']").menu({
                id: "PRINT_" + p.options.controller, data: dtReport, type: "hover", parent: p, click: function (po, xid, index) {
                    if (p.options.parent.options.controller != p.options.controller)
                        p.print(xid, this.data.val(index, "dynamic"));
                    else
                        p.options.parent.print(xid, this.data.val(index, "dynamic"));
                }
            });
        }
        else
            e.find(".table-itembar").find('td.toolbar-print').hide();

        if ((p.options.action == "VIEW" || p.options.action == "EDIT") && p.options.folder == "Dir") {
            var aInfo, iInfo, cTextInfo = $.msg.get("DirTextInfo");
            if (p.options.textInfo) cTextInfo += p.options.textInfo;
            aInfo = cTextInfo.split("|"), iInfo = aInfo.length;
            while (iInfo--) aInfo[iInfo] = aInfo[iInfo].split(".")
            e.find("button[btnid='@info']").menu({
                id: "PRINT_" + p.options.controller, data: aInfo, type: "hover", parent: p, click: function (po, xid, index) {
                    p.options.event.buttonDialogClick(xid);
                }
            });
        }

        e.find(".table-itembar").find('td.toolbar-paste').menu({
            id: "PASTE_" + p.options.controller, data: ["<textarea class='paste-content' placeholder='" + $.msg.get("PasteToolbar") + "'></textarea>"], type: "click", parent: p,
            showing: function (mn, po, elm, e) {
                if (p.options.action == "VIEW") return false;
                var txt = elm.find("textarea").val('');
                if (p.curr("r") == null) return false;
                txt.on('paste', function () {
                    setTimeout(function () {
                        p.appendString2Grid(0, txt.val());
                        po.hide();
                    }, 100);
                })
                setTimeout(function () { txt.focus(); }, 100);
                return true;
            }
        });

        if (p.grid(0))
            e.find(".table-itembar").find('td.toolbar-extend').menu({
                id: "EXTEND_" + p.options.controller, data: p.grid(0).buttons.menuExtend, type: "click", parent: p
                , click: function (po, xid, index) {
                    p.options.event.buttonGridClick(xid);
                    po.hide();
                }
            });

        var k, j, x, y, jt, a, i = gs.length;
        while (i--) {
            k = gs[i].buttons.button.length;
            while (k--) {
                x = gs[i].buttons.button[k].items.button;
                jt = p.jToolbar(i).find(".toolbar-" + gs[i].buttons.button[k].id)
                if (x.length) {
                    //if (x.length == 1) {
                    //    gs[i].buttons.button[k].id = x[0].id;
                    //    jt.attr("title", x[0].text.lan);
                    //}
                    a = [];
                    for (j = 0; j < x.length; j++) {
                        y = x[j];
                        a.push([y.id, y.text.lan]);
                    }
                    jt.menu({
                        data: a, type: "hover", parent: p, gindex: i, click: function (po, xid, index) {
                            p.options.event.buttonGridClick(xid, po.options.gindex);
                        }
                    })
                }
            }
        }
    },
    createEvent: function (xtype) {//0 - Create, Refresh, 1 - Add Row
        var cells, p = this, e = p.element, d = p.options.struct, pa = p.options.parent, isResize = false, gs = (d.grids) ? d.grids.grid : null, tabIndex = ((pa) ? pa.options.endTabIndex : 0) + 1;

        if ($.popupObj) $.popupObj.hide();
        //Su kien cho GRID
        if (["Grid", "Lookup"].indexOf(d.dirViewType) >= 0) {
            cells = e.find('.grid-cell.canfocus, .grid-input-field');

            if (xtype == 0) {
                e.find(".grid-page li a").click(function () {
                    var index = parseInt($(this).html());
                    if ($.isNumeric(index)) {
                        if (p.options.pageIndex != index) {
                            p.options.pageIndex = index;
                            p._refresh();
                        }
                    }
                    else {
                        var iA = $(this).closest("ul").find(".active").index();
                        if ($(this).html() == '→' && iA != $(this).closest("ul").find('li').length - 1) { p.options.pageIndex += 1; p._refresh(); }
                        if ($(this).html() == '←' && iA != 0) { p.options.pageIndex -= 1; p._refresh(); }
                    }
                })

                e.find(".grid-select-multi._select_").change(function () {
                    var v = $(this).fval();
                    e.find(".grid-input-field._select_").each(function () {
                        var o = $(this);
                        if (o.fval() != v) {
                            o.fval(v).change();
                        }
                    })
                });

                var i, s = new StringBuilder(), a = $.msg.get("SortLabel").split(","), sIcon = "";
                var funFieldIsGroup = function (fi) {
                    return (p.options.dirObjectType == "Report" && fi.dataType != "N" && fi.dataType != "I" && fi.viewType == "")
                }
                s.add("<ul class='dropdown-menu context-menu'>");
                for (i = 0; i < a.length; i++) {
                    s.add("<li><a class='sort " + i + "'>");
                    s.add("<div class='icon-menu item-context-" + i + "'></div>");
                    s.add("<div class='icon-menu item-context-check'></div>");
                    s.add(a[i]);
                    s.add("</a></li>")
                }
                s.add("<li role='separator' class='divider'></li>");
                s.add("<li><input class='filter filter-context' type='text'/><span class='icon-lookup btn-lookup btn-context'></li>");
                s.add("<li><a class='filter clear'></a></li>");
                s.add("</ul>")
                e.find(".btn-header-options").each(function () {
                    var o = $(this).parent(), fi = p.field(o.fieldName());
                    var bMore = $(this);
                    if (fi && (fi.allowFilter || fi.allowOrder) && fi.fieldType != "EX" && fi.readOnly && o.hasClass(fi.name)) {
                        o.addClass("col-has-focus");
                        o.popup({
                            sb: s,
                            firstCreated: false,
                            id: "COLSORT_FILTER_" + fi.name,
                            init: function (po) {
                                po.options.sb = s;
                            },
                            showing: function (po, elm, os) {
                                if (isResize) return false;
                                po.options.sb = s;
                                elm.css("z-index", $.formZIndex + 1);
                                if (fi.allowOrder) {
                                    elm.find(".sort").click(function () {
                                        var xorder = $(this).fieldName();
                                        switch (xorder) {
                                            case "0":
                                            case "1":
                                            case "2":
                                                p.options.filterSort.sort = xorder + "#" + (xorder == "2" ? p.grid().order : "[" + fi.name + "]"); //Class[1]: 0,1,2
                                                break;
                                            case "3":
                                                if (funFieldIsGroup(fi)) {
                                                    if (p.options.filterSort.group.indexOf(fi.name) == -1) {
                                                        if (p.options.filterSort.group.length >= 3) return;
                                                        p.options.filterSort.group.push(fi.name)
                                                    }
                                                    else
                                                        $.removeItem(p.options.filterSort.group, fi.name);
                                                    if (p.options.filterSort.group.length > 0) p.options.filterSort.sort = "2#";
                                                }
                                                break;
                                            case "4":
                                                if (p.options.filterSort.group.indexOf('systotal') == -1) {
                                                    if (p.options.filterSort.group.length >= 3) return;
                                                    p.options.filterSort.group.splice(0, 0, 'systotal');
                                                }
                                                else
                                                    $.removeItem(p.options.filterSort.group, 'systotal');
                                                if (p.options.filterSort.group.length > 0) p.options.filterSort.sort = "2#";
                                                break;
                                        }
                                        p._refresh();
                                    });
                                    if (!funFieldIsGroup(fi)) elm.find(".sort.3").hide();
                                    if (p.options.dirObjectType != "Report") elm.find(".sort.4").hide();
                                }
                                else
                                    elm.find(".sort").parent().hide();

                                if (!fi.allowFilter || !fi.allowOrder) elm.find(".divider").hide();
                                if (fi.allowFilter) {
                                    var filter, xval = p.options.filterSort.filter["[" + fi.name + "]"];
                                    if (fi.viewType == "Combobox" || fi.dataType == "B") {
                                        var sb = new StringBuilder();
                                        sb.add("<select class='form-control materail-input filter'>");
                                        var cbo = fi.viewInfo.options.option;
                                        if (fi.dataType == "B") {
                                            var aboollabel = $.msg.get("BoolFilterLabel").split(",")
                                            cbo = [{ val: 1, text: { lan: aboollabel[0] } }, { val: 0, text: { lan: aboollabel[1] } }]
                                        }
                                        sb.add("<option value='' " + ">" + "</option>");
                                        for (k = 0; k < cbo.length; k++) {
                                            sb.add("<option value='" + cbo[k].val + "' ");
                                            sb.add(">" + cbo[k].text.lan + "</option>");
                                        }
                                        sb.add("</select>")
                                        elm.find("input.filter").parent().html(sb.toString());
                                        filter = elm.find("select.filter");
                                    } else {
                                        filter = elm.find("input.filter");
                                    }
                                    if (!xval) xval = "";
                                    else xval = xval.value;
                                    filter.val(xval);
                                    setTimeout(function () { filter.focus(); }, 200);
                                    var funKey13 = function (o) {
                                        if (xval != o.val()) {
                                            var cVal = o.val().trim();
                                            if (cVal == "")
                                                delete p.options.filterSort.filter["[" + fi.name + "]"];
                                            else {
                                                if (fi.dataType == "D" && $.getDate(cVal) == null) return;
                                                //if (fi.dataType == "N" && isNaN(cVal)) return;
                                                if (fi.dataType == "B" && cVal != "1" && cVal != "0") return;
                                                p.options.filterSort.filter["[" + fi.name + "]"] = { name: "[" + fi.name + "]", dataType: fi.dataType, value: cVal };
                                            }
                                            p.options.pageIndex = 1;
                                            p._refresh();
                                        }
                                        po.hide();
                                    }

                                    if (fi.viewType == "Combobox" || fi.dataType == "B")
                                        filter.change(function (event) {
                                            funKey13($(this));
                                        });
                                    else
                                        filter.keydown(function (event) {
                                            if (event.keyCode == 13) {
                                                funKey13($(this));
                                            }
                                        });
                                    elm.find(".btn-context").click(function () { funKey13($(this).parent().find("input")); });
                                    elm.find(".filter.clear").html("<div class='icon-menu item-context-clear-filter'></div>" + $.msg.get("NoFilterLabel").replace("%s", fi.text.lan));
                                    elm.find(".filter.clear").click(function () {
                                        if (xval != "") {
                                            delete p.options.filterSort.filter["[" + fi.name + "]"];
                                            p.options.pageIndex = 1;
                                            p._refresh();
                                        }
                                    });
                                } else
                                    elm.find(".filter").parent().hide();

                                if (p.options.filterSort.sort.indexOf("0#" + "[" + fi.name + "]") == 0 || (p.options.filterSort.group.indexOf(fi.name) != -1 && p.options.filterSort.sort.indexOf("1#" + "[" + fi.name + "]") == -1)) elm.find(".sort.0").find(".item-context-check").show();
                                else if (p.options.filterSort.sort.indexOf("1#" + "[" + fi.name + "]") == 0) elm.find(".sort.1").find(".item-context-check").show();

                                if (p.options.filterSort.group.indexOf(fi.name) != -1) elm.find(".sort.3").find(".item-context-check").show();
                                if (p.options.filterSort.group.indexOf("systotal") != -1) elm.find(".sort.4").find(".item-context-check").show();
                                return true;
                            },
                        })
                    }
                });
            }
        }

        e.find(".table").each(function () {
            var i, fi, tbl = $(this), gindex = parseInt(tbl.attr("grid-index")), g = gs[gindex], fs = g.fields.field;
            if (p.options.pivotText != "") fs = d.grids.grid[gindex].pivotFields;
            for (i = 0; i < fs.length; i++) {
                fi = fs[i];
                if (fi.link != "") {
                    if (fi.linkClick) tbl.find(".grid-cell." + fi.name).addClass("grid-cell-link").unbind("click", fi.linkClick);
                    fi.linkClick = function () {
                        if (p.options.wait) return;
                        var cF, cN, fk, aK, vc, controller, fieldKey, aKey, i, o = $(this), flink = p.field(o.fieldName(), gindex), r = p.get(o, "r"), m = new Memvars(), folder = "Dir";
                        if (flink.link == "1") {
                            controller = p.options.controller; fieldKey = o.fieldName();
                        } else if (flink.link == "V") {
                            controller = "[ma_ct]"; fieldKey = "id";
                        } else if (flink.link.indexOf("#") == 0) {
                            p.options.event.buttonDialogClick(flink.link.substr(1));
                            return;
                        } else if (flink.link.indexOf("~") == 0) {//Link qua tab khac view detail
                            var m = new Memvars().push(p.getMemvars());
                            i = fs.length
                            if (g.data.val(r, flink.name) == null || g.data.val(r, flink.name) == "") return;
                            while (i--) {
                                if (fs[i].operation != "") m.val(fs[i].name, "C", g.data.val(r, fs[i].name), "FIND|" + fs[i].aliasName + "|" + fs[i].operation + "|" + fs[i].join);
                            }
                            var opt = $.extend({}, { controller: flink.link.substr(1), folder: "Grid", dirViewType: "Grid", isProcessing: true, subtitle: p.options.subtitle, memvars: m }, {});
                            for (cF in p.options) {
                                if (cF.indexOf("_") == 0) opt[cF] = p.options[cF];
                            }
                            if (!p.options.event.beforeViewLink(flink.name, opt)) return;
                            $.postNewTab("Default.aspx", { options: JSON.stringify(opt) });
                            return;
                        } else if (flink.link.indexOf("!") == 0) {//Open dialog view detail
                            var m = new Memvars().push(p.getMemvars());
                            i = fs.length
                            if (g.data.val(r, flink.name) == null || g.data.val(r, flink.name) == "") return;
                            while (i--) {
                                if (fs[i].operation != "") {
                                    m.val(fs[i].name, fs[i].dataType, g.data.val(r, fs[i].name), "FIND|" + fs[i].aliasName + "|" + fs[i].operation + "|" + fs[i].join);
                                }
                            }
                            m.val("data_analysis_struct", "C", "");
                            var opt = $.extend({}, { controller: flink.link.substr(1), folder: "Grid", dirViewType: "Lookup", parent: p, lookupOk: false, isProcessing: true, subtitle: p.options.subtitle, memvars: m }, {});
                            for (cF in p.options) {
                                if (cF.indexOf("_") == 0) opt[cF] = p.options[cF];
                            }
                            opt._data_analysis_struct = "";
                            if (!p.options.event.beforeViewLink(flink.name, opt)) return;
                            $.createDir(false, opt);
                            return;
                        }
                        else {
                            aK = flink.link.split("|");
                            controller = aK[0]; fieldKey = aK[1];
                            if (aK.length > 2) folder = aK[2];
                        }
                        aKey = fieldKey.split(",")
                        i = aKey.length;
                        if (controller.indexOf("[") == 0) {
                            vc = g.data.val(r, controller.replace("[", "").replace("]", ""))
                            if (vc == null) return;
                            controller = "@" + vc;
                        }
                        if (g.data.val(r, flink.name) === 0 || g.data.val(r, flink.name) === "") return;
                        while (i--) {
                            cF = aKey[i].trim();
                            if (cF.indexOf(' as ') != -1) {
                                cN = cF.substr(cF.indexOf(' as ') + 4);
                                cF = cF.substr(0, cF.indexOf(' as '));
                            } else
                                cN = cF;
                            fk = p.field(cF, gindex);
                            m.val(cN, fk.dataType, g.data.val(r, cF));
                        }
                        p.wait(true, "VIEWDETAIL");
                        m.add([["action", "C", "VIEW"], ['copy', 'I', 0]]);
                        $.createDir(false, { controller: controller, folder: folder, dirViewType: "Dialog", parent: p, memvars: m, action: "VIEW", readOnly: true, renderCompleted: function () { p.wait(false, "VIEWDETAIL"); } });
                    }
                    tbl.find(".grid-cell." + fi.name).addClass("grid-cell-link").bind("click", fi.linkClick);
                }
                if ((fi.readOnlyCondition != "" || fi.allowBlankCondition != "") && !fi.readOnly) {
                    if (fi.conditionFocus) tbl.find(".grid-input-field." + fi.name).unbind("focus", fi.conditionFocus);
                    fi.conditionFocus = function () {
                        var cExc, o = $(this), fc = p.field(o.fieldName(), gindex), r = p.get(o, "r"), dt = g.data;
                        if (fc.readOnlyCondition != "") {
                            cExc = "o.attr('readonly', (" + fc.readOnlyCondition.replace(/\[!/gi, "p.valForm('").replace(/\[/gi, "dt.val(" + r + ", '").replace(/\]/gi, "')") + "));";
                            eval(cExc);
                        }
                        if (fc.allowBlankCondition != "" && fc.viewType == "Lookup") {
                            cExc = "o.lookup('option', 'allowBlank', (" + fc.allowBlankCondition.replace(/\[!/gi, "p.valForm('").replace(/\[/gi, "dt.val(" + r + ", '").replace(/\]/gi, "')") + "));";
                            eval(cExc);
                        }
                    }
                    tbl.find(".grid-input-field." + fi.name).bind("focus", fi.conditionFocus);
                }
            }
        });
        if (xtype == 0 && d.forms) {
            var j, fi, i = d.forms.form.length;
            while (i--) {
                j = d.forms.form[i].fields.field.length;
                while (j--) {
                    fi = d.forms.form[i].fields.field[j];
                    if (fi.readOnlyCondition != "")
                        p.jObject(fi.name).focus(function () {
                            var cExc, o = $(this), fc = p.field(o.fieldName());
                            cExc = "o.attr('readonly', (" + fc.readOnlyCondition.replace(/\[!/gi, "p.valForm('").replace(/\]/gi, "')") + "));";
                            console.log(cExc);
                            eval(cExc);
                        })
                    if (fi.allowBlankCondition != "")
                        p.jObject(fi.name).focus(function () {
                            var cExc, o = $(this), fc = p.field(o.fieldName());
                            if (fc.viewType == "Lookup") {
                                cExc = "o.lookup('option', 'allowBlank', (" + fc.allowBlankCondition.replace(/\[!/gi, "p.valForm('").replace(/\]/gi, "')") + "));";
                                eval(cExc);
                            }
                        })
                }
            }
        }
        //Su kien cho Dialog
        if (["Dialog", "Lookup", "Question"].indexOf(d.dirViewType) >= 0 || (["Grid", "Lookup"].indexOf(d.dirViewType) >= 0 && !gs[0].readOnly)) {
            if (pa && pa.options.dirViewType == "Grid") pa.options.focusedItem = pa.curr("o");

            cells = e.find('.input-field, .grid-cell.canfocus, .grid-input-field, button.btn');
            if ($(window).width() > 767) e.find('.modal-dialog').draggable({ handle: ".modal-header" });

            e.find(".input-field.N, .input-field.I").each(function () {
                var o = $(this);
                o.number({ digit: parseInt(p.field(o.fieldName()).format) });
            });
            e.find(".input-field.D").each(function () {
                var o = $(this);
                o.date({ "calendar": $.calendar });
            });
            e.find(".input-field.C.Time").each(function () {
                var o = $(this);
                o.times({ longTimes: false, checkHours: p.field(o.fieldName()).viewInfo.checkHours });
            });
            e.find(".input-field.C.LongTime").each(function () {
                var o = $(this);
                o.times({ longTimes: true, checkHours: p.field(o.fieldName()).viewInfo.checkHours });
            });
            e.find(".input-field.Lookup").each(function () {
                var o = $(this), fi = p.field(o.fieldName()), ext = (p.options.folder == "Dir" && fi.viewInfo.lookupExactValue != "0");
                o.lookup({ field: fi, parent: p, exact: ext });
            });

            //window.time3 = new Date().getTime();
            e.find(".table").each(function () {//Lookup cho grid
                var i, fi, tbl = $(this), gindex = parseInt(tbl.attr("grid-index")), g = gs[gindex], fs = g.fields.field;
                for (i = 0; i < fs.length; i++) {
                    fi = fs[i];
                    var ext = (p.options.folder == "Dir" && fi.viewInfo.lookupExactValue != "0");
                    if (fi.viewType == "Lookup") {
                        tbl.find(".grid-input-field." + fi.name + ".Lookup").each(function () {
                            $(this).lookup({ field: fi, parent: p, exact: ext, grid: true });
                        });
                    }
                    if (fi.viewType == "Time") {
                        tbl.find(".grid-input-field." + fi.name + ".Time").each(function () {
                            $(this).times({ longTimes: false, checkHours: fi.viewInfo.checkHours });
                        });
                    }
                    if (fi.viewType == "LongTime") {
                        tbl.find(".grid-input-field." + fi.name + ".LongTime").each(function () {
                            $(this).times({ longTimes: true, checkHours: fi.viewInfo.checkHours });
                        });
                    }
                    else if (fi.dataType == "N" || fi.dataType == "I") {
                        tbl.find(".grid-input-field." + fi.name + ".N,.grid-input-field." + fi.name + ".I").each(function () {
                            $(this).number({ digit: parseInt(fi.format) });
                        });
                    }
                    else if (fi.dataType == "D") {
                        tbl.find(".grid-input-field." + fi.name + ".D").each(function () {
                            $(this).date({ "calendar": $.calendar });
                        });
                    }
                }
            });
            //console.log('lookup: ' + (new Date().getTime() - window.time3));
            e.find(".txt-search-lookup").keydown(function (event) {
                if (event.keyCode == 13) {
                    p.options.memvars.val("val", "C", $(this).val());
                    p._refresh();
                }
            })
            e.find(".btn-search-lookup").click(function () {
                p.options.memvars.val("val", "C", $(this).parent().find("input").val());
                p._refresh();
            })

            if (xtype == 0) {
                e.find(".command-field").each(function () {
                    var o = $(this), cf = o.fieldName(), fi = p.field(cf), a = [], i, vinfo = fi.viewInfo.options.option;
                    for (i = 0; i < vinfo.length; i++) {
                        a.push([vinfo[i].val, vinfo[i].text.lan]);
                    }
                    o.click(function () {
                        p.options.event.commandActionClick0(cf, cf);
                        p.options.event.commandActionClick(cf, cf);
                    })
                    if (a.length)
                        o.menu({
                            id: "PRINT_" + p.options.controller, data: a, type: "click", parent: p, click: function (po, xid, index) {
                                p.options.event.commandActionClick0(cf + "." + xid, xid, po);
                                p.options.event.commandActionClick(cf + "." + xid, xid, po);
                                po.hide();
                            }
                        });
                });

                e.find(".input-field.List").each(function () {
                    var o = $(this), fi = p.field(o.fieldName()), vinfo = fi.viewInfo;
                    o.list({ selectType: vinfo.listType });
                });

                e.find('.modal-header').dblclick(function () {
                    p.options.event.buttonDialogClick("zoom");
                });

                var funAddLinkDown = function (pd, id) {
                    pd.filename.addClass("link-download").attr("id", id);
                    if (pd.isImageFile) {
                        pd.del.html("<span class='btn-del-upload' style='color: red;'>&#10006;</span>");
                        pd.statusbar.append("<img class='image-upload-preview' src='" + $.getDownloadLink(id, 1) + "' title='" + pd.filename.html() + "'>");

                        pd.statusbar.find(".image-upload-preview").click(function () {
                            $.alert("<img class='image-upload-view' src='" + $.getDownloadLink(id, 0) + "'>", pd.filename.html())
                        });
                    }
                    else {
                        pd.del.html("<span class='btn-del-upload' style='color: red;'>&#10006;</span>");
                        pd.filename.click(function () {
                            window.open($.getDownloadLink(id, 0), '_newtab');
                        });
                    }

                };

                e.find(".upload-field.File,.upload-field.Image").each(function () {
                    var o = $(this), fi = p.field(o.fieldName()), info = fi.viewInfo, wkey = "FILE-" + fi.name;

                    fi._instance = o.uploadFile({
                        url: "../AppHandler/FileHandler.ashx?param=" + $.encodeb64UTF8("Upload[@#]0"),
                        multiple: true,
                        uploadStr: "<img src='../Images/ic_file_upload.png' class='btn-file-upload'/>",
                        abortStr: "<span class='btn-abort-upload' style='color: black;'>&#10006;</span>",
                        errorTitle: $.msg.get("FileTitleError"),
                        sizeErrorStr: $.msg.get("FileUploadOutSize"),
                        extErrorStr: $.msg.get("ErrorExtensionFileUpload"),
                        maxFileCountErrorStr: $.msg.get("FileUploadMax"),
                        showFileCounter: true,
                        fileCounterStyle: ". ",
                        showCancel: false,
                        showDelete: true,
                        showDownload: false,
                        showStatusAfterError: false,
                        autoSubmit: true,
                        dragDrop: false,
                        showCancel: true,
                        isImageFile: (fi.viewType == "Image"),
                        //statusBarWidth: obj.closest("td").width(),
                        allowedTypes: "*",//info.fileExtension,
                        maxFileCount: info.maxFileCount,
                        maxFileSize: info.maxFileSize * 1024,
                        formData: { group: info.fileGroup, controller: p.options.controller, folder: p.options.folder, field: fi.name },
                        dynamicFormData: function () {
                            var m = new Memvars(), cF, cc = '';
                            var aa = info.fileParamFields.split(",");
                            for (var ii = 0; ii < aa.length; ii++) {
                                cF = aa[ii].trim();
                                if (cF != "") m.val([cF, "C", p.valForm(cF)]);
                            }
                            return { json: m.val(), code: p.valForm(info.fileFieldId0), status: 0 };
                        },
                        onLoad: function (oo) {
                            //setChanged(false);
                            setTimeout(function () {
                                if (!p.options || !p.options.event.loadUploadFile(oo, funAddLinkDown)) return;
                                var files = p.options._files;
                                if (files) {
                                    var currfiles = [];
                                    for (var i = 0; i < files.length; i++) {
                                        if (!files[i].field || files[i].field == oo.fieldName()) {
                                            funAddLinkDown(oo.createProgress(files[i].name, "", files[i].size), files[i].id);
                                            currfiles.push(files[i].id);
                                        }
                                    }
                                    oo.attr("old-val", currfiles.join(","));
                                }
                                if (p.options.action == "VIEW") e.find(".ajax-file-upload-red").css("display", "none");
                            }, 200);
                        },
                        onSelect: function (files) {
                            if (p.options.action == "VIEW") return false;
                            p.wait(true, wkey);
                        },
                        deleteCallback: function (data, pd) {
                            //setChanged(true);
                        },
                        onSubmit: function (files) {
                        },
                        onSuccess: function (files, data, xhr, pd, obj) {
                            p.wait(false, wkey);
                            if (data == "-1" || data == "-2" || data == "-3" || data == "-4") {
                                obj.selectedFiles--;
                                $.error($.msg.get("ErrorUpload"), this.errorTitle);
                                pd.statusbar.hide();
                                pd.statusbar.remove();
                            }
                            else {
                                funAddLinkDown(pd, data);
                                p.options.dataChanged = true;
                            }
                        },
                        afterUploadAll: function (obj) {
                        },
                        onError: function (files, status, errMsg, pd) {
                            p.wait(false, wkey);
                        },
                        fileName: "file-" + fi.name
                    });
                });

                if (p.options.action == "VIEW") e.find("input[type='file']").attr("disabled", "true");
                e.find("ul.nav.nav-tabs").find("li a").click(function () {
                    var o = this;
                    setTimeout(function () {
                        p.find("#" + o.classList[1]).find("input[tabstop!='0'],select[tabstop!='0']").eq(0).focus();
                        p.options.event.tabChanged($(o).parent().index(), o.classList[1])
                    }, 50);
                })

                p.buttonDialogClick(p);

                if (p.options.focusWhenCreated) setTimeout(function () { if (p.options && p.options.action == "VIEW") p.find("button.btn-default").focus(); else $.nextFocus(cells, -1) }, 100);
            }
        } //else
        if (p.options.applyShortWhenCreated && p.options.controller != "confirmpassword")
            $.winKeyFunction = function (key, alt, ctrl) { p.options.event.shortCutKeyEvent(key, alt, ctrl); }

        if (xtype == 0) {//Resize grid column
            var oColResize, iStartX, iStartWidth;
            var _funMoveResize = function (e) {
                if (isResize) {
                    var w = iStartWidth + (e.pageX - iStartX)
                    if (w > 30) oColResize.width(w);
                }
            }, _funUpResize = function () {
                if (isResize) isResize = false;
                $("body").removeClass("noselect");
                $(document).unbind("mousemove", _funMoveResize);
                $(document).unbind("mouseup", _funUpResize);
            };

            p.find(".col-header-resize").mousedown(function (e) {
                var idx = $(this).parent().index(), spn = $(this).parent().attr("colspan");
                if (spn && spn > 1) idx += parseInt(spn) - 1;
                oColResize = $(this).closest('table').find("colgroup col").eq(idx); //$(this).parent();

                if ($.popupObj) $.popupObj.hide();
                isResize = true;
                iStartX = e.pageX;
                iStartWidth = parseInt(oColResize[0].style.width.replace("px", ""));//oColResize.width();
                $("body").addClass("noselect");

                $(document).bind("mousemove", _funMoveResize);
                $(document).bind("mouseup", _funUpResize);
            });
        }

        //Focus in GRID, Form
        cells.each(function () {
            var o = $(this);
            if (!o.attr("tabindex")) {
                if (o.isGridCell() || o.isInputCell()) {
                    o.bind("focus", function () { p.options.event.cellFocus(o); });
                    if (o.isInputCell() && o.hasClass("B")) {
                        o.closest(".grid-cell").bind("click", function (event) {
                            if ($(event.srcElement || event.target).hasClass("grid-cell")) o.focus();
                        });
                    }
                    if (o.isInputCell() && !o.isCustomizeControl(o)) { //Lookup, D, N da update trong Widget
                        o.bind("change", function () {
                            var v = p.appendToSource(o);
                            if (o.fieldName() == "_select_") {//select multi
                                p.selectedItems(o, v);
                            }
                        });
                    }
                } else {
                    if (!o.isCustomizeControl(o)) {
                        o.bind("change", function () {
                            p.appendToSource(o);
                        });
                    }
                }
            }
            //if (o.attr("tabstop") != "0")
            o.attr('tabindex', tabIndex++);
            if (pa && p.options.folder == "Filter") {
                var x = pa.options["_" + o.fieldName()];
                if (x) p.valForm(o, x, true);
            }
        });

        if (p.options.funKeyDown) cells.unbind("keydown", p.options.funKeyDown);
        p.options.funKeyDown = function (event) {
            var o = $(this), key = event.charCode ? event.charCode : event.keyCode ? event.keyCode : 0, always = false;

            if ([38, 40].indexOf(key) >= 0 && o.isCell()) {//Down, Up
                var g = p.grid(o), gindex = g.gridIndex, r = g._currRow, c = g._currCol, fi = g.fields.field[c];
                if (fi.viewType != "Lookup" || !o.popup("instance").isShow()) {
                    if (key == 40 && r < g.data.count() - 1) { r++; $.fieldFocus(p.jCell(r, c, gindex)) }//Down
                    if (key == 38 && r > 0) { r--; $.fieldFocus(p.jCell(r, c, gindex)) }//Up
                    $.stopEvent(event);
                }
            }
            if (key == 40 && o.hasClass("AutoIncrease")) {
                var fi = p.field(o.fieldName());
                p.suggestCode(o, fi);
            }
            if ([37, 39].indexOf(key) >= 0 && (o.isCell() || o.is("button"))) { //Left, right
                var isEnd = true, isStart = true;
                if (o.isInputCell() && !o.hasClass("B") && !o.hasClass("Combobox")) {
                    var oselect = o.fselect();
                    isEnd = oselect.isEnd;
                    isStart = oselect.isStart;
                }

                if (key == 39 && isEnd) { key = 13; $.stopEvent(event); always = o.is("button"); }
                if (key == 37 && isStart) { //Left
                    var idx = cells.index(this);
                    $.nextFocus(cells, idx, -1, key);
                    $.stopEvent(event);
                    return;
                };
            }
            if (key == 32 && o.hasClass("Combobox")) {
                o.size = 5;
                $.stopEvent(event);
            }
            if (key == 9) {//Tab
                var fi = p.field(o.fieldName()), idx = cells.index(this);
                $.nextFocus(cells, idx, (event.shiftKey) ? -1 : 1, key);
                $.stopEvent(event);
            }
            if (key == 13 && (always || !o.is("button"))) { //13: Enter
                var fi = p.field(o.fieldName()), idx = cells.index(this);
                if (o.isInputCell()) {
                    var g = p.grid(o), c = g._currCol;
                    fi = g.fields.field[c];
                    if (fi && fi.viewType == "Lookup") {
                        if (!o.lookup("instance").enterKeyDown(cells, fi, idx)) return;
                    }
                }
                else if (!o.isCell() && fi && fi.viewType == "Lookup") {
                    if (!o.lookup("instance").enterKeyDown(cells, fi, idx, event.ctrlKey)) return; //Xu khi chuyen focus hay khong trong lookup
                }
                if (!o.is("textarea") && $.nextFocus(cells, idx, 1, key, event.ctrlKey)) {
                    if (o.hasClass("AutoIncrease") && o.fval() == "" && fi.fieldType == "PK" && !fi.allowBlank) p.suggestCode(o, fi);
                    $.stopEvent(event);
                }
            }
        };
        cells.bind("keydown", p.options.funKeyDown);
        if (xtype == 0 && p.options.folder == "Dir") $.confirmUnload(true);

        p.options.endTabIndex = tabIndex;
        p.options.copy = false;
    },
    buttonDialogClick: function (p) {
        this.find("button").click(function () {
            p.options.event.buttonDialogClick($(this).attr("btnId"));
        });
    },
    uploadFiles: function () {
        var p = this, e = p.element, o = e.find(".upload-field.File,.upload-field.Image");
        if (o.length == 0) return false;
        var existsFile = false;
        o.each(function () {
            var fi = p.field(o.fieldName())
            if (fi._instance.existingFileNames.length > 0) {
                fi._instance.startUpload();
                existsFile = true;
            }
        });
        return existsFile;
    },
    initFieldType: function () {
        var p = this, e = p.element;

    },
    getMemvars: function (p) {
        if (!p) p = this;
        var m = this.options.memvars;
        if (!m) { m = new Memvars(); this.options.memvars = m; }
        else if (m.obj && !m.val) { var m2 = new Memvars(); m2.obj = m.obj; m = m2; }
        if (p.options.pageIndex) m.val('pageIndex', 'N', p.options.pageIndex);
        if (p.options.dirViewType != "Dialog")
            m.val("filterSort", "", p.options.filterSort, "FILTER");
        return m;
    },
    getGridKeyMemvars: function (action) {
        var m = new Memvars(), p = this, e = p.element
        if (p.options.dirViewType == "Grid" || p.options.dirViewType == "Lookup") {
            var fi, i, f = p.field(), dt = p.options.dataSource, r = p.curr("r");//, d = p.options.struct, g = d.grids.grid[0];
            for (i = 0; i < f.length; i++) {
                fi = f[i];
                if (fi.fieldType == 'PK')
                    if (r != null)
                        m.val(fi.name, fi.dataType, dt.val(r, fi.name));
                    else
                        m.val(fi.name, fi.dataType, null);
            }
        }
        if (action) m.val("action", "C", action);
        return m;
    },
    val: function (a1, a2, a3, a4, a5) {
        var p = this, dt = p.options.dataSource;
        if (a1 == undefined) return dt;
        if (["Grid", "Lookup"].indexOf(p.options.dirViewType) != -1) {//DataTable.val(a1, a2)
            return dt.val(a1, a2, a3, a4, a5);
        }
        if (p.options.dirViewType == "Dialog") {//DataTable.val(a1, a2)
            if (!dt) return null;
            if (dt.count() > 0)
                return dt.val(0, a1, a2, a3, a4);
            else
                return null;
        }
    },
    valStrEx: function (cf) {
        if (this.options.dirViewType == "Dialog") {
            var dtEx = this.options.dataExtend;
            if (dtEx && dtEx.count() > 0 && dtEx.val(0, cf) != null) return dtEx.val(0, cf);
        }
        return null;
    },
    valStr: function (a1, a2, a3) {
        var p = this, dt = p.options.dataSource, v = null, t = null;
        if (p.options.dirViewType == "Grid") {
            t = a3;
            v = dt.val(a1, a2, undefined, true, a3);
        }
        if (p.options.dirViewType == "Dialog") {
            t = a2;
            if (dt.count() > 0)
                v = dt.val(0, a1, undefined, true, a2);
        }
        if (t == "D") return $.date(v);
        else if (t == "N" || t == "I") return $.number(v, parseInt(a3), true);
        else if (v == null) {
            if (t == "N" || t == "B" || t == "I") return 0;
            else return "";
        }
        else return v;
    },
    valForm: function (c, v, checkValid) {
        if ($.type(v) == "array") {
            for (var i = 0; i < c.length; i++)
                this.jObject(c[i]).fval(v[i]);
        } else {
            var p = this, o = ($.type(c) == "string" ? p.jObject(c) : c);
            return o.fval(v, checkValid);
        }
    },
    valLabel: function (c, v) {
        return this.jLabel(c).html(v);
    },
    valGrid: function (r, c, gindex, v, checkValid) {
        if (v === undefined) return this.grid(gindex).data.val(r, c); //this.jCell(r, c, gindex).gval()
        else {
            var dt = this.grid(gindex).data;
            if ($.type(c) == "number" || dt.index(c) != -1) {
                var fi = this.field(c, gindex);
                dt.val(r, c, v);
                return this.jCell(r, c, gindex).gval(v, fi.format, checkValid, fi.lastSymbol, fi.firstSymbol);
            }
        }
    },
    appendToSource: function (o) {
        if (o) {
            if (o.isCell()) {
                var g = this.grid(o), r = this.get(o, "r"), c = this.get(o, "cF"), v = o.gval();
                if(g){
                //var fi = this.field(c, g.gridIndex); if (fi.disabled || fi.readOnly || fi.hidden) { location.reload(false); return; }
                g.data.val(r, c, v);
                g.dataChanged = true;
                this.options.dataChanged = true;
                //console.log(o.fieldName() + "[" + r + "-" + c + "]:" + " - " + v);
                if (g.FomulaApplied) this.calcExpression(g, g.FomulaApplied[o.fieldName()], r, c);
                this.options.event.gridCellValueChange(o, g, r, o.fieldName(), v);
                return [g, r, c, v];
                }
            } else {//Form
                var v = o.fval(), fi = this.field(o.fieldName());
                if (fi.disabled || fi.readOnly || fi.invisible || fi.hidden || fi.notAuth) { location.reload(false); return; }
                //console.log(o.fieldName() + " - " + v);
                this.options.dataChanged = true;
                if (this.options.FomulaApplied) this.calcExpression(this.options, this.options.FomulaApplied[o.fieldName()]);
                this.options.event.formFieldValueChange0(o, o.fieldName(), v);
                this.options.event.formFieldValueChange(o, o.fieldName(), v);
                return v;
            }
        }
    },
    applyExpression: function (exp, g, rec) {
        var i, j, cF, col, cEx, obj = new Object;
        g.Expression = exp;
        g.DetailExpression = [];
        for (cF in exp) {
            cEx = exp[cF][1];
            if (exp[cF][0].indexOf("@") == 0 || exp[cF][0].indexOf("#") == 0) g.DetailExpression.push(cF);
            i = 0;
            while (true) {
                i = cEx.indexOf("[", i);
                if (i != -1) {
                    j = cEx.indexOf("]", i);
                    col = cEx.substr(i + 1, j - i - 1);
                    i = j + 1
                    if (!obj[col]) obj[col] = [cF];
                    else obj[col].push(cF);
                } else break;
            }
        }
        if (rec) {
            var fun = function (objCF, foCF) {
                if (obj[foCF]) {
                    var k, n = obj[foCF].length;
                    for (k = 0; k < n; k++) {
                        var xF = obj[foCF][k];
                        if (obj[objCF].indexOf(xF) == -1) {
                            obj[objCF].push(xF);
                            //fun(objCF, xF);
                        }
                    }
                    for (k = 0; k < n; k++) {
                        var xF = obj[foCF][k];
                        if (obj[objCF].indexOf(xF) == -1) {
                            //obj[objCF].push(xF);
                            fun(objCF, xF);
                        }
                    }
                }
            }
            for (cF in obj) {
                for (i = 0; i < obj[cF].length; i++) {
                    fun(cF, obj[cF][i]);//Tim cac valid tu cac cot thay doi
                }
            }
        }
        g.FomulaApplied = obj;
    },
    applyExpressionForm: function (exp, rec) {
        var i, j, cF, col, cEx, obj = new Object, p = this;
        p.options.Expression = exp;
        p.options.DetailExpression = [];
        for (cF in exp) {
            cEx = exp[cF][1];
            if (exp[cF][0].indexOf("@") == 0 || exp[cF][0].indexOf("#") == 0) p.options.DetailExpression.push(cF);
            i = 0;
            while (true) {
                i = cEx.indexOf("[", i);
                if (i != -1) {
                    j = cEx.indexOf("]", i);
                    col = cEx.substr(i + 1, j - i - 1);
                    i = j + 1
                    if (!obj[col]) obj[col] = [cF];
                    else obj[col].push(cF);
                } else break;
            }
        }
        if (rec) {
            var fun = function (objCF, foCF) {
                if (obj[foCF]) {
                    var k, n = obj[foCF].length;
                    for (k = 0; k < n; k++) {
                        var xF = obj[foCF][k];
                        if (obj[objCF].indexOf(xF) == -1) {
                            obj[objCF].push(xF);
                            //fun(objCF, xF);
                        }
                    }
                    for (k = 0; k < n; k++) {
                        var xF = obj[foCF][k];
                        if (obj[objCF].indexOf(xF) == -1) {
                            //obj[objCF].push(xF);
                            fun(objCF, xF);
                        }
                    }
                }
            }
            for (cF in obj) {
                for (i = 0; i < obj[cF].length; i++) {
                    fun(cF, obj[cF][i]);//Tim cac valid tu cac cot thay doi
                }
            }
        }
        p.options.FomulaApplied = obj;
    },
    calcValidExpression: function (g, gfields, r, c) {
        if ($.type(g) == "number") g = this.grid(g);
        if (typeof (gfields) == 'string') this.calcExpression(g, g.FomulaApplied[gfields], r, c);
        else {
            for (var i = 0; i < gfields.length; i++) {
                this.calcExpression(g, g.FomulaApplied[gfields[i]], r, c)
            }
        }
    },
    calcExpressionAll: function (g, cF, r, c) {
        if ($.type(g) == "number") g = this.grid(g);
        var i, p = this, a = g.FomulaApplied[cF], b = [], c = [];
        for (i = 0; i < a.length; i++) {
            if (g.Expression[a[i]][0].indexOf("*") == 0) b.push(a[i]);
            else c.push(a[i]);
			
			console.log(g.Expression[a[i]][0].indexOf("*"));
        }
        if (b.length) {
            i = g.data.count();
            while (i--) {
                p.calcExpression(g, b, i);
            }
        }
        p.calcExpression(g, c);
    },
    calcExpression: function (g, gfields, r, c) {
        if ($.type(g) == "number") g = this.grid(g);
        var p = this, i, dt = g.data, gindex = g.gridIndex;
        if (!gfields) return;
        if (r === undefined) r = g._currRow;
        if (c === undefined) c = g._currCol;
        //console.log(gfields);
        var fun = function (cF) {
            var cCol, cColExs, cEx, cKey, fi, a = g.Expression[cF];
            if (!a) { console.log("chua khai bao cong thuc: " + cF); return; }
            cCol = a[0]; cColExs = a[1]; cKey = (a.length > 1) ? a[2] : "";
            if (r != null && cCol.indexOf("*") == 0) {//Cong thuc chi o tren GRID
                cCol = cCol.substr(1); fi = p.field(cCol, gindex)
                if (fi == null) { console.log("Khong ton tai field: " + cCol); return; }
                cColExs = cColExs.replace(/\[!/gi, "p.valForm('").replace(/\[/gi, "dt.val(r, '").replace(/\]/gi, "')");
                //console.log(cColExs);
                //eval("p.valGrid(r, '" + cCol + "', gindex, " + cColExs + ")");
                eval("dt.val(r, '" + cCol + "', $.round(" + cColExs + ", " + fi.format + "))");
                p.jCell(r, cCol, gindex).gval(dt.val(r, cCol), fi.format, undefined, fi.lastSymbol, fi.firstSymbol);
                //p.refreshGridRow(r, gindex);
            }
            if (cCol.indexOf("@") == 0) {//Cong thuc grid SUM vao FORM
                cCol = cCol.substr(1); fi = p.field(cCol);
                if (fi == null) { console.log("Khong ton tai field: " + cCol); return; }
                var a = dt.query([cColExs], ["SUM"], [], cKey);
                //p.jObject(cCol).fval($.round(a[0][0], parseInt(fi.format)), fi.format);
                p.valForm(cCol, (a.length && a[0][0] != null) ? a[0][0] : 0)
            }
            if (cCol.indexOf("#") == 0) {//Cong thuc chi o tren FORM
                cCol = cCol.substr(1); fi = p.field(cCol);
                if (fi == null) { console.log("Khong ton tai field: " + cCol); return; }
                cColExs = cColExs.replace(/\[/gi, "p.valForm('").replace(/\]/gi, "')");
                //console.log("p.valForm('" + cCol + "', $.round(" + cColExs + ", " + fi.format + "))");
                eval("p.valForm('" + cCol + "', " + cColExs + ")");
            }
        }

        if (typeof (gfields) == 'string') fun(gfields);
        else {
            for (i = 0; i < gfields.length; i++) {
                fun(gfields[i]);
            }
        }

    },
    clearSelectedItems: function () {
        if (this.options) this.options.selectedItems = null;
    },
    selectedItems: function (o, a) {
        var p = this, isNew = false, type = p.options.selectMultiple, sdt = p.options.selectedItems, ref = p.options.selectedReference || [];
        if (!sdt) {
            if (type == "List") {
                sdt = [];
                ref = [];
            }
            else {
                sdt = new DataTable();
                sdt.Keys = [];
            }
            p.options.selectedItems = sdt;
            p.options.selectedReference = ref;
            isNew = true;
        }
        p.options.selectedReference = ref;
        if (o == undefined) return sdt;

        var i, fi, xval = [], xref = [], g = a[0], dt = g.data, r = a[1], v = a[3], f = g.fields.field;
        for (i = 0; i < f.length; i++) {
            fi = f[i];
            if (fi.fieldType == "PK") {
                if (isNew && type == "Table") sdt.addColumn(fi.dataType, fi.name, $.defaultIfNull(fi.dataType));
                xval.push(dt.val(r, fi.name));
            }
            if (fi.fieldType == "RF") xref.push(dt.val(r, fi.name));
        }
        if (type == "List") {
            if (v == 1) {
                sdt.push(xval.join("#"));
                if (xref.length > 0) ref.push(xref.join("#"))
            }
            else {
                i = sdt.indexOf(xval.join("#"));
                sdt.splice(i, 1);
                if (ref.length > 0) ref.splice(i, 1);
            }
            //console.log(ref.join("#"));
            //console.log(sdt.join("#"));
        } else {
            if (v == 1) {
                sdt.addRow(xval);
                sdt.Keys.push(xval.join("#"));
            }
            else {
                i = sdt.Keys.indexOf(xval.join("#"));
                sdt.removeRow(i);
                sdt.Keys.splice(i, 1);
            }
            //console.log(sdt.obj.Rows.join("#"));
            //console.log(sdt);
        }
        p.options.event.selectItemChanged(sdt);
        return sdt;
    },
    refreshGridRow: function (r, gindex) {
        if (!gindex) gindex = 0;
        var o, cf, p = this, e = p.element, d = p.options.struct, tb = e.find("tbody.data"), g = d.grids.grid[gindex], dt = g.data, f = g.fields.field, oRow = p.jRow(r);
        oRow.find(".grid-cell.canfocus, .grid-input-field").each(function () { //, .grid-input-field
            o = $(this); cf = o.fieldName(), v = dt.val(r, cf), fi = p.field(cf, gindex);
            if (v == null) v = $.defaultIfNull(o.dataType());
            o.gval(v, fi.format, undefined, fi.lastSymbol, fi.firstSymbol);
        });
    },
    jCell: function (r, c, gindex) {
        if (r == null || c == null) return null;
        if (!gindex) gindex = 0;
        var o, p = this, e = p.jGrid(gindex), tb = e.find("tbody.data");
        if ($.type(c) === 'string') o = p.jRow(r,gindex).find("." + c);
        else o = $(tb[0].childNodes[r].childNodes[c + 1]);
        if (!o.hasClass("canfocus")) return o.find("input, select");
        return o;
    },
    jRow: function (r, gindex) {
        if (!gindex) gindex = 0;
        var p = this, e = p.jGrid(gindex), tb = e.find("tbody.data");
        return $(tb[0].childNodes[r]);
    },
    jObject: function (c) {
        if (c == null) return this.element.find(".input-field");
        else if (c == "") return $();
        else return this.element.find(".input-field." + c + ",.command-field." + c);
    },
    jFile: function (c) {
        if (c == "") return $();
        return this.element.find(".upload-field." + c + ",.image-field." + c);
    },
    jLabel: function (c) {
        if (c == "") return $();
        return this.element.find(".control-label." + c);
    },
    jGrid: function (i) {//index, id
        var p = this, e = p.element, d = p.options.struct
        if ($.type(i) == 'undefined') i = 0;
        else if ($.type(i) == "string") return e.find("#TABLE_" + d.id + "_" + i)
        return e.find("#TABLE_" + d.id + "_" + d.grids.grid[i].id)
    },
    jToolbar: function (i) {
        return this.find(".table-itembar[grid-index=" + i + "]");
    },
    find: function (v) {
        return this.element.find(v);
    },
    wait: function (v, key, gui) {
        var p = this, e = p.element, w;
        if (!p.options) return;
        //if (p.options.waitKey.length == 0) window.time0 = new Date().getTime();
        if (key != null) {
            if (v) {
                p.options.wait = v;
                if (p.options.waitKey.indexOf(key) == -1) p.options.waitKey.push(key);
            }
            else {
                var k = p.options.waitKey.indexOf(key);
                if (k != -1) {
                    p.options.waitKey.splice(k, 1);
                    if (p.options.waitKey.length == 0) p.options.wait = v;
                }
            }
        } else
            if (v) p.options.wait = v;
            else if (p.options.waitKey.length == 0) p.options.wait = v;

        if (p.options.buttonWaitId == key) p.options.buttonWaitId = p.options.buttonWaitGrid = null;
        //console.log(p.options.controller + ":" + p.options.wait + "-[" + p.options.waitKey.join(",") + "] -- (" + v + "|" + key + ")"); //console.log(new Date().getTime() - window.time0);
        if (!p.options.wait && p.options && p.options.buttonWaitId) {
            p.options.event.buttonClick(p.options.buttonWaitId, p.options.buttonWaitGrid);
            if (p.options) p.options.buttonWaitId = p.options.buttonWaitGrid = null;
        }
        if (p.options && !p.options.wait) gui = true;
        if (p.options && (gui == undefined || gui)) {
            if (p.options.isRendered || p.options.fromView) {
                w = e.find("#WAIT_" + p.options.controller);
                if (p.options.wait) w.css("display", ""); else w.css("display", "none");
            } else
                if (p.options.root && p.options.wait) e.html("<img class='grid-icon-loading' style='margin-left: 7px' src='../Images/ic_loading.gif'>")
        }
    },
    waitRemove: function (v) {
        var p = this, k = p.options.waitKey.length;
        while (k--) {
            if (p.options.waitKey[k].indexOf(v) == 0) {
                p.wait(false, p.options.waitKey[k]);
            }
        }
    },
    waitFalse: function (v) {
        var p = this;
        p.options.wait = false;
        p.options.waitKey = [];
        p.wait(false);
    },
    setTabHidden: function (c, v) {
        var p = this, d = p.options.struct, id = d.id, tab;
        if (typeof (c) == "string") {
            id += "_" + c;
            tab = p.find(".li-tab." + id);
            tab.parent().css("display", (v) ? "none" : "");
        }
    },
    tabActive: function (o) {
        var p = this, d = p.options.struct, id = d.id, oindex = p.find(".li-tab.active").parent().index(), index;
        if (o === undefined) {
            var ac = "";
            p.find(".li-tab").each(function () {
                if ($(this).parent().hasClass("active")) ac = this.classList[1].split("_")[1];
            })
            return ac;
        }
        if (typeof (o) == "string") {
            var a = o.split("-");
            id += "_" + a[0];
            p.find(".li-tab").parent().removeClass("active");
            p.find(".tab-pane").removeClass("in").removeClass("active");
            p.find("#" + id).addClass("in active");
            p.find(".li-tab." + id).parent().addClass("active");
            index = p.find(".li-tab." + id).parent().index();
            if (a.length > 1) p.find(".tab-pane").find(".input-field." + a[1] + "[tabstop!='0']:eq(0), .grid-cell.canfocus." + a[1] + "[tabstop!='0']:eq(0), .grid-input-field." + a[1] + "[tabstop!='0']:eq(0)")[0].focus();
            else p.find(".tab-pane").find("input[tabstop!='0'],select[tabstop!='0']").eq(0).focus();
            if (index != oindex) p.options.event.tabChanged(index, id);
        } else if (typeof (o) == "object") {
            var x = o.closest(".tab-pane");
            if (x.length) {
                p.find(".li-tab").parent().removeClass("active");
                p.find(".tab-pane").removeClass("in").removeClass("active");
                x.addClass("in active");
                p.find(".li-tab." + x.attr("id")).parent().addClass("active");
                index = p.find(".li-tab." + id).parent().index();
                if (index != oindex) p.options.event.tabChanged(index, x.attr("id"));
            }
        }
    },
    setTitle: function (v, html) {
        var p = this, d = p.options.struct, v2 = d.title.lan;
        if (p.options.action == "NEW") v2 = d.title0.lan;
        if (p.options.action == "EDIT") v2 = d.title1.lan;
        if (!v) v = v2;
        if ($.type(v) == 'array') {
            for (var i = 0; i < v.length; i += 2)
                v2 = v2.replace(v[i], v[i + 1]);
            v = p.options.title = v2;
        } else
            p.options.title = v;
        if (p.options.root) document.title = p.options.title;
        if (html == undefined || html) p.find(".text-title-" + (p.options.dirViewType == "Grid" ? "grid" : "form")).html(v);
    },
    setSubtitle: function (v, html) {
        var p = this, d = p.options.struct, v2 = (d.subtitle) ? d.subtitle.lan : "";
        if (!v) v = v2;
        if ($.type(v) == 'array') {
            for (var i = 0; i < v.length; i += 2)
                v2 = v2.replace(v[i], v[i + 1]);
            v = p.options.subtitle = v2;
        } else
            p.options.subtitle = v;
        if (html == undefined || html) p.find(".sub-title-grid").html(v);
    },
    setInvisible: function (c, v) {
        var p = this;
        if ($.type(c) == 'array') {
            var i = c.length
            while (i--) p.setInvisible(c[i], v);
        } else {
            if (p.field(c) && !p.field(c).notAuth) {
                if (!p.options.isRendered) {
                    p.field(c).invisible = v;
                } else {
                    var o = ($.type(c) === 'string') ? p.jObject(c) : c, l = ($.type(c) === 'string') ? p.jLabel(c) : c, x = o.parent(), y = l.parent();
                    p.field(c).invisible = v;
                    if (v) { x.addClass("invisible"); y.addClass("invisible"); }
                    else { x.removeClass("invisible"); y.removeClass("invisible"); }
                }
            }
        }
    },
    setInactive: function (c, v) {
        var o, p = this;
        if ($.type(c) == 'array') {
            var i = c.length
            while (i--) p.setInactive(c[i], v);
        } else {
            if (!p.options.isRendered) {
                p.field(c).inactivate = v;
            } else {
                o = ($.type(c) === 'string') ? p.jObject(c) : c;
                p.field(o.fieldName()).inactivate = v;
                if (v) o.attr("tabstop", "0");
                else o.removeAttr("tabstop");
            }
        }
    },
    setDisabled: function (c, v) {
        var o, p = this;
        if ($.type(c) == 'array') {
            var i = c.length
            while (i--) p.setDisabled(c[i], v);
        } else {
            if (!p.options.isRendered) {
                p.field(c).disabled = v;
            } else {
                o = ($.type(c) === 'string') ? p.jObject(c) : c;
                p.field(o.fieldName()).disabled = v;
                if (v) o.attr("disabled", "disabled");
                else o.removeAttr("disabled");
            }
        }
        this.setInactive(c, v);
    },
    setReadonly: function (c, v) {
        var p = this;
        if (v === undefined) {//Readonly toan bo FORM, GRID
            p.options.readOnly = c;
            if (c) {
                p.find(".input-field,.grid-input-field").attr("disabled", "true")
            } else {
                p.find(".table").each(function () {
                    var i, fi, jf, jg = $(this), gindex = parseInt(jg.attr("grid-index")), d = p.options.struct, g = d.grids.grid[gindex], f = g.fields.field;
                    i = f.length;
                    while (i--) {
                        fi = f[i]; jf = jg.find(".grid-input-field." + fi.name);
                        if (fi.disabled) jf.attr("disabled", "true");
                        else jf.removeAttr("disabled");
                    }
                });
                p.find(".input-field, input[type='file']").each(function () {
                    var rd = p.field($(this).fieldName()).disabled;
                    if (rd) $(this).attr("disabled", "true");
                    else $(this).removeAttr("disabled");
                })
            }
        } else if ($.type(c) == 'array') {
            var i = c.length
            while (i--) p.setReadonly(c[i], v);
        } else {
            if (!p.options.isRendered) {
                p.field(c).readOnly = v;
            } else {
                if (p.options.isRendered) {
                    var o = ($.type(c) === 'string') ? p.jObject(c) : c;
                    p.field(o.fieldName()).readOnly = v;
                    if (v) o.attr("readonly", "readonly");
                    else o.removeAttr("readonly");
                } else p.field(c).readOnly = v;
            }
        }
    },
    setHidden: function (c, v) {
        var p = this, a = ($.type(c) == 'array') ? c : c.split(","), cf;
        for (var i = 0; i < a.length; i++) {
            cf = a[i].replace(/ /g, '');
            p.field(cf).hidden = v;
            if (p.options.isRendered) {
                var o = p.jObject(cf), x = o.parent().parent();
                p.setInactive(x.find(".input-field"), v);
                if (v) x.addClass("form-group-hidden")
                else x.removeClass("form-group-hidden")
            }
        }
    },
    setAuth: function (c, v, depend) {
        var p = this, fi;
        if ($.type(c) == 'array') {
            var i = c.length
            while (i--) p.setAuth(c[i], v, depend);
        } else {
            if (!p.options.isRendered) {
                fi = p.field(c);
                if (depend && fi.notAuth) return;
                fi.invisible = v;
                fi.notAuth = v;
            } else {
                var o = ($.type(c) === 'string') ? p.jObject(c) : c, l = ($.type(c) === 'string') ? p.jLabel(c) : c, x = o.parent(), y = l.parent();
                fi = p.field(c);
                if (depend && fi.notAuth) return;
                fi.invisible = v;
                fi.notAuth = v;
                if (v) { x.addClass("invisible"); y.addClass("invisible"); }
                else { x.removeClass("invisible"); y.removeClass("invisible"); }
            }
        }
    },
    setColumnHeader: function (gindex, c, v) {
        if (c == null) return;
        var cf, ch, fi, p = this, e = p.jGrid(gindex), a = ($.type(c) == 'array') ? c : c.split(","), i = a.length;
        while (i--) {
            cf = a[i].replace(/ /g, ''); fi = p.field(cf, gindex); ch = fi.text.lan;
            if ($.type(v) == 'array') ch = ch.replace(v[0], v[1]); else ch = v;
            e.find("th.grid-column." + cf).find("span").html(ch);
        }
    },
    setColumnAuth: function (gindex, c, v, depend) {
        if (c == null) return;
        var p = this, e = p.jGrid(gindex), a = ($.type(c) == 'array') ? c : c.split(","), cf, fi, i;
        for (i = 0; i < a.length; i++) {
            cf = a[i].replace(/ /g, ''); fi = p.field(cf, gindex);
            if (depend && fi.notAuth) continue;
            if (fi) {
                fi.hidden = v;
                fi.notAuth = v;
                if (p.options.isRendered) e.find(".grid-column." + cf + ",.grid-cell." + cf + ",.grid-colgroup." + cf).css("display", (v) ? "none" : "");
            }
        }
    },
    setColumnHidden: function (gindex, c, v) {
        if (c == null) return;
        var p = this, e = p.jGrid(gindex), a = ($.type(c) == 'array') ? c : c.split(","), cf, fi, i;
        for (i = 0; i < a.length; i++) {
            cf = a[i].replace(/ /g, ''); fi = p.field(cf, gindex);
            if (fi && !fi.notAuth) {
                fi.hidden = v;
                if (p.options.isRendered) e.find(".grid-column." + cf + ",.grid-cell." + cf + ",.grid-colgroup." + cf).css("display", (v) ? "none" : "")
            }
        }
    },
    setColumnReadonly: function (gindex, c, v) {
        if (c == null) return;
        var p = this, e = p.jGrid(gindex), a = ($.type(c) == 'array') ? c : c.split(","), cf, fi, i;
        for (i = 0; i < a.length; i++) {
            cf = a[i].replace(/ /g, ''); fi = p.field(cf, gindex);
            if (fi) {
                fi.readOnly = v;
                if (p.options.isRendered) {
                    var o = e.find(".grid-input-field." + cf);
                    if (v) o.attr("readonly", "readonly");
                    else o.removeAttr("readonly");
                }
            }
        }
    },
    setColumnFormat: function (gindex, c, v) {
        if (c == null) return;
        var p = this, e = p.jGrid(gindex), a = ($.type(c) == 'array') ? c : c.split(","), i = a.length, cf, fi;
        while (i--) {
            cf = a[i].replace(/ /g, ''); fi = p.field(cf, gindex);
            if (fi && !fi.notAuth) {
                fi.format = v[i];
                e.find(".grid-input-field." + cf).number({ digit: v[i] });
            }
        }
    },
    lockField: function (masters, details) {//Dung trong ham beforeInit
        var p = this, d = p.options.struct, gs = d.grids.grid, fs = d.forms.form, i = fs.length, j, fi;
        if (masters != null) {
            while (i--) {
                j = fs[i].fields.field.length;
                while (j--) {
                    fi = fs[i].fields.field[j];
                    if (masters.indexOf(fi.name) >= 0) fi.disabled = true;
                }
            }
        }
        if (details != null) {
            i = gs.length;
			
            while (i--) {
                j = gs[i].fields.field.length;

                while (j--) {
                    fi = gs[i].fields.field[j];
					console.log(fi.name);
                    if (details.indexOf(fi.name) >= 0) fi.readOnly = true;
                }
            }
        }
    },
    unlockField: function (masters, details) {//Dung trong ham beforeInit
        var p = this, d = p.options.struct, gs = d.grids.grid, fs = d.forms.form, i = fs.length, j, fi;
        if (masters != null) {
            while (i--) {
                j = fs[i].fields.field.length;
                while (j--) {
                    fi = fs[i].fields.field[j];
                    if (masters.indexOf(fi.name) >= 0) fi.disabled = false;
                    else fi.disabled = true;
                }
            }
        }
        if (details != null) {
            i = gs.length;
            while (i--) {
                j = gs[i].fields.field.length;
                while (j--) {
                    fi = gs[i].fields.field[j];
                    if (details.indexOf(fi.name) >= 0) fi.readOnly = false;
                    else fi.readOnly = true;
                }
            }
        }
    },
    setFormat: function (c, v) {
        if (c == null) return;
        var p = this, a = ($.type(c) == 'array') ? c : c.split(","), i = a.length, cf;
        while (i--) {
            cf = a[i].replace(/ /g, '');
            p.field(cf).format = v[i];
            p.jObject(cf).number({ digit: v[i] });
        }
    },
    applyFCColumns: function (g) {
        var fi, p = this, i, gindex;
        if (g == undefined) {//apply cho form
            i = p.options.FCColumns.FC.length;
            p.options.FCColumns.BF = []; p.options.FCColumns.FF = [];
            while (i--) {
                fi = p.field(p.options.FCColumns.BC[i]);
                p.options.FCColumns.BF[i] = parseInt(fi.format);
                fi = p.field(p.options.FCColumns.FC[i]);
                p.options.FCColumns.FF[i] = parseInt(fi.format);
            }
        } else {
            i = g.FCColumns.FC.length; gindex = g.gridIndex;
            g.FCColumns.BF = []; g.FCColumns.FF = [];
            while (i--) {
                fi = p.field(g.FCColumns.BC[i], gindex);
                g.FCColumns.BF[i] = parseInt(fi.format);
                fi = p.field(g.FCColumns.FC[i], gindex);
                g.FCColumns.FF[i] = parseInt(fi.format);
            }
        }
    },
    setFCHidden: function (mant) {
        var g, p = this, d = p.options.struct, bc = d.baseCurrency, i = d.grids.grid.length;
        while (i--) {
            g = d.grids.grid[i];
            if (g.FCColumns) {
                p.setColumnHidden(i, g.FCColumns.BC, mant == bc);
                p.setColumnHeader(i, g.FCColumns.FC, ['%s', mant]);
                p.setColumnFormat(i, g.FCColumns.FC, (mant == bc) ? g.FCColumns.BF : g.FCColumns.FF);
            }
        }
        if (p.options.FCColumns) {
            p.setFormat(p.options.FCColumns.FC, (mant == bc) ? p.options.FCColumns.BF : p.options.FCColumns.FF);
            p.setInvisible(p.options.FCColumns.BC, (mant == bc));
        }
    },
    curr: function (t, v, gindex) { // "r": CurrRow, "c": CurrCol, "fr": CurrFreeze
        if (!gindex) gindex = 0;
        var p = this, d = p.options.struct, g = d.grids.grid[gindex];
        if (v === undefined) {
            if (t == "r") return g._currRow;
            if (t == "c") return g._currCol;
            if (t == "fr") return g._currFreeze;
            if (t == "o" && g._currRow != null && g._currCol != null) return p.jCell(g._currRow, g._currCol, gindex);
        } else {
            if (t == "r") g._currRow = v;
            if (t == "c") g._currCol = v;
            if (t == "fr") g._currFreeze = v;
            if (t == "o") v.focus();
        }
    },
    get: function (o, type) {
        if (type == "r") return o.closest(".grid-cell").parent().index();
        if (type == "c") return o.closest(".grid-cell").index() - 1;
        if (type == "cF") return o.closest(".grid-cell").fieldName();
        if (type == "g") return this.grid(o);
        return -1;
    },
    msg: function (v, rp) {
        var p = this, cmsg;
        if (!p.options.msg) {
            var ms = p.options.struct.messages.message, i = ms.length;
            p.options.msg = new Object();
            while (i--) {
                p.options.msg[ms[i].val] = ms[i].text.lan;
            }
        }
        if (p.options.msg[v]) cmsg = p.options.msg[v];
        else cmsg = $.msg.get(v);
        if (!cmsg && p.options.parent) cmsg = p.options.parent.msg(v, rp);
        if (rp) {
            for (var i = 0; i < rp.length; i += 2) {
                cmsg = cmsg.replace(rp[i], rp[i + 1]).replace(rp[i], rp[i + 1]).replace(rp[i], rp[i + 1]);
            }
        }
        return cmsg;
    },
    grid: function (i) {//index, cell
        if (!i) i = 0;
        else if ($.type(i) == "object") i = parseInt(i.closest('table').attr('grid-index'));
        return (this.options.struct.grids.grid.length) ? this.options.struct.grids.grid[i] : null;
    },
    field: function (n, gindex) {
        var p = this, d = p.options.struct, fs;
        if (p.options.dirViewType == "Grid" || p.options.dirViewType == "Lookup" || $.type(gindex) != 'undefined') {
            if (!gindex) gindex = 0;
            if (p.options.pivotText != "") fs = d.grids.grid[gindex].pivotFields;
            if (!fs) fs = d.grids.grid[gindex].fields.field
            if (n == null) return fs;
            else if ($.type(n) == 'number') return fs(n);
            else {
                for (var k = 0; k < fs.length; k++) {
                    if (fs[k].name == n) { fs[k].index = k; return fs[k]; }
                }
            }
        } else if (p.options.dirViewType == "Dialog") {
            if ($.type(n) == 'undefined') return d.forms.form;
            else {
                var k, i, fs, f = d.forms.form;
                for (k = 0; k < f.length; k++) {
                    fs = f[k].fields.field;
                    for (i = 0; i < fs.length; i++) {
                        if (fs[i].name == n) { fs[i].index = i; return fs[i] };
                    }
                }
                return null;
            }
        }
        return null;
    },
    getColumnExportInfo: function (gindex) {
        var fs, hc, fi, g, p = this, d = p.options.struct, a = [];
        if (!gindex) gindex = 0;
        g = d.grids.grid[gindex];
        if (p.options.pivotText != "") { fs = g.pivotFields; hc = g.pivotRowCount }
        if (!fs) { fs = g.fields.field; hc = g.headerRowCount; }
        var n = fs.length;
        if (g.data.index("systotal") != -1) a.push(["systotal", 0, 0, 'I', '', '', '', '', hc, 0, 0, 1, 0, 0, "", ""])
        for (i = 0; i < n; i++) {
            fi = fs[i];
            if (fi.name != "_select_" && !fi.hidden && fi.width != 0)
                a.push([fi.name, fi.width, fi.format, fi.dataType, fi.align, fi.text.lan, fi.text2.lan, fi.text3.lan, fi.rowspan, fi.rowspan2, fi.rowspan3, fi.columnspan, fi.columnspan2, fi.columnspan3, fi.lastSymbol, fi.firstSymbol]);
        }
        return { fields: a, headerRowCount: hc, boldCondition: g.boldCondition, boldConditionExcel: g.boldConditionExcel };
    },
    print: function (xid, dynamic, opt, beforeEvent) {
        var m, p = this, pa = p.options.parent;
        if (beforeEvent === undefined) beforeEvent = true;
        if (p.options.dirObjectType == "Report" || (pa && p.options.controller != pa.options.controller)) m = p.getMemvars(p);
        else if (p.curr("r") != null) m = m = p.getGridKeyMemvars();
        if (m) {
            var url = "../AppHandler/FileHandler.ashx?param=" + $.encodeb64UTF8("Print"), opt = {};
            m.val("formId", "C", xid);
            opt.subtitle = p.options.subtitle;
            if (beforeEvent && !p.options.event.beforePrint(xid, m, opt)) return;
            var opt = $.extend({}, opt, { controller: p.options.controller, id: xid, "dynamic": dynamic, tabId: $.getTabId(), memvar: JSON.stringify(m.val()) })
            $.postNewTab(url, opt);
        }
    },
    clearGrid: function (gindex) {
        var p = this, g = p.grid(gindex), jg = p.jGrid(gindex), gdt = g.data, tb = jg.find("tbody.data"), tscroll = tb.parent().parent();
        if (!gdt) return;
        gdt.clear();
        p.renderGridData(p, g, g.fields.field, gdt, null, tb);
        p.options.dataChanged = true;
        p.createEvent(1);
        tscroll.scrollLeft(0);
        p.freeze(g);
    },
    appendForm: function (dt, r) {
        var cF, p = this, cols = dt.obj.ColumnNames, k = cols.length;
        while (k--) {
            cF = cols[k];
            if (r == undefined)
                p.jObject(cF).fval(dt.val(cF)); //DataRow
            else
                p.jObject(cF).fval(dt.val(r, cF)); //DataTable
        }
    },
    appendGrid: function (gindex, dt0, clr, col1, col2) {
        var p = this, g = p.grid(gindex), jg = p.jGrid(gindex), gdt = g.data, tb = jg.find("tbody.data"), tscroll = tb.parent().parent();
        if (!dt0) {
            if (gdt) gdt.clear();
            else return;
        } else {
            if (gdt) gdt.append(dt0, clr, col1, col2);
            else {
                gdt = dt0;
                g.data = dt0;
            }
        }
        p.renderGridData(p, g, g.fields.field, gdt, null, tb);
        p.options.dataChanged = true;
        p.createEvent(1);
        tscroll.scrollLeft(0);
        p.freeze(g);
        p.options.event.gridDetailActionChange(gindex, 'AfterAppendGrid');
    },
    appendString2Grid: function (gindex, s) {
        var p = this, g = p.grid(gindex), f = g.fields.field, jg = p.jGrid(gindex), gdt = g.data, tb = jg.find("tbody.data"), tscroll = tb.parent().parent(), r = g._currRow, c = g._currCol;


        if (r == null || c == null) return;
        var k, a = s.split(String.fromCharCode(10)), i = a.length, fi = f[g._currCol], cN = fi.name, isLookup = (fi.viewType == "Lookup");
        c = gdt.index(cN);

        //console.log(f);


        while (i--) {
            var array = [];
            var a0 = a[i].split(String.fromCharCode(9));
            k = a0.length;

            var j = 0;
            for (var l = 0; l < f.length; l++) {
                //console.log(g._currCol + j)

                if (f[g._currCol + j].hidden) {
                    if (["N", "I"].indexOf(f[g._currCol + j].dataType) != -1)
                        array.push(0);
                    else array.push('');
                } else {
                    if (["N", "I"].indexOf(f[g._currCol + j].dataType) != -1) {
                        var v = a0[j];
                        if (v=='' || isNaN(v)) array.push(0);
                        else array.push(parseFloat(a0[j]));
                    }
                    else array.push(a0[j]);
                }
                j = j + 1;
                if (j == k) break;
            }
            //console.log(array)
            //while (k--) {
            //    //console.log(f[g._currCol + k])

            //    if (["N", "I"].indexOf(f[g._currCol + k].dataType) != -1) a[i][k] = parseFloat(a[i][k]);
            //}

            a[i] = array;
        }

        //console.log(a)
        gdt.appendArray(a, r, c);
        if (["N", "I"].indexOf(fi.dataType) != -1) {
            p.calcExpressionAll(g, cN);
        }
        
        p.renderGridData(p, g, g.fields.field, gdt, null, tb);
        p.createEvent(1);
        tscroll.scrollLeft(0);
        p.freeze(g);
        p.options.event.gridDetailActionChange(gindex, 'AfterAppendGrid');
        if (isLookup) {
            i = a.length;
            while (i--) {
                var o = p.jCell(r + i, cN, gindex);
                o.lookup("instance").valid(null, function (ee) { p.appendToSource(ee); });
            }
        }
        p.options.dataChanged = true;
    },
    deleteRow: function (r, gindex) {
        if (!gindex) gindex = 0;
        var p = this, e = p.jGrid(gindex), g = p.options.struct.grids.grid[gindex], dt = g.data, count = dt.count(), tb = e.find("tbody.data"), tr = tb[0].childNodes[r], k = 1;
        dt.removeRow(r);
        $(tr).detach();
        p.createEvent(1);
        if (count > 0) {
            if (r == count - 1) {
                r--;
                if (r == -1) r = null;
                p.curr("r", r, gindex);
            }
            var o = p.jCell(r, p.curr("c", undefined, gindex), gindex);
            if (o) o.focus();
        } else {
            p.curr("r", null, gindex);
            p.curr("c", null, gindex);
        }
        tb.find("td:first-child").each(function () {
            $(this).html(k++);
        });
        p.calcExpression(g, g.DetailExpression);
        p.options.dataChanged = true;
    },
    addRow: function (x, gindex, focus, dataOnly) {
        if (!gindex) gindex = 0;
        var i, fi, ac, p = this, e = p.jGrid(gindex), d = p.options.struct, tb = e.find("tbody.data"), tscroll = tb.parent().parent(), g = d.grids.grid[gindex], f = g.fields.field, dt = g.data, count = dt.count(), c = p.curr("c", undefined, gindex);
        if (x == null) {
            x = []; ac = dt.obj.ColumnNames;
            for (i = 0; i < ac.length; i++) {
                fi = p.field(ac[i], gindex);
                if (count > 0 && fi.clientDefault)
                    x.push(dt.val(count - 1, i));
                else
                    x.push($.strToObject(fi.valueDefault, fi.dataType));
            }
        } else if (typeof (x) === "number") {
            x = $.extend(true, [], dt.val(x));
        }
        dt.addRow(x);
        if (dataOnly === true) return;
        $("<tr>").appendTo(tb).html(this.renderGridDataRow(p, g, f, dt, count).toString());
        p.createEvent(1);
        if (focus === undefined || focus) {
            if (c == null || p.options.dirViewType != "Grid") {
                c = p.column(gindex, "firstFocus");
            }
            var o = p.jCell(count, c, gindex)
            g._currRow = count;
            if (o) o.focus();
            tscroll.animate({ scrollTop: tscroll[0].scrollHeight, scrollLeft: 0 }, 200, function () { p.freeze(g); });
        }
        p.calcExpression(g, g.DetailExpression);
        p.options.dataChanged = true;
        return count;
    },
    moveRow: function (gindex, iF, iT) {
        var k = 1, p = this, tb = p.jGrid(gindex).find("tbody"), rF = tb.find("tr:eq(" + iF + ")"), rT = tb.find("tr:eq(" + iT + ")"), g = p.grid(gindex), dt = g.data, a = dt.obj.Rows, aF = a[iF];
        if (iF > iT)
            rF.insertBefore(rT);
        else
            rF.insertAfter(rT);
        dt.removeRow(iF);
        a.splice(iT, 0, aF);
        //console.log(a);
        g._currRow = iT;
        p.createEvent(1);
        tb.find("tr").each(function () { $(this).find("td:eq(0)").html(k++) })
        p.options.dataChanged = true;
        p.curr("o", undefined, gindex).focus();
    },
    column: function (gindex, type, col) {
        var fi, i, p = this, e = p.jGrid(gindex), d = p.options.struct, g = d.grids.grid[gindex], f = g.fields.field, c = null;
        if (type == "firstFocus") {
            for (i = 0; i < f.length; i++) {
                fi = f[i];
                if (!fi.inactivate && !fi.hidden) break;
            }
            c = i;
        } else if (type == "lastFocus") {
            for (i = f.length - 1; i >= 0; i--) {
                fi = f[i];
                if (!fi.inactivate && !fi.hidden) break;
            }
            c = i;
        } else if (type == "name") {
            return f[col].name;
        }

        return c;
    },
    addColumn: function (gindex, colCopy, newNames, newHeaders, iIndex) {
        if (newNames == null) return;
        if (!iIndex) iIndex = 0;
        var p = this, e = p.jGrid(gindex), a = ($.type(newNames) == 'array') ? newNames : newNames.split(","), b = ($.type(newHeaders) == 'array') ? newHeaders : newHeaders.split(","), fCopy = p.field(colCopy, gindex), f = p.field(null, gindex), fi, cf, i;
        for (i = 0; i < a.length; i++) {
            cf = a[i].replace(/ /g, '');
            fi = $.extend({}, fCopy, { name: a[i], text: { lan: b[i] } });
            f.splice(iIndex, 0, fi);
        }
        return fi;
    },
    removeColumn: function (gindex, cols) {
        var p = this, e = p.jGrid(gindex), a = ($.type(cols) == 'array') ? cols : cols.split(","), f = p.field(null, gindex), cf, fi;
        for (i = 0; i < a.length; i++) {
            cf = a[i].replace(/ /g, '');
            fi = p.field(cf, 0);
            f.splice(fi.index, 1);
        }
    },
    suggestCode: function (o, fi) {
        var p = this, e = p.element, d = p.options.struct, time = $.userinfo.val('CommandTimeout'), wkey = "SUGGEST-" + fi.name, m = new Memvars(), v = o.fval();
        if (p.options.wait) return;
        m.add([['field', 'C', fi.name], ['table', 'C', d.table], ['value', 'C', v]]);
        var param = { strCommand: "Dir-autoIncreaseCode-GetRow", oMemvar: m.val() };
        p.wait(true, wkey);
        $.invoke('RunSQL', param, p, time, function (d) {
            d = new DataRow(d);
            p.nextCode(d.val('val').trim(), v, o);
            p.wait(false, wkey);
        }, null, function () {
            p.wait(false, wkey);
        })
    },
    nextCode: function (xval, v, o) {
        try {
            var max = xval.substr(v.length), num = "", i = max.length, n, val;
            if (xval != "") {
                while (i--) {
                    if (!isNaN(max[i])) num = max[i] + num
                    else break;
                }
                n = (parseInt(num) + 1).toString();
                val = xval.substr(0, xval.length - num.length) + num.substr(0, num.length - n.length) + n;
                if (o) {
                    o.fval(val);
                    o[0].setSelectionRange(v.length, val.length);
                }
                return val
            }
        } catch (e) {
        }
        return null;
    },
    grequest: function (gindex, code, method, m, fun, rRequest, time) {
        if (typeof (gindex) == "object") gindex = gindex.gridIndex;//Truong hop truyen vao g
        var p = this, e = p.element, g = p.grid(gindex), dt = g.data, r = (rRequest == null) ? g._currRow : rRequest, para = null, wkey = "REQUEST-" + r + "-" + $.random(10000);
        if (!time) time = $.userinfo.val('CommandTimeout');
        p.wait(true, wkey);
        if (m) {
            if ($.type(m) == "object") para = m;
            else if ($.type(m) == "array") {
                para = new Memvars();
                var funMemvar = function (f, t, v) {
                    if (t === undefined) {
                        if (f.indexOf("!") == 0) {
                            f = f.substr(1);
                            para.val(f, p.field(f).dataType, p.valForm(f));
                        }
                        else
                            para.val(f, p.field(f, gindex).dataType, dt.val(r, f));
                    }
                    else if (v === undefined) para.val(f, p.field(f, gindex).dataType, dt.val(t, f));
                    else para.val(f, t, v);
                }
                for (var i = 0; i < m.length; i++) {
                    if ($.type(m[i]) == "array") {
                        if (m[i].length == 1) funMemvar(m[i][0]);
                        else if (m[i].length == 2) funMemvar(m[i][0], m[i][1]); //Grid value cell
                        else if (m[i].length >= 3)
                            funMemvar(m[i][0], m[i][1], m[i][2]);
                    } else if ($.type(m[i]) == "object") {//memvar
                        para.push(m[i]);
                    } else {//string
                        funMemvar(m[i]);
                    }
                }
            } else {//string
                para = new Memvars([m, p.field(m).dataType, dt.val(r, m)]);
            }
            para = para.val();
        }
        var param = $.extend({}, { cController: p.options.controller, cFolder: p.options.folder, cCode: code, cMethod: "", oMemvars: para }, { cMethod: method });
        $.invoke('RequestDir', param, p, time, function (d) {
            var run = p.runDataReturn(d, "", gindex, r);
            if (fun) fun(p, d, run);
            p.wait(false, wkey);
        }, null, function () {
            p.wait(false, wkey);
        })
    },
    request: function (code, method, m, fun, action, folder, funEnd, time) {
        var p = this, e = p.element, para = null, wkey = "REQUEST" + $.random(10000);
        if (!time) time = $.userinfo.val('CommandTimeout');
        p.wait(true, wkey);
        if (m) {
            if ($.type(m) == "object") para = m;
            else if ($.type(m) == "array") {
                para = new Memvars();
                var funMemvar = function (f, t, v) {
                    if (t === undefined) para.val(f, p.field(f).dataType, p.valForm(f));
                        //else if (v == undefined) para.val(f, p.field(f).dataType, p.valGrid(t, f));
                    else para.val(f, t, v);
                }
                for (var i = 0; i < m.length; i++) {
                    if ($.type(m[i]) == "array") {
                        if (m[i].length == 1) funMemvar(m[i][0]);
                        else if (m[i].length == 2) funMemvar(m[i][0], m[i][1]); //Grid value cell
                        else if (m[i].length >= 3)
                            funMemvar(m[i][0], m[i][1], m[i][2]);
                    } else if ($.type(m[i]) == "object") {//memvar
                        para.push(m[i]);
                    } else {//string
                        funMemvar(m[i]);
                    }
                }
            } else {//string
                para = new Memvars([m, p.field(m).dataType, p.valForm(m)]);
            }
            para = para.val();
        }
        var param = $.extend({}, { cController: p.options.controller, cFolder: p.options.folder, cCode: code, cMethod: "", oMemvars: para }, { cFolder: folder, cMethod: method });
        $.invoke('RequestDir', param, p, time, function (d) {
            var run2 = true, run = p.runDataReturn(d, action);
            if (fun) {
                run2 = fun(p, d, run);
                if (run2 === undefined) run2 = true;
            }
            if (run && run2 && p.options && p.options.dirViewType == "Dialog" && (action == "NEW" || action == "EDIT"))
                p._close();
            p.wait(false, wkey);
            if (funEnd) funEnd(p);
        }, null, function () {
            p.wait(false, wkey);
            if (funEnd) funEnd(p);
        })
    },
    sendMail: function (code, m, fun, folder) {
        var p = this, e = p.element, time = $.userinfo.val('CommandTimeout'), para = null, wkey = "SENDMAIL-" + code;
        p.wait(true, wkey);
        if (m) {
            if ($.type(m) == "object") para = m;
            else if ($.type(m) == "array") {
                para = new Memvars();
                var funMemvar = function (f, t, v) {
                    if (t === undefined) para.val(f, p.field(f).dataType, p.valForm(f));
                        //else if (v == undefined) para.val(f, p.field(f).dataType, p.valGrid(t, f));
                    else para.val(f, t, v);
                }
                for (var i = 0; i < m.length; i++) {
                    if ($.type(m[i]) == "array") {
                        if (m[i].length == 1) funMemvar(m[i][0]);
                        else if (m[i].length == 2) funMemvar(m[i][0], m[i][1]); //Grid value cell
                        else if (m[i].length >= 3)
                            funMemvar(m[i][0], m[i][1], m[i][2]);
                    } else if ($.type(m[i]) == "object") {//memvar
                        para.push(m[i]);
                    } else {//string
                        funMemvar(m[i]);
                    }
                }
            } else {//string
                para = new Memvars([m, p.field(m).dataType, p.valForm(m)]);
            }
            para = para.val();
        }
        var param = $.extend({}, { cController: p.options.controller, cFolder: p.options.folder, cCode: code, oMemvars: para }, { cFolder: folder });
        $.invoke('SendMail', param, p, time, function (d) {
            if (fun) fun(p, d);
            p.wait(false, wkey);
        }, null, function () {
            p.wait(false, wkey);
        })
    },
    runDataReturn: function (d, action, gindex, rRun) {
        if (d == null) { $.showToast("Data returned an error"); return false; }
        if (!d.Items) return true; //Khong tra ve database thi tu xu ly function
        var iF, i, col, v, r, ac, oR, p = this, g = (p.options) ? p.options.parent : null, d = new DataRow(d), w = d.val('warning'), m = d.val('message') || '', t1 = d.val('toast') || '', t2 = d.val('pauseToast') || '', s = d.val('script'), cf = d.val('field'), ok = true;
        if (!action) action = "";
        if (m == '' && g && action == 'EDIT' && g.options.controller == p.options.controller) {
            for (i = 0; i < d.obj.ColumnNames.length; i++) {//Gia tri return tra ve
                col = d.obj.ColumnNames[i];
                iF = col.indexOf('#')
                if (iF == -1) continue;
                v = d.val(col);
                if (iF == 0) {
                    col = col.substr(1, col.length - 1);
                    g.val(g._currRow, col, v);
                }
            }
            ac = g.options.dataSource.obj.ColumnNames, r = (rRun == null) ? g.curr("r") : rRun;
            for (i = 0; i < ac.length; i++) {//Truong tren form tra ve
                if (d.index("#" + ac[i]) != -1)
                    g.val(r, ac[i], d.val("#" + ac[i]));
                else {
                    if (p.jObject(ac[i]).length) g.val(r, ac[i], p.valForm(ac[i]));
                }
            }
            g.refreshGridRow(r)
        }
        if (m == '' && g && action == "NEW" && g.options.controller == p.options.controller) {
            oR = []; ac = g.options.dataSource.obj.ColumnNames;
            for (i = 0; i < ac.length; i++) {
                if (d.index("#" + ac[i]) != -1)
                    oR.push(d.val("#" + ac[i]));
                else
                    oR.push(p.valForm(ac[i]));
            }
            //p.options.closed = function () { g.addRow(oR); p.options.closed = null;}
            setTimeout(function () { g.addRow(oR); }, 100);
        }
        if (m == '' && action == '' && gindex != null) {
            r = (rRun == null) ? p.curr("r", undefined, gindex) : rRun;
            for (i = 0; i < d.obj.ColumnNames.length; i++) {//Gia tri return tra ve
                col = d.obj.ColumnNames[i];
                iF = col.indexOf('#')
                if (iF == -1) continue;
                v = d.val(col);
                if (iF == 0) {
                    col = col.substr(1);
                    p.valGrid(r, col, gindex, v, true);
                }
            }
        }
        if (m && m != '') {
            var q, fun = null;
            if (m.indexOf("$") == 0) m = p.msg(m.substr(1));
            for (i = 0; i < d.obj.ColumnNames.length; i++) {//Gia tri return tra ve
                col = d.obj.ColumnNames[i];
                iF = col.indexOf('{')
                if (iF == -1) continue;
                v = d.val(col);
                m = m.replace(col, v).replace(col, v).replace(col, v);
            }
            fun = function () {
                q._close()
                if (cf && cf != '')
                    if (cf.indexOf("@") == 0) p.tabActive(cf.replace('@', ''));
                    else p.jObject(cf).focus();
            }
            q = $.alert(m, null, p, fun);
            ok = false;
            return ok;
        }
        if (w && w != '') {
            if (w.indexOf("$") == 0) w = p.msg(w.substr(1));
            for (i = 0; i < d.obj.ColumnNames.length; i++) {//Gia tri return tra ve
                col = d.obj.ColumnNames[i];
                iF = col.indexOf('{')
                if (iF == -1) continue;
                v = d.val(col);
                w = w.replace(col, v).replace(col, v).replace(col, v);
            }
            p.options.buttonWaitId = p.options.buttonWaitGrid = null;
            //console.log(p.options.controller + ":" + p.options.wait + "-[" + p.options.waitKey.join(",") + "]"); 
            setTimeout(function () { $.alert(w, null, (action == "NEW" || action == "EDIT") ? g : p) }, 200);
        }
        if (!m || m == '') {
            for (i = 0; i < d.obj.ColumnNames.length; i++) {//Gia tri return tra ve
                col = d.obj.ColumnNames[i];
                iF = col.indexOf('!')
                if (iF == -1) continue;
                v = d.val(col);
                if (iF == 0) {
                    col = col.substr(1, col.length - 1);
                    p.valForm(col, v, true);
                }
            }
        }

        if (t1 && t1 != '') {
            if (t1.indexOf("$") == 0) t1 = p.msg(t1.substr(1));
            $.showToast(t1);
        }
        if (t2 && t2 != '') {
            if (t2.indexOf("$") == 0) t2 = p.msg(t2.substr(1));
            $.showToast(t2);
            ok = false;
        }
        if (s && s != '') {
            eval(s);
        }
        return ok;
    },
    checkCode: function (fields, fun) {
        var a = fields.split(','), s = $.msg.get('SpecialChars');//, d = $func.htmlEncode(s);
        for (var i = 0; i < a.length; i++) {
            var e = null, name = a[i].trim(), o = this.jObject(name), c = o.fval()//, l = o.field.Label;
            if (c.length > 0) {
                if (c[0] == ' ') e = true;
                else {
                    for (var j = 0; j < c.length; j++) {
                        if (s.indexOf(c[j]) >= 0) {
                            e = true;
                            break;
                        }
                    }
                }
            }
        }
        //if (e) $.alert($.msg.get('CheckCodeMessage').replace('{1}', s));
        return !e;
    },
    showFilter: function (controller, m, opt2) {
        var opt = { controller: controller, folder: "Filter", dirViewType: "Dialog", parent: this }
        if (m) opt.memvars = m;
        if (opt2) opt = $.extend({}, opt, opt2);
        $.createDir(false, opt);
    },
    _create: function () {
        var p = this, e = p.element, id = p.options.controller + "_" + p.options.folder, time = $.userinfo.val('CommandTimeout'), m = p.getMemvars(p);
        p.options.event = new DirEvent(p);
        p.options.reload = "CREATE";

        if (p.options.beforeCreate && window[p.options.beforeCreate]) window[p.options.beforeCreate](p);

        var funRender = function (d) {
            p.options.struct = d;
            p.options.folder = d.folder;
            p.options.controller = d.controller
            if (p.options.struct.isProcessing) p.options.isProcessing = true;
            if (d.folder == 'Filter') p.options.buttonFormKeys = { 79: 'filterOk', 27: 'filterCancel', 77: 'message' };
            if (d.folder == 'Lookup') p.options.buttonFormKeys = { 79: 'lookupOk', 27: 'lookupCancel', 77: 'message' };
            //if (p.options.action == "VIEW") delete p.options.buttonFormKeys[83];
            p.render();
            if (p.options) p.options.errorCreating = null;
        }
        if (p.options.struct) {
            funRender(p.options.struct);
            return;
        }
        if (p.options.dirViewType == "Question") {
            p.options.struct = { dirViewType: p.options.dirViewType, id: "Question", title: { lan: this.options.msgTitle }, msg: { lan: this.options.msgText } };
            if (p.options.msgType == "A" || p.options.msgType == "E")
                p.options.buttonFormKeys = { 27: 'questionOk' };
            else
                p.options.buttonFormKeys = { 79: 'questionOk', 27: 'questionCancel' };

            p.render();
        }
        else {
            //$.sessionVal(id, null);
            p.options.struct = $.sessionVal(id);
            if (p.options.struct) {
                var d = p.options.struct;
                p.options.folder = d.folder;
                p.options.controller = d.controller
                if (d.dirViewType == "Grid" || d.dirViewType == "Lookup") {
                    if (!p.grid()) { funRender(d); return; }
                    p.options.filterSort.sort = "2#" + p.grid().order;
                }
                p._refresh(true);
                if (p.options) p.options.errorCreating = null;
                return;
            }
            p.wait(true, "create");
            $.invoke('GetDir', { cController: p.options.controller, cFolder: p.options.folder, cPivotText: p.options.pivotText, hasData: p.options.hasData, oMemvars: m.val() }, this, time, function (d) {
                p.wait(false, "create");
                if (!p.options.struct) {//Luu lai struct
                    var i, dd = { data: null, gridData: [] };
                    for (i = 0; i < d.grids.grid.length; i++) {
                        dd.gridData.push(d.grids.grid[i].data);
                        d.grids.grid[i].data = null;
                    }
                    dd.data = d.data;
                    d.data = null;
                    $.sessionVal(id, d);

                    d.data = dd.data;
                    for (i = 0; i < d.grids.grid.length; i++) {
                        d.grids.grid[i].data = dd.gridData[i];
                    }
                    dd = null;
                }

                funRender(d);
            }, null, function () {

            })
        }
    },
    _refresh: function (isReload) {
        var p = this, e = p.element, d = p.options.struct, gs = d.grids.grid, id = this.options.controller, time = $.userinfo.val('CommandTimeout'), m = p.getMemvars(p);

        if (isReload == null) isReload = false;
        if (isReload) p.options.reload = "REFRESH";
        else p.options.reload = ""

        if (p.options.dirData) {
            p.options.reload = "CREATE"
            p.render();
            return;
        }

        var funRender = function (obj) {
            var i;
            d.data = obj.DirData;
            for (i = 0; i < gs.length; i++) {
                gs[i].data = obj.GridData[i];
            }
            if (obj.loading) d.loading = obj.loading;
            p.wait(false, "refresh");
            p.render();
        }

        p.wait(true, "refresh");
        if (p.options.isProcessing) {

            time = $.userinfo.val('ReportTimeout')
            $.invoke('GetProcessingData', { cController: id, iPageIndex: p.options.pageIndex, isReload: isReload, cPivotText: p.options.pivotText, oMemvars: m.val() }, this, time, function (obj) {
                funRender(obj);
            }, null, function () { p.wait(false, "refresh"); })
        }
        else
            $.invoke('GetDirData', { cController: id, cFolder: this.options.folder, iGridIndex: -1, oMemvars: m.val() }, this, time, function (obj) {
                funRender(obj);
            }, null, function () { p.wait(false, "refresh"); })
    },
	reloadGridByGindex: function (gindex, mvals) {
        var p = this, e = p.element, d = p.options.struct, gs = d.grids.grid, id = this.options.controller, time = $.userinfo.val('CommandTimeout'), m = p.getMemvars(p);
        if (mvals) m.add(mvals);
        p.wait(true, "refreshData");
        if (!gindex) gindex = 0;
        p.options.reload = "REFRESHDATA";

        if (p.options.isProcessing) {
            time = $.userinfo.val('ReportTimeout')
            $.invoke('GetProcessingData', { cController: id, iPageIndex: p.options.pageIndex, isReload: true, cPivotText: p.options.pivotText, oMemvars: m.val() }, this, time, function (obj) {
                p.appendGrid(gindex, new DataSet(obj.GridData[gindex]).get(0), true);
                p.wait(false, "refreshData");
                p.render();
            }, null, function () { p.wait(false, "refreshData"); })
        }
        else
            $.invoke('GetDirData', { cController: id, cFolder: this.options.folder, iGridIndex: gindex, oMemvars: m.val() }, this, time, function (obj) {
                p.appendGrid(gindex, new DataSet(obj.GridData[gindex > 0 ? 0 : gindex]).get(0), true);
                p.wait(false, "refreshData");
            }, null, function () { p.wait(false, "refreshData"); })
    },
    reloadGrid: function (gindex, mvals) {
        var p = this, e = p.element, d = p.options.struct, gs = d.grids.grid, id = this.options.controller, time = $.userinfo.val('CommandTimeout'), m = p.getMemvars(p);
        if (mvals) m.add(mvals);
        p.wait(true, "refreshData");
        if (!gindex) gindex = 0;
        p.options.reload = "REFRESHDATA";

        if (p.options.isProcessing) {
            time = $.userinfo.val('ReportTimeout')
            $.invoke('GetProcessingData', { cController: id, iPageIndex: p.options.pageIndex, isReload: true, cPivotText: p.options.pivotText, oMemvars: m.val() }, this, time, function (obj) {
                p.appendGrid(gindex, new DataSet(obj.GridData[gindex]).get(0), true);
                p.wait(false, "refreshData");
                p.render();
            }, null, function () { p.wait(false, "refreshData"); })
        }
        else
            $.invoke('GetDirData', { cController: id, cFolder: this.options.folder, iGridIndex: gindex, oMemvars: m.val() }, this, time, function (obj) {
                p.appendGrid(gindex, new DataSet(obj.GridData[gindex]).get(0), true);
                p.wait(false, "refreshData");
            }, null, function () { p.wait(false, "refreshData"); })
    },
    show: function () {
        var p = this, e = p.element, d = p.options.struct;
        if (e.css("display") == "none") {
            $("<div>").attr("id", "BACKDROP_" + p.options.folder + "_" + p.options.controller + "_" + ($.formZIndex - 1)).addClass("modal-backdrop in").css("z-index", $.formZIndex - 1).appendTo($("#subcontent"));
            if (p.options.backdropclick && p.options.folder == "Filter")
                e.click(function (event) {
                    if (event.target.id == p.options.id && !p.options.dataChanged)
                        p._close();
                })
            e.show();
        }
    },
    _close: function () {
        var p = this, e = p.element, d = p.options.struct;
        if (p.options.folder == "Dir") $.confirmUnload(false);
        if (d.dirViewType != "Grid") {
            //$("#BACKDROP_" + p.options.folder + "_" + p.options.controller + "_" + ($.formZIndex - 1)).remove();
            //$.formZIndex -= 2;
            e.hide();
        }
        //if (d.dirViewType == "Question") $.formZIndex -= 2;
        if (p.options.folder == "Dir") {
            p.options.parent.options.childFullScreen = p.options.fullScreen;
            p.options.parent.options.childTabHeight = p.options.tabHeight;
        }
        //console.log(p.options.controller + " - close");
        //console.log($.popupObj);
        if ($.popupObj) $.popupObj.hide();
        $.calendar.hide();
        if (p.options.closed) p.options.closed();
        this._destroy();
    },
    _setOptions: function () {
        this._superApply(arguments);
        this._refresh(true);
    },
    _destroy: function () {
        var p = this, id = p.options.controller + "_" + p.options.folder, pa = this.options.parent, root = p.options.root, d = p.options.struct;
        if (p.options.dirViewType != "Grid" && (p.options.isRendered || p.options.fromView)) {
            $("#BACKDROP_" + p.options.folder + "_" + p.options.controller + "_" + ($.formZIndex - 1)).remove();
            $.formZIndex -= 2;
            //console.log("destroy: " + p.options.controller + " - " + $.formZIndex);
            //e.hide();
        }
        delete $.queueDir[p.options.key];
        if (p.options.applyShortWhenCreated && pa) {
            $.winKeyFunction = function (key, alt, ctrl) { pa.options.event.shortCutKeyEvent(key, alt, ctrl); };
            $.shortCutKeys = $.extend({}, pa.options.buttonGridKeys, pa.options.buttonFormKeys);
            pa.wait(false);
            if (pa.options.focusedItem) pa.options.focusedItem.focus();
            pa.options.focusedItem = undefined;
        }
        p.options = null;
        p.element[0].innerHTML = '';
        //p.element.children().detach().remove();
        p.element.remove();
        if (root) {
            $("#JS_" + id).remove();
            $("#CSS_" + id).remove();
        } else $("[iswiftIndex=" + ($.formZIndex + 2) + "]").remove()

    }
});


function DirEvent(p) {
    this.constructor(p);
}
DirEvent.prototype = {
    constructor: function (p) {
        this._dir = p;
    },
    cellFocus: function (o) {
        if (!o) return null;
        var r, c, g = this._dir.grid(o), gindex = g.gridIndex, cell = o.closest(".grid-cell");
        c = cell.index() - 1; r = cell.parent().index();
        //console.log("cell focus[" + r + ", " + c + "]");
        if (g._currCol != null) {
            var oldCell = o.closest('tbody').find(".focus").removeClass('focus');// $(o.closest('tbody')[0].childNodes[g._currRow].childNodes[g._currCol + 1]);
            oldCell.find('.btn-lookup').css("display", "none");
            oldCell.find('.grid-input-field').css("padding-right", "0px")
        }
        g._currCol = c; g._currRow = r;
        //if (o.isGridCell()) o.addClass('focus');
        cell.addClass('focus');
        cell.find('.btn-lookup').css("display", "initial");
        if (o.hasClass("grid-input-field") && (o.hasClass("Lookup") || o.hasClass("D")))
           o.css("padding-right", "15px")
        return o;
    },
    actionClick: function () {

    },
    deleteRow: function (p, r, gindex) {
        var ev = this, m = p.getGridKeyMemvars();
        if (!ev.formActionChange("BeforeDelete", m)) return;
        p.request('delete', 'GetRow', m, function (p0, d, run) {
            if (run) p.deleteRow(r, gindex);
            ev.formActionChange("AfterDelete", d, run)
        }, "", "Dir");
    },
    checkNotBlank: function (fun) {
        var p = this._dir, e = p.element, isCon = true, m = new Memvars(), opt = {}, inputs = e.find('.input-field');

        e.find('.table').each(function () {
            if (!isCon) return;
            var i, j, fi, o, tb = $(this), gindex = parseInt(tb.attr("grid-index")), g = p.grid(gindex), fs = g.fields.field, dt = g.data, len = dt.count(), id = g.id, foreignFields = [], foreignValues = [], externalFields = [];
            if (!g.allowBlank && len == 0) {
                $.alert($.msg.get("GridBlank"), null, p);
                isCon = false;
                return;
            }
            for (i = 0; i < fs.length; i++) {
                fi = fs[i];
                if (!isCon) return;
                if (fi.foreignField != "") {
                    foreignFields.push(fi.name);
                    if (fi.foreignField.indexOf("@@") == 0)
                        foreignValues.push(fi.foreignField);
                    else
                        foreignValues.push(p.valForm(fi.foreignField));
                }
                if (fi.fieldType == "EX") externalFields.push(fi.name);
                if (!fi.allowBlank || fi.viewType == "Lookup") {//Grid not blank
                    for (j = 0; j < len ; j++) {
                        o = p.jCell(j, i, gindex);
                        var allBlk = fi.allowBlank;
                        if (fi.allowBlankCondition != "") {
                            cExc = "allBlk = (" + fi.allowBlankCondition.replace(/\[!/gi, "p.valForm('").replace(/\[/gi, "dt.val(" + j + ", '").replace(/\]/gi, "')") + ");";
                            eval(cExc);
                            if (o.isInputCell() && fi.viewType == "Lookup") o.lookup("option", { allowBlank: allBlk });
                        }
                        if (!fi.notAuth && !fi.readOnly && !fi.hidden && ((!allBlk && ((fi.dataType == 'C' && dt.val(j, fi.name) == "") || (fi.dataType == 'D' && dt.val(j, fi.name) == null) || (fi.dataType == 'N' && dt.val(j, fi.name) == 0) || (fi.dataType == 'I' && dt.val(j, fi.name) == 0))) || (o.isInputCell() && fi.viewType == 'Lookup' && !o.lookup("option", "valid")))) {
                            p.tabActive(o);
                            $.showToast($.msg.get("FieldBlank").replace("{0}", fi.text.lan)); o.focus(); o.select();
                            isCon = false;
                            return;
                        }
                    }
                }
            }
            //if (isCon) m.val(g.id, "T", dt.sqlval(foreignFields, foreignValues, externalFields), g.table);
        });
        if (!isCon) return;

        inputs.each(function () {
            if (!isCon) return;
            var o = $(this), cf = o.fieldName(), fi = p.field(cf), ex = null;
            if ((!fi.allowBlank && !fi.notAuth && !fi.hidden && ((fi.dataType == 'C' && o.fval() == "") || (fi.dataType == 'D' && o.fval() == null) || (fi.dataType == 'N' && o.fval() == 0) || (fi.dataType == 'I' && o.fval() == 0))) || (fi.viewType == 'Lookup' && !o.lookup("option", "valid"))) {
                //$.alert($.msg.get("FieldBlank").replace("{0}", fi.text.lan), null, p, function (msg) { o.focus(); msg._close(); });
                $.showToast($.msg.get("FieldBlank").replace("{0}", fi.text.lan)); o.focus();
                isCon = false;
            }
            if (fi.operation != "") ex = "FIND|" + fi.aliasName + "|" + fi.operation + "|" + fi.join;
            if (fi.fieldType != 'EX') o.addMemvar(m, ex);
            opt["_" + fi.name] = o.fval();
            if (isCon && fun && inputs.index(o) == inputs.length - 1) {
                fun(m, opt);
            }
        });
    },
    shortCutKeyEvent: function (key, alt, ctrl) {
        //console.log(key)
        var p = this._dir, bid = p.options.buttonGridKeys[key];
        if (bid && p.grid() && (p.options.buttonIds.indexOf(bid) != -1 || (bid == 'add') || (bid == 'delete') || (bid == 'copy'))) {
            var gindex = 0;
            p.find('.tab-pane.tab-grid.active').each(function () {
                $(this).find('.table').each(function () {
                    gindex = parseInt($(this).attr("grid-index"));
                });
            });
            this.buttonGridClick(bid, gindex);
            return false;
        }
        bid = p.options.buttonFormKeys[key];
        if (bid && p.options.buttonIds.indexOf(bid) != -1) {
            p.find("button[btnId='" + bid + "']").focus();
            this.buttonDialogClick(bid);
            return false;
        }
        return true;
    },
    buttonClick: function (bid, gindex) {
        var p = this._dir;
        if (gindex != null)
            this.buttonGridClick(bid, gindex);
        else
            this.buttonDialogClick(bid);
    },
    loadUploadFile: function (o, funAddLinkDown) {
        return true;
    },
    beforeButtonGridClick: function (id, gindex, r) {
        return true;
    },
    buttonGridClick: function (id, gindex, beforeEvent) {
        if (!gindex) gindex = 0;
        var p = this._dir;

        var event = this, r = p.curr("r", undefined, gindex);
        if (p.options.action == "VIEW") return;
        if (p.options.wait) {
            if (!p.options.buttonWaitId) { p.options.buttonWaitId = id; p.options.buttonWaitGrid = gindex; }
            //console.log(p.options.buttonWaitId);
            return;
        }

        if (beforeEvent === undefined) beforeEvent = true;
        if (beforeEvent && !this.beforeButtonGridClick(id, gindex, r)) return;
        switch (id) {
            case 'edit':
                if (r != null) {
                    var m = p.getGridKeyMemvars("EDIT").val('copy', 'I', 0);
                    if (!event.formActionChange("BeforeShowEditDir", m)) return;
                    $.createDir(false, { controller: p.options.dirController, folder: "Dir", dirViewType: "Dialog", parent: p, memvars: m, action: "EDIT" });
                }
                break;
            case 'view':
                if (r != null) {
                    var m = p.getGridKeyMemvars("VIEW").val('copy', 'I', 0);
                    if (!event.formActionChange("BeforeShowViewDir", m)) return;
                    $.createDir(false, { controller: p.options.dirController, folder: "Dir", dirViewType: "Dialog", parent: p, memvars: m, action: "VIEW", readOnly: true });
                }
                break;
            case 'delete':
                if (r != null)
                    if (p.options.dirViewType == "Grid" || p.options.dirViewType == "Lookup") {
                        $.question($.msg.get("VoucherDelete"), $.msg.get("DeleteTitle"), p, function (q, v) {
                            if (v) event.deleteRow(p, r, gindex);
                            q._close();
                        });
                    } else {
                        if (p.options.action == "VIEW" || !this.gridDetailActionChange(gindex, 'BeforeDeleteRow', r)) return;
                        p.deleteRow(r, gindex)
                        this.gridDetailActionChange(gindex, 'AlterDeleteRow', r);//Se bo sau nay
                        this.gridDetailActionChange(gindex, 'AfterDeleteRow', r);
                    }
                break;
            case 'add':
                if (p.options.dirViewType == "Grid" || p.options.dirViewType == "Lookup") {
                    var m = p.getGridKeyMemvars("NEW").val('copy', 'I', 0);
                    if (!event.formActionChange("BeforeShowNewDir", m)) return;
                    $.createDir(false, { controller: p.options.dirController, folder: "Dir", dirViewType: "Dialog", parent: p, memvars: m, action: "NEW" });
                } else {
                    if (p.options.action == "VIEW" || !this.gridDetailActionChange(gindex, 'BeforeAddRow', null)) return;
                    r = p.addRow(null, gindex);
                    this.gridDetailActionChange(gindex, 'AfterAddRow', r);
                }
                break;
            case 'copy':
                if (r != null) {
                    if (p.options.dirViewType == "Grid" || p.options.dirViewType == "Lookup") {
                        var m = p.getGridKeyMemvars("NEW").val('copy', 'I', 1);
                        if (!event.formActionChange("BeforeShowCopyDir", m)) return;
                        $.createDir(false, { controller: p.options.dirController, folder: "Dir", dirViewType: "Dialog", parent: p, memvars: m, action: "NEW", copy: true });
                    } else {
                        if (p.options.action == "VIEW" || !this.gridDetailActionChange(gindex, 'BeforeCopyRow', r)) return;
                        p.addRow(r, gindex);
                        this.gridDetailActionChange(gindex, 'AfterCopyRow', r)
                    }
                }
                break;
            case 'moveup':
                if (r != null && r > 0) {
                    if (p.options.action == "VIEW" || !this.gridDetailActionChange(gindex, 'BeforeMoveUpRow', r)) return;
                    p.moveRow(gindex, r, r - 1);
                    this.gridDetailActionChange(gindex, 'AfterMoveUpRow', r);
                }
                break;
            case 'movedown':
                if (r != null) {
                    var g = p.grid(gindex), dt = g.data;
                    if (r < dt.count() - 1) {
                        if (p.options.action == "VIEW" || !this.gridDetailActionChange(gindex, 'BeforeMoveDownRow', r)) return;
                        p.moveRow(gindex, r, r + 1);
                        this.gridDetailActionChange(gindex, 'AfterMoveDownRow', r);
                    }
                }
                break;
            case 'refresh':
                p._refresh(true);
                p.clearSelectedItems();
                break;
            case 'find':
                p.showFilter(p.options.controller);
                break;
            case 'message':
                p.showFilter("systextlanguage", null, { _controller: p.options.controller });
                break;
            case 'editPrintForm':
                if (p.options.wait) return;
                var time = $.userinfo.val('CommandTimeout');
                p.wait(true, id);
                var param = { cController: p.options.controller, cFolder: "Grid" };
                $.invoke('GetDirStruct', param, p, time, function (d) {
                    var m = new Memvars();
                    m.add([["action", "C", "NEW"], ["xcontroller", "C", p.options.controller], ["xid", "C", ""]]);
                    p.showFilter("saveReportPrint", m, { _fields: d, action: "NEW", renderCompleted: function () { p.wait(false, id); } });
                    $.clearClientCache();
                }, null, function () {
                    p.wait(false, id);
                })
                break;
            case 'freeze':
                var g = p.grid(gindex);
                if (g._currCol != null && g._currCol != g._currFreeze)
                    g._currFreeze = g._currCol;
                else
                    g._currFreeze = -1;
                p.freeze(g)
                break;
            case 'selectAll':
                p.find(".grid-select-multi._select_").fval(1).change();
                break;
            case 'deselectAll':
                p.find(".grid-select-multi._select_").fval(0).change();
                break;
            case 'export':
                var trows = p.options.pageInfo.val(0, "t_record");
                var funExport = function () {
                    var url = "../AppHandler/FileHandler.ashx?param=" + $.encodeb64UTF8("Export"), m = p.getMemvars(p), obj = p.getColumnExportInfo();
                    m.val("pageIndex", "I", "0");
                    $.postNewTab(url, { controller: p.options.controller, folder: p.options.folder, title: p.options.title, subtitle: p.options.subtitle, memvar: JSON.stringify(m.val()), headerRowCount: obj.headerRowCount, tabId: $.getTabId(), columnInfo: JSON.stringify(obj.fields) });
                }

                if (p.options.dirObjectType != "Report" && trows > 1000)
                    $.question(p.msg("VoucherBigData", ["%s", trows]), null, p, function (q, v) {
                        q._close();
                        if (v) funExport();
                    });
                else funExport()
                break;
            case 'downtemplate':
                var url = "../AppHandler/FileHandler.ashx?param=" + $.encodeb64UTF8("DownTemplate");
                $.postNewTab(url, { controller: p.options.controller });
                break;
            case 'import':
                p.showFilter("selectFile");
                break;
            default:
                break;
        }
    },
    beforeButtonDialogClick: function (id) {
        return true;
    },
    buttonDialogClick: function (id, beforeEvent) {
        var ev = this, p = ev._dir;
        var e = p.element, m = new Memvars(['action', 'C', p.options.action]);
        if (p.options.wait) {
            if (!p.options.buttonWaitId) { p.options.buttonWaitId = id; p.options.buttonWaitGrid = null; }
            //console.log(p.options.buttonWaitId);
            return;
        }

        if (beforeEvent === undefined) beforeEvent = true;
        if (beforeEvent && !this.beforeButtonDialogClick(id)) return;
        switch (id) {
            case 'ok':
                if (p.options.action == "VIEW") return;
                var isChange = p.options.dataChanged, isChangeUpload = false, isCon = true;
                e.find('.input-field').each(function () {
                    if (!isCon) return;
                    var o = $(this), cf = o.fieldName(), fi = p.field(cf), allBlk = fi.allowBlank;
                    if (fi.allowBlankCondition != "") {
                        cExc = "allBlk = (" + fi.allowBlankCondition.replace(/\[!/gi, "p.valForm('").replace(/\]/gi, "')") + ");";
                        eval(cExc);
                        if (fi.viewType == "Lookup") o.lookup("option", { allowBlank: allBlk });
                    }
                    if ((!o.prop("readonly") && fi.readOnly) || (!o.prop("disabled") && fi.disabled)) isCon = false;
                    if ((!allBlk && !fi.notAuth && !fi.hidden && ((fi.dataType == 'C' && o.fval() == "") || (fi.dataType == 'D' && o.fval() == null) || (fi.dataType == 'N' && o.fval() == 0) || (fi.dataType == 'I' && o.fval() == 0))) || (fi.viewType == 'Lookup' && !o.lookup("option", "valid"))) {
                        p.tabActive(o);
                        //$.alert($.msg.get("FieldBlank").replace("{0}", fi.text.lan), null, p, function (msg) { o.focus(); msg._close(); });
                        $.showToast($.msg.get("FieldBlank").replace("{0}", fi.text.lan)); o.focus(); o.select();
                        isCon = false;
                    }
                    if (fi.dataType == 'C' && fi.checkCode == "1") {
                        if (!p.checkCode(fi.name)) {
                            $.alert($.msg.get('CheckCodeMessage').replace("{0}", fi.text.lan).replace('{1}', $.msg.get('SpecialChars')), null, p, function (msg) { o.focus(); msg._close(); });
                            isCon = false;
                        }
                    }
                    if (p.options.action == "EDIT" && fi.fieldType != 'EX') {
                        if (fi.fieldType == 'PK') m.val('@old_' + cf, o.dataType(), p.val(cf));
                        if ($.compare(o, p.val(cf)) != 0) o.addMemvar(m, (fi.fieldType != 'EXParam') ? "EDIT" : null); //Neu GT thay doi thi khi add vao Memvars se update cac gt nay thoi
                        else o.addMemvar(m, (fi.fieldType != 'EXParam') ? 'FIELD' : null);
                    } else if (p.options.action == "NEW" && fi.fieldType != 'EX') {
                        o.addMemvar(m, (fi.fieldType != 'EXParam') ? 'FIELD' : null);
                    }
                });
                e.find('.table').each(function () {
                    if (!isCon) return;
                    var i, j, fi, o, tb = $(this), gindex = parseInt(tb.attr("grid-index")), g = p.grid(gindex), fs = g.fields.field, dt = g.data, len = dt.count(), id = g.id, foreignFields = [], foreignValues = [], externalFields = [];
                    if (!g.allowBlank && len == 0) {
                        $.alert($.msg.get("GridBlank"), null, p);
                        isCon = false;
                        return;
                    }
                    for (i = 0; i < fs.length; i++) {
                        fi = fs[i];
                        if (!isCon) return;
                        if (fi.foreignField != "") {
                            foreignFields.push(fi.name);
                            if (fi.foreignField.indexOf("@@") == 0)
                                foreignValues.push(fi.foreignField);
                            else
                                foreignValues.push(p.valForm(fi.foreignField));
                        }
                        if (fi.fieldType == "EX") externalFields.push(fi.name);
                        if (!fi.allowBlank || fi.viewType == "Lookup") {//Grid not blank
                            for (j = 0; j < len ; j++) {
                                o = p.jCell(j, i, gindex);
                                var allBlk = fi.allowBlank;
                                if (fi.allowBlankCondition != "") {
                                    cExc = "allBlk = (" + fi.allowBlankCondition.replace(/\[!/gi, "p.valForm('").replace(/\[/gi, "dt.val(" + j + ", '").replace(/\]/gi, "')") + ");";
                                    eval(cExc);
                                    if (fi.viewType == "Lookup") o.lookup("option", { allowBlank: allBlk });
                                }
                                if (!fi.notAuth && !fi.hidden && ((!allBlk && ((fi.dataType == 'C' && dt.val(j, fi.name) == "") || (fi.dataType == 'D' && dt.val(j, fi.name) == null) || (fi.dataType == 'N' && dt.val(j, fi.name) == 0) || (fi.dataType == 'I' && dt.val(j, fi.name) == 0))) || (fi.viewType == 'Lookup' && !o.lookup("option", "valid")))) {
                                    p.tabActive(o);
                                    //$.alert($.msg.get("FieldBlank").replace("{0}", fi.text.lan), null, p, function (msg) { o.focus(); msg._close(); });
                                    $.showToast($.msg.get("FieldBlank").replace("{0}", fi.text.lan)); o.focus(); o.select();
                                    isCon = false;
                                    return;
                                }
                            }
                        }
                    }
                    if (isCon) m.val(g.id, "T", dt.sqlval(foreignFields, foreignValues, externalFields), g.table);
                });
                if (!isCon) return;
                e.find('.upload-field,.image-field').each(function () {
                    var o = $(this), files = o.fval(), cf = o.fieldName(), fi = p.field(cf);
                    if (fi.fieldType != 'EX') {
                        m.val(cf, "C", files, (fi.fieldType != 'EXParam') ? 'FIELD' : null);
                        if (o.attr("old-val") != files) isChange = true;
                    }
                });
                var funEndSave = function () {
					p.wait(false, id); }
                    , funAfterInsert = function (p, d, run) {
						return ev.formActionChange("AfterInsert", d, run)
					}
                    , funAfterUpdate = function (p, d, run) { return ev.formActionChange("AfterUpdate", d, run) }

                if (p.options.action == "EDIT" && (isChange)) {
                    if (!ev.formActionChange("BeforeUpdate", m)) return;
                    p.wait(true, id);
                    p.request('update', 'GetRow', m, funAfterUpdate, "EDIT", undefined, funEndSave);
                } else if (p.options.action == "EDIT" && !(isChange)) {
                    // Đây là trường hợp khi không có sự thay đổi dữ liệu, chỉ gắn giá trị
					var controller = $.queryString('id');
					if (controller && controller != '' && (controller === 'dmbv' || controller === 'dmvt' || controller === 'dmbanner' || controller === 'dmth' || controller === 'dmbh' || controller === 'dmclvt' || controller === 'dmch' ||  controller === 'smail' || controller === 'allsmail' || controller === 'smaildmkh')) {
						if (!ev.formActionChange("BeforeUpdate", m)) return;
						p.wait(true, id);
						p.request('update', 'GetRow', m, funAfterUpdate, "EDIT", undefined, funEndSave);
					} else {
						p._close();
					}
                } else if (p.options.action == "NEW") {
                    if (!ev.formActionChange("BeforeInsert", m)) return;
                    p.wait(true, id);
                    p.request('insert', 'GetRow', m, funAfterInsert, "NEW", undefined, funEndSave);
					console.log(m);
					data_m = m;
					console.log(data_m);
					//var m = p.getGridKeyMemvars("VIEW").val('copy', 'I', 0);
                   // if (!ev.formActionChange("BeforeShowViewDir", m)) return;
                    //$.createDir(false, { controller: p.options.dirController, folder: "Dir", dirViewType: "Dialog", parent: p, memvars: m, action: "VIEW", readOnly: true });
					//var m = p.getGridKeyMemvars("VIEW").val('copy', 'I', 0);
					//if (!event.formActionChange("BeforeShowViewDir", m)) return;
					//p.wait(true, "VIEWDETAIL");

                }
                else
                    p._close();
                break;
            case 'editForm':
                p.options.memvars.val("action", "C", "EDIT");
                p.options = $.extend(p.options, { action: "EDIT", struct: null, readOnly: false, isRendered: false, fromView: true })
                p._create();
                break;
            case 'deleteForm':
                var pa = p.options.parent;
                if (pa && pa.options.dirViewType == "Grid" && pa.options.controller == p.options.controller) {
                    p._close();
                    pa.options.event.buttonGridClick('delete', 0);
                    return;
                }
                $.question($.msg.get("VoucherDelete"), $.msg.get("DeleteTitle"), p, function (q, v) {
                    q._close();
                    if (v) {
                        var ev = p.options.event, m = p.getMemvars()
                        if (!ev.formActionChange("BeforeDelete", m)) return;
                        p.request('delete', 'GetRow', m, function (p0, d, run) {
                            if (run) {
                                ev.formActionChange("AfterDelete", d, run)
                                p._close()
                            }
                        }, "", "Dir");
                    }
                });
                break;
            case 'questionOk':
                if (p.options.msgFunction) p.options.msgFunction(p, true);
                else p._close();
                break;
            case 'questionCancel':
                if (p.options.msgFunction) p.options.msgFunction(p, false);
                else p._close();
                break;
            case 'message':
                p.showFilter("systextlanguage", null, { _controller: p.options.controller });
                break;
            case 'lookupOk':
                if (p.options.msgFunction) p.options.msgFunction(p, true);
                else {
                    var r = p.curr("r"), o = p.options.objectTarget, isMulti = (p.options.viewInfo.lookupType == "Multi"), cf = p.options.viewInfo.lookupRef.trim(), l = o.lookup("instance");
                    if (isMulti) {
                        var keys = p.selectedItems();
                        o.fval(keys.join(","));
                        if (p.options.selectedReference && p.options.selectedReference.length)
                            l.valRef(cf, p.options.selectedReference.join(","));
                        else
                            l.valRef(cf, "");
                        l.checkOnChange();
                        o.focus();
                    } else if (r != null) {
                        o.fval(p.val(r, 0));
                        o.data('lastValue', o.val());
                        l.valRef(cf, p.val(r, 1));
                        o.lookup("option", { "valid": true });
                        l.checkOnChange();
                        o.focus();
                    }
                    p._close();
                }
                break;
            case 'lookupCancel':
                if (p.options.msgFunction) p.options.msgFunction(p, false);
                else {
                    if (p.options.objectTarget) p.options.objectTarget.focus();
                    p._close();
                }
                break;
            case 'filterOk':
                var ev = this;
                ev.checkNotBlank(function (m2, opt) {
                    var cF, fi, pa = p.options.parent, sub = [];
                    if (pa && pa.options.dirViewType == "Grid") m2.setExtend("FIND");
                    for (cF in opt) {
                        sub.push("{" + cF.substr(1) + "}");
                        fi = p.field(cF.substr(1));
                        sub.push(fi.dataType == "D" ? $.date(opt[cF]) : opt[cF]);
                        if (fi.aliasName.indexOf("@DF") == 0)
                            if (fi.dataType == "D")
                                $.localVal(fi.aliasName, $.date(opt[cF]));
                            else
                                $.localVal(fi.aliasName, opt[cF]);
                    }
                    var bfReturn = ev.beforeAcceptFilter(m2, opt, sub);
                    if (!bfReturn) return;
                    if ($.type(bfReturn) == "array") {
                        m2 = bfReturn[0];
                        opt = bfReturn[1];
                        sub = bfReturn[2];
                    }
                    if (opt._data_analysis_struct != null) {
                        if (opt._data_analysis_struct != "") {
                            var aPivot = opt._data_analysis_struct.split("|"), aVals = (aPivot[3] == "") ? [] : aPivot[3].split(","), k = aVals.length;
                            while (k--) aVals[k] = aVals[k].substr(aVals[k].indexOf("-") + 1);
                            opt.pivotText = opt._data_analysis_struct;
                            opt.pivotInfo = { rows: aPivot[1].split(","), columns: ((aPivot[2] == "") ? [] : aPivot[2].split(",")), values: aVals, headers: aPivot[4].split(",") }
                            opt.title = p.jObject('data_analysis_struct').find('option:selected').text();
                        }
                    }
                    if (opt._report_filtering != null) {
                        delete opt["_report_filtering"];
                        m2.remove("report_filtering");
                    }
                    if (p.options.struct.isProcessing) {
                        param = { cController: p.options.controller, iPageIndex: 1, isReload: true, cPivotText: opt.pivotText || "", oMemvars: m2.val() }, time = $.userinfo.val('ReportTimeout')
                        p.wait(true, id);
                        $.invoke('GetProcessingData', param, p, time, function (d) {
                            p.wait(false, id);

                            var k = d.GridData[0].Tables[0].ColumnNames.indexOf("message");
                            if (k != -1) {//Neu co message thi canh bao va destroy form.
                                var cmsg = d.GridData[0].Tables[0].Rows[0][k];
                                var fun = function () {
                                    var k = d.GridData[0].Tables[0].ColumnNames.indexOf("toast");
                                    if (k != -1) $.showToast(d.GridData[0].Tables[0].Rows[0][k], p);
                                    k = d.GridData[0].Tables[0].ColumnNames.indexOf("script");
                                    if (k != -1) eval(d.GridData[0].Tables[0].Rows[0][k]);
                                }
                                if (cmsg != "") {
                                    if (cmsg.indexOf("$") == 0) cmsg = $.msg.get(cmsg.substr(1));
                                    $.alert(cmsg, null, p, function (q) {
                                        q._close();
                                        fun();
                                    });
                                } else
                                    fun();
                                return;
                            }
                            opt = $.extend(opt, { controller: p.options.controller, folder: "Grid", dirViewType: "Grid", dirData: d, showOrderRows: d.GridData[0].Tables[0].ColumnNames.indexOf("stt") == -1, hasData: true, isProcessing: true, subtitle: sub, memvars: m2 });
                            $.createDir(true, opt);
                        }, null, function () {
                            p.wait(false, id);
                        })
                    } else {
                        if (pa) {
                            opt = $.extend(opt, { memvars: m2, subtitle: sub, pageIndex: 1 })
                            pa._setOptions(opt)
                            p._close();
                        }
                        else {
                            opt = $.extend(opt, { controller: p.options.controller, folder: "Grid", dirViewType: "Grid", memvars: m2, subtitle: sub });
                            $.createDir(true, opt);
                        }
                    }
                    if (pa) pa.clearSelectedItems();
                    ev.afterAcceptFilter(p, pa);
                });
                break;
			case '@next':
                //2024 next/back
                var form = p.options.parent;
                var g = form.grid(0), gindex = g.gridIndex, r = g._currRow, c = g._currCol, fi = g.fields.field[c];
                document.$renderContent = true;
                if (r < g.data.count() - 1) {
                    r++; $.fieldFocus(form.jCell(r, c, gindex))
                    var m = form.getGridKeyMemvars("VIEW").val('copy', 'I', 0);
                    document.getElementById('subcontent').innerHTML = '';
                    $.createDir(false, { controller: form.options.dirController, folder: "Dir", dirViewType: "Dialog", parent: form, memvars: m, action: "VIEW", readOnly: true });
                }//Down
                $.stopEvent(event);
                break;
            case '@previous':
                //2024 next/back
                var form = p.options.parent;
                var g = form.grid(0), gindex = g.gridIndex, r = g._currRow, c = g._currCol, fi = g.fields.field[c];
                document.$renderContent = true;
                if (r > 0) {
                    r--; $.fieldFocus(form.jCell(r, c, gindex))
                    var m = form.getGridKeyMemvars("VIEW").val('copy', 'I', 0);
                    document.getElementById('subcontent').innerHTML = '';
                    $.createDir(false, { controller: form.options.dirController, folder: "Dir", dirViewType: "Dialog", parent: form, memvars: m, action: "VIEW", readOnly: true });
                } //Up
                $.stopEvent(event);
                break;
            case 'filterCancel':
            case 'cancel':
                if (p.options.folder != "Dir" || !p.options.dataChanged)
                    p._close();
                else
                    $.question($.msg.get("VoucherClose"), $.msg.get("AlertTitle"), p, function (q, v) {
                        q._close();
                        if (v) p._close();
                    });
                break;
            case 'zoom':
                if (p.options.dirViewType == "Question") return;
                e.find(".table").each(function () {
                    var tbl = $(this), gindex = parseInt(tbl.attr("grid-index")), g = p.options.struct.grids.grid[gindex];
                    g._currFreeze = -1;
                    p.freeze(g);
                })
                if ($(window).width() > 767) {
                    var modal = p.find('.modal-dialog');
                    var modalBody = modal.find(".modal-body");
                    var tab = $(modal.find('.tab-content')[0]);
                    p.options.fullScreen = !p.options.fullScreen;

                    modal.removeAttr("style");
                    if (!p.options.fullScreen) {
                        tab.css("height", tab.css("min-height"));
                        modal.removeClass("modal-form-full");
                        modalBody.removeClass("modal-body-full")
                        modalBody.parent().removeClass("size-full");
                    }
                    else {
                        p.options.tabHeight = $(document).height() - modal.height() + tab.outerHeight();
                        tab.css("height", p.options.tabHeight + "px");
                        modal.addClass("modal-form-full");
                        modalBody.addClass("modal-body-full")
                        modalBody.parent().addClass("size-full");
                    }
                    p.find("button[btnid='zoom']").find("span").html((p.options.fullScreen) ? "&#x02013;" : "&#x025A1;")
                }
                break;
            case '@info':
                var i, time = $.userinfo.val('CommandTimeout'), wkey = "GETINFO", m = p.getMemvars(p), aKeys = p.options.struct.fieldKey.split(","), vKeys = [];
                if (p.options.wait) return;
                m.val('table', 'C', p.options.struct.table);
                m.val('fieldKey', 'C', p.options.struct.fieldKey);
                for (i = 0; i < aKeys.length; i++) {
                    vKeys.push(p.valForm(aKeys[i].trim()));
                }
                m.val('valKey', 'C', vKeys.join(","));
                var param = { strCommand: "Dir-getDirInfo-GetRow", oMemvar: m.val() };
                p.wait(true, wkey);
                $.invoke('RunSQL', param, p, time, function (d) {
                    if (d) {
                        d = new DataRow(d);
                        var txt = $.msg.get("VoucherInfoText"), cols = d.obj.ColumnNames, k = cols.length;
                        while (k--) txt = txt.replace("{" + cols[k] + "}", d.val(cols[k]));
                        $.alert(txt, $.msg.get("VoucherInfoTitle"), p);
                    }
                    p.wait(false, wkey);
                }, null, function () {
                    p.wait(false, wkey);
                })
                break;
            default:
                break;
        }
        if (id.indexOf("@i") == 0) {//Info Dir
            var i, time = $.userinfo.val('CommandTimeout'), wkey = "GETINFO", m = p.getMemvars(p), aKeys = p.options.struct.fieldKey.split(","), vKeys = [];
            if (p.options.wait) return;
            m.val('table', 'C', p.options.struct.table);
            m.val('fieldKey', 'C', p.options.struct.fieldKey);
            for (i = 0; i < aKeys.length; i++) {
                vKeys.push(p.valForm(aKeys[i].trim()));
            }
            m.val('valKey', 'C', vKeys.join(","));
            //p.showFilter(id.substr(1), m, { folder: "Grid" });
            var opt = $.extend({}, { controller: id.substr(1), folder: "Grid", dirViewType: "Lookup", parent: p, lookupOk: false, isProcessing: true, subtitle: p.options.subtitle, memvars: m }, {});
            $.createDir(false, opt);
        }
    },
    gridDetailActionChange: function (gindex, action, r) {
        return true;
    },
    formActionChange: function (action, agr1, agr2, agr3) {
        return true;
    },
    gridCellValueChange: function (o, g, r, c, v) {
    },
    formFieldValueChange0: function (o, cF, v) {
        var p = this._dir;
        if (p.options.dirObjectType == "Report")
            switch (cF) {
                case "report_filtering":
                    if (v != "") {
                        var m = new Memvars(), wkey = cF, time = $.userinfo.val('CommandTimeout');
                        if (p.options.wait) return;
                        m.add([['id', 'C', v], ['controller', 'C', p.options.controller]]);
                        var param = { strCommand: "Filter-getJsonForm-GetRow", oMemvar: m.val() };
                        p.wait(true, wkey);
                        $.invoke('RunSQL', param, p, time, function (d) {
                            d = new DataRow(d);
                            var fi, opt = JSON.parse(d.val("jsonform"));
                            for (var x in opt) {
                                fi = p.field(x.substr(1));
                                if (fi.name != "report_filtering" && fi.aliasName.indexOf('@') != 0 && fi.aliasName.indexOf('@DF') != 0 && fi.aliasName.indexOf('@Curr') != 0)
                                    p.valForm(fi.name, opt[x]);
                            }
                            //console.log(opt);
                            p.wait(false, wkey);
                        }, null, function () {
                            p.wait(false, wkey);
                        })
                    } else {
                        p.find('.input-field').each(function () {
                            var o = $(this), cf = o.fieldName(), fi = p.field(cf);
                            if (fi.name != "report_filtering" && fi.aliasName.indexOf('@') != 0 && fi.aliasName.indexOf('@DF') != 0 && fi.aliasName.indexOf('@Curr') != 0) {
                                o.fval($.strToObject(fi.valueDefault, fi.dataType));
                            }
                        });
                    }
                    break;
                case "data_analysis_struct":
                    break;
                default:
                    break;
            }
    },
    formFieldValueChange: function (o, cF, v) {
    },
    commandActionClick0: function (action, id, po) {
        var p = this._dir, v, opt = {};
        if (action.indexOf("report_filtering_cmd") == 0)
            p.find('.input-field').each(function () {
                var o = $(this), cf = o.fieldName(), fi = p.field(cf);
                if (fi.name != "report_filtering" && fi.aliasName.indexOf('@DF') != 0 && fi.aliasName.indexOf('@Curr') != 0) {
                    if (fi.dataType == "D") v = o.val();
                    else v = o.fval();
                    opt["_" + fi.name] = v;
                }
            });
        switch (action) {
            case "report_filtering_cmd.add": //Them mau
                $.createDir(false, { controller: "saveReportForm", folder: "Filter", dirViewType: "Dialog", parent: p, reportForm: JSON.stringify(opt), _controller: p.options.controller, _filterAction: "NEW" });
                $.clearClientCache();
                break;
            case "report_filtering_cmd.overwrite": //Luu mau dang chon
                var m = new Memvars(), wkey = action, time = $.userinfo.val('CommandTimeout'), o = p.jObject('report_filtering');
                if (o.fval() == "") {
                    o.focus();
                    return;
                }
                if (p.options.wait) return;
                m.add([['id', 'C', o.fval()], ['controller', 'C', p.options.controller], ['reportForm', 'C', JSON.stringify(opt)]]);
                var param = { strCommand: "Filter-saveJsonForm-GetRow", oMemvar: m.val() };
                p.wait(true, wkey);
                $.invoke('RunSQL', param, p, time, function (d) {
                    p.runDataReturn(d);
                    $.clearClientCache();
                    p.wait(false, wkey);
                }, null, function () {
                    p.wait(false, wkey);
                })
                break;
            case "report_filtering_cmd.edit": //Luu mau truoc do
                var o = p.jObject('report_filtering');
                p.wait(true, id);
                var opts = $.merge([], p.field('report_filtering').viewInfo.options.option);
                opts.splice(0, 1);
                var funLoadFilter = function (p0) {
                    var fiFilter = p0.field('report_filtering');
                    fiFilter.viewInfo.options.option = opts;
                }
                var funRenComplete = function (p0) {
                    if (o.fval() != "") {
                        p0.valForm(['name', 'report_filtering'], [o.find('option:selected').text(), o.fval()])
                    }
                    p.wait(false, id);
                }
                $.createDir(false, { controller: "saveReportForm", folder: "Filter", dirViewType: "Dialog", parent: p, reportForm: JSON.stringify(opt), _controller: p.options.controller, loading: funLoadFilter, _filterAction: "EDIT", _filterData: opts, renderCompleted: funRenComplete });
                $.clearClientCache();
                break;
            case "report_filtering_cmd.delete":// Xoa mau dang chon
                var m = new Memvars(), wkey = action, time = $.userinfo.val('CommandTimeout'), o = p.jObject('report_filtering');
                if (o.fval() == "") {
                    o.focus();
                    return;
                }
                if (p.options.wait) return;
                $.question($.msg.get("VoucherDelete"), $.msg.get("DeleteTitle"), p, function (q, v) {
                    if (v) {
                        m.add([['id', 'C', o.fval()], ['controller', 'C', p.options.controller]]);
                        var param = { strCommand: "Filter-deleteJsonForm-GetRow", oMemvar: m.val() };
                        p.wait(true, wkey);
                        $.invoke('RunSQL', param, p, time, function (d) {
                            var run = p.runDataReturn(d);
                            if (run) {
                                o.find("[value=" + o.fval() + "]").remove();
                                o.focus();
                                $.clearClientCache();
                            }
                            p.wait(false, wkey);
                        }, null, function () {
                            p.wait(false, wkey);
                        })
                    }
                    q._close();
                });
                break;
            case "data_analysis_struct_cmd.add":// Tao mau phan tich moi
                if (p.options.wait) return;
                var time = $.userinfo.val('CommandTimeout'), o = p.jObject('data_analysis_struct');
                p.wait(true, id);
                var param = { cController: p.options.controller, cFolder: "Grid" };
                $.invoke('GetDirStruct', param, p, time, function (d) {
                    $.createDir(false, { controller: "saveReportPivot", folder: "Filter", dirViewType: "Dialog", parent: p, _fields: d, _controller: p.options.controller, _filterAction: "NEW", renderCompleted: function () { p.wait(false, id); } });
                    $.clearClientCache();
                    //p.wait(false, id);
                }, null, function () {
                    p.wait(false, id);
                })

                break;
            case "data_analysis_struct_cmd.edit":// Sua mau phan tich dang chon
                var time = $.userinfo.val('CommandTimeout'), o = p.jObject('data_analysis_struct');
                if (o.fval() == "") {
                    o.focus();
                    return;
                }
                if (p.options.wait) return;
                p.wait(true, id);
                var param = { cController: p.options.controller, cFolder: "Grid" };
                $.invoke('GetDirStruct', param, p, time, function (d) {
                    $.createDir(false, { controller: "saveReportPivot", folder: "Filter", dirViewType: "Dialog", parent: p, _fields: d, _controller: p.options.controller, _pivotInfo: o.fval(), _filterAction: "EDIT", renderCompleted: function () { p.wait(false, id); } });
                    $.clearClientCache();
                    //p.wait(false, id);
                }, null, function () {
                    p.wait(false, id);
                })
                break;
            case "data_analysis_struct_cmd.delete":// Xoa mau dang chon
                var m = new Memvars(), wkey = action, time = $.userinfo.val('CommandTimeout'), o = p.jObject('data_analysis_struct');
                if (o.fval() == "") {
                    o.focus();
                    return;
                }
                if (p.options.wait) return;
                $.question($.msg.get("VoucherDelete"), $.msg.get("DeleteTitle"), p, function (q, v) {
                    if (v) {
                        m.add([['id', 'C', o.fval().split('|')[0]], ['controller', 'C', p.options.controller]]);
                        var param = { strCommand: "Filter-deletePivotForm-GetRow", oMemvar: m.val() };
                        p.wait(true, wkey);
                        $.invoke('RunSQL', param, p, time, function (d) {
                            var run = p.runDataReturn(d);
                            if (run) {
                                o.find("[value='" + o.fval() + "']").remove();
                                o.focus();
                                $.clearClientCache();
                            }
                            p.wait(false, wkey);
                        }, null, function () {
                            p.wait(false, wkey);
                        })
                    }
                    q._close();
                });
                break;
            default:
                break;
        }
    },
    commandActionClick: function (action, id, po) {
    },
    selectItemChanged: function (dt) {
    },
    tabChanged: function (index, id) {
        return true;
    },
    beforeInit: function (renderType, dt) {
    },
    afterInit: function (renderType) {
    },
    beforeRenderGrid: function (g, dt) {
    },
    beforeRenderGridRow: function (g, dt, fi, r, col) {
        return true;
    },
    afterRenderGridRow: function (g, dt, fi, r, col) {
        return true;
    },
    beforeShowLookupDialog: function (m, o, cF, opt) {//Xu ly them/sua memvars truoc khi show lookup (Dùng cho check chọn nhiều)
        return true;
    },
    beforeAcceptFilter: function (m2, opt, sub) { //Xu ly truoc khi bấm nhận cho form Filter. m2: memvars đc tạo từ form, opt: Options tạo từ fields trên form dùng để truyền lên form gọi tiếp theo
        return true;
    },
    beforeViewLink: function (cF, opt) { //Xu ly truoc khi bấm nhận bam vao link xem chi tiet
        return true;
    },
    afterAcceptFilter: function (p, pa) {
    },
    beforePrint: function (id, m, opt) {//Xu lý truong khi in, cho dừng lai hoặc thêm param truyền vào store print
        return true;
    }
}

$.widget("iswift.lookup", {
    options: {
        field: null,
        parent: null,
        id: "",
        pageIndex: 1,
        selectedIndex: -1,
        exact: true,
        allowBlank: null,
        show4Val: null,
        requestEnter: null,
        checkBlur: true,
        key: "",
        check: "",

        grid: false,
        refField: null,

        valid: false,
        requestVal: []
    },
    _create: function () {
        var p = this, e = p.element, fi = p.options.field, vinfo = fi.viewInfo, cf = vinfo.lookupRef.trim(), pa = p.options.parent, isMulti = (vinfo.lookupType == "Multi"), timeout;
        p.options.id = "POPUP_LOOKUP_" + pa.options.id + "_" + fi.name;
        p.initRefField(cf);
        if (p.options.allowBlank === null) p.options.allowBlank = fi.allowBlank;
        p.refreshOption(p, e, cf, isMulti, vinfo);

        //console.log("create: " + fi.name + "-valid0:" + p.options.valid.toString());
        e.parent().find(".btn-lookup").click(function () {
            if (e.prop("readonly") || e.prop("disabled")) return;
            if (!e.is(":focus")) e.focus();
            var m = pa.getMemvars(pa), opt = {}, wkey = "LOOKUPDIALOG-" + e.fieldName() + pa.get(e, "r");//, wkeyblur = "LOOKUPBLUR-" + e.fieldName() + pa.get(e, "r");
            p.refreshKey();
            m.add([['lookupKey', 'C', p.options.key], ['val', 'C', ""]]);
            if (!pa.options.event.beforeShowLookupDialog(m, e, e.fieldName(), opt)) return;

            //pa.wait(false, wkeyblur); 
            pa.waitRemove("LOOKUPBLUR");
            if (pa.options.wait) return;
            pa.wait(true, wkey);
            opt = $.extend({}, { controller: vinfo.lookupId, folder: "Lookup", dirViewType: "Lookup", parent: pa, memvars: m, objectTarget: e, valRef: p.valRef(cf), viewInfo: vinfo, renderCompleted: function () { pa.wait(false, wkey); } }, opt);
            $.createDir(false, opt);
        });
        e.popup({
            type: "textchange",
            id: p.options.id,
            firstCreated: false,
            init: function (po) {
                if (e[0].onchange) {
                    e[0]._onchange = e[0].onchange;
                    e[0].onchange = null;
                }
                e.bind('focus', function () {
                    p.options.oldVal = e.fval();
                    p.options.checkBlur = true;
                    p.options.pageIndex = 1; p.options.selectedIndex = -1; p.options.data = null; p.options.requestVal = [];
                    p.refreshKey();
                    //console.log(fi.name + " - focus:" + p.options.oldVal + " - " + "-valid0:" + p.options.valid.toString() + " exact:" + p.options.exact);
                });
                e.bind('textchange', function () {
                    //console.log("text:[" + e.val() + "]");
                    clearTimeout(timeout);
                    p.options.pageIndex = 1; p.options.selectedIndex = -1; p.options.checkBlur = true; p.options.data = null;
                    if (isMulti) return;
                    p.clearRef(p, pa, cf);
                    timeout = setTimeout(function () {
                        //console.log("text:[" + e.fval() + "]");
                        if (e.fval() == "" && e.fval() != p.options.requestEnter && !p.isShowVal(p, e)) p.popupHide(); //Neu gia tri blank va ko phai Enter thi an popup
                        else if (e.is(":focus") && e.fval().length >= 2 || po.isShow()) p._refresh(); //Neu leng text >=2 hoac popup dang show thi moi hien
                        else p.options.data = null;
                    }, 700);
                });
                e.bind("blur", function () {
                    clearTimeout(timeout);
                    e.data('lastValue', e.val());
                    if (isMulti || (!p.options.exact && !p.options.data)) { if (p.checkOnChange()) p.valid(); return; }
                    //console.log(fi.name + "-valid1:" + p.options.valid.toString());
                    if (!p.options.valid && p.options.exact && p.options.data && p.options.data.get(0).count() > 0 && p.options.data.get(0).val(0, 0).toString().trim() == e.fval()) {
                        p.valid(0);
                        p.checkOnChange();
                        //console.log("0" + p.options.valid);
                    } else if (p.options.valid && p.options.exact && p.options.allowBlank && e.fval() == "") {
                        p.popupHide();
                        p.checkOnChange();
                        //console.log("1" + p.options.valid);
                    }
                    else {
                        //console.log("blur valid:" + p.options.valid + " - checkBlur: " + p.options.checkBlur);
                        var wkey = "LOOKUPBLUR-" + e.fieldName() + pa.get(e, "r")
                        pa.wait(true, wkey, false)
                        setTimeout(function () {
                            //console.log("2" + p.options.valid);
                            if (!p.options.valid && p.options.checkBlur) {
                                //console.log("blur valid:" + p.options.valid + " - checkBlur: " + p.options.checkBlur);
                                p.valid(); p.checkOnChange();
                            }
                            else {
                                p.popupHide(); //p.checkOnChange();
                            }
                            pa.wait(false, wkey, false)
                        }, 200); //Khi valid neu can phai (khi checkBlur=true) check DL tren server thi
                    }
                });
                if (isMulti) {
                    e.bind('paste', $.stopEvent);
                    e.bind('drop', $.stopEvent);
                    e.bind('cut', $.stopEvent);
                    if (vinfo.lookupExactValue == "1")
                        e.bind('keypress', function (event) {
                            $.stopEvent(event);
                        })
                }
                e.bind('keydown', function (event) {
                    var k = event.keyCode;
                    if (isMulti && vinfo.lookupExactValue == "1" && (k == 8 || k == 46)) {
                        $.stopEvent(event);
                        return;
                    }
                    if (!isMulti) {
                        if ([38, 40, 33, 34, 27].indexOf(k) >= 0)
                            $.stopEvent(event)
                        if (p.options.data) {
                            var gdt = p.options.data.get(0);
                            if (k == 40) {//Down
                                if (p.options.selectedIndex != gdt.count() - 1)
                                    p.options.selectedIndex += 1;
                            }
                            if (k == 38) {//Up
                                if (p.options.selectedIndex >= 0)
                                    p.options.selectedIndex -= 1;
                            }
                            var elm = po.options.elm;
                            if (elm) {
                                elm.find("td").css("background-color", "")
                                elm.find("tbody tr:nth-child(" + (p.options.selectedIndex + 1) + ") td").css("background-color", "rgba(255, 214, 0, 0.55)");
                            }
                        }
                        if (k == 33 && p.options.pageIndex > 1) { p.options.pageIndex -= 1; p._refresh(); }
                        if (k == 34 && p.options.data && p.options.pageIndex < p.options.data.get(1).val(0, 't_page')) { p.options.pageIndex += 1; p._refresh(); }
                        if (k == 27)
                            if (po.isShow()) p.popupHide();
                            else $.winKeyFunction(27, false, false);
                    }
                });
            },
            refresh: function (po, elm) {
                elm.find("tr").click(function (event) {
                    var o = $(this), gdt = p.options.data.get(0), r = o.index();
                    p.options.selectedIndex = r;
                    p.options.checkBlur = false; //Gan DL ko can check khi valid
                    p.valid(r);
                    p.checkOnChange();
                    p.popupHide();
                    e.select();
                });
            },
            showing: function (p, elm, os) {
                os.left -= 1;
                return true;
            }
        });
    },
    refreshValid: function () {
        var p = this, e = p.element, fi = p.options.field, vinfo = fi.viewInfo, cf = vinfo.lookupRef.trim();
        e.data('lastValue', e.val());
        p.options.valid = !p.options.exact || (p.options.allowBlank && e.fval() == "") || p.valRef(cf) != "";
    },
    refreshKey: function (baseKey) {
        var key = this.options.field.viewInfo.lookupKey, e = this.element, pa = this.options.parent, i = 0, cF, fi, v;
        if (baseKey != null) key = baseKey;
        while (true) {//Form
            i = key.indexOf("![", i);
            if (i == -1) break;
            cF = key.substr(i + 2, key.indexOf("]!") - i - 2)
            fi = pa.field(cF); v = $.objToSQL(pa.valForm(cF), fi.dataType);
            key = key.replace("![" + cF + "]!", v);
            i += 2;
        }
        if (e.isInputCell()) {
            var g = pa.grid(e), r = pa.get(e, "r");
            while (true) {//Grid
                i = key.indexOf("#[", i);
                if (i == -1) break;
                cF = key.substr(i + 2, key.indexOf("]#") - i - 2)
                fi = pa.field(cF, g.gridIndex); v = $.objToSQL(pa.valGrid(r, cF, g.gridIndex), fi.dataType);
                key = key.replace("#[" + cF + "]#", v);
                i += 2;
            }
        }
        key = key.replace('@@voucherCode', pa.options.voucherCode);
        if (baseKey == null) this.options.key = key;
        return key;
    },
    refreshOption: function (p, e, cf, isMulti, vinfo) {
        if (isMulti) p.options.exact = false;
        else if (!p.options.allowBlank) p.options.exact = true;
        else if (vinfo.lookupExactValue != "") p.options.exact = (vinfo.lookupExactValue == "1")
        e.data('lastValue', e.val());
        p.options.valid = !p.options.exact || (p.options.allowBlank && e.fval() == "") || p.valRef(cf) != "";
    },
    initRefField: function (cf) {
        var p = this, e = p.element;
        if (p.options.grid && cf != "") {
            if (e.closest("tr").find(".grid-input-field." + cf).length)
                p.options.refField = e.closest("tr").find(".grid-input-field." + cf);
            else
                p.options.refField = e.closest("tr").find("." + cf);
        }
    },
    valRef: function (cf, v) {
        var pa = this.options.parent;
        if (this.options.grid) {
            var ref = this.options.refField;
            if (ref && v === undefined) return ref.gval()
            else {
                if (!ref) return null;
                ref.gval(v);
                pa.appendToSource(ref);
            }
        }
        else {
            if (!cf) cf = this.options.field.viewInfo.lookupRef.trim();
            return pa.valForm(cf, v);
        }
    },
    valid: function (r, fun) {
        var p = this, e = p.element, fi = p.options.field, vinfo = fi.viewInfo, time = $.userinfo.val('CommandTimeout'), cf = vinfo.lookupRef.trim(), pa = p.options.parent, wkey = "LOOKUP-" + e.fieldName() + pa.get(e, "r"), isMulti = (vinfo.lookupType == "Multi");
        if (p.options.data && r != null) {
            var gdt = p.options.data.get(0);
            if (gdt.count() > 0) {
                e.fval(gdt.val(r, 0))
                if (cf != "") { p.valRef(cf, gdt.val(r, 1)); }//pa.valLabel(cf, gdt.val(r, 1));
                e.data('lastValue', e.val());
                p.options.valid = true;
                p.options.checkBlur = false;
                //console.log("Valid(" + r + "): [" + gdt.val(r, 0) + "]")
            } else {
                //console.log("reset 1")
                p.clearRef(p, pa, cf);
            }
            p.popupHide();
            //console.log(fi.name + "-valid2:" + p.options.valid.toString());
        } else if (e.fval() != "") {
            if (p.options.requestVal.indexOf(p.options.pageIndex + "#" + e.fval()) >= 0) return;
            //console.log("requert valid: " + e.fval());
            pa.wait(true, wkey);
            var keyValid = this.refreshKey(vinfo.lookupCheck);
            m = new Memvars([['pageIndex', 'N', p.options.pageIndex], ["textFilter", "C", e.val()], ['lookupKey', "C", keyValid], ['check', "I", 1], ['exact', "B", p.options.exact]]);
            $.invoke('GetAutoCompleteData', { cController: vinfo.lookupId, oMemvars: m.val() }, e.val(), time, function (obj, val) {
                //console.log("end requert valid: " + val);
                //pa.wait(false, wkey);
                if (e.val() == val) {
                    p.options.data = new DataSet(obj.GridData[0]);
                    p.valid(0);
                    if (fun) fun(e);
                } else {
                    //console.log("reset 2")
                    p.clearRef(p, pa, cf);
                }
                pa.wait(false, wkey);
            }, null, function () {
                p.options.requestVal = [];
                p.options.pageIndex = 1; p.options.selectedIndex = -1; p.options.checkBlur = true; p.options.data = null;
                p.clearRef(p, pa, cf);
                pa.wait(false, wkey);
            }
            )
        } else {
            //console.log("reset 3")
            p.clearRef(p, pa, cf);
            p.popupHide();
        }
    },
    checkOnChange: function () {
        var p = this, e = p.element, pa = p.options.parent;
        //console.log("check change: [" + p.options.oldVal + "] - " + e.fval());
        if (p.options.oldVal != e.fval()) {
            //console.log("RUN changed: " + e.fval());
            pa.appendToSource(e);
            pa.appendToSource(p.options.refField);
            if (e[0]._onchange) e[0]._onchange();
            return true;
        }
        return false;
    },
    enterKeyDown: function (cells, fi, idx, ctrl) { //return true: valid ok, return false: valid cancel
        var p = this, e = p.element, fi = p.options.field, vinfo = fi.viewInfo, time = $.userinfo.val('CommandTimeout'), isMulti = (vinfo.lookupType == "Multi");
        if (isMulti) return true;
        if (p.options.selectedIndex >= 0) {
            p.valid(p.options.selectedIndex);
            p.options.selectedIndex = -1;
            p.checkOnChange();
            return true;
        }
        if (e.fval() == "") {
            if (p.options.allowBlank) { return true; }//p.checkOnChange(); 20161030
            else {
                p.options.requestEnter = e.fval();
                p._refresh(function (ren) {
                    p.options.requestEnter = null;
                    if (!ren && e.is(":focus")) { $.nextFocus(cells, idx, undefined, undefined, ctrl); p.checkOnChange() }
                });
            }
        } else {
            if (!p.options.exact) { p.checkOnChange(); return true; }
            else {
                if (p.options.data && p.isShowVal(p, e) && (p.options.data.get(0).count() == 1 || (p.options.data.get(0).count() > 1 && e.fval() == p.options.data.get(0).val(0, 0)))) {
                    p.valid(0);
                    p.checkOnChange();
                    return true;
                } else {
                    if (p.options.valid) return true;
                    p.options.requestEnter = e.fval();
                    p._refresh(function (ren) {
                        p.options.requestEnter = null;
                        //if (!ren) console.log("next")
                        if (!ren && e.is(":focus")) { $.nextFocus(cells, idx, undefined, undefined, ctrl); p.checkOnChange() }
                    });
                }
            }
        }
        return false;
    },
    clearRef: function (p, pa, cf) {
        var e = p.element, valid = false;
        if (p.options.allowBlank && e.fval() == '') valid = true;
        p.options.valid = !p.options.exact || valid;
        p.valRef(cf, "");//pa.valLabel(cf, ""); 
        //console.log("clearRef: " + p.options.valid)
    },
    _refresh: function (fun) {
        var p = this, e = p.element, fi = p.options.field, vinfo = fi.viewInfo, cf = vinfo.lookupRef.trim(), time = $.userinfo.val('CommandTimeout'), pa = p.options.parent, rval = e.fval(), rkey = p.options.pageIndex + "#" + rval, wkey = "LOOKUP-" + e.fieldName() + pa.get(e, "r")
            , m = new Memvars([['pageIndex', 'N', p.options.pageIndex], ["textFilter", "C", e.val()], ['lookupKey', "C", p.options.key], ['check', "I", 0], ['exact', "B", p.options.exact]]);
        if (p.options.requestVal.indexOf(rkey) >= 0) return; //Neu gia tri dang request thi ko thuc hien
        if (p.options.show4Val == rkey) return; //Neu dang render cho gia tri rval nay thi return
        p.options.requestVal.push(rkey); //push list request
        //console.log("begin requert: " + wkey + "- requestVal:" + p.options.requestVal.join(",") + "- rkey:" + rkey + "- rval" + rval);
        pa.wait(true, wkey);
        $.invoke('GetAutoCompleteData', { cController: vinfo.lookupId, oMemvars: m.val() }, rval, time, function (obj, val) {
            //console.log("end requert: " + rkey);
            if (e.fval() == val) {
                p.options.data = new DataSet(obj.GridData[0]);
                var ren = p.render();
                if (fun) fun(ren);
            }
            p.options.requestVal.splice(p.options.requestVal.indexOf(val), 1); //remove list request
            //console.log(p.options.requestVal)
            if (p.options.requestVal.length == 0) pa.wait(false, wkey);
        }, null, function () {
            p.options.requestVal = [];
            p.options.pageIndex = 1; p.options.selectedIndex = -1; p.options.checkBlur = true; p.options.data = null;
            p.clearRef(p, pa, cf);
            pa.wait(false, wkey);
            //if (fun) fun(true);
        })
    },
    isShowVal: function (p, e) {
        return p.options.show4Val == p.options.pageIndex + "#" + e.fval()
    },
    render: function () {
        var i, k, p = this, e = p.element, cell = (e.isInputCell() ? e.closest(".grid-cell") : e), fi = p.options.field, vinfo = fi.viewInfo, s = new StringBuilder(), gdt = p.options.data.get(0), focus = e.is(":focus"), w1 = cell.outerWidth(), w2 = 700;
        if (gdt.count() == 0) { p.popupHide(); return false; }
        if (w1 > $("body").width() - 100) { w1 = 150; w2 = $("body").width() - 200 }
        if ((gdt.count() == 1 || (gdt.count() > 1 && gdt.val(0, 0) == e.fval())) && (!focus || p.options.requestEnter == e.fval())) { p.valid(0); p.popupHide(); return false; }
        if (p.isShowVal(p, e) && e.popup("instance").isShow()) return true;
        p.options.show4Val = p.options.pageIndex + "#" + e.fval();
        //console.log("render: " + e.fval());
        s.add("<table class='table table-autocomplete'>")
        s.add("<tbody class='data'>")
        for (k = 0; k < gdt.count() ; k++) {
            s.add("<tr style='height:25px;'>");
            s.add("<td style='width:0%;'></td>");
            s.add("<td class='grid-cell' style='width: " + w1 + "px'>")
            s.add(gdt.val(k, 0))
            s.add("</td>")
            s.add("<td class='grid-cell' style='width: " + w2 + "px'>")
            s.add(gdt.val(k, 1))
            s.add("</td>")
            s.add("</tr>")
        }
        s.add("</tbody>")
        s.add("</table>")
        e.popup("option", { sb: s });

        p.options.selectedIndex = 0;
        e.popup("instance").options.elm.find("tbody tr:nth-child(1) td").css("background-color", "rgba(255, 214, 0, 0.55)");

        return true;
    },
    popupHide: function () {
        var po = this.element.popup("instance");
        if (po) po.hide(false);
        this.options.show4Val = null;
    },
    _setOptions: function () {
        var p = this, e = p.element, fi = p.options.field, vinfo = fi.viewInfo, cf = vinfo.lookupRef.trim(), pa = p.options.parent, isMulti = (vinfo.lookupType == "Multi");
        this._superApply(arguments);
        p.refreshOption(p, e, cf, isMulti, vinfo);
    },
    _destroy: function () {
    }
});

$.widget("iswift.menu", {
    options: {
        type: "hover",
        data: null,
        parent: null,
        columsSource: ["id", "text", "image"],
        id: "",
        showcheck: false,
        click: null,
        createData: null,
        showing: null,
        refresh: null
    },
    _create: function () {
        var p = this, e = p.element, pa = p.options.parent
        if (p.options.createData) p.options.data = p.options.createData(p);
        p.options.id = "POPUP_MENU_" + p.options.id
        if ($.isTouch) p.options.type = "click";

        var icount = p.dataCount(), s = this.createSource(p.options.data)
        e.popup({
            type: p.options.type,
            sb: s,
            id: p.options.id,
            firstCreated: false,
            init: function (po) {
                po.options.sb = s;
            },
            showing: function (po, elm, os) {
                po.options.sb = s;
                if (p.options.type == "hover") {
                    elm.mouseenter(function () {
                        clearTimeout(po.options.hideTimeout);
                    });
                    elm.mouseleave(function () {
                        clearTimeout(po.options.hideTimeout);
                        po.options.hideTimeout = setTimeout(function () {
                            po.hide(false);
                        }, 200)
                    });
                }
                if (p.options.click)
                    elm.find("li").click(function () {
                        if (p.options.type == "hover") {
                            po.hide();
                            clearTimeout(po.options.hideTimeout);
                        }
                        p.options.click(po, $(this).attr("id"), $(this).index());
                    });
                if (icount == 0) return false;
                if (p.options.showing) if (!p.options.showing(p, po, elm, e)) return false;
                return true;
            },
            refresh: p.options.refresh
        });
    },
    _refresh: function () {

    },
    dataCount: function () {
        var a = this.options.data, icount = a.length;
        if (icount == null) icount = a.count();
        return icount;
    },
    createSource: function (a) {
        var i, p = this, e = p.element, icount = p.dataCount(), s = new StringBuilder();
        s.add("<ul class='dropdown-menu context-menu'>");// class='dropdown-menu context-menu hide-outside'
        for (i = 0; i < icount; i++) {
            var mid = i, mtxt, mimg;
            if ($.type(a[i]) == "array")
                if (a[i].length > 1) { mid = a[i][0]; mtxt = a[i][1]; mimg = a[i][2]; }
                else mtxt = a[i][0];
            else if ($.type(a) == "object") {//DataTable
                mid = a.val(i, p.options.columsSource[0]);
                mtxt = a.val(i, p.options.columsSource[1]);
                mimg = a.val(i, p.options.columsSource[2]);
            }
            else
                mtxt = a[i];
            if (mtxt == "-")
                s.add("<li role='separator' class='divider'></li>");
            else {
                s.add("<li id='" + mid + "'><a>");
                s.add("<div class='icon-menu menu-item-" + ((mimg && mimg != "") ? mimg : mid) + "'></div>");
                if (p.options.showcheck) s.add("<div class='icon-menu item-context-check' style='display: hidden;'></div>");
                s.add(mtxt);
                s.add("</a></li>")
            }
        }
        s.add("</ul>")
        return s;
    },
    show: function () {

    },
    hide: function () {

    },
    _setOptions: function () {
        this._superApply(arguments);
        this._refresh();
    },

});

$.widget("iswift.popup", {
    options: {
        sb: null,
        elm: null,
        type: "click",
        id: "",
        arrow: false,
        firstCreated: true,
        hideTimeout: null,

        //Event
        init: null, //Sau khi khoi tao
        refresh: null, //Sau khi khoi tao
        showing: null //Truoc khi show
    },
    documentClick: function (event) {
        var p = this, e = p.element, elm = this.options.elm
        if (!$(event.target).closest(elm).length && !$(event.target).closest(e).length) {
            this.hide();
        }
    },
    createElement: function () {
        var op = this.options;
        if (!op.elm) op.elm = $("<div>").attr("id", op.id).addClass("popup").appendTo($("body"));
        if (op.sb) { op.elm.html(op.sb.toString()); op.sb = null; }

        return op.elm;
    },
    isShow: function () {
        return (this.options.elm && this.options.elm.css('display') == 'block')
    },
    _create: function () {
        var p = this, e = p.element, id = p.options.id, elm = null;
        if (this.options.type == 'click')
            e.bind('mousedown', function (event) { p.show(); });
        if (this.options.type == 'rightclick') {
            e.bind('mousedown', function (event) {
                if (event.button == 2) {
                    if ($.popupObj) $.popupObj.hide();
                    p.show();
                    $.disableContextMenu = true;
                    setTimeout(function () { $.disableContextMenu = false; }, 500);
                }
            });
        }
        if (this.options.type == 'dblclick')
            e.bind('dblclick', function (event) { p.show(); });
        if (this.options.type == 'hover') {
            e.bind('mouseenter', function (event) {
                clearTimeout(p.options.hideTimeout);
                p.show();
            });
            e.bind('mouseleave', function (event) {
                clearTimeout(p.options.hideTimeout);
                p.options.hideTimeout = setTimeout(function () {
                    p.hide();
                }, 200)
            });
        }
        if (p.options.firstCreated) elm = p.createElement();
        if (this.options.init) this.options.init(p, elm);

        p.options._documentClick = function (event) {
            p.documentClick(event)
        };
    },
    _refresh: function () {
        var p = this, e = p.element, elm = p.createElement();
        if (this.options.refresh) {
            var rf = this.options.refresh(p, elm);
            if (rf === false) return;
        }
        p.show();
    },
    show: function () {
        //if (this.isShow()) return;
        var p = this, iscell = p.element.isInputCell(), e = (iscell) ? p.element.closest(".grid-cell") : p.element, elm = p.createElement(), os = e.offset();
        if (this.options.showing && !this.options.showing(p, elm, os)) return;
        var l = os.left, t = os.top + e.height() + parseInt(e.css('padding-top')) + parseInt(e.css('padding-bottom')), r = "";
        elm.css({ 'display': 'block' });
        var elmH = elm.height() || elm.children().outerHeight();
        //if (elmH == 0) elmH = elm.children().outerHeight();
        if (l + elm.width() > $("body").width()) { l = ""; r = 5; }
        if (t + elmH > $(window).height()) { t = os.top - elmH }
        //elm.css({ 'display': 'block', 'left': l, 'right': r, 'top': t });
        elm.css({ 'left': l, 'right': r, 'top': t });
        $("body").bind('click', p.options._documentClick);
        $.popupObj = p;
    },
    hide: function (all) {
        //if ($.popupObj) console.log("popup hide - " + $.popupObj.options.id);
        $("body").unbind('click', this.options._documentClick);
        if (this.options.firstCreated)
            this.options.elm.hide();
        else if (this.options.elm) {
            this.options.elm.remove();
            this.options.elm = null;
        }
        if (all === undefined || all) $.popupObj = undefined;
    },
    _setOptions: function () {
        this._superApply(arguments);
        this._refresh();
    },
    _destroy: function () {
        this.options.elm.remove();
    }
});

$.widget("iswift.table", {
    options: {
        head: true,
        foot: false,
        left: 0,
        right: 0,
        'z-index': 5
    },
    setCorner: function () {
        var p = this, e = p.element;
        var rHead = $();
        for (var i = 1; i <= p.options.left; i++) {
            rHead = $.merge(rHead, e.find("thead tr th:nth-child(" + i + ")"));
        }
        rHead.css("z-index", p.options['z-index'] + 1);
    },
    setParent: function () {
        var p = this, e = p.element;
        var parent = this.options.parent;
        fFix = function () {
            var left = parent.scrollLeft() - p.options.leftstart;
            if (left < 0) left = 0;
            p.options.leftColumns.css("left", left);
            e.find("thead tr > *").css("top", parent.scrollTop());
            p.options.firstcolumn.css("left", parent.scrollLeft());
            p.options.firstheader.css("left", parent.scrollLeft());
        }
        parent.unbind("scroll");
        parent.bind("scroll", fFix);
    },
    fixLeft: function () {
        var p = this, e = p.element;
        p.options.leftColumns = $();
        for (var i = 1; i <= p.options.left; i++) {
            p.options.leftColumns = $.merge(p.options.leftColumns, e.find("thead tr th:nth-child(" + i + ")"));
            p.options.leftColumns = $.merge(p.options.leftColumns, e.find("tbody tr td:nth-child(" + i + ")"));
        }
        p.options.leftColumns.css("position", "relative")
    },
    clearAndPaintLine: function () {
        var p = this, e = p.element;
        var th = e.find("th:not(:first-child)")
        th.css("left", "");
        th.css("z-index", "");
        th.removeClass('col-freeze');

        var td = e.find("td:not(:first-child)");
        td.css("position", "");
        td.css("left", "");
        td.css("z-index", "");
        td.removeClass('col-freeze');
        if (this.options.left != 1) {
            e.find("td:nth-child(" + p.options.left + ")").addClass('col-freeze');

            var lastRowSpan = -1;
            e.find("thead tr").each(function (index) {
                if (index > lastRowSpan) {
                    var cHeadFreeze = $(this).find("th").slice(0, p.options.left);
                    //Khoa cot cuoi cung khong phai la cot an
                    for (var i = cHeadFreeze.length - 1; i >= 0; i--) {
                        if (cHeadFreeze[i].style.display != "none") {
                            var xCol = $(cHeadFreeze[i]);
                            if (xCol.attr("rowspan"))
                                lastRowSpan = parseInt(xCol.attr("rowspan")) - 1;
                            else
                                lastRowSpan = 0;
                            xCol.addClass('col-freeze');
                            break;
                        }
                    }
                }
            });
        }
    },
    _create: function () {
        var p = this, e = p.element;
        p.options.parent = e.parent();
        p.options.firstcolumn = e.find("td:first-child");
        p.options.firstheader = e.find("th:first-child");
        p._refresh();
    },
    _refresh: function () {
        var p = this, e = p.element;
        p.options.leftstart = p.options.parent.scrollLeft();

        p.clearAndPaintLine();
        p.setParent();
        p.fixLeft();
        p.setCorner();

        p.options.firstcolumn.css("z-index", 9);
        p.options.firstheader.css("z-index", 10);
    },
    _setOptions: function () {
        this._superApply(arguments);
        this._refresh();
    },
    _destroy: function () {
    }
});

$.widget("iswift.date", {
    options: {
        calendar: null,
        checkBlur: true
    },
    _create: function () {
        var p = this, obj = p.element;
        var txtDate = obj.get(0), nullDate = $.getDateBlankText();
        var btnCalendar = obj.parent().find(".btn-calendar");

        if (obj[0].onchange) {
            obj[0]._onchange = obj[0].onchange;
            obj[0].onchange = null;
        }

        obj.bind("keypress", function (e) {
            if (p.isCharPress(e))
                e.preventDefault();
        });
        obj.bind("keydown", function (e) {
            if (p.options.calendar) p.options.calendar.datepicker("hide");
            var key = e.keyCode || e.charCode;
            var ctrl = e.ctrlKey ? e.ctrlKey : ((key === 17) ? true : false);
            var ccode = e.key || String.fromCharCode(e.keyCode); //e.key dung cho numpad
            var isNum = "0123456789".indexOf(ccode) != -1;
            var iFrom = txtDate.selectionStart;
            var iTo = txtDate.selectionEnd;
            ////        ctrl+x                                   //Nhập dài quá độ dài
            if ((key == 88 && ctrl) || (isNum && txtDate.value.length >= 10 && iFrom >= 10)) {
                e.preventDefault();
                return;
            }

            var single = (iFrom == iTo);
            var s = txtDate.value;
            var add = s.slice(iFrom, iTo);
            if (key == 8 || key == 46) {
                e.preventDefault();
                if (iFrom == iTo && iFrom == 0)
                    return; //Đã xóa hết
                if (txtDate.value != nullDate) {
                    if (add.length >= 10) {//Bôi đen cả textbox và xóa hoặc del
                        txtDate.value = nullDate;
                        p.moveto(0);
                    } else {
                        if (!(single && ((key == 8 && (iFrom == 3 || iFrom == 6)) || (key == 46 && (iFrom == 2 || iFrom == 5))))) {
                            if (add == "") add = " ";
                            if (single) {
                                if (key == 8) {
                                    if (iFrom >= 7)//Xóa năm backpace
                                        txtDate.value = s.slice(0, iFrom - 1) + s.slice(iFrom, 10) + " ";
                                    else
                                        txtDate.value = s.slice(0, iFrom - 1) + add + s.slice(iFrom, 10);
                                }
                                else
                                    if (iFrom >= 6)//Xóa năm dell
                                        txtDate.value = s.slice(0, iFrom) + s.slice(iFrom + 1, 10) + " ";
                                    else
                                        txtDate.value = s.slice(0, iFrom) + add + s.slice(iTo + 1, 10);
                            }
                            else {
                                add = add.replace(/[0-9]/g, " ")
                                txtDate.value = s.slice(0, iFrom) + add + s.slice(iTo, 10);
                            }
                        }
                        if (key == 8) p.moveto(iFrom - (iFrom == iTo ? 1 : 0)); //Move con trỏ khi bấm xóa
                        else p.moveto(iFrom);
                    }
                }
                else if (key == 8 && iFrom > 0) p.moveto(iFrom - 1); //Move con trỏ khi bấm xóa text trắng

            } else if (isNum && iFrom < 10) {//Chỉ cho phép nhập số
                e.preventDefault();
                if (single) {
                    if (iFrom == 2 || iFrom == 5)
                        p.moveto(iFrom + 1)
                    else {
                        txtDate.value = s.slice(0, iFrom) + ccode + s.slice(iFrom + 1, 10);
                        if (iFrom < 9)
                            p.moveto(iFrom + 1 + (iFrom == 1 || iFrom == 4 ? 1 : 0));
                        else
                            p.moveto(9);
                    }
                }
                else {
                    add = add.replace(/[0-9]/g, " ");
                    if (add.substring(0, 1) == "/") {
                        iFrom += 1;
                        add = ccode + add.substring(2);
                    }
                    else
                        add = ccode + add.substring(1);
                    txtDate.value = s.slice(0, iFrom) + add + s.slice(iTo, 10);
                    p.moveto(iFrom + 1);
                }

            }
        });
        obj.bind("blur", function (e) {
            if (txtDate.value == nullDate)
                return;
            if (txtDate.value.trim() == "") {
                txtDate.value = nullDate;
                return;
            }
            var ar = txtDate.value.split("/");
            var curDate = new Date();
            var cd = curDate.getDate().toString(), cm = (curDate.getMonth() + 1).toString(), cy = curDate.getFullYear().toString();
            var dd = "", mm = "", yyyy = "";
            if (ar.length == 3) {
                dd = ar[0].trim();
                mm = ar[1].trim();
                yyyy = ar[2].trim();
                if (yyyy.length < 4) {//Trường hợp nhập 2 số cuối của năm
                    yyyy = cy.substring(0, 2) + ar[2].trim();
                    if (yyyy.length > 4)
                        yyyy = yyyy.substring(yyyy.length - 4);
                }
                if (yyyy < 1700 || yyyy > 5700 || yyyy.length != 4)//Trường hợp nhập năm cách quá xa năm hiện tại
                    yyyy = cy;
            }
            if (dd == "") dd = cd;
            if (mm == "") mm = cm;
            if (yyyy == "") yyyy = cy;
            if (p.notdate(dd, mm, yyyy)) {
                mm = cm;
                if (p.notdate(dd, mm, yyyy)) {
                    dd = cd;
                    if (p.notdate(dd, mm, yyyy))
                        yyyy = cy;
                }
            }
            txtDate.value = $.newDate(dd, mm, yyyy);
        });
        //obj.bind("paste", function (e) {
        txtDate.addEventListener("paste", function (e) {
            e.stopPropagation();
            e.preventDefault();

            var clipboardData = e.clipboardData || window.clipboardData;
            var ar = clipboardData.getData('Text').split("/");
            var dd = "", mm = "", yyyy = "";

            var isOk = (ar.length == 3);
            if (ar.length == 3) {
                if (p.notdate(ar[0], ar[1], ar[2]))
                    isOk = false;
                else {
                    dd = ar[0].trim();
                    mm = ar[1].trim();
                    yyyy = ar[2].trim();
                }
            }
            if (isOk) txtDate.value = $.newDate(dd, mm, yyyy);
        });
        obj.bind("drop", function (e) {
            e.stopPropagation();
            e.preventDefault();
        });
        obj.bind("cut", function (e) {
            e.stopPropagation();
            e.preventDefault();
        });
        obj.bind("focus", function (e) {
            //console.log("focus")
            p.options.oldVal = obj.val();
        });
        obj.bind("blur", function (e) {
            //console.log("blur")
            p.checkOnChange()
            return;
            setTimeout(function () {
                if (p.options.checkBlur) p.checkOnChange()
                p.options.checkBlur = true;
            }, 300);
        });

        btnCalendar.on("click", function (e) {
            var calendar = p.options.calendar;
            //console.log("click btn")
            p.options.checkBlur = false;
            if (calendar != null) {
                var oldObj = calendar.datepicker("option").reference;
                if (obj.prop("readonly") || obj.prop("disabled")) return;
                if (obj != oldObj) {
                    calendar.datepicker("option", { "reference": obj, "dateinput": p });
                    calendar.datepicker("show");
                    obj.select();
                }
                else {
                    calendar.datepicker("hide");
                    obj.select();
                }
            }
        });
    },
    checkOnChange: function () {
        var p = this, e = p.element;
        //console.log("RUN change: [" + p.options.oldVal + "] - " + e.val());
        if (p.options.oldVal != e.val()) {
            if (!p.options.parent) p.options.parent = e.fdir();
            p.options.parent.appendToSource(e);
            if (e[0]._onchange) e[0]._onchange();
        }
    },
    moveto: function (x) {
        this.element.fselect(x);
        //this.element.get(0).setSelectionRange(x, x);
    },
    notdate: function (d, m, y) {
        var tempDate = new Date(y, --m, d);
        return !(m === tempDate.getMonth());
    },
    isCharPress: function (evt) {
        if (typeof evt.which == "undefined")
            return true;
        else if (typeof evt.which == "number" && evt.which > 0)
            return !evt.ctrlKey && !evt.metaKey && !evt.altKey && evt.which != 8;
        return false;
    }
});

$.widget("iswift.datepicker", {
    options: {
        reference: null,
        dateinput: null,
        cboYear: null,
        cboMonth: null,
        daySelect: null
    },
    documentClick: function (event) {
        var p = this, elm = p.element, e = this.options.reference.parent().find(".btn-calendar")
        if (!$(event.target).closest(elm).length && !$(event.target).closest(e).length) {
            p.hide();
        }
    },
    _create: function () {
        var i, p = this, e = p.element, s = new StringBuilder(), a = $.msg.get("DayLabel").split(",");
        //Init 
        s.add("<div class='date-header'><div class='date-btn-today'></div><div style='float: right;'><select name='month' class='date-month'>")
        for (i = 1; i <= 12; i++)
            s.add("<option value='" + i + "'>" + i + "</option>")
        s.add("</select><select name='year' class='date-year'></select></div></div>");

        s.add("<div class='date-body'><ul class='date-week clearfix'>");
        for (i = 0; i < a.length; i++)
            s.add("<li " + ((i == 0) ? "style='color: #F44336;'" : (i == 6) ? "style='color: #25c65e;'" : "") + ">" + a[i] + "</li>")
        s.add("</ul><ul class='date-day clearfix'></ul></div>");

        e.addClass("date-picker clearfix noselect").html(s.toString())

        var cboYear, cboMonth, daySelect, btnCurDate
        cboYear = e.find('.date-year');
        cboMonth = e.find('.date-month');
        daySelect = e.find('.date-day');
        btnCurDate = e.find(".date-btn-today")
        var d = new Date();

        var s = "";
        for (i = d.getFullYear() - 5; i <= d.getFullYear() + 5; i++)
            s += '<option value="' + i + '">' + i + '</option>';
        cboYear.html(s);

        btnCurDate.html($.newDate(d.getDate(), d.getMonth() + 1, d.getFullYear()));
        btnCurDate.on("click", function (e) {
            p.options.reference.val($(this).html());
            p.hide();
        });

        p.options.cboYear = cboYear;
        p.options.cboMonth = cboMonth;
        p.options.daySelect = daySelect;

        p.reCanvas();
        cboYear.on("change", function (e) {
            p.reCanvas();
        });
        cboMonth.on("change", function (e) {
            p.reCanvas();
        });
        p.options._documentClick = function (event) {
            p.documentClick(event)
        };
    },
    show: function () {
        var p = this, elm = p.element, e = p.options.reference;
        e = (e.isInputCell()) ? e.closest(".grid-cell") : e;
        if (e) {
            var os = e.offset(), l = os.left, t = os.top + e.height() + parseInt(e.css('padding-top')) + parseInt(e.css('padding-bottom')), r = "";
            if (l + elm.width() > $("body").width()) { l = ""; r = 5; }
            if (t + elm.height() > $(document).height()) { t = os.top - elm.height(); }
            elm.css({ 'display': 'block', 'left': l, 'right': r, 'top': t });
            $(document).bind('click', p.options._documentClick);

            var d = p.getDateReference();
            if (d == null) d = new Date();

            var xyear = d.getFullYear();
            var firstYear = parseInt(p.options.cboYear[0][1].value) - 1;
            if (xyear < firstYear) {
                p.options.cboYear[0][0].value = xyear;
                p.options.cboYear[0][0].text = xyear;
            }
            else {
                p.options.cboYear[0][0].value = firstYear;
                p.options.cboYear[0][0].text = firstYear;
            }

            p.options.cboYear.val(xyear).change();;
            p.options.cboMonth.val(d.getMonth() + 1).change();
            p.activeday(p.getDateReference());
        }
    },
    hide: function () {
        var p = this, obj = p.element;
        p.options.reference = null;
        obj.hide()
        $(document).unbind('click', p.options._documentClick);
    },
    reCanvas: function () {
        var p = this, obj = p.element;
        var year, month, week, hasDays, cboMonth, cboYear, daySelect;
        cboYear = p.options.cboYear;
        cboMonth = p.options.cboMonth;
        daySelect = p.options.daySelect;

        year = cboYear.val();
        month = cboMonth.val();
        hasDays = new Date(year, month, 0).getDate();
        week = p.toWeek(new Date(year, parseInt(month) - 1, 1));
        daySelect.empty();

        for (var i = 1; i < hasDays + 1; i++)
            daySelect.append('<li>' + i + '</li>');

        var dayWidth = daySelect.find('>li').outerWidth();
        daySelect.find('>li').eq(0).css('margin-left', dayWidth * week);
        daySelect.find('>li').each(function (index, element) {
            $(element).click(function () {
                var dd, mm, yyyy;
                dd = index + 1;
                mm = cboMonth.val();
                yyyy = cboYear.val();

                var obj = p.options.reference;
                if (obj != null) {
                    obj.val($.newDate(dd, mm, yyyy));
                    p.options.dateinput.checkOnChange();
                    p.options.dateinput.options.checkBlur = false;
                    obj.select()
                }
                p.hide();
            })
        });
        p.activeday(p.getDateReference());
    },
    activeday: function (d) {
        var p = this;
        if (d != null)
            if (d.getMonth() + 1 == p.options.cboMonth.val() && d.getFullYear() == p.options.cboYear.val())
                p.options.daySelect.children().eq(d.getDate() - 1).addClass('active').siblings().removeClass('active');
    },
    toWeek: function (dateTime) {
        return dateTime.getDay();
    },
    getDateReference: function () {
        var p = this, obj = p.element;
        var ref = p.options.reference;
        if (ref && ref.val().trim().length == 10) {
            var a = ref.val().split("/");
            if (a.length == 3)
                return new Date(a[2], parseInt(a[1]) - 1, a[0]);
        }
        return null
    }
});

$.widget("iswift.times", {
    options: {
        longTimes: false,
        checkHours: false
    },
    _create: function () {
        var p = this, obj = p.element;
        var txtTimes = obj.get(0), nullTimes = "00:00:00", maxLength = 8;
        if (!p.options.longTimes) {
            nullTimes = "00:00";
            maxLength = 5;
        }
        if (obj.val().length != maxLength) obj.val(nullTimes);
        if (obj[0].onchange) {
            obj[0]._onchange = obj[0].onchange;
            obj[0].onchange = null;
        }

        obj.bind("keypress", function (e) {
            if (p.isCharPress(e))
                e.preventDefault();
        });
        obj.bind("keydown", function (e) {
            var key = e.keyCode || e.charCode;
            var ctrl = e.ctrlKey ? e.ctrlKey : ((key === 17) ? true : false);
            var ccode = e.key || String.fromCharCode(e.keyCode); //e.key dung cho numpad
            var isNum = "0123456789".indexOf(ccode) != -1;
            var iFrom = txtTimes.selectionStart;
            var iTo = txtTimes.selectionEnd;
            ////        ctrl+x                                   //Nhập dài quá độ dài
            if ((key == 88 && ctrl) || (isNum && txtTimes.value.length >= maxLength && iFrom >= maxLength)) {
                e.preventDefault();
                return;
            }

            var single = (iFrom == iTo);
            var s = txtTimes.value;
            var add = s.slice(iFrom, iTo);
            if (key == 8 || key == 46) {
                e.preventDefault();
                if (iFrom == iTo && iFrom == 0)
                    return; //Đã xóa hết
                if (txtTimes.value != nullTimes) {
                    if (add.length >= maxLength) {//Bôi đen cả textbox và xóa hoặc del
                        txtTimes.value = nullTimes;
                        p.moveto(0);
                    } else {
                        if (!(single && ((key == 8 && (iFrom == 3 || iFrom == 6)) || (key == 46 && (iFrom == 2 || iFrom == 5))))) {
                            if (add == "") add = "0";
                            if (single) {
                                if (key == 8) {
                                    txtTimes.value = s.slice(0, iFrom - 1) + add + s.slice(iFrom, maxLength);
                                }
                                else
                                    txtTimes.value = s.slice(0, iFrom) + add + s.slice(iTo + 1, maxLength);
                            }
                            else {
                                add = add.replace(/[0-9]/g, "0")
                                txtTimes.value = s.slice(0, iFrom) + add + s.slice(iTo, maxLength);
                            }
                        }
                        if (key == 8) p.moveto(iFrom - (iFrom == iTo ? 1 : 0)); //Move con trỏ khi bấm xóa
                        else p.moveto(iFrom);
                    }
                }
                else if (key == 8 && iFrom > 0) p.moveto(iFrom - 1); //Move con trỏ khi bấm xóa text trắng

            } else if (isNum && iFrom < maxLength) {//Chỉ cho phép nhập số
                e.preventDefault();
                if (single) {
                    if (iFrom < maxLength) {
                        if (iFrom == 2 || iFrom == 5)
                            p.moveto(iFrom + 1)
                        else {
                            txtTimes.value = s.slice(0, iFrom) + ccode + s.slice(iFrom + 1, maxLength);
                            if (iFrom < maxLength - 1)
                                p.moveto(iFrom + 1 + (iFrom == 1 || iFrom == 4 ? 1 : 0));
                            else
                                p.moveto(maxLength - 1);
                        }
                    }
                }
                else {
                    add = add.replace(/[0-9]/g, "0");
                    if (add.substring(0, 1) == "/") {
                        iFrom += 1;
                        add = ccode + add.substring(2);
                    }
                    else
                        add = ccode + add.substring(1);
                    txtTimes.value = s.slice(0, iFrom) + add + s.slice(iTo, maxLength);
                    p.moveto(iFrom + 1);
                }

            }
        });
        obj.bind("blur", function (e) {
            if (txtTimes.value == nullTimes)
                return;
            if (txtTimes.value.trim() == "") {
                txtTimes.value = nullTimes;
                return;
            }
            if (p.options.checkHours) {
                var ar = (txtTimes.value + ":00").split(":");
                var hh = "", mm = "", ss = "";
                if (ar.length >= 3) {
                    hh = ar[0];
                    mm = ar[1];
                    ss = ar[2];

                    if (hh > "23") hh = "00";
                    if (mm > "59") mm = "00";
                    if (ss > "59") ss = "00";
                    var rs = hh + ":" + mm + (p.options.longTimes ? ":" + ss : "");
                    if (rs != txtTimes.value)
                        txtTimes.value = rs;
                }
                else
                    txtTimes.value = nullTimes;
            }
        });
        //obj.addEventListener("paste", function (e) {
        txtTimes.addEventListener("paste", function (e) {
            e.stopPropagation();
            e.preventDefault();

            var clipboardData = e.clipboardData || window.clipboardData;
            if (clipboardData == null) return;
            var ar = (clipboardData.getData('Text') + ":00").split(":");
            var hh = "", mm = "", ss = "";
            var isOk = false;
            if (ar.length >= 3) {
                hh = ar[0].trim();
                mm = ar[1].trim();
                ss = ar[2].trim();
                if (hh.toString().match(/^\d+$/) && mm.toString().match(/^\d+$/) && ss.toString().match(/^\d+$/))
                    isOk = true;
            }
            if (isOk) txtTimes.value = p.formatViewTimes(hh, mm, ss);
        });
        obj.bind("drop", function (e) {
            e.stopPropagation();
            e.preventDefault();
        });
        obj.bind("cut", function (e) {
            e.stopPropagation();
            e.preventDefault();
        });
        obj.bind("focus", function (e) {
            //console.log("focus")
            p.options.oldVal = obj.val();
        });
        obj.bind("blur", function (e) {
            //console.log("blur")
            p.checkOnChange()
        });
    },
    checkOnChange: function () {
        var p = this, e = p.element;
        //console.log("RUN change: [" + p.options.oldVal + "] - " + e.val());
        if (p.options.oldVal != e.val()) {
            if (!p.options.parent) p.options.parent = e.fdir();
            p.options.parent.appendToSource(e);
            if (e[0]._onchange) e[0]._onchange();
        }
    },
    moveto: function (x) {
        this.element.get(0).setSelectionRange(x, x);
    },
    isCharPress: function (evt) {
        if (typeof evt.which == "undefined")
            return true;
        else if (typeof evt.which == "number" && evt.which > 0)
            return !evt.ctrlKey && !evt.metaKey && !evt.altKey && evt.which != 8;
        return false;
    },
    formatViewTimes: function (h, m, s) {
        return (h.toString().length == 2 ? h : "0" + h) + ":" + (m.toString().length == 2 ? m : "0" + m) + (this.options.longTimes ? ":" + (s.toString().length == 2 ? s : "0" + s) : "");
    }
});

$.widget("iswift.number", {
    options: {
        digit: 0,
        length: 99
    },
    _create: function () {
        var p = this, obj = p.element;
        var txtNum = obj.get(0)
        var nullNum = "0";
        if (p.options.digit > 0) nullNum = "0.0000000000000000".substring(0, p.options.digit + 2);
        if (p.options.length == 99 && obj.attr("maxLength")) p.options.length = parseInt(obj.attr("maxLength"));

        if (obj[0].onchange) {
            obj[0]._onchange = obj[0].onchange;
            obj[0].onchange = null;
        }

        txtNum.addEventListener("keypress", function (e) {
            if (p.isCharPress(e))
                e.preventDefault();
        });
        txtNum.addEventListener("keydown", function (e) {
            if (obj.prop("readonly") || obj.prop("disabled")) return;

            var key = e.keyCode || e.charCode;
            var ctrl = e.ctrlKey ? e.ctrlKey : ((key === 17) ? true : false);
            var ccode = e.key || String.fromCharCode(e.keyCode); //e.key dung cho numpad
            var isNum = "0123456789".indexOf(ccode) != -1;
            var iFrom = txtNum.selectionStart;
            var iTo = txtNum.selectionEnd;
            var s = txtNum.value;
            var xval = s.slice(iFrom, iTo);
            var single = (iFrom == iTo);

            var lenNum = s.length;
            if (key == 8 || key == 46 || (key == 88 && ctrl)) {
                e.preventDefault();
                if (iFrom == iTo && iFrom == 0 && key != 46)
                    return; //Đã xóa hết
                if (txtNum.value != nullNum) {
                    if (xval.length >= lenNum) {//Bôi đen cả textbox và xóa hoặc del
                        txtNum.value = nullNum;
                        p.moveto(0);
                    } else {
                        var iFeed = 0;
                        if (key == 8) {
                            xval = (single ? s.slice(iFrom - 1, iFrom) : xval);
                            if (xval != " ") {
                                if (xval.indexOf(".") != -1)
                                    xval = ".";
                                else
                                    xval = "";

                                var oldVal = s.slice(0, iFrom - (single ? 1 : 0)) + xval + s.slice(iTo, lenNum);
                                var newVal = p.numFormat(oldVal);
                                iFeed = oldVal.length - newVal.length;
                                if (iFeed < 0) iFeed = 0
                                txtNum.value = newVal;
                            }
                        }
                        else {
                            xval = (single ? s.slice(iFrom, iFrom + 1) : xval);
                            if (xval == " ")
                                iFeed = -1;
                            else {
                                if (xval.indexOf(".") != -1)
                                    xval = ".";
                                else
                                    xval = "";

                                var oldVal = s.slice(0, iFrom) + xval + s.slice(iTo + (single ? 1 : 0), lenNum);
                                var newVal = p.numFormat(oldVal);
                                iFeed = oldVal.length - newVal.length;
                                if (iFeed < 0) iFeed = 0
                                txtNum.value = newVal;
                            }
                        }
                        var fixedIndex = 0;
                        if (xval.indexOf(".") != -1)
                            fixedIndex = txtNum.value.indexOf(".");
                        if (fixedIndex != 0)
                            p.moveto(fixedIndex)
                        else {
                            if (key == 8) p.moveto(iFrom - (iFrom == iTo ? 1 : 0) - iFeed); //Move con trỏ khi bấm xóa
                            else p.moveto(iFrom - iFeed);
                        }
                    }
                }
                else if (key == 8 && iFrom > 0) p.moveto(iFrom - 1); //Move con trỏ khi bấm xóa text trắng

            } else if (isNum) {//Chỉ cho phép nhập số
                e.preventDefault();

                var intLength = $.replaceAll(s.split(".")[0], " ", "").replace("-", "").length;
                if (iFrom >= lenNum && (p.options.digit > 0 || (p.options.digit <= 0 && intLength >= p.options.length)) || (p.options.digit > 0 && intLength >= p.options.length && "-.".indexOf(s.substring(iFrom, iFrom + 1)) != -1))
                    return;
                if ((iFrom > s.indexOf(".") && p.options.digit > 0) || intLength >= p.options.length) {
                    var last = s.slice(iTo + (single ? 1 : 0), lenNum), iFeed = 0;;
                    if (s.substring(iTo, iTo + 1) == " " && single) {
                        last = last.substring(1);
                        iFeed = 1;
                    }
                    var tmp = s.slice(0, iFrom) + ccode + last;
                    txtNum.value = p.numFormat(tmp);
                    if (iFrom != s.length - 1)
                        p.moveto(iFrom + 1 + iFeed);
                    else
                        p.moveto(iFrom);
                } else {
                    var iFeed = 0;
                    if (single) {
                        var oldVal = s.slice(0, iFrom) + ccode + s.slice(iTo, lenNum);
                        var newVal = p.numFormat(oldVal);
                        iFeed = oldVal.length - newVal.length;
                        txtNum.value = newVal;
                        p.moveto(iFrom + 1 - iFeed);
                    }
                    else {
                        var oldVal = "";
                        var fixedIndex = 0;
                        if (xval.indexOf(".") != -1) {
                            oldVal = s.slice(0, iFrom) + ccode + "." + s.slice(iTo, lenNum);
                            fixedIndex = 1;
                        }
                        else
                            oldVal = s.slice(0, iFrom) + ccode + s.slice(iTo, lenNum);

                        var newVal = p.numFormat(oldVal);
                        if (fixedIndex == 1) {
                            fixedIndex = newVal.indexOf(".");
                            txtNum.value = newVal;
                            p.moveto(fixedIndex);
                        }
                        else {
                            iFeed = oldVal.length - newVal.length;
                            txtNum.value = newVal;
                            p.moveto(iFrom + 1 - iFeed);
                        }

                    }
                }
            } else if (ccode == "." && p.options.digit > 0)
                p.moveto(txtNum.value.indexOf(".") + 1);
            else if (ccode == "-" && iFrom == 0) {
                //Xử lý gõ số âm
                if ("-0".indexOf(txtNum.value.substr(0, 1)) == -1) {
                    txtNum.value = "-" + txtNum.value;
                    p.moveto(1);
                } else {
                    txtNum.value = txtNum.value.replace("-", "");
                    p.moveto(0);
                }
            }
        });
        txtNum.addEventListener("blur", function (e) {
            if (obj.prop("readonly") || obj.prop("disabled")) return;
            if (txtNum.value == nullNum)
                return;
            if (txtNum.value.trim() == "") {
                txtNum.value = nullNum;
                return;
            }
            txtNum.value = p.numFormat(txtNum.value);
        });
        txtNum.addEventListener("paste", function (e) {
            if (obj.prop("readonly") || obj.prop("disabled")) return;
            e.stopPropagation();
            e.preventDefault();

            var clipboardData = e.clipboardData || window.clipboardData;
            var txt = clipboardData.getData('Text');
            if (txt != "") {
                txt += ".";
                var ar = txt.split(".");
                var tmp1 = ar[0].replace(/[^0-9]/g, '').toString().substring(0, p.options.length);
                var tmp2 = ar[1].replace(/[^0-9]/g, '').toString();
                if (tmp1.length > 0) {
                    txtNum.value = p.numFormat(tmp1 + (p.options.digit > 0 ? "." + tmp2 : ""));
                    p.moveto(0);
                }
            }
        });
        txtNum.addEventListener("drop", function (e) {
            e.stopPropagation();
            e.preventDefault();
        });
        txtNum.addEventListener("cut", function (e) {
            e.stopPropagation();
            e.preventDefault();
        });
        obj.bind("focus", function (e) {
            //console.log("focus")
            p.options.oldVal = obj.val();
        });
        obj.bind("blur", function (e) {
            p.checkOnChange();
        });
        this._refresh();
    },
    _setOptions: function () {
        this._superApply(arguments);
        this._refresh();
    },
    _refresh: function () {
        var p = this, obj = p.element;
        var txtNum = obj.get(0);
        var s = txtNum.value;
        if (p.options.digit <= 0)
            s = p.stringRound(s, 0).toString();
        txtNum.value = p.numFormat(s);
    },
    checkOnChange: function () {
        var p = this, e = p.element;
        //console.log("RUN change: [" + p.options.oldVal + "] - " + e.val());
        if (p.options.oldVal != e.val()) {
            if (!p.options.parent) p.options.parent = e.fdir();
            p.options.parent.appendToSource(e);
            if (e[0]._onchange) e[0]._onchange();
        }
    },
    moveto: function (x) {
        this.element.get(0).setSelectionRange(x, x);
    },
    notdate: function (d, m, y) {
        var tempDate = new Date(y, --m, d);
        return !(m === tempDate.getMonth());
    },
    isCharPress: function (evt) {
        if (typeof evt.which == "undefined")
            return true;
        else if (typeof evt.which == "number" && evt.which > 0)
            return !evt.ctrlKey && !evt.metaKey && !evt.altKey && evt.which != 8;
        return false;
    },
    numFormatString: function (number, digit) {
        var xTag = "";
        if (number.indexOf("-") != -1) {
            xTag = "-";
            number = number.replace("-", "");
        }
        number = number.replace(/ /g, '');
        if (number == "") number = "0"
        var decimalSeparator = ".";
        var thousandSeparator = " ";
        if (digit == -1)
            thousandSeparator = "";
        var result = String(number);
        var parts = result.split(decimalSeparator);
        if (parts[0].length > 1 && parseFloat(parts[0]) == 0) parts[0] = "0";
        if (digit > 0) {
            if (!parts[1])
                parts[1] = "0000000000".substr(0, digit);
            else if (parts[1].length < digit)
                parts[1] = (parts[1] + "0000000000").substr(0, digit);
            else if (parts[1].length > digit)
                parts[1] = this.stringRound("0." + parts[1], digit).substr(2);
        }
        else {
            parts[0] = this.stringRound(number, 0);
            if (parts[1]) parts.pop();
        }
        result = parts[0].split("").reverse().join("");
        result = result.replace(/(\d{3}(?!$))/g, "$1" + thousandSeparator);
        parts[0] = result.split("").reverse().join("");
        parts[0] = parts[0].replace(/^0+/, "");
        if (parts[0] == "") parts[0] = "0";
        if (parts[0] == "0") xTag = "";
        return xTag + parts.join(decimalSeparator);
    },
    numFormat: function (number) {
        return this.numFormatString(number, this.options.digit);
    },
    stringRound: function (number, digit) {
        number = number.replace(/\s/g, '');
        return parseFloat(number).toFixed(digit);
    },
    val: function (v) {
        this.element.val(this.numFormat(v.toString()));
    }
});


$.widget("iswift.treeview", {
    options: {
        tblData: null,
        colLevel: "xlevel",
        colHeader: "xheader",
        colCode: "xcode",
        showCheck: true,
        expandAll: true,
        inRight: true,
        minWidth: 100,
        onSelectedItem: null,
        onCheckedItem: null,
        onCreated: null,
        onResizeTree: null,
        id: null
    },
    _create: function () {
        var p = this, obj = p.element;
        var lastLevel = -1, maxLevel = 1;
        var tbl = p.options.tblData;
        var treeID = "treeview-" + Math.floor(Math.random() * 10000);
        var sb = new StringBuilder();
        var s = '<div id="' + treeID + '" class="tree-content"><div class="tree-resize ' + (p.options.inRight ? "left-resize" : "right-resize") + '"></div><ul class="tree-panel ' + (p.options.showCheck ? "" : "tree-check-hide") + '">@@L001';
        p.options.id = treeID;
        for (var i = 0; i < tbl.count() ; i++) {
            var ilevel = parseInt(tbl.val(i, p.options.colLevel));
            if (ilevel > maxLevel) maxLevel = ilevel;
            var xlevel = "@@L" + ("000" + ilevel).substr(-3);
            var xlevel2 = "@@L" + ("000" + (ilevel + 1)).substr(-3);
            var tmp = '<div class="checkbox node-tree"><div class="toggle-tree-box"><span class="toggle-tree ' + (p.options.expandAll ? "toggle-tree-expand" : "") + '"></span></div><label><input class="tree-check" type="checkbox" rowid="' + i + '"><span class="checkbox-material checkbox-tree"><span class="check"></span></span></label></div><div class="tree-text-label"><span>' + tbl.val(i, p.options.colHeader) + '</span></div>' + xlevel2 + '</li>' + xlevel;

            if (lastLevel == -1 || ilevel == lastLevel) {
                s = s.replace(xlevel2, "");
                tmp = '<li ' + (ilevel == 1 ? ' class="tree-root"' : '') + '>' + tmp;
                s = s.replace(xlevel, tmp);
            }
            else if (ilevel > lastLevel) {
                tmp = '<ul style="display: ' + (p.options.expandAll ? "block" : "none") + ';"><li>' + tmp + '</ul>';
                s = s.replace(xlevel, tmp);
            }
            else {
                for (var x = ilevel + 1; x <= lastLevel + 1; x++)
                    s = s.replace("@@L" + ("000" + x).substr(-3), "");
                if (ilevel == 1) {
                    s = s.replace("@@L001", "");
                    sb.add(s);
                    s = xlevel;
                }
                s = s.replace(xlevel, '<li>' + tmp);
            }
            lastLevel = ilevel;
        }
        for (var i = 1; i <= maxLevel + 1; i++)
            s = s.replace("@@L" + ("000" + i).substr(-3), "");
        s += '</ul></div>';
        sb.add(s);
        obj.append(sb.toString());

        treeID = "#" + treeID;
        $(treeID + ' .tree-panel li:has(ul)').addClass('tree-hassub');

        $(treeID + ' .tree-panel .toggle-tree-box').click(function () {
            var childUl = $(this).parent().parent().find("ul:eq(0)");
            p.toggleTagUl(childUl, $(this).find(">:first-child"));
        });

        $(treeID + ' .tree-panel .tree-text-label').click(function () {
            if (p.options.onSelectedItem != null) {
                $(treeID + ' .tree-text-label-focus').removeClass("tree-text-label-focus")
                $(this).addClass("tree-text-label-focus");

                var v = p.options.tblData.val($(this).parent().find(".tree-check:eq(0)").attr("rowid"), p.options.colCode);
                var v2 = '';
                $(this).parent().find(".tree-check").each(function () {
                    v2 += "," + p.options.tblData.val($(this).attr("rowid"), p.options.colCode);
                });
                if (v2.length > 0) v2 = v2.substr(1);
                if (p.options.onSelectedItem) p.options.onSelectedItem(p, v, v2)
            }
            else {
                var childUl = $(this).parent().find("ul:eq(0)");
                p.toggleTagUl(childUl, $(this).parent().find(".toggle-tree-box > .toggle-tree:eq(0)"));
            }
        });

        if (p.options.onCreated) p.options.onCreated(p)

        $(treeID + ' .tree-panel .tree-check').change(function () {
            var obj = $(this), flag = this.checked, parentLi = obj.closest('li');
            obj.parent().find(".check").removeClass('check-rdo')

            parentLi.find('.tree-check:gt(0)').prop('checked', flag);
            parentLi.find(".check").removeClass('check-rdo');

            v = p.options.tblData.val(obj.attr("rowid"), p.options.colCode);
            if (p.options.onCheckedItem) p.options.onCheckedItem(p, v, flag)

            p.setCheckParent(parentLi);
        });

        var oColResize, iStartX, iStartWidth, isResize = false;
        var _funMoveResize = function (e) {
            if (isResize) {
                var w = iStartWidth;
                if (p.options.inRight)
                    w += (iStartX - e.pageX);
                else
                    w -= (iStartX - e.pageX);

                if (w > p.options.minWidth) {
                    $(oColResize).width(w);
                    if (p.options.onResizeTree) p.options.onResizeTree(p, w);
                }
            }
        }, _funUpResize = function () {
            if (isResize) isResize = false;
            $("body").removeClass("noselect");
            $(document).unbind("mousemove", _funMoveResize);
            $(document).unbind("mouseup", _funUpResize);
        };

        $(treeID).find(".tree-resize").mousedown(function (e) {
            oColResize = $(this).closest(".tree-view");
            if (oColResize.length == 0)
                oColResize = $(this).parent();
            if ($.popupObj) $.popupObj.hide();
            isResize = true;
            iStartX = e.pageX;
            iStartWidth = oColResize.width();
            $("body").addClass("noselect");

            $(document).bind("mousemove", _funMoveResize);
            $(document).bind("mouseup", _funUpResize);
        });
    },
    toggleTagUl: function (childUl, toggle) {
        childUl.toggle();

        var c = childUl.css("display");
        if (c) {
            if (c == "none")
                toggle.removeClass("toggle-tree-expand")
            else
                toggle.addClass("toggle-tree-expand")

        }
    },
    setCheckParent: function (obj) {
        var curUl = obj.closest('ul');
        var curli = curUl.closest('li');
        var hasUncheck = false;
        var hasCheck = false;
        curUl.find('li').each(function () {
            if (!$(this).find('.tree-check').prop('checked'))
                hasUncheck = true;
            else
                hasCheck = true;
        });
        if (hasUncheck) {
            curli.find('.check:eq(0)').addClass('check-rdo');
            curli.find('.tree-check:eq(0)').prop('checked', hasCheck);
        }
        else {
            curli.find('.check:eq(0)').removeClass("check-rdo");
            curli.find('.tree-check:eq(0)').prop('checked', hasCheck);
        }
        if (!curli.hasClass("tree-root") && !curUl.hasClass("tree-panel"))
            this.setCheckParent(curli);
    },
    getCheckedItem: function (hasParent) {
        var p = this, obj = p.element;
        var s = "";
        var chk = obj.find(".tree-check:checked");
        chk.each(function () {
            if (!$(this).closest('li').hasClass("tree-hassub") || hasParent)
                s += "," + p.options.tblData.val($(this).attr("rowid"), p.options.colCode);
        });
        if (s.length > 0) s = s.substr(1);
        return s;
    },
    refreshItemCheck: function () {
        var p = this, e = p.element, dt = p.options.tblData, rows = dt.findRow("[xcheck]==1"), o, i, k = rows.length;
        while (k--) {
            i = rows[k];
            o = e.find("input[rowid = " + i + "]");
            o.prop("checked", true);
            p.setCheckParent(o.closest("li"));
        };
    },
    getParentCheckedItem: function () {
        var p = this, obj = p.element, s = "", dt = p.options.tblData;
        dt.queryUpdate("[xcheck] = 0", "1==1");
        var chk = obj.find(".tree-check:checked");
        chk.each(function () {
            if ($(this).parent().find(".check.check-rdo").length == 0)
                dt.val($(this).attr("rowid"), "xcheck", 1);
        });
        var rows = dt.findRow("[xcheck]==1"), i, k = rows.length;
        while (k--) {
            i = rows[k];
            if (dt.val(i, "xchild") > 0 && dt.findRow("[xcheck] == 1 && [xparent] == '" + dt.val(i, p.options.colCode) + "'").length == dt.val(i, "xchild"))
                dt.queryUpdate("[xcheck] = 0", "[xparent] == '" + dt.val(i, p.options.colCode) + "'");
        }
        rows = dt.findRow("[xcheck] == 1");
        for (k = 0; k < rows.length; k++) {
            i = rows[k];
            s += "," + dt.val(i, p.options.colCode);
        }
        if (s.length > 0) s = s.substr(1);
        return s;
    },
    selectItem: function (v) {
        var p = this;
        if (v === undefined) {
            var index = $("#" + this.options.id).find(".tree-text-label-focus").closest('li').find(".tree-check:eq(0)").attr("rowid")
            if (index !== undefined)
                return p.options.tblData.val(index, p.options.colCode);
            return "";
        } else {
            $("#" + this.options.id).find(".tree-text-label-focus").removeClass("tree-text-label-focus")
            if (v !== null) {
                for (var i = 0; i < p.options.tblData.count() ; i++)
                    if (p.options.tblData.val(i, p.options.colCode) == v) {
                        $("#" + this.options.id).find("input[rowid='" + i + "']").closest('li').find(".tree-text-label:eq(0)").addClass("tree-text-label-focus");
                        break;
                    }
            }
        }
    }
});

$.widget("iswift.boxresize", {
    options: {
        divBox1: null,
        divBox2: null,
        resizeWidth: true,
        minValue1: 100,
        minValue2: 100,
        maxValue1: 9999,
        maxValue2: 9999,
        afterResize: null,
        onResizeComplete: null,
    },
    _create: function () {
        var p = this, obj = p.element;
        var iStart, iSize1, iSize2, isResize = false;
        var _funMoveResize = function (e) {
            if (isResize) {
                var x1 = iSize1, x2 = iSize2;
                if (p.options.resizeWidth) {
                    x1 -= (iStart - e.pageX);
                    x2 += (iStart - e.pageX);
                    var hasResize = true;
                    if (p.options.divBox1 != null && !(x1 >= p.options.minValue1 && x1 <= p.options.maxValue1))
                        hasResize = false;
                    if (p.options.divBox2 != null)
                        if (x2 >= p.options.minValue2 && x2 <= p.options.maxValue2) {
                            if (hasResize) p.options.divBox2.width(x2);
                        }
                        else
                            hasResize = false;

                    if (p.options.divBox1 != null && hasResize) p.options.divBox1.width(x1);
                }
                else {
                    x1 -= (iStart - e.pageY);
                    x2 += (iStart - e.pageY);

                    var hasResize = true;
                    if (p.options.divBox1 != null && !(x1 >= p.options.minValue1 && x1 <= p.options.maxValue1))
                        hasResize = false;
                    if (p.options.divBox2 != null)
                        if (x2 >= p.options.minValue2 && x2 <= p.options.maxValue2) {
                            if (hasResize) p.options.divBox2.height(x2);
                        }
                        else
                            hasResize = false;

                    if (p.options.divBox1 != null && hasResize) p.options.divBox1.height(x1);
                }
                if (p.options.afterResize) p.options.afterResize();
            }
        }, _funUpResize = function () {
            if (isResize) {
                isResize = false;
                if (p.options.onResizeComplete) p.options.onResizeComplete();
            }
            $("body").removeClass("noselect");
            $(document).unbind("mousemove", _funMoveResize);
            $(document).unbind("mouseup", _funUpResize);
        };
        $(obj).mousedown(function (e) {
            isResize = true;
            if (p.options.resizeWidth) {
                iStart = e.pageX;
                if (p.options.divBox1 != null)
                    iSize1 = p.options.divBox1.width();
                if (p.options.divBox2 != null)
                    iSize2 = p.options.divBox2.width();
            }
            else {
                iStart = e.pageY;
                if (p.options.divBox1 != null)
                    iSize1 = p.options.divBox1.height();
                if (p.options.divBox2 != null)
                    iSize2 = p.options.divBox2.height();
            }
            $("body").addClass("noselect");

            $(document).bind("mousemove", _funMoveResize);
            $(document).bind("mouseup", _funUpResize);
        });

    }
});

$.widget("iswift.list", {
    options: {
        data: null,
        parent: null,
        id: "",
        expand: 0,
        textHtml: '[%s]',
        selectType: "One", //One-Multi
        selectEvent: "click",
        beforeSelect: null,
        focus: null
    },
    _create: function () {
        var p = this, e = p.element, pa = p.options.parent;
        p.createEvent();
    },
    createEvent: function (items) {
        var p = this, e = p.element;
        var funSelect = function (o) {
            if (p.options.beforeSelect && p.options.beforeSelect(p, o) === false) return;
            if (p.options.selectType == "One") {
                e.find("li").removeClass("list-item-selected");
                o.addClass("list-item-selected");
            }
            if (p.options.selectType == "Multi") {
                if (o.hasClass("list-item-selected"))
                    o.removeClass("list-item-selected");
                else
                    o.addClass("list-item-selected");
            }
            p.focus();
        }
        e.bind(p.options.selectEvent, function (event) {
            var o = $(event.target), v = o.attr('value'), xg = o.attr("group"), exp;
            if (v) {
                if (xg != '#') funSelect(o);
                else {
                    exp = (o.attr("expand") == 1) ? 0 : 1
                    if (exp == 1) e.find("li[group='" + v + "']").show("fast");
                    else e.find("li[group='" + v + "']").hide("fast");
                    //e.find("li[group='" + v + "']").css("display", (exp == 1) ? "" : "none")
                    o.attr("expand", exp);
                }
            }
        });
    },
    _refresh: function () {

    },
    focus: function () {
        this.element.focus();
        if (this.options.focus) this.options.focus(this);
        //console.log("focus" + this.element.fieldName());
    },
    remove: function (i) {
        var p = this, e = p.element;
        if ($.type(i) == "number") e.find("li").eq(i).remove();
        else if ($.type(i) == "string") e.find("li[value='" + i + "']").remove();
        else if ($.type(i) == "array") {
            var k = i.length;
            while (k--) p.remove(i[k]);
        }
    },
    setDisabled: function (i, v) {
        var p = this, e = p.element;
        if ($.type(i) == "number") e.find("li").eq(i).attr("disabled", v)
        else if ($.type(i) == "string") e.find("li[value='" + i + "']").attr("disabled", v)
        else if ($.type(i) == "array") {
            var k = i.length;
            while (k--) p.setDisabled(i[k], v);
        }
    },
    setHidden: function (i, v) {
        var p = this, e = p.element
        if ($.type(v) != "string") v = (v) ? "" : "none";
        if ($.type(i) == "number") e.find("li").eq(i).css("display", v);
        else if ($.type(i) == "string") e.find("li[value='" + i + "']").css("display", v);
        else if ($.type(i) == "array") {
            var k = i.length;
            while (k--) p.setDisabled(i[k], v);
        }
    },
    clearSelection: function () {
        this.element.find("li").removeClass("list-item-selected");
    },
    jVal: function (vals) {
        var p = this, e = p.element, a = [];
        if (vals === undefined) {//Get
            return e.find("li.list-item-selected");
        } else {
            if (dup === undefined || dup)
                vals.appendTo(e);
            else {
                vals.each(function () {
                    var o = $(this), v = o.attr("value"), item = p.get(v);
                    if (item) item.show();
                    else {
                        o.appendTo(e);
                    }
                })
            }
        }
    },
    val: function (vals) {
        var p = this, e = p.element, a = [];
        if (vals === undefined) {//Get
            e.find("li.list-item-selected").each(function () {
                a.push($(this).attr("value"));
            })
            if (a.length && p.options.selectType == "One") return a[0]
            else return a;
        } else {
            if (typeof (vals) == "string") vals = vals.split(",");
            e.find("li").each(function () {
                if (vals.indexOf($(this).attr("value")) != -1) $(this).addClass("list-item-selected");
            });
        }
    },

    text: function (o, v) {
        if ($.type(o) != "object") o = this.items(o);
        o.html(this.options.textHtml.replace('[%s]', v));
    },
    add: function (vals, func) {
        var i, o, p = this, e = p.element;
        for (i = 0; i < vals.length; i++) {
            o = $("<li>").attr("value", vals[i][0]).html(p.options.textHtml.replace('[%s]', vals[i][1])).appendTo(e);
            if (vals[i].length > 2) {
                o.attr("group", vals[i][2])
                if (vals[i][2] == "#") o.attr("expand", p.options.expand).css("font-weight", 700);
                else if (vals[i][2] != "") o.css("display", (p.options.expand == 1) ? "" : "none")
            }
            if (func) func(o, vals[i]);
        }
    },
    selectedItems: function () {
        return this.element.find("li.list-item-selected");
    },
    jItems: function () {
        return this.element.find("li:not(.item-drop-mask,.item-drop-view)");
    },
    push: function (vals, dup) {
        var p = this, e = p.element, a = [], dropMask = e.find('.item-drop-mask');
        if (dup === undefined || dup) {
            if (dropMask.length)
                vals.insertBefore(dropMask);
            else
                vals.appendTo(e);
        }
        else {
            vals.each(function () {
                var o = $(this), v = o.attr("value"), item = p.get(v);
                if (item) item.show();
                else {
                    if (dropMask.length)
                        o.insertBefore(dropMask);
                    else
                        o.appendTo(e);
                }
            })
        }

    },
    get: function (v, xtype) {
        var p = this, e = p.element.find("li[value='" + v + "']");
        if (e.length) {
            if (($.type(xtype) == "array")) return [e.attr("value"), e.text()];
            else if (($.type(xtype) == "string")) return v;
            else return e;
        }
        return null;
    },
    items: function (xtype) {
        var p = this, e = p.element, a = [];
        if ($.type(xtype) == "number") return e.find("li").eq(xtype);
        else if ($.type(xtype) == "string") return e.find("li[value='" + xtype + "']");
        else {
            p.jItems().each(function () {
                if ($(this).attr("value")) {
                    if (($.type(xtype) == "array")) a.push([$(this).attr("value"), $(this).text()]);
                    else if (($.type(xtype) == "object")) a.push($(this));
                    else a.push($(this).attr("value"));
                }
            })
            return a;
        }
    },

    _setOptions: function () {
        this._superApply(arguments);
        this._refresh();
    },
    _destroy: function () {

    }
});

$.widget("iswift.listdrag", {
    options: {
        box: "",
        boxFixed: "",

        beforeMousedown: null,
        beforeOver: null,
        afterDrop: null,
        beforeDrop: null
    },
    _create: function () {
        var p = this, fDir = p.element;
        var dView = $("#item_drag_view");
        if (dView.length == 0) {
            dView = $('<div class="item-drag-view" id="item_drag_view"><div class="item-drag-view-icon"></div><div class="item-drag-view-text"></div></div>');
            $("body").append(dView);
        }
        var curLiMove = null, canDrop = false;

        fDir.find("li").bind("mousedown", function (e) {
            curLiMove = $(this);
            if (e.button != 0) return;
            if (p.options.beforeMousedown && p.options.beforeMousedown(p, curLiMove) === false) return;

            dView.find(".item-drag-view-text").html(curLiMove.html());
            canDrop = true;

            dView.css({ 'left': (e.pageX - dView.outerWidth() / 2), 'top': (e.pageY - dView.outerHeight() / 2), 'visibility': 'hidden' });
            dView.draggable({}).trigger(e);
            var _funMoveDrag = function (e) {
                if (dView.css("visibility") != "visible")
                    dView.css("visibility", "visible");
            }, _funUpDrag = function (e) {
                dView.css("visibility", "hidden");
                dView.find(".item-drag-view-icon").removeClass("icon-drag-view-disable");

                $(document).unbind("mousemove", _funMoveDrag);
                $(document).unbind("mouseup", _funUpDrag);
            };
            $(document).bind("mousemove", _funMoveDrag);
            $(document).bind("mouseup", _funUpDrag);
        });

        var liDrop = $($.parseHTML('<li class="item-drop-view"></li>'))
        var arBox = p.options.box.split(",");
        for (var i = 0; i < arBox.length; i++) {
            var xName = arBox[i];
            var box = fDir.find(xName);
            box.append($('<li class="item-drop-mask"></li>'));
            box.find("li[group='#']").addClass("list-item-group");

            box.find('li').droppable({
                accept: '#item_drag_view',
                tolerance: 'pointer',
                refreshPositions: true,
                over: function (event, ui) {
                    if (p.options.boxFixed == "" || !$(this).parent().is(p.options.boxFixed))
                        liDrop.insertBefore($(this));
                }
            });

            box.droppable({
                accept: '#item_drag_view',
                tolerance: 'pointer',
                drop: function (event, ui) {
                    if ($(this).find('.item-drop-view').length != 0) {
                        var sourceList = curLiMove.closest(".List"), destList = liDrop.closest(".List");
                        if (canDrop && liDrop.next().get(0) != curLiMove.get(0) && liDrop.prev().get(0) != curLiMove.get(0) && (p.options.beforeDrop == null || p.options.beforeDrop(p, sourceList, destList, curLiMove, liDrop))) {
                            curLiMove.insertBefore(liDrop).hide().show('fast');

                            if (p.options.afterDrop) p.options.afterDrop(p, sourceList, destList, curLiMove, liDrop);

                            $(this).find('li').removeClass("list-item-selected");
                            curLiMove.addClass("list-item-selected");
                        }
                        liDrop.remove();
                    }
                },
                over: function (event, ui) {
                    var sourceList = curLiMove.parent(), destList = $(this);
                    if (sourceList.get(0) != destList.get(0)) {
                        if (p.options.beforeOver && p.options.beforeOver(p, sourceList, destList, curLiMove) === false)
                            dView.find(".item-drag-view-icon").addClass("icon-drag-view-disable");
                        else
                            dView.find(".item-drag-view-icon").removeClass("icon-drag-view-disable");
                    }

                    if ($(this).is(p.options.boxFixed))
                        liDrop.addClass("item-hidden")
                    else
                        liDrop.removeClass("item-hidden")
                    if ($(this).find('.item-drop-view').length == 0 && !($(this).is(p.options.boxFixed) && $(this).get(0) == curLiMove.parent().get(0)))
                        liDrop.insertBefore($(this).find('.item-drop-mask'));
                    $(this).focus();
                },
                out: function (event, ui) {
                    $(this).find('.item-drop-view').remove();
                }
            });
        }
    }
});


$.widget("iswift.selectrange", {
    options: {
        onSelectedRange: null
    },
    _create: function () {
        var p = this, tbody = p.element;
        var canSelect = false;
        var firtTarget = null, lastTarget = null;
        var allCell = $();
        var iFrom = 0, iTo = 0, jFrom = 0, jTo = 0;

        tbody.mousedown(function (e) {
            if (firtTarget != null) firtTarget.removeClass("focus");
            firtTarget = $(e.target);
            lastTarget = null;
            if (firtTarget.prop("tagName") != "td") firtTarget = firtTarget.closest("td");

            canSelect = firtTarget.hasClass("grid-cell");
            if (canSelect) {
                firtTarget.addClass("focus");

                tbody.bind("mousemove", _funMoveRange);
                $(document).bind("mouseup", _funUpRange);
            }
        });

        var _funMoveRange = function (e) {
            lastTarget = $(e.target);
            if (lastTarget.prop("tagName") != "td") lastTarget = lastTarget.closest("td");

            if (canSelect && firtTarget.get(0) != lastTarget.get(0)) {
                $("body").addClass("noselect");

                allCell.removeClass("focus");
                allCell = $();
                if (firtTarget.get(0) != lastTarget.get(0)) {
                    var x1 = firtTarget.parent().index(), x2 = lastTarget.parent().index(), y1 = firtTarget.index(), y2 = lastTarget.index();
                    iFrom = x1, iTo = x2, jFrom = y1, jTo = y2;

                    if (iFrom > iTo) { iFrom = x2; iTo = x1; }
                    if (jFrom > jTo) { jFrom = y2; jTo = y1; }
                    if (jFrom == 0) jFrom = 1;
                    for (i = iFrom; i <= iTo; i++) {
                        var row = tbody.find("tr:nth-child(" + (i + 1) + ")");
                        for (j = jFrom; j <= jTo; j++)
                            $.merge(allCell, row.find("td:nth-child(" + (j + 1) + ")"));
                    }
                }
                allCell.addClass("focus")
            }
        };
        var _funUpRange = function (e) {
            if (canSelect) {
                $("body").removeClass("noselect");
                tbody.unbind("mousemove", _funMoveRange);
                $(document).unbind("mouseup", _funUpRange);

                if (lastTarget == null) allCell = $();
                else if (firtTarget.get(0) != lastTarget.get(0)) {
                    if (window.getSelection) {
                        if (window.getSelection().empty) {  // Chrome
                            window.getSelection().empty();
                        } else if (window.getSelection().removeAllRanges) {  // Firefox
                            window.getSelection().removeAllRanges();
                        }
                    } else if (document.selection) {  // IE?
                        document.selection.empty();
                    }
                }


                if (p.options.onSelectedRange && allCell.length > 0) p.options.onSelectedRange(tbody, allCell, iFrom, iTo, jFrom, jTo);
            }
        };
    }
});