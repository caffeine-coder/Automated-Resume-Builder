
function deleteRow(row) {
        var x = document.getElementById('rtable');
        var i = row.parentNode.parentNode.rowIndex;
        var len=x.rows.length;

        if(len>2) {
            var r = confirm("Are you sure? Action cannot be reverted.");
            if (r==true) {
                document.getElementById('rtable').deleteRow(i);
            }
        }
        else{
            alert("Cannot delete last row");
        }
    }
function insRow() {

    var x = document.getElementById('rtable');
    var new_row = x.rows[1].cloneNode(true);
    var len = x.rows.length;
    new_row.cells[0].innerHTML = len;

    var inp1 = new_row.cells[1].getElementsByTagName('input')[0];
    inp1.id += len;
    inp1.value = '';
    var inp2 = new_row.cells[2].getElementsByTagName('input')[0];
    inp2.id += len;
    inp2.value = '';
    x.appendChild(new_row);
}


function adelete(row) {
    var x = document.getElementById('qtable');
    var i = row.parentNode.parentNode.rowIndex;
    var len=x.rows.length;

    if(len>2) {
        var r = confirm("Are you sure? Action cannot be reverted.");
        if (r==true) {
            document.getElementById('qtable').deleteRow(i);
        }
    }
    else{
        alert("Cannot delete last row");
    }
}
function ainsRow() {

    var x = document.getElementById('qtable');
    var new_row = x.rows[1].cloneNode(true);
    var len = x.rows.length;
    new_row.cells[0].innerHTML = len;

    var inp1 = new_row.cells[1].getElementsByTagName('input')[0];
    inp1.id += len;
    inp1.value = '';
    var inp2 = new_row.cells[2].getElementsByTagName('input')[0];
    inp2.id += len;
    inp2.value = '';
    x.appendChild(new_row);
}

function prdel(row) {
    var x = document.getElementById('ptable');
    var i = row.parentNode.parentNode.rowIndex;
    var len=x.rows.length;

    if(len>2) {
        var r = confirm("Are you sure? Action cannot be reverted.");
        if (r==true) {
            document.getElementById('ptable').deleteRow(i);
        }
    }
    else{
        alert("Cannot delete last row");
    }
}
function pradd() {

    var x = document.getElementById('ptable');
    var new_row = x.rows[1].cloneNode(true);
    var len = x.rows.length;
    new_row.cells[0].innerHTML = len;

    var inp1 = new_row.cells[1].getElementsByTagName('input')[0];
    inp1.id += len;
    inp1.value = '';
    var inp2 = new_row.cells[2].getElementsByTagName('input')[0];
    inp2.id += len;
    inp2.value = '';
    x.appendChild(new_row);
}
function ldel(row) {
    var x = document.getElementById('language');
    var i = row.parentNode.parentNode.rowIndex;
    var len=x.rows.length;

    if(len>2) {
        var r = confirm("Are you sure? Action cannot be reverted.");
        if (r==true) {
            document.getElementById('language').deleteRow(i);
        }
    }
    else{
        alert("Cannot delete last row");
    }
}
function ladd() {

    var x = document.getElementById('language');
    var new_row = x.rows[1].cloneNode(true);
    var len = x.rows.length;
    new_row.cells[0].innerHTML = len;

    var inp1 = new_row.cells[1].getElementsByTagName('input')[0];
    inp1.id += len;
    inp1.value = '';
    var inp2 = new_row.cells[2].getElementsByTagName('input')[0];
    inp2.id += len;
    inp2.value = '';
    x.appendChild(new_row);
}
