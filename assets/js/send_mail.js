/**
 * Created by agufed on 10/5/17.
 */

<script>
$(document).on('click', '#sendMailId', function (e) {
    e.preventDefault();
    var senderName = $('#senderNameId').val();
    var messageSubject = $('#messageSubjectId').val();
    var senderEmail = $('#senderEmailId').val();
    var messageBody = $('#messageBodyId').val();

    $.ajax({
        url: "/mailing/sendEmail.php",
        method: "POST",
        data: {senderName: senderName, messageSubject: messageSubject, senderEmail: senderEmail, messageBody: messageBody},
        dataType: "text",
        success: function (data) {
            alert(data);
            //                $('#success_alert_message').append(data);
            //                $('#success_alert_message').removeClass('hidden');
            //                faddingAllert('#success_alert_message');
        }
    });
});
</script>