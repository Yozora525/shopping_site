function edit1(){
    document.getElementById("name").style.display="none";
    document.getElementById("nameModify").style.display="";
    var butt=document.getElementById("btt1");
    butt.value="Save";
    butt.onclick=function(){
      save1();
    };
  }
  function save1(){
    var cxs=document.getElementById('name');
    var ei=document.getElementById("nameModify");
    var butt=document.getElementById("btt1");
    butt.value="Edit";
    ei.style.display="none";
    cxs.value=ei.value;
    cxs.style.display="";
    butt.onclick=function(){
      edit1();
    };
  }

function edit2(){
    document.getElementById("tel").style.display="none";
    document.getElementById("telModify").style.display="";
    var butt=document.getElementById("btt2");
    butt.value="Save";
    butt.onclick=function(){
      save2();
    };
  }
  function save2(){
    var cxs=document.getElementById('tel');
    var ei=document.getElementById("telModify");
    var butt=document.getElementById("btt2");
    butt.value="Edit";
    ei.style.display="none";
    cxs.value=ei.value;
    cxs.style.display="";
    butt.onclick=function(){
      edit2();
    };
  }

function edit3(){
    document.getElementById("address").style.display="none";
    document.getElementById("addressModify").style.display="";
    var butt=document.getElementById("btt3");
    butt.value="Save";
    butt.onclick=function(){
      save3();
    };
  }
  function save3(){
    var cxs=document.getElementById('address');
    var ei=document.getElementById("addressModify");
    var butt=document.getElementById("btt3");
    butt.value="Edit";
    ei.style.display="none";
    cxs.value=ei.value;
    cxs.style.display="";
    butt.onclick=function(){
      edit3();
    };
  }

function edit4(){
    document.getElementById("email").style.display="none";
    document.getElementById("emailModify").style.display="";
    var butt=document.getElementById("btt4");
    butt.value="Save";
    butt.onclick=function(){
      save4();
    };
  }
  function save4(){
    var cxs=document.getElementById('email');
    var ei=document.getElementById("emailModify");
    var butt=document.getElementById("btt4");
    butt.value="Edit";
    ei.style.display="none";
    cxs.value=ei.value;
    cxs.style.display="";
    butt.onclick=function(){
      edit4();
    };
  }

function edit5(){
    document.getElementById("password").style.display="none";
    document.getElementById("passwordModify").style.display="";
    var butt=document.getElementById("btt5");
    butt.value="Save";
    butt.onclick=function(){
      save5();
    };
  }
  function save5(){
    var cxs=document.getElementById('password');
    var ei=document.getElementById("passwordModify");
    var butt=document.getElementById("btt5");
    butt.value="Edit";
    ei.style.display="none";
    cxs.value=ei.value;
    cxs.style.display="";
    butt.onclick=function(){
      edit5();
    };
  }
