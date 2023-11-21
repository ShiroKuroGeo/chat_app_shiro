$(document).ready(function() {
  // Handle registration form submission
  $("#registerButton").click(function() {
      var username = $("#username").val();
      var email = $("#email").val();
      var password = $("#password").val();

      // Perform validation and registration logic here
      // For this example, we'll just log the values
      console.log("Username: " + username);
      console.log("Email: " + email);
      console.log("Password: " + password);

      // You can send the registration data to your server for processing here
      // Example using jQuery AJAX:
      // $.ajax({
      //     type: "POST",
      //     url: "your_registration_endpoint",
      //     data: { username: username, email: email, password: password },
      //     success: function(response) {
      //         // Handle the response from the server
      //     },
      //     error: function(error) {
      //         // Handle registration error
      //     }
      // });
  });
});