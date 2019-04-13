function login() {
    var username = document.getElementById("username");
    var password = document.getElementById("password");

    if(username.value == "test" && password.value == "0000" )
    {
        window.location.href = "index.jsp";
    }
    else if(username.value == "")
    {
        alert("请输入用户名");
    }
    else if(password.value == "")
    {
        alert("请输入密码");
    }
    else if(username.value == "test" && password.value != "0000")
    {
        alert("请输入正确的密码");
    }
    else if(password.value == "0000" && username.value != "test")
    {
        alert("请输入正确的用户名");
    }
    else
    {
        alert("请输入正确的用户名和密码");
    }
}