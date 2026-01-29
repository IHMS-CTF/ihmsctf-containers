function checkLogin() {
    const user = document.getElementById("username").value;
    const pass = document.getElementById("password").value;

    if (user === "admin" && pass === "supersecretpassword") {
        window.location.href = "/admin";
        return false;
    } else {
        alert("Invalid credentials!");
        return false;
    }
}
