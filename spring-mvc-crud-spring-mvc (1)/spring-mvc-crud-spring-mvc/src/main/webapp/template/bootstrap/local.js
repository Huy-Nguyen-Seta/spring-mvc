var keylocal='dsitem';
function taodoituong(idsanpham,soluong,thumbnail,gia,title)
{
    var itemgiohang=new Object();
    itemgiohang.id=idsanpham;
    itemgiohang.soluong=soluong;
    itemgiohang.thumbnail=thumbnail;
    itemgiohang.gia=gia;
    itemgiohang.title=title;
    return itemgiohang;
}
function laydanhsachgiohang(){
    var danhsachitem=new Array();
    var json=localStorage.getItem(keylocal);
    if(json!=null)
    danhsachitem=JSON.parse(json);

    return danhsachitem;
}
function clickduavaogiohang(id,thumbnail,gia,title){

    var danhsach=laydanhsachgiohang();
    var tontai=false;
    for(var i=0;i<danhsach.length;i++){
        var itemht=danhsach[i];
        if(itemht.id==id){
            danhsach[i].soluong++;
            tontai=true;
        }
    }
    if(!tontai){
        var item=taodoituong(id,1,thumbnail,gia,title);
        danhsach.push(item);
    }
    luutrulocal(danhsach);
}
function luutrulocal(danhsach){
    var json=JSON.stringify(danhsach);

    localStorage.setItem(keylocal,json);


}

